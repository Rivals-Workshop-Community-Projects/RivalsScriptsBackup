// platform data object indexes
#macro PD_DATA 0
#macro PD_COUNT 1

// raw platform data object indexes
#macro RPD_BBOX 0
#macro RPD_TYPE 1

// platform distance data object indexes
#macro PDD_DIST 0
#macro PDD_BBOX 1
#macro PDD_TYPE 2

// bounding box indexes
#macro BBOX_TOP 0
#macro BBOX_BOTTOM 1
#macro BBOX_LEFT 2
#macro BBOX_RIGHT 3

// input values
#macro INP_ATTACK 1 << 0
#macro INP_SPECIAL 1 << 1
#macro INP_JUMP 1 << 2
#macro INP_SHIELD 1 << 3

#macro INP_LEFT 1 << 4
#macro INP_RIGHT 1 << 5
#macro INP_UP 1 << 6
#macro INP_DOWN 1 << 7

#macro INP_LEFT_HARD 1 << 8
#macro INP_RIGHT_HARD 1 << 9
#macro INP_UP_HARD 1 << 10
#macro INP_DOWN_HARD 1 << 11

#macro INP_LEFT_STRONG 1 << 12
#macro INP_RIGHT_STRONG 1 << 13
#macro INP_UP_STRONG 1 << 14
#macro INP_DOWN_STRONG 1 << 15

#macro INP_TAUNT 1 << 16

// if (!bboxes_obtained) obtain_stage_bboxes();
if (!jump_data_obtained) obtain_jump_data();
if (!attack_data_obtained) obtain_attack_data();

ai_inputs = 0;
// MAIN LOOP DO NOT TOUCH
ds_list_clear(ai_draw);

// repeat(6000) {}

if (host_player == self) ds_map_clear(ai_fn_cache);
clear_ai_inputs();

// repeat(100) { 
  exec_ai_script(); 
//   ds_map_clear(ai_fn_cache);
// }

process_inputs();
ai_script_execution_frame ++;


#define time()

ct = current_time;
#define time_end()

ct = current_time - ct;
// print(ct)q
// ====================== "AI SCRIPTS" ======================
// these are user-made scripts that the AI performs that can either be called directly (to build complex functions)
// or be called using "call("name")". by using the "call" function, the AI will switch to that "script" on the
// next frame

// the main AI "hub" script that controls stuff 
#define main()
time()
  if (self.player == 2) {
    debug_pin();
    if (keyboard_lastkey == 38 && ai_debug_pin_damage < 999) ai_debug_pin_damage += 1;
    if (keyboard_lastkey == 40 && ai_debug_pin_damage > 0) ai_debug_pin_damage -= 1;
  } else {
    if(keyboard_lastkey != -1) print(keyboard_lastkey);
    if (keyboard_lastkey == 13 && keyboard_string != "") {
      keyboard_lastkey = -1;
      var ksv = real(keyboard_string);
      if (0 <= ksv && ksv < ds_list_size(ai_attack_data)) currAtk = ksv;
      keyboard_string = "";
    }
    if (keyboard_lastkey < 48 || 57 < keyboard_lastkey) {
      keyboard_lastkey = -1
      keyboard_string = "";
    }
    if(can_attack or can_special){
      var cad = ai_attack_data[| random_func( random_func(5, 24, true), ds_list_size(ai_attack_data), true )];
      var of = fn("GetFloor", ai_target);
      var estOPos = (variable_instance_exists(ai_target, "ai_target") && variable_instance_exists(ai_target, "ai_debug_pin_timer") && ai_target.ai_debug_pin_timer <= 0) ? [ai_target.x, ai_target.y, 0, 0] : estimate_position_in(ai_target, cad.frame, ceil(cad.frame / ai_pos_calc_steps));
      var estPos = estimate_position_in(self, cad.frame, ceil(cad.frame / ai_pos_calc_steps));
      var estPosDrift = noone;
      var estPosRelDir = ((x - ai_target.x > 0) ? -1 : 1);
      if (free) estPosDrift = estimate_position_drift(self, cad.frame, ceil(cad.frame / ai_pos_calc_steps), estPosRelDir);
      else estPosDrift = estPos;
      if (state == PS_JUMPSQUAT) reset_prediction(self);
      if (estOPos == noone) {
        if (lastOPos == noone) return;
        estOPos = lastOPos;
      };
      lastOPos = estOPos;
  
      var tx = estOPos[@ 0] - cad.cx * sign(x - ai_target.x);
      var ty = estOPos[@ 1] - cad.cy;
      go_to_target_position(tx, ty, ((of == noone) ? noone : of[@ PDD_BBOX]), cad.width - 60, false);
      var thw = fn("HurtboxWidth", ai_target);
      var thh = fn("HurtboxHeight", ai_target);
      make_rect_outline_center(estOPos[@ 0], estOPos[@ 1] + thh / 2, thw, thh, $00ffff);
  
      if (lastPos != noone && lastPosDrift != noone) {
        var ai_target_hurtbox_bbox = [estOPos[@ 1] + thh, estOPos[@ 1], estOPos[@ 0] - thw / 2, estOPos[@ 0] + thw / 2];
        var attack_bbox = [lastPos[@ 1] + cad.cy - cad.height / 2,
          lastPos[@ 1] + cad.cy + cad.height / 2,
          ((free && estPosRelDir == -1) ? lastPosDrift[@ 0] : lastPos[@ 0]) + cad.cx * spr_dir - cad.width / 2,
          ((free && estPosRelDir == 1) ? lastPosDrift[@ 0] : lastPos[@ 0]) + cad.cx * spr_dir + cad.width / 2];
         make_rect_outline(attack_bbox[@ BBOX_LEFT], attack_bbox[@ BBOX_TOP], attack_bbox[@ BBOX_RIGHT], attack_bbox[@ BBOX_BOTTOM], $880088);
        // make_rect_outline_center(lastPos[@ 0] + cad.cx * spr_dir, lastPos[@ 1] + cad.cy, cad.width, cad.height, $ff00ff);
      }
  
      if (estPos == noone || estPosDrift == noone) return;
      reset_prediction(self);
      reset_prediction(ai_target);
      lastPos = estPos;
      lastPosDrift = estPosDrift;
      if (ai_target_hurtbox_bbox != noone && attack_bbox != noone && bbox_overlap(attack_bbox, ai_target_hurtbox_bbox)) {
        if (free || spr_dir == 1 && estPos[@ 0] < estOPos[@ 0] || spr_dir == -1 && estPos[@ 0] > estOPos[@ 0]) {
          execute_attack(cad.attack);
        } else {
          face_opponent();
        }
      } else {
        make_rect_outline_center(estOPos[@ 0], estOPos[@ 1] + thh / 2, thw, thh, $00ffff);
      }
    }
  }
  time_end()
  // if (self.player == 2) {
  //   var of = get_floor_from(mouse_x, mouse_y);
  //   make_rect_outline_center(mouse_x, mouse_y, 15, 15, player_color(self));
  //   if (of != noone) go_to_target_position(mouse_x, mousse_y, of[@ PDD_BBOX], 50);
  // } else {
  //   if (random_func( 1, 2, true ) == 1) {
  //     ai_target_pos = get_random_point_on_stage();
  //   } else {
  //     ai_target_pos = get_random_point_on_platform();
  //   }
  //   set_timeout(60 + random_func(random_func(5, 20, true), 80, true));
  //   call("go_to_rand_position");
  // }

