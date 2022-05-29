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

#macro AD_INDEX 0
#macro AD_WIDTH 1
#macro AD_HEIGHT 2
#macro AD_CX 3
#macro AD_CY 4
#macro AD_FRAME 5

if (!attack_data_obtained) obtain_attack_data();

// // MAIN LOOP DO NOT TOUCH
// ds_list_clear(ai_draw);

if(get_training_cpu_action() == CPU_FIGHT) main()


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

xdisp = ai_target.x - x
ydisp = ai_target.y - y
xdist = abs(xdisp);
ydist = abs(ydisp);
dist = point_distance(x, y, ai_target.x, ai_target.y)
var upward_velocity = min(0, vsp)

var offstage = (x > room_width - stagex || x < stagex);
var hurtboxWidth = HurtboxWidth(ai_target);
var ai_target_offstage = (ai_target.x - hurtboxWidth > room_width - stagex || ai_target.x + hurtboxWidth < stagex);

targetdamage = get_player_damage( ai_target.player );

AttackUpdate();

if (ai_target.state == PS_DEAD or ai_target.state == PS_RESPAWN) and !free and !(x > room_width/2 - 100 and x < room_width/2 + 100){
	clear_button_buffer(PC_JUMP_PRESSED);
	jump_down = false;
	jump_pressed = false;
	tiltDance();
}

// if(!free){
// 	if(ground_type == 2){
// 		if(xdist < 50 and ydisp > char_height and !ai_target.free){
// 			tap_down()
// 		}
// 	}
// }

if !free and ai_target.y - 70 > y and !ai_target.free {
	tap_down()
}

if(free and has_hit and state == PS_ATTACK_AIR and !offstage){
	if ((y > stagey - char_height and y < stagey) or collision_point(x, y+char_height, platform_asset, false, true)){
		tap_down()
	}
}

// print(agressive_score())



chosenAttack = noone;
if(can_attack or state == PS_DASH_START or state == PS_DASH){
	if(!free){
		strongPercent = (2 - ai_target.knockback_adj) * 70 < targetdamage;
		
		if can_strong{
			hitboxloc("strongs")
		}
		
		hitboxloc("tilts")
		
		if(can_special){
		  
      hitboxloc("specials")
      if(ai_target.static_pull and dist > 200){
        if(free){
          perform_attack(AT_NSPECIAL)
        }else{
          perform_attack(random_func(1, 2, true) == 0 ? AT_NSPECIAL : AT_USPECIAL_GROUND)
        }
        // var static_attacks = free ? [AT_NSPECIAL] : [AT_NSPECIAL, AT_USPECIAL_GROUND];
		    
		  }
    }
	}else{
		hitboxloc("aerials")
	}
}

if(chosenAttack != noone){
	clear_ai_inputs();
	perform_attack(chosenAttack); 
	print(get_attack_name(chosenAttack));
}


#define agressive_score()
var value = 0;
var ai_dmg = get_player_damage(player);
var ai_target_dmg = get_player_damage(ai_target.player);
var dmg_dif = (ai_target_dmg - ai_dmg);
// value += dist*dmg_dif/50 * n_times_got_hit/

value += ( sign(dmg_dif)*(dmg_dif/50*dmg_dif/50) - ai_dmg)/50;

return value

#define AttackUpdate()

if(state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
  switch(attack){
    case AT_NSPECIAL:
    	if(ai_target.static_pull and dist > 200) or ai_target.hitstun_full - ai_target.hitstun > 30{
        press_special()
      }
      break;
    case AT_USPECIAL:
    	if(vsp > 0 and collision_rectangle(bbox_left - 1, bbox_top - 1, bbox_right + 1, bbox_bottom + 1, solid_asset, false, true)){
    		print("pressing jump")
    		press_jump()
    	}
    case AT_USPECIAL_GROUND:
      if(ai_target.static_pull and dist > 200) or (ai_target.state == PS_HITSTUN and  ai_target.hitstun_full - ai_target.hitstun > 30){
        press_special()
      }
      break;
    break;
    case AT_FSPECIAL:
      if(window == 2 and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
        press_parry()
      }
    break;
    case AT_EXTRA_1:
    	if(y - stagey > 120){
    		press_jump()
    	}
  }
}