#define face_opponent()
  if (x < ai_target.x) ai_inputs |= INP_LEFT
  else ai_inputs |= INP_RIGHT

#define execute_attack(index)
  clear_dir();
  switch(index) {
    case AT_BAIR:
    case AT_DAIR:
    case AT_FAIR:
    case AT_NAIR:
    case AT_UAIR:
      if (!free) {
        if (state != PS_FIRST_JUMP && state != PS_JUMPSQUAT) input_jump();
        return;
      }
      break;
    case AT_DATTACK:
      if (state != PS_DASH_START && state != PS_DASH) {
        if (x < ai_target.x) ai_inputs |= INP_LEFT_HARD
        else ai_inputs |= INP_RIGHT_HARD
        return;
      }
      break;
    default:
  }
  switch(index) {
    case AT_DSPECIAL:
    case AT_DSPECIAL_2:
    case AT_DSPECIAL_AIR:
    case AT_FSPECIAL:
    case AT_FSPECIAL_2:
    case AT_FSPECIAL_AIR:
    case AT_NSPECIAL:
    case AT_NSPECIAL_2:
    case AT_NSPECIAL_AIR:
    case AT_USPECIAL:
    case AT_USPECIAL_2:
    case AT_USPECIAL_GROUND:
      ai_inputs |= INP_SPECIAL;
      break;
    default:
      ai_inputs |= INP_ATTACK;
  }
  switch(index) {
    case AT_BAIR:
      ai_inputs |= ((ai_target.x < x) ? INP_RIGHT : INP_LEFT); break;
      
    case AT_DATTACK:
    case AT_FTILT: 
    case AT_FAIR:
      ai_inputs |= ((ai_target.x < x) ? INP_LEFT : INP_RIGHT); break;
    case AT_FSTRONG: 
    case AT_FSTRONG_2: 
      ai_inputs |= ((ai_target.x < x) ? INP_LEFT_STRONG : INP_RIGHT_STRONG); break;
    case AT_FSPECIAL: 
    case AT_FSPECIAL_2: 
    case AT_FSPECIAL_AIR: 
      ai_inputs |= ((ai_target.x < x) ? INP_LEFT_HARD : INP_RIGHT_HARD); break;

    case AT_UTILT:
    case AT_UAIR:
      ai_inputs |= INP_UP_HARD; break;
    case AT_USTRONG: 
    case AT_USTRONG_2:
      // print("Im herte")
      ai_inputs |= INP_UP_STRONG; break;
    case AT_USPECIAL: 
    case AT_USPECIAL_2: 
    case AT_USPECIAL_GROUND: 
      ai_inputs |= INP_UP_HARD; break;

    case AT_DTILT:
    case AT_DAIR:
      ai_inputs |= INP_DOWN; break;
    case AT_DSTRONG: 
    case AT_DSTRONG_2: 
      ai_inputs |= INP_DOWN_STRONG; break;
    case AT_DSPECIAL: 
    case AT_DSPECIAL_2: 
    case AT_DSPECIAL_AIR: 
      ai_inputs |= INP_DOWN_HARD; break;
    default:
  }

#define go_to_rand_position()
  go_to_target_position(ai_target_pos[@ 0], ai_target_pos[@ 1], ai_target_pos[@ 2], 10, false);

#define go_to_target_position(tx, ty, tbb, tolerance, stayOnPlatform)
  var predicted_x = hsp * jump_vert_time + x;
  var jump_potential = air_max_speed * jump_vert_time;
  var ignorePlatforms = (tbb == noone);
  // if (!is_array(tbb)) return;

  // make_rect_outline(tbb[@ BBOX_LEFT], tbb[@ BBOX_TOP], tbb[@ BBOX_RIGHT], tbb[@ BBOX_BOTTOM], $0088ff);
  // make_rect_outline_center(tx, ty, 15, 15, player_color(self));
  // make_line(x, y - 20, predicted_x, y - 20, $0000ff);
  if (!ignorePlatforms) {
    if (tx < tbb[@ BBOX_LEFT] + 40) tx += 40; 
    else if (tbb[@ BBOX_RIGHT] - 40 < tx) tx -= 40; 
  }
  if (state != PS_JUMPSQUAT && free) go_to_x_pos(tx - (predicted_x - x), 0);
  else go_to_x_pos(tx, tolerance);

  var wall_offs = predicted_x + 20 * spr_dir * (sign(hsp) ? -1 : 1);
  // make_rect_outline_center(wall_offs, y - 1, 10, 10, $0000ff);
  if (position_meeting(wall_offs, y - 1, solid_asset)) {
    var plat = get_solid_at(wall_offs, y - 1);
    var max_height = djump_height;
    if (!free) max_height += jump_height;
    var topPos = plat[@ RPD_BBOX][@ BBOX_TOP];
    if ((y - max_height) <= topPos || (state == PS_FIRST_JUMP && state_timer == 0)) {
      clear_dir();
      if (!(state == PS_IDLE && ai_prev_inputs & INP_JUMP != 0)) input_jump();
    }
  }

  if (ty < y) {
    if (stayOnPlatform && fn("SamePlane", ai_target)) return;
    var offset = predicted_x + sign(tx - x) * jump_potential;
    var max_height = djump_height;
    if (!free || (state == PS_FIRST_JUMP && state_timer == 0)) max_height += jump_height;

    var topPos;
    if (!ignorePlatforms && tbb[@ BBOX_TOP] < y) topPos = tbb[@ BBOX_TOP];
    else topPos = ty;

    make_line(x, y, x, y - max_height, $0000ff)
    make_line(tx - 20, topPos, tx + 20, topPos, $00ffff)
    var tempBool = ignorePlatforms || (tbb[@ BBOX_LEFT] <= offset && x <= tbb[@ BBOX_LEFT]) 
      || (offset >= tbb[@ BBOX_RIGHT] && x >= tbb[@ BBOX_RIGHT]) 
      || (tbb[@ BBOX_LEFT] <= x && x <= tbb[@ BBOX_RIGHT]);

    // print_debug(`${tempBool}`);
    if (abs(x - tx) < (jump_potential * 2) 
      && ((y - max_height) <= topPos)
      && vsp >= 0) {
        // print_debug("shouldjump");
        if (state == PS_FIRST_JUMP && state_timer == 0) {
          if ((y - short_hop_height) > topPos) { input_jump(); }
        } else {
          input_jump();
        }
    } else {
      // print_debug("nojump");
    }
  } else if (ty > y && get_floor_from(x, y + 32) != noone && !free) {
    var plat = fn("GetFloor", self);
    if (plat[@ PDD_TYPE] == "Plat" && y <= ty) {
      clear_dir();
      if (state != PS_CROUCH) ai_inputs |= INP_DOWN_HARD;
    }
  }

#define go_to_x_pos(tx, tolerance)
  var dist = tx - x;
  if (abs(dist) > (90 + tolerance)) {
    if (sign(dist) == -1) ai_inputs |= INP_LEFT_HARD
    else ai_inputs |= INP_RIGHT_HARD
    if (state == PS_WALK) clear_dir();
  } else if (abs(dist) > tolerance) {
    if (sign(dist) == -1) ai_inputs |= INP_LEFT
    else ai_inputs |= INP_RIGHT
  }

#define debug_pin()
  make_rect_outline_center(mouse_x, mouse_y, 15, 15, $0000ff);
  if (!ai_debug_pin) {
    var of = get_floor_at(mouse_x, mouse_y);
    x = mouse_x;
    if (of != noone) y = min(of[@ RPD_BBOX][@ BBOX_TOP], mouse_y);
    else y = mouse_y;
    hsp = 0;
    vsp = 0;
    if (mouse_lastbutton == 1) {
      ai_debug_pin_x = x;
      ai_debug_pin_y = y;
      ai_debug_pin = true;
    }
  } else {
    if (state_cat != SC_HITSTUN) {
      if (ai_debug_pin_timer > 0) {
        ai_debug_pin_timer --;
      } else {
        x = ai_debug_pin_x;
        y = ai_debug_pin_y;
        hsp = 0;
        vsp = 0;
        set_player_damage( self.player, ai_debug_pin_damage );
      }
    } else {
      ai_debug_pin_timer = ai_debug_pin_timeout;
    }

    if (mouse_lastbutton == 2) {
      ai_debug_pin = false;
    }
  }

#define go_to_mouse()
  make_rect_outline_center(mouse_x, mouse_y, 15, 15, $000000);
  var of = get_floor_at(mouse_x, mouse_y);
  if (of != noone) go_to_target_position(mouse_x, min(of[@ RPD_BBOX][@ BBOX_TOP], mouse_y), of[@ RPD_BBOX], 50, false);
  else {
    of = get_floor_from(mouse_x, mouse_y);
    if (of != noone) go_to_target_position(mouse_x, mouse_y, of[@ PDD_BBOX], 50, false);
  }

// ====================== "COMMANDS" THAT TELL THE GAME / AI SYSTEM TO DO SPECIFIC THINGS ======================
#define make_line(x1, y1, x2, y2, color)
  ds_list_add(ai_draw, {type: "line", x1: x1, y1: y1, x2: x2, y2: y2, color: color});

#define make_rect_outline(left, top, right, bottom, color)
  ds_list_add(ai_draw, {type: "rectOutline", left: left, top: top, right: right, bottom: bottom, color: color});

#define make_rect_outline_center(x, y, width, height, color)
  ds_list_add(ai_draw, {type: "rectOutlineCenter", x: x, y: y, width: width, height: height, color: color});

#define call(name)
  ai_script_execution_frame = 0;
  ai_current_script = name;

#define set_timeout(frames)
  ai_script_timeout = frames;  

#define clear_dir()
  ai_inputs &= 
    ~(INP_LEFT_HARD
    | INP_RIGHT_HARD
    | INP_UP_HARD
    | INP_DOWN_HARD
    | INP_LEFT
    | INP_RIGHT
    | INP_UP
    | INP_DOWN);

#define input_jump()
  if (ai_prev_inputs & INP_JUMP == 0 || (state == PS_FIRST_JUMP && state_timer == 0)) ai_inputs |= INP_JUMP;
// ====================== functions that DON'T get cached (due to having actual arguments) ======================
// calculates knockback given base knockback, damage, knockback scaling, and knockback adjust values
#define calc_knockback(bkb, dmg, scaling, adj)
  return bkb + dmg * scaling * 0.12 * adj;

// calculates the minimum damage required to obtain a desired knockback given
// the desired knockback, base knockback, scaling, and knockback adjust values
#define calc_min_knockback_damage(desired_knockback, bkb, scaling, adj)
  if (adj == 0 || scaling == 0) return 1000;
  return -1 * (25 * (bkb - desired_knockback))/(3 * adj * scaling)

// calculates hitstun given base knockback, damage, knockback scaling, and knockback adjust values
#define calc_hitstun(bkb, scaling, dmg, adj)
  return bkb * 4 * ((adj - 1) * 0.6 + 1) + dmg * 0.12 * scaling * 4 * 0.65 * adj

// calculates the minimum damage required to obtain a desired hitstun given
// the desired hitstun, base knockback, scaling, and knockback adjust values
#define calc_min_hitstun_damage(desired_hitstun, bkb, scaling, adj)
  if (adj == 0 || scaling == 0) return 1000;
  return -1 * (25 * (4 * (3 * adj + 2) * bkb - 5 * desired_hitstun))/(39 * adj * scaling)

#define get_floor_from(x1, y1)
  var nearestPlat = get_floor_plat_from(x1, y1);
  var nearestSolid = get_floor_solid_from(x1, y1);
  if (nearestPlat == noone && nearestSolid == noone) return noone;
  else if (nearestPlat == noone && nearestSolid != noone) return nearestSolid;
  else if (nearestPlat != noone && nearestSolid == noone) return nearestPlat;
  else if (nearestPlat[@ PDD_DIST] < nearestSolid[@ PDD_DIST]) return nearestPlat;
  else return nearestSolid;

#define get_floor_plat_from(x1, y1)
  var nearestPlat = [9999, noone, "Plat"];
  for (var i = 0; i < plat_bboxes[@ PD_COUNT]; i++) {
    var bbox = plat_bboxes[@ PD_DATA][| i];
    if (bbox[@ BBOX_LEFT] <= x1 && x1 <= bbox[@ BBOX_RIGHT]) {
      var dist = bbox[@ BBOX_TOP] - y1;
      if (dist >= 0 && dist < nearestPlat[@ PDD_DIST]) {
        nearestPlat[@ PDD_DIST] = dist;
        nearestPlat[@ PDD_BBOX] = bbox;
      } 
    }
  }
  if (nearestPlat[@ PDD_BBOX] == noone) return noone;
  return nearestPlat;

#define get_floor_solid_from(x1, y1)
  var nearestSolid = [9999, noone, "Solid"];
  for (var i = 0; i < solid_bboxes[@ PD_COUNT]; i++) {
    var bbox = solid_bboxes[@ PD_DATA][| i];
    if (bbox[@ BBOX_LEFT] <= x && x1 <= bbox[@ BBOX_RIGHT]) {
      var dist = bbox[@ BBOX_TOP] - y1;
      if (dist >= 0 && dist < nearestSolid[@ PDD_DIST]) {
        nearestSolid[@ PDD_DIST] = dist;
        nearestSolid[@ PDD_BBOX] = bbox;
      } 
    }
  }
  if (nearestSolid[@ PDD_BBOX] == noone) return noone;
  return nearestSolid;

#define get_ceil_from(x1, y1)
  var nearestPlat = get_ceil_plat_from(x1, y1);
  var nearestSolid = get_ceil_solid_from(x1, y1);
  if (nearestPlat == noone && nearestSolid == noone) return noone;
  else if (nearestPlat == noone && nearestSolid != noone) return nearestSolid;
  else if (nearestPlat != noone && nearestSolid == noone) return nearestPlat;
  else if (nearestPlat[@ PDD_DIST] < nearestSolid[@ PDD_DIST]) return nearestPlat;
  else return nearestSolid;

#define get_ceil_plat_from(x1, y1)
  var nearestPlat = [9999, noone, "Plat"];
  for (var i = 0; i < plat_bboxes[@ PD_COUNT]; i++) {
    var bbox = plat_bboxes[@ PD_DATA][| i];
    if (bbox[@ BBOX_LEFT] <= x1 && x1 <= bbox[@ BBOX_RIGHT]) {
      var dist = y1 - bbox[@ BBOX_TOP];
      if (dist >= 0 && dist < nearestPlat[@ PDD_DIST]) {
        nearestPlat[@ PDD_DIST] = dist;
        nearestPlat[@ PDD_BBOX] = bbox;
      } 
    }
  }
  if (nearestPlat[@ PDD_BBOX] == noone) return noone;
  return nearestPlat;

#define get_ceil_solid_from(x1, y1)
  var nearestSolid = [9999, noone, "Solid"];
  for (var i = 0; i < solid_bboxes[@ PD_COUNT]; i++) {
    var bbox = solid_bboxes[@ PD_DATA][| i];
    if (bbox[@ BBOX_LEFT] <= x && x1 <= bbox[@ BBOX_RIGHT]) {
      var dist = y1 - bbox[@ BBOX_TOP];
      if (dist >= 0 && dist < nearestSolid[@ PDD_DIST]) {
        nearestSolid[@ PDD_DIST] = dist;
        nearestSolid[@ PDD_BBOX] = bbox;
      } 
    }
  }
  if (nearestSolid[@ PDD_BBOX] == noone) return noone;
  return nearestSolid;

#define get_wall_from(x1, y1)
  var nearestPlat = get_ceil_plat_from(x1, y1);
  var nearestSolid = get_ceil_solid_from(x1, y1);
  if (nearestPlat == noone && nearestSolid == noone) return noone;
  else if (nearestPlat == noone && nearestSolid != noone) return nearestSolid;
  else if (nearestPlat != noone && nearestSolid == noone) return nearestPlat;
  else if (abs(nearestPlat[@ PDD_DIST]) < abs(nearestSolid[@ PDD_DIST])) return nearestPlat;
  else return nearestSolid;

#define get_wall_plat_from(x1, y1)
  var nearestPlat = [9999, noone, "Plat"];
  for (var i = 0; i < plat_bboxes[@ PD_COUNT]; i++) {
    var bbox = plat_bboxes[@ PD_DATA][| i];
    if (bbox[@ BBOX_TOP] <= y1 && y1 <= bbox[@ BBOX_BOTTOM]) {
      var dist = bbox[@ BBOX_LEFT] - x1;
      if (abs(dist) < abs(nearestPlat[@ PDD_DIST])) {
        nearestPlat[@ PDD_DIST] = dist;
        nearestPlat[@ PDD_BBOX] = bbox;
      } 

      var dist = bbox[@ BBOX_RIGHT] - x1;
      if (abs(dist) < abs(nearestPlat[@ PDD_DIST])) {
        nearestPlat[@ PDD_DIST] = dist;
        nearestPlat[@ PDD_BBOX] = bbox;
      } 
    }
  }
  if (nearestPlat[@ PDD_BBOX] == noone) return noone;
  return nearestPlat;

#define get_wall_solid_from(x1, y1)
  var nearestSolid = [9999, noone, "Solid"];
  for (var i = 0; i < solid_bboxes[@ PD_COUNT]; i++) {
    var bbox = solid_bboxes[@ PD_DATA][| i];
    if (bbox[@ BBOX_TOP] <= y1 && y1 <= bbox[@ BBOX_BOTTOM]) {
      var dist = bbox[@ BBOX_LEFT] - x1;
      if (abs(dist) < abs(nearestSolid[@ PDD_DIST])) {
        nearestSolid[@ PDD_DIST] = dist;
        nearestSolid[@ PDD_BBOX] = bbox;
      } 

      var dist = bbox[@ BBOX_RIGHT] - x1;
      if (abs(dist) < abs(nearestSolid[@ PDD_DIST])) {
        nearestSolid[@ PDD_DIST] = dist;
        nearestSolid[@ PDD_BBOX] = bbox;
      } 
    }
  }
  if (nearestSolid[@ PDD_BBOX] == noone) return noone;
  return nearestSolid;

#define reset_prediction(tgt)
  position_estimation_arr[@ (tgt).player - 1][@ 1] = -1;
  drift_l_estimation_arr[@ (tgt).player - 1][@ 1] = -1;
  drift_r_estimation_arr[@ (tgt).player - 1][@ 1] = -1;

#define reset_all_predictions()
  position_estimation_arr[@ 0][@ 1] = -1;
  position_estimation_arr[@ 1][@ 1] = -1;
  position_estimation_arr[@ 2][@ 1] = -1;
  position_estimation_arr[@ 3][@ 1] = -1;
  drift_l_estmation_arr[@ 0][@ 1] = -1;
  drift_l_estmation_arr[@ 1][@ 1] = -1;
  drift_l_estmation_arr[@ 2][@ 1] = -1;
  drift_l_estmation_arr[@ 3][@ 1] = -1;
  drift_r_estmation_arr[@ 0][@ 1] = -1;
  drift_r_estmation_arr[@ 1][@ 1] = -1;
  drift_r_estmation_arr[@ 2][@ 1] = -1;
  drift_r_estmation_arr[@ 3][@ 1] = -1;

#define estimate_position_in(tgt, frames, maxNewFrames)
  var tgt_player = (tgt).player;
  var est_player = position_estimation_arr[@ (tgt_player - 1)];
  var estimation_idx = est_player[@ 1];
  var estimation_data_arr = est_player[@ 0];
  // print_debug(`(0[0]): ${position_estimation_arr[@ 0][@ 0][@ 0]}`);
  // print_debug(`(1[0]): ${position_estimation_arr[@ 1][@ 0][@ 0]}`);
  if (estimation_idx >= frames) {
    
    // print_debug(`(${get_gameplay_time() % 3}): ${estimation_data_arr[@ frames]}`);
    return estimation_data_arr[@ frames];
  }

  var sim_x, sim_y, sim_hsp, sim_vsp;
  if (estimation_idx == -1) {
    sim_x = (tgt).x;
    sim_y = (tgt).y;
    sim_hsp = (tgt).hsp;
    sim_vsp = (tgt).vsp;
  } else {
    var currData = estimation_data_arr[@ estimation_idx];
    sim_x = currData[0];
    sim_y = currData[1];
    sim_hsp = currData[2];
    sim_vsp = currData[3];
  }
  
  // print_debug(`${estimation_idx}, ${sim_y}`);
  var sim_free = false;

  var tgt_max_fall = (tgt).max_fall;
  var tgt_grav = (tgt).grav;
  var tgt_air_fric = (tgt).air_friction;
  var tgt_gr_fric = (tgt).ground_friction;
  var tgt_fast_falling = (tgt).fast_falling;

  var currPlat = noone;
  var currPlat_top = noone;

  var repeatCount = min(frames - estimation_idx, maxNewFrames + 1);
  repeat(repeatCount) {
    var prev_x = sim_x;
    var prev_y = sim_y;

    sim_vsp += tgt_grav;
    if (sim_vsp > tgt_max_fall && !tgt_fast_falling) sim_vsp = tgt_max_fall; 
    sim_y += sim_vsp;

    currPlat = instance_position(sim_x, sim_y, solid_asset);
    if (currPlat != noone) {
        sim_y = get_instance_y( currPlat );
        sim_vsp = 0;
        sim_free = false;
    } else {
      currPlat = instance_position(sim_x, sim_y, platform_asset);
      if (currPlat != noone && prev_y <= get_instance_y( currPlat ) && sim_vsp > 0) {
        sim_y = get_instance_y( currPlat );
        sim_vsp = 0;
        sim_free = false;
      } else {
        sim_free = true;
        currPlat = noone;
      }
    }

    if (!position_meeting(sim_x + sim_hsp, sim_y - 1, solid_asset) && sim_hsp != 0) {
      var fric = (sim_free) ? tgt_air_fric : tgt_gr_fric;
      var sbf = sign(sim_hsp)
      sim_hsp -= fric * ((sim_hsp > 0) ? 1 : -1);
      if (sbf != sign(sim_hsp)) sim_hsp = 0;
      sim_x += sim_hsp;
    } else {
      sim_hsp = 0;
    }

    
    if (tgt_player == 1) make_line(prev_x, prev_y, sim_x, sim_y, $00ffff);

    est_player[@ 1] += 1;
    estimation_data_arr[@ est_player[@ 1]] = [sim_x, sim_y, sim_hsp, sim_vsp];
  }
  if (est_player[@ 1] < frames) return noone;
  return [sim_x, sim_y, sim_hsp, sim_vsp];

#define estimate_position_drift(tgt, frames, maxNewFrames, dir)
  var tgt_player = (tgt).player;
  var arr = (dir < 0) ? drift_l_estimation_arr : drift_r_estimation_arr;
  var dirMul = dir;

  var est_player = arr[@ (tgt_player - 1)];
  var estimation_idx = est_player[@ 1];
  var estimation_data_arr = est_player[@ 0];
  // print_debug(`(0[0]): ${position_estimation_arr[@ 0][@ 0][@ 0]}`);
  // print_debug(`(1[0]): ${position_estimation_arr[@ 1][@ 0][@ 0]}`);
  if (estimation_idx >= frames) {
    
    // print_debug(`(${get_gameplay_time() % 3}): ${estimation_data_arr[@ frames]}`);
    return estimation_data_arr[@ frames];
  }

  var sim_x, sim_y, sim_hsp, sim_vsp;
  if (estimation_idx == -1) {
    sim_x = (tgt).x;
    sim_y = (tgt).y;
    sim_hsp = (tgt).hsp;
    sim_vsp = (tgt).vsp;
  } else {
    var currData = estimation_data_arr[@ estimation_idx];
    sim_x = currData[0];
    sim_y = currData[1];
    sim_hsp = currData[2];
    sim_vsp = currData[3];
  }
  
  // print_debug(`${estimation_idx}, ${sim_y}`);
  var sim_free = false;

  var tgt_max_fall = (tgt).max_fall;
  var tgt_grav = (tgt).grav;
  var tgt_air_fric = (tgt).air_friction;
  var tgt_gr_fric = (tgt).ground_friction;
  var tgt_fast_falling = (tgt).fast_falling;

  var currPlat = noone;
  var currPlat_top = noone;

  var repeatCount = min(frames - estimation_idx, maxNewFrames + 1);
  repeat(repeatCount) {
    var prev_x = sim_x;
    var prev_y = sim_y;

    sim_vsp += tgt_grav;
    if (sim_vsp > tgt_max_fall && !tgt_fast_falling) sim_vsp = tgt_max_fall; 
    sim_y += sim_vsp;

    currPlat = instance_position(sim_x, sim_y, solid_asset);
    if (currPlat != noone) {
        sim_y = get_instance_y( currPlat );
        sim_vsp = 0;
        sim_free = false;
    } else {
      currPlat = instance_position(sim_x, sim_y, platform_asset);
      if (currPlat != noone && prev_y <= get_instance_y( currPlat ) && sim_vsp > 0) {
        sim_y = get_instance_y( currPlat );
        sim_vsp = 0;
        sim_free = false;
      } else {
        sim_free = true;
        currPlat = noone;
      }
    }

    if (!position_meeting(sim_x + sim_hsp, sim_y - 1, solid_asset) && sim_hsp != 0) {
      var maxSpd = (sim_free) ? air_max_speed : walk_speed;
      if (abs(sim_hsp) != maxSpd) {
        var fric = (sim_free) ? tgt_air_fric : tgt_gr_fric;
        var sbf = sign(sim_hsp)
        sim_hsp -= fric * ((sim_hsp > 0) ? 1 : -1);
        if (sbf != sign(sim_hsp)) sim_hsp = 0;
        sim_hsp += ((sim_free) ? air_accel : walk_accel) * dirMul;
        if (abs(sim_hsp) > maxSpd) sim_hsp = maxSpd * dirMul;
      }
      sim_x += sim_hsp;
    } else {
      sim_hsp = 0;
    }

    
    if (tgt_player == 1) make_line(prev_x, prev_y, sim_x, sim_y, $0088ff);

    est_player[@ 1] += 1;
    estimation_data_arr[@ est_player[@ 1]] = [sim_x, sim_y, sim_hsp, sim_vsp];
  }
  if (est_player[@ 1] < frames) return noone;
  return [sim_x, sim_y, sim_hsp, sim_vsp];
#define get_floor_at(x1, y1)
  for (var i = 0; i < plat_bboxes[@ PD_COUNT]; i++) {
    var p = plat_bboxes[@ PD_DATA][| i];
    if (p[@ BBOX_LEFT] <= x1 && x1 <= p[@ BBOX_RIGHT] && p[@ BBOX_TOP] <= y1 && y1 <= p[@ BBOX_BOTTOM]) return [p, "plat"];
  }
  for (var i = 0; i < solid_bboxes[@ PD_COUNT]; i++) {
    var p = solid_bboxes[@ PD_DATA][| i];
    if (p[@ BBOX_LEFT] <= x1 && x1 <= p[@ BBOX_RIGHT] && p[@ BBOX_TOP] <= y1 && y1 <= p[@ BBOX_BOTTOM]) return [p, "solid"];
  }
  return noone;

#define get_plat_at(x1, y1)
  var count = plat_bboxes[@ PD_COUNT];
  for (var i = 0; i < count; i++) {
    var p = plat_bboxes[@ PD_DATA][| i];
    if (p[@ BBOX_LEFT] <= x1 && x1 <= p[@ BBOX_RIGHT] && p[@ BBOX_TOP] <= y1 && y1 <= p[@ BBOX_BOTTOM]) return [p, "plat"];
  }
  return noone;

#define get_solid_at(x1, y1)
  var count = solid_bboxes[@ PD_COUNT];
  for (var i = 0; i < count; i++) {
    var p = solid_bboxes[@ PD_DATA][| i];
    if (p[@ BBOX_LEFT] <= x1 && x1 <= p[@ BBOX_RIGHT] && p[@ BBOX_TOP] <= y1 && y1 <= p[@ BBOX_BOTTOM]) return [p, "solid"];
  }
  return noone;

#define player_color(tgt)
  switch(tgt.player) {
    case 1: return $241CED
    case 2: return $EFB700
    case 3: return $B1A3FF
    case 4: return $1DE6A8
  }
  return $000000;
#define get_random_point_on_stage()
  var len = solid_bboxes[@ 1];
  var bbox = noone;
  var sy = (self).y;
  for (var i = 0; i < len; i++) {
    var idx = random_func( 2, len, true );
    bbox = solid_bboxes[@ 0][| idx];
    var offset = sy - bbox[@ BBOX_TOP];
    if (abs(offset) < 800) break;
  }
  var range = bbox[@ BBOX_RIGHT] - bbox[@ BBOX_LEFT];
  var xPos = bbox[@ BBOX_LEFT] + random_func(3, range, true);
  return [xPos, bbox[BBOX_TOP], bbox];

#define get_random_point_on_platform()
  var len = plat_bboxes[@ 1];
  var bbox = noone;
  var sy = (self).y;
  for (var i = 0; i < len; i++) {
    var idx = random_func( 2, len, true );
    bbox = plat_bboxes[@ 0][| idx];
    var offset = sy - bbox[@ BBOX_TOP];
    if (abs(offset) < 800) break;
  }
  var range = bbox[@ BBOX_RIGHT] - bbox[@ BBOX_LEFT];
  var xPos = bbox[@ BBOX_LEFT] + random_func(3, range, true);
  return [xPos, bbox[BBOX_TOP], bbox];

#define bbox_overlap(b1, b2)

    
  if (b1[@ BBOX_LEFT] >= b2[@ BBOX_RIGHT] || b2[@ BBOX_LEFT] >= b1[@ BBOX_RIGHT]) return false;
  if (b1[@ BBOX_TOP] >= b2[@ BBOX_BOTTOM] || b2[@ BBOX_TOP] >= b1[@ BBOX_BOTTOM]) return false;
  return true;

// ====================== "FUNCTIONS" THAT ARE AUTOMATICALLY CACHED WITH "fn(name)" ======================
// caches the result of the given function for later use, ensuring that it's as efficient as possible.
#define fn(name, tgt)
  // if the result has been cached, return the result
  var toFind = `${name}|${tgt.id}`;
  if (ds_map_exists(host_player.ai_fn_cache, toFind)) {
    return host_player.ai_fn_cache[? toFind];
  }
  var out = script_execute(script_get_index(name), tgt);
  ds_map_set(host_player.ai_fn_cache, toFind, out);
  return out;
// returns what direction the player is relative to the AI
#define OPos(tgt)
  if ((tgt).x < (self).x) return "left";
  else return "right";

// returns the nearest floor that the target is above, if one exists
// contains the distance to the floor as well as the floor's bounding box
#define GetFloor(tgt)
  var nearestPlat = fn("GetFloorPlat", tgt);
  var nearestSolid = fn("GetFloorSolid", tgt);
  if (nearestPlat == noone && nearestSolid == noone) return noone;
  else if (nearestPlat == noone && nearestSolid != noone) return nearestSolid;
  else if (nearestPlat != noone && nearestSolid == noone) return nearestPlat;
  else if (nearestPlat[@ PDD_DIST] < nearestSolid[@ PDD_DIST]) return nearestPlat;
  else return nearestSolid;
  
// returns the nearest PLATFORM that the target is above, if one exists
// contains the distance to the floor as well as the floor's bounding box
#define GetFloorPlat(tgt)
  var nearestPlat = [9999, noone, "Plat"];
  var w = fn("HurtboxWidth", tgt) / 4;
  var xCollLeft = (tgt).x - w;
  var xCollRight = (tgt).x + w;
  var platCount = plat_bboxes[@ PD_COUNT];
  for (var i = 0; i < platCount; i++) {
    var bbox = plat_bboxes[@ PD_DATA][| i];
    if (bbox[@ BBOX_LEFT] <= xCollLeft && xCollRight <= bbox[@ BBOX_RIGHT]) {
      var dist = bbox[@ BBOX_TOP] - (tgt).y;
      if (sign(dist) != -1 && dist < nearestPlat[@ PDD_DIST]) {
        nearestPlat[@ PDD_DIST] = dist;
        nearestPlat[@ PDD_BBOX] = bbox;
      } 
    }
  }
  if (nearestPlat[@ PDD_BBOX] == noone) return noone;
  return nearestPlat;

// returns the nearest SOLID floor that the target is above, if one exists
// contains the distance to the floor as well as the floor's bounding box
#define GetFloorSolid(tgt)
  var nearestSolid = [9999, noone, "Solid"];
  var w = fn("HurtboxWidth", tgt) / 4;
  var xCollLeft = (tgt).x - w;
  var xCollRight = (tgt).x + w;
  var solidCount = solid_bboxes[@ PD_COUNT];
  for (var i = 0; i < solidCount; i++) {
    var bbox = solid_bboxes[@ PD_DATA][| i];
    if (bbox[@ BBOX_LEFT] <= xCollLeft && xCollRight <= bbox[@ BBOX_RIGHT]) {
      var dist = bbox[@ BBOX_TOP] - (tgt).y;
      if (dist >= 0 && dist < nearestSolid[@ PDD_DIST]) {
        nearestSolid[@ PDD_DIST] = dist;
        nearestSolid[@ PDD_BBOX] = bbox;
      } 
    }
  }
  if (nearestSolid[@ PDD_BBOX] == noone) return noone;
  return nearestSolid;

#define GetCeil(tgt)
  var nearestPlat = fn("GetCeilPlat", tgt);
  var nearestSolid = fn("GetCeilSolid", tgt);
  if (nearestPlat == noone && nearestSolid == noone) return noone;
  else if (nearestPlat == noone && nearestSolid != noone) return nearestSolid;
  else if (nearestPlat != noone && nearestSolid == noone) return nearestPlat;
  else if (nearestPlat[@ PDD_DIST] < nearestSolid[@ PDD_DIST]) return nearestPlat;
  else return nearestSolid;

#define GetCeilPlat(tgt)
  var nearestPlat = [9999, noone, "Plat"];
  var platCount = plat_bboxes[@ PD_COUNT];
  for (var i = 0; i < platCount; i++) {
    var bbox = plat_bboxes[@ PD_DATA][| i];
    if (bbox[@ BBOX_LEFT] <= (tgt).x && (tgt).x <= bbox[@ BBOX_RIGHT]) {
      var dist = ((tgt).y - 1) - bbox[@ BBOX_TOP];
      if (dist >= 0 && dist < nearestPlat[@ PDD_DIST]) {
        nearestPlat[@ PDD_DIST] = dist;
        nearestPlat[@ PDD_BBOX] = bbox;
      } 
    }
  }
  if (nearestPlat[@ PDD_BBOX] == noone) return noone;
  return nearestPlat;

#define GetCeilSolid(tgt)
  var nearestSolid = [9999, noone, "Solid"];
  var solidCount = solid_bboxes[@ PD_COUNT];
  for (var i = 0; i < solidCount; i++) {
    var bbox = solid_bboxes[@ PD_DATA][| i];
    if (bbox[@ BBOX_LEFT] <= x && (tgt).x <= bbox[@ BBOX_RIGHT]) {
      var dist = ((tgt).y - 1) - bbox[@ BBOX_TOP];
      if (dist >= 0 && dist < nearestSolid[@ PDD_DIST]) {
        nearestSolid[@ PDD_DIST] = dist;
        nearestSolid[@ PDD_BBOX] = bbox;
      } 
    }
  }
  if (nearestSolid[@ PDD_BBOX] == noone) return noone;
  return nearestSolid;

#define GetWall(tgt)
  var nearestPlat = fn("GetWallPlat", tgt);
  var nearestSolid = fn("GetWallSolid", tgt);
  if (nearestPlat == noone && nearestSolid == noone) return noone;
  else if (nearestPlat == noone && nearestSolid != noone) return nearestSolid;
  else if (nearestPlat != noone && nearestSolid == noone) return nearestPlat;
  else if (abs(nearestPlat[@ PDD_DIST]) < abs(nearestSolid[@ PDD_DIST])) return nearestPlat;
  else return nearestSolid;