#define newPredict(tgt, frame, vo_x, vo_y)

var xx = tgt.x;
var yy = tgt.y;
var ac_y = tgt.free ? tgt.grav : 0 ;
var ac_x = tgt.free ? -tgt.air_friction*sign(tgt.hsp) : -tgt.ground_friction*sign(tgt.hsp);
// print(ac_y)
var new_x2 = xx + vo_x*frame;
var new_x = new_x2 + ac_x*frame*frame/2;
var new_y = yy;

if(sign(new_x2 - xx) != sign(new_x - xx)){
	new_x = xx;
}

var max_fall_spd = tgt.fast_falling ? fast_fall : max_fall;
var voat = ceil((max_fall_spd - vo_y)/ac_y); // t when max_speed


if(tgt.free){
	if(frame > voat){
		new_y = yy + vo_y*voat + ac_y*voat*voat/2;
		new_y += max_fall_spd*(frame-voat);
	}else{
		new_y = yy + vo_y*frame + ac_y*frame*frame/2;
	}
}


// make_line(xx,yy,new_x,new_y, c_fuchsia);

return [new_x, new_y];

#define hitboxloc

switch(argument[0]){
	case "tilts":
		var attacke = [AT_JAB, AT_DTILT, AT_FTILT, AT_UTILT];

		break;
		
	case "aerials":
		var attacke = [AT_NAIR, AT_DAIR, AT_FAIR, AT_UAIR, AT_BAIR, AT_FSPECIAL_AIR];
		break;
		
	case "strongs":
		var attacke = [AT_DSTRONG, AT_USTRONG, AT_FSTRONG];
		break;
	case "specials":
		var attacke = [AT_USPECIAL_GROUND, AT_NSPECIAL];
		break;
	case "DACUS":
		var attacke = [AT_USTRONG];
		break;
}

var len = array_length_1d(attacke);

var listAtk = [];
var j = 0;
var distadd_x = 0;
var distadd_y = 0;
var thw = HurtboxWidth(ai_target);
var thh = HurtboxHeight(ai_target);

for(var i = 0; i < len; i++){
	// print(ai_attack_data)
  var cad = ai_attack_data[@ attacke[@ i]];
  var vo_x = self.hsp;
  var vo_y = self.vsp;
  
  if(attacke[i] == AT_DATTACK){
  	distadd_x = 100;
  }
  if(attacke[i] == AT_FSPECIAL_AIR){
  	vo_x = 3*spr_dir;
  	vo_y = -8;
  }	
  
  lastPos = newPredict(self, cad[@ AD_FRAME], vo_x, vo_y);
  estOPos = newPredict(ai_target, cad[@ AD_FRAME], ai_target.hsp, ai_target.vsp);

  
  var ai_target_hurtbox_bbox = [estOPos[@ 1] + thh, estOPos[@ 1], estOPos[@ 0] - thw / 2, estOPos[@ 0] + thw / 2];

  
  var attack_bbox =  [lastPos[@ 1] + (cad[@ AD_CY] + distadd_y) - cad[@ AD_HEIGHT] / 2,
									    lastPos[@ 1] + (cad[@ AD_CY] + distadd_y) + cad[@ AD_HEIGHT] / 2,
									    lastPos[@ 0] + (cad[@ AD_CX] + distadd_x) * spr_dir - cad[@ AD_WIDTH] / 2,
									    lastPos[@ 0] + (cad[@ AD_CX] + distadd_x) * spr_dir + cad[@ AD_WIDTH] / 2];
    
  var ov = amount_of_rectangle_overlap(ai_target_hurtbox_bbox[@ BBOX_LEFT], ai_target_hurtbox_bbox[@ BBOX_TOP], ai_target_hurtbox_bbox[@ BBOX_RIGHT], ai_target_hurtbox_bbox[@ BBOX_BOTTOM], 
        attack_bbox[@ BBOX_LEFT], attack_bbox[@ BBOX_TOP], attack_bbox[@ BBOX_RIGHT], attack_bbox[@ BBOX_BOTTOM])
  // if(true) make_rect_outline(attack_bbox[@ BBOX_LEFT], attack_bbox[@ BBOX_TOP], attack_bbox[@ BBOX_RIGHT], attack_bbox[@ BBOX_BOTTOM], $880088);
  if(ov){
  	listAtk[j] = attacke[i];
		j++;
  }
  
  // var ai_target_hurtbox_bbox = [estOPos[@ 1] + thh, estOPos[@ 1], estOPos[@ 0] - thw / 2, estOPos[@ 0] + thw / 2];
  
  
}