#define GetWallPlat(tgt)
  var nearestPlat = [9999, noone, "Plat"];
  var platCount = plat_bboxes[@ PD_COUNT];
  for (var i = 0; i < platCount; i++) {
    var bbox = plat_bboxes[@ PD_DATA][| i];
    if (bbox[@ BBOX_TOP] <= ((tgt).y - 1) && ((tgt).y - 1) <= bbox[@ BBOX_BOTTOM]) {
      var dist = bbox[@ BBOX_LEFT] - (tgt).x;
      if (abs(dist) < abs(nearestPlat[@ PDD_DIST])) {
        nearestPlat[@ PDD_DIST] = dist;
        nearestPlat[@ PDD_BBOX] = bbox;
      } 

      dist = bbox[@ BBOX_RIGHT] - (tgt).x;
      if (abs(dist) < abs(nearestPlat[@ PDD_DIST])) {
        nearestPlat[@ PDD_DIST] = dist;
        nearestPlat[@ PDD_BBOX] = bbox;
      } 
    }
  }
  if (nearestPlat[@ PDD_BBOX] == noone) return noone;
  return nearestPlat;

#define GetWallSolid(tgt)
  var nearestSolid = [9999, noone, "Solid"];
  var solidCount = solid_bboxes[@ PD_COUNT];
  for (var i = 0; i < solidCount; i++) {
    var bbox = solid_bboxes[@ PD_DATA][| i];
    if (bbox[@ BBOX_TOP] <= ((tgt).y - 1) && ((tgt).y - 1) <= bbox[@ BBOX_BOTTOM]) {
      var dist = bbox[@ BBOX_LEFT] - (tgt).x;
      if (abs(dist) < abs(nearestSolid[@ PDD_DIST])) {
        nearestSolid[@ PDD_DIST] = dist;
        nearestSolid[@ PDD_BBOX] = bbox;
      } 

      dist = bbox[@ BBOX_RIGHT] - (tgt).x;
      if (abs(dist) < abs(nearestSolid[@ PDD_DIST])) {
        nearestSolid[@ PDD_DIST] = dist;
        nearestSolid[@ PDD_BBOX] = bbox;
      } 
    }
  }
  if (nearestSolid[@ PDD_BBOX] == noone) return noone;
  return nearestSolid;

// returns the height / width of the target's sprite's height
#define SpriteHeight(tgt)
  return sprite_get_bbox_top((tgt).sprite_index) - sprite_get_bbox_bottom((tgt).sprite_index);

#define SpriteWidth(tgt)
  return sprite_get_bbox_right((tgt).sprite_index) - sprite_get_bbox_left((tgt).sprite_index);

// returns the height / width of the target's sprite's mask
#define MaskHeight(tgt)
  return sprite_get_height((tgt).mask_index) * (tgt).image_yscale;

#define MaskWidth(tgt)
  return sprite_get_width((tgt).mask_index) * (tgt).image_xscale * (tgt).spr_dir;

#define HurtboxHeight(tgt)
  return sprite_get_bbox_top((tgt).hurtboxID.sprite_index) - sprite_get_bbox_bottom((tgt).hurtboxID.sprite_index);

#define HurtboxWidth(tgt)
  return sprite_get_bbox_right((tgt).hurtboxID.sprite_index) - sprite_get_bbox_left((tgt).hurtboxID.sprite_index);
// returns the number of frames of hitstun remaining
#define HitstunRemaining(tgt)
  return (tgt).hitstun - (tgt).state_timer;

#define SamePlane(tgt)
  var selfBounds = fn("GetFloor", self);
  if (selfBounds == noone) return false;
  var oBounds = fn("GetFloor", tgt);
  if (oBounds == noone) return false;
  if (selfBounds[@ PDD_BBOX][@ BBOX_TOP] == oBounds[@ PDD_BBOX][@ BBOX_TOP] && selfBounds[@ PDD_BBOX][@ BBOX_LEFT] == oBounds[@ PDD_BBOX][@ BBOX_LEFT]) return true;
  else return false;
// ====================== DON'T TOUCH THESE ======================
// YAL's fantastic collision_line_point code
#define collision_line_point(x1, y1, x2, y2, obj, prec, notme)
  var rr, rx, ry;
  rr = collision_line(x1, y1, x2, y2, obj, prec, notme);
  rx = x2;
  ry = y2;
  if (rr != noone) {
      var p0 = 0;
      var p1 = 1;
      repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
          var np = p0 + (p1 - p0) * 0.5;
          var nx = x1 + (x2 - x1) * np;
          var ny = y1 + (y2 - y1) * np;
          var px = x1 + (x2 - x1) * p0;
          var py = y1 + (y2 - y1) * p0;
          var nr = collision_line(px, py, nx, ny, obj, prec, notme);
          if (nr != noone) {
              rr = nr;
              rx = nx;
              ry = ny;
              p1 = np;
          } else p0 = np;
      }
  }
  var r;
  r[@ 0] = rr;
  r[@ 1] = rx;
  r[@ 2] = ry;
  return r;

// used at the start to prevent anything from happening without explicit commands
#define clear_ai_inputs()
  attack_pressed = false;
  special_pressed = false;
  jump_pressed = false;
  shield_pressed = false;
  taunt_pressed = false;

  up_strong_pressed = false;
  left_strong_pressed = false;
  down_strong_pressed = false;
  right_strong_pressed = false;

  up_pressed = false;
  left_pressed = false;
  down_pressed = false;
  right_pressed = false;

  up_hard_pressed = false;
  left_hard_pressed = false;
  down_hard_pressed = false;
  right_hard_pressed = false;

  attack_down = false;
  special_down = false;
  jump_down = false;
  shield_down = false;
  taunt_down = false;

  up_strong_down = false;
  left_strong_down = false;
  down_strong_down = false;
  right_strong_down = false;

  up_hard_down = false;
  left_hard_down = false;
  down_hard_down = false;
  right_hard_down = false;


  up_down = false;
  left_down = false;
  down_down = false;
  right_down = false;

  ai_going_left = false;
  ai_going_right = false;
  ai_going_into_fromtack = false;
  ai_fromtack_timer = 0;
  ai_attack_time = 1;
  // ai_recovering = false;
  
  joy_dir = -1;
  joy_pad_idle = true;

// presses attack, special, jump, or shield based on the "ai_inputs" variable.
// automatically switches between "pressed" and "down" variants

#define process_inputs()
  var inputs = [
    [INP_ATTACK, "attack"],
    [INP_SPECIAL, "special"],
    [INP_JUMP, "jump"],
    [INP_SHIELD, "shield"],
    [INP_LEFT, "left"],
    [INP_RIGHT, "right"],
    [INP_UP, "up"],
    [INP_DOWN, "down"],
    [INP_LEFT_HARD, "left_hard"],
    [INP_RIGHT_HARD, "right_hard"],
    [INP_UP_HARD, "up_hard"],
    [INP_DOWN_HARD, "down_hard"],
    [INP_TAUNT, "taunt"]
  ];
  
  var strong_inputs = [
      [INP_UP_STRONG, "up_strong"],
      [INP_DOWN_STRONG, "down_strong"],
      [INP_LEFT_STRONG, "left_strong"],
      [INP_RIGHT_STRONG, "right_strong"],
    ]
  
  var len = array_length_1d(inputs);
  var hard_inputs = INP_LEFT_HARD | INP_RIGHT_HARD | INP_UP_HARD | INP_DOWN_HARD;
  var dir_inputs = INP_LEFT | INP_RIGHT | INP_UP | INP_DOWN;
  for (var i = 0; i < len; i++) {
    var input = inputs[@ i][@ 0];
    var input_name = inputs[@ i][@ 1];
    if (ai_inputs & input != 0) {
      if (ai_prev_inputs & input == 0) variable_instance_set(self, `${input_name}_pressed`, true);
      if (input & hard_inputs == 0) variable_instance_set(self, `${input_name}_down`, true);
    }
  }
  
  if (ai_inputs & INP_LEFT_HARD != 0) {
    left_down = true;
    left_pressed = true;
  }
  if (ai_inputs & INP_RIGHT_HARD != 0) {
    right_down = true;
    right_pressed = true;
  }
  if (ai_inputs & INP_UP_HARD != 0) {
    up_down = true;
    up_pressed = true;
  }
  if (ai_inputs & INP_DOWN_HARD != 0) {
    down_down = true;
    down_pressed = true;
  }
  if (ai_inputs & (INP_LEFT_STRONG | INP_RIGHT_STRONG | INP_UP_STRONG | INP_DOWN_STRONG) != 0){
    // print("aaaaaaaaaaaaaaaaaa")
    // strong_down = true;
    // up_strong_pressed = true;
    var len = array_length_1d(strong_inputs);
    for (var i = 0; i < len; i++) {
      var input = strong_inputs[@ i][@ 0];
      var input_name = strong_inputs[@ i][@ 1];
      if (ai_inputs & input != 0) {
        if (ai_prev_inputs & input == 0) variable_instance_set(self, `${input_name}_pressed`, true);
        // if (input & hard_inputs == 0) variable_instance_set(self, `${input_name}_down`, true);
      }
    }
  }
  if (joy_dir != -1) joy_pad_idle = false;
  ai_prev_prev_inputs = ai_prev_inputs;
  ai_prev_inputs = ai_inputs;
  
// goes to the current AI script automatically
// also checks for timeouts
#define exec_ai_script()
  script_execute(script_get_index(ai_current_script));
  ai_script_execution_frame ++;
  ai_script_timeout --;
  if (ai_script_timeout <= 0) {
    call(ai_main_script);
    ai_script_timeout = 180 // 3 seconds
  }

#define obtain_stage_bboxes()
  with (platform_asset) {
    var x = get_instance_x(self);
    var y = get_instance_y(self);
    var exists = false;
    for (var i = 0; i < ds_list_size((other).plat_bboxes[@ PD_DATA]) && !exists; i++) {
      var bbox = (other).plat_bboxes[@ PD_DATA][| i];
      if (bbox[@ BBOX_LEFT] <= x && x <= bbox[@ BBOX_RIGHT] && bbox[@ BBOX_TOP] <= y && y <= bbox[@ BBOX_BOTTOM]) exists = true;
    }
    if (!exists) {
      var xScan = x;
      var yScan = y;
      while (instance_position(xScan, y, (other).platform_asset) != noone) xScan -= 32;
      xScan += 32;
      while (instance_position(xScan, yScan, (other).platform_asset) != noone) yScan -= 32;
      yScan += 32;
      var left = xScan;
      var top = yScan;
      while (instance_position(xScan, y, (other).platform_asset) != noone) xScan += 32;
      while (instance_position(x, yScan, (other).platform_asset) != noone) yScan += 32;
      var right = xScan - 1;
      var bottom = yScan - 16;

      ds_list_add((other).plat_bboxes[@ PD_DATA], [top, bottom, left, right]);
      (other).plat_bboxes[@ PD_COUNT] ++;
    }
  }
  with (solid_asset) { 
    var x = get_instance_x(self);
    var y = get_instance_y(self);
    var exists = false;
    for (var i = 0; i < ds_list_size((other).solid_bboxes[@ PD_DATA]) && !exists; i++) {
      var bbox = (other).solid_bboxes[@ PD_DATA][| i];
      if (bbox[@ BBOX_LEFT] <= x && x <= bbox[@ BBOX_RIGHT] && bbox[@ BBOX_TOP] <= y && y <= bbox[@ BBOX_BOTTOM]) exists = true;
    }
    if (!exists) {
      var xScan = x;
      var yScan = y;
      while (instance_position(xScan, y, (other).solid_asset) != noone) xScan -= 32;
      xScan += 32;
      while (instance_position(xScan, yScan, (other).solid_asset) != noone) yScan -= 32;
      yScan += 32;
      var left = xScan;
      var top = yScan;
      while (instance_position(xScan, y, (other).solid_asset) != noone) xScan += 32;
      while (instance_position(x, yScan, (other).solid_asset) != noone) yScan += 32;
      var right = xScan - 1;
      var bottom = yScan - 1;

      ds_list_add((other).solid_bboxes[@ PD_DATA], [top, bottom, left, right]);
      (other).solid_bboxes[@ PD_COUNT] ++;
    }
  }
  bboxes_obtained = true;
#define obtain_jump_data()
  var height = 0;
  var vel = jump_speed;
  var frame_count = 0
  while (vel > 0) {
    height += vel;
    vel -= gravity_speed;
    frame_count ++;
  }
  jump_height = height;
  jump_vert_time = frame_count;

  height = 0;
  vel = short_hop_speed;
  frame_count = 0
  while (vel > 0) {
    height += vel;
    vel -= gravity_speed;
    frame_count ++;
  }
  short_hop_height = height;
  short_hop_vert_time = frame_count;

  height = 0;
  vel = djump_speed;
  frame_count = 0
  
  while (vel > 0 || frame_count < djump_accel_end_time) {
    height += vel;
    if (frame_count >= djump_accel_start_time && frame_count < djump_accel_end_time) vel += djump_accel;
    vel -= gravity_speed;
    frame_count ++;
  }
  djump_height = height;
  djump_vert_time = frame_count;

#define obtain_attack_data()
  var len = array_length_1d(ai_attacks);
  for (var i = 0; i < len; i++) {
    var atp = ai_attacks[i];
    var thisAttack = atp[0];
    var groups = array_length_1d(atp);
    for (var j = 1; j < groups; j++) {
      ds_list_add(ai_attack_data, calc_attack_data(thisAttack, atp[j]));
    }
  }
  attack_data_obtained = true;

#define calc_attack_data(index, hitboxes)
  var hit_window = get_hitbox_value( index, hitboxes[0], HG_WINDOW );
  var startFrame = get_hitbox_value( index, hitboxes[0], HG_WINDOW_CREATION_FRAME );
  for (var i = 0; i < hit_window; i++) {
    startFrame += get_window_value( index, i+1, AG_WINDOW_LENGTH );
  }
  var left = 9999;
  var top = 9999;
  var right = -9999;
  var bottom = -9999;

  var len = array_length_1d(hitboxes);
  for (var i = 0; i < len; i++) {
    var hb = hitboxes[i];
    var hbx = get_hitbox_value( index, hb, HG_HITBOX_X );
    var hby = get_hitbox_value( index, hb, HG_HITBOX_Y );
    var hbsx = get_hitbox_value( index, hb, HG_WIDTH );
    var hbsy = get_hitbox_value( index, hb, HG_HEIGHT );

    var t = hby - hbsy / 2;
    if (top > t) top = t;
    var b = hby + hbsy / 2;
    if (bottom < b) bottom = b;
    var l = hbx - hbsx / 2;
    if (left > l) left = l;
    var r = hbx + hbsx / 2;
    if (right < r) right = r;
  }

  var width = (right - left);
  var height = (bottom - top);
  var cx = (right + left) / 2;
  var cy = (bottom + top) / 2;

  var data = {
    attack: index,
    width: width,
    height: height,
    cx: cx,
    cy: cy,
    frame: startFrame
    // bbox: [top, bottom, left, right]
  }

  return data;