var reroll = true;
len = array_length_1d(listAtk);
iterations = 0;

//Chooses from the new array based on a set of conditions randomly, test are done to reroll for a new attack if a condition is not met
if len != 0{
	while(reroll and iterations < 5){
		
		iterations++;
		reroll = false;
		
		chosenAttack = listAtk[random_func(2, j, true)];
		
		if(chosenAttack == AT_DATTACK){
			if(state != PS_DASH_START or state != PS_DASH){
				reroll = true;
			}
		}
		
	}
	
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

#define player_color(tgt)
  switch(tgt.player) {
    case 1: return $241CED
    case 2: return $EFB700
    case 3: return $B1A3FF
    case 4: return $1DE6A8
  }
  return $000000;

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
  if ((tgt).x < (self).x) return -1;
  else return 1;
  
// returns the height / width of the target's sprite's height
#define SpriteHeight(tgt)
  return (tgt).bbox_top - (tgt).bbox_bottom;

#define SpriteWidth(tgt)
  return (tgt).bbox_right - (tgt).bbox_left;

// returns the height / width of the target's sprite's mask
#define MaskHeight(tgt)
  return sprite_get_height((tgt).mask_index) * (tgt).image_yscale;

#define MaskWidth(tgt)
  return sprite_get_width((tgt).mask_index) * (tgt).image_xscale * (tgt).spr_dir;

#define HurtboxHeight(tgt)
  return (tgt).hurtboxID.bbox_top - (tgt).hurtboxID.bbox_bottom;

#define HurtboxWidth(tgt)
  return (tgt).hurtboxID.bbox_right - (tgt).hurtboxID.bbox_left;
// returns the number of frames of hitstun remaining
#define HitstunRemaining(tgt)
  return (tgt).hitstun - (tgt).state_timer;

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

#region inputs

#define tiltDance

if !free{
	if spr_dir == 1{
		left_down = true;
	}else{
		right_down = true;
	}
}


#define hold_toward_direction(dir)
	if dir < 0 {
		press_left()
	} else {
		press_right()
	}

#define hold_towards_target
	hold_toward_direction(xdisp)

#define hold_away_from_target
	hold_toward_direction(-xdisp)

#define hold_forwards
	hold_toward_direction(spr_dir)

#define hold_backwards
	hold_toward_direction(-spr_dir)

#define hold_neutral
	unpress_left()
	unpress_right()
	unpress_up()
	unpress_down()

#define hold_toward_center
	var center_dir = -sign(x - room_width / 2);
	hold_toward_direction(center_dir)

#define tap_current_horizontal_direction
	if left_down {
		tap_left()
	} else if right_down {
		tap_right()
	}

#define unpress_left()
	left_down = false
	left_pressed = false
	left_hard_down = false
	left_hard_pressed = false
	left_strong_down = false
	left_strong_pressed = false

#define unpress_right()
	right_down = false
	right_pressed = false
	right_hard_down = false
	right_hard_pressed = false
	right_strong_down = false
	right_strong_pressed = false

#define unpress_up()
	up_down = false
	up_pressed = false
	up_hard_down = false
	up_hard_pressed = false
	up_strong_down = false
	up_strong_pressed = false

#define unpress_down()
	down_down = false
	down_pressed = false
	down_hard_down = false
	down_hard_pressed = false
	down_strong_down = false
	down_strong_pressed = false
	
#define press_left()
	left_down = true
	left_pressed = true
	unpress_right()	

#define tap_left()
	press_left()
	left_hard_down = true
	left_hard_pressed = true

#define press_right()
	right_down = true
	right_pressed = true
	unpress_left()

#define tap_right()
	press_right()
	right_hard_down = true
	right_hard_pressed = true

#define press_up()
	up_down = true
	up_pressed = true
	unpress_down()
	
#define tap_up()
	press_up()
	up_hard_down = true
	up_hard_pressed = true

#define press_down()
  	down_down = true
  	down_pressed = true
	unpress_up()

#define tap_down
	press_down()
	down_hard_down = true
	down_hard_pressed = true

#define unpress_actions
	attack_down = false
	attack_pressed = false
	special_down = false
	special_pressed = false
	
	strong_down_pressed = false
	strong_down_down = false
	up_strong_pressed = false
	up_strong_down = false
	left_strong_pressed = false
	left_strong_down = false
	right_strong_pressed = false
	right_strong_down = false
	down_strong_pressed = false
	down_strong_down = false

	parry_pressed = false
	parry_down = false
	shield_pressed = false
	shield_down = false

#define press_attack()
	unpress_actions()
	attack_down = true
	attack_pressed = true
	
#define press_special()
	unpress_actions()
	special_pressed = true
	special_down = true
	
#define press_strong()
	unpress_actions()
	if up_pressed{
		up_strong_pressed = true
		up_strong_down = true
	}
	if left_pressed {
		left_strong_pressed = true
		left_strong_down = true
	}
	if right_pressed {
		right_strong_pressed = true
		right_strong_down = true
	}
	if down_pressed {
		down_strong_pressed = true
		down_strong_down = true
	}


#define press_jump()
	jump_pressed = true
	jump_down = true

#define unpress_jump()
	jump_pressed = false
	jump_down = false

#define press_parry()
	shield_pressed = true
	shield_down = true
	parry_pressed = true
	parry_down = true

#define debug_keyboard_pressed(index)
	if(keyboard_lastkey == ord(string(index))) {
		keyboard_lastkey = 0;
		return(true);
	}
	else return(false);

#define direction_to_target()		
	var direction_to_target = sign(xdisp)
	if direction_to_target == 0 {
		return spr_dir
	} else {
		return direction_to_target
	}
#endregion

#define amount_of_rectangle_overlap(left1, top1, right1, bottom1, left2, top2, right2, bottom2)
// #define rectangle_in_rectangle(left1, top1, right1, bottom1, left2, top2, right2, bottom2)
	var intersect_left = max(left1, left2)
	var intersect_right = min(right1, right2)

	var intersect_top = max(top1, top2)
	var intersect_bottom = min(bottom1, bottom2)
	if intersect_right < intersect_left or intersect_bottom < intersect_top {
		return 0
	}

	var overlap = (intersect_left-intersect_right) * (intersect_top-intersect_bottom)
	return  overlap

#define perform_attack(_attack)
	switch _attack {
		case AT_JAB:	
			press_attack()
		break
		case AT_DATTACK:
			hold_neutral()
			hold_towards_target()
			tap_current_horizontal_direction()
			press_attack()
		break
		case AT_NSPECIAL:
			hold_neutral()
			press_special()
		break
		case AT_FSPECIAL:
		case AT_FSPECIAL_2:
		case AT_FSPECIAL_AIR:
			hold_neutral()
			hold_towards_target();
			press_special()
		break
		case AT_USPECIAL:
		case AT_USPECIAL_GROUND:
			press_up()
			hold_towards_target()
			press_special()
		break
		case AT_DSPECIAL:
		case AT_DSPECIAL_2:
		case AT_DSPECIAL_AIR:
			tap_down()
			hold_towards_target()
			press_special()
		break
		case AT_FSTRONG:
			hold_neutral()
			hold_towards_target()
			press_strong()
		break;
		case AT_USTRONG:
			press_up()
			// hold_towards_target()
			press_strong()
		break
		case AT_DSTRONG:
			press_down()
			// hold_towards_target()
			press_strong()
		break
		case AT_FTILT:
			hold_neutral()
			hold_towards_target()
			press_attack()
		break
		case AT_UTILT:
			press_up()
			hold_towards_target()
			press_attack()
		break
		case AT_DTILT:
			press_down()
			hold_towards_target()
			press_attack()
		break
		case AT_NAIR:
			hold_neutral()
			press_attack()
			if !free { 
				// Todo, if hitbox too low, jump
				jump_down = (y <= ai_target.y - ai_target.char_height); 
				jump_pressed = jump_down
				down_hard_pressed = (y > ai_target.y)
			} 
		break
		case AT_FAIR:
			hold_neutral()
			hold_forwards()
			press_attack()
			if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } 
		break
		case AT_DAIR:
			press_down()
			hold_towards_target()
			press_attack()
			if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } 
		break
		case AT_UAIR:
			press_up()
			hold_towards_target()
			press_attack()
			if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } 
		break
		case AT_BAIR:
			hold_neutral()
			hold_backwards()
			if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } 
			// if (!free) { 
			// 	press_jump() 
			// 	hold_away_from_target()
			// 	epinel_ai_buffer_hold_jump = max(epinel_ai_buffer_hold_jump, 2); 
			// } else {  
			// 	press_attack()
			// 	jump_down = (!free || (y <= ai_target.y - ai_target.char_height)); 
			// 	jump_pressed = jump_down; 
			// 	down_hard_pressed = (y > ai_target.y); 
			// } 
			press_attack()
		break
		case AT_TAUNT:
			taunt_down = true;
		break
	}
	
	

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
    var atp = ai_attacks[@ i];
    var thisAttack = atp[@ 0];
    var groups = array_length_1d(atp);
    for (var j = 1; j < groups; j++) {
      ai_attack_data[@ thisAttack] = calc_attack_data(thisAttack, atp[@ j]);
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

  var data = [
    index,
    width,
    height,
    cx,
    cy,
    startFrame
    // bbox: [top, bottom, left, right]
  ]

  return data;

#define get_attack_name(attack)
	switch(attack) {
		case AT_JAB: return("AT_JAB"); break;
		case AT_FTILT: return("AT_FTILT"); break;
		case AT_DTILT: return("AT_DTILT"); break;
		case AT_UTILT: return("AT_UTILT"); break;
		case AT_FSTRONG: return("AT_FSTRONG"); break;
		case AT_DSTRONG: return("AT_DSTRONG"); break;
		case AT_USTRONG: return("AT_USTRONG"); break;
		case AT_DATTACK: return("AT_DATTACK"); break;
		case AT_FAIR: return("AT_FAIR"); break;
		case AT_BAIR: return("AT_BAIR"); break;
		case AT_DAIR: return("AT_DAIR"); break;
		case AT_UAIR: return("AT_UAIR"); break;
		case AT_NAIR: return("AT_NAIR"); break;
		case AT_FSPECIAL: return("AT_FSPECIAL"); break;
		case AT_DSPECIAL: return("AT_DSPECIAL"); break;
		case AT_USPECIAL: return("AT_USPECIAL"); break;
		case AT_NSPECIAL: return("AT_NSPECIAL"); break;
		case AT_TAUNT: return("AT_TAUNT"); break;
		case AT_FSTRONG_2: return("AT_FSTRONG_2"); break;
		case AT_DSTRONG_2: return("AT_DSTRONG_2"); break;
		case AT_USTRONG_2: return("AT_USTRONG_2"); break;
		case AT_FTHROW: return("AT_FTHROW"); break;
		case AT_UTHROW: return("AT_UTHROW"); break;
		case AT_DTHROW: return("AT_DTHROW"); break;
		case AT_NTHROW: return("AT_NTHROW"); break;
		case AT_NSPECIAL_AIR: return("AT_NSPECIAL_AIR"); break;
		case AT_NSPECIAL_2: return("AT_NSPECIAL_2"); break;
		case AT_FSPECIAL_AIR: return("AT_FSPECIAL_AIR"); break;
		case AT_FSPECIAL_2: return("AT_FSPECIAL_2"); break;
		case AT_USPECIAL_GROUND: return("AT_USPECIAL_GROUND"); break;
		case AT_USPECIAL_2: return("AT_USPECIAL_2"); break;
		case AT_DSPECIAL_AIR: return("AT_DSPECIAL_AIR"); break;
		case AT_DSPECIAL_2: return("AT_DSPECIAL_2"); break;
		case AT_TAUNT_2: return("AT_TAUNT_2"); break;
		case AT_EXTRA_1: return("AT_EXTRA_1"); break;
		case AT_EXTRA_2: return("AT_EXTRA_2"); break;
		case AT_EXTRA_3: return("AT_EXTRA_3"); break;
		default:
			if("AT_PHONE" in self && attack == AT_PHONE) return("AT_PHONE");
			return(string(attack));
		break;
	}