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

// This code is a frankenstein of qazz roborocky AI and fudgepop AI, with modification of mine #pejota#3122

if (!attack_data_obtained) obtain_attack_data();

// // MAIN LOOP DO NOT TOUCH
// ds_list_clear(ai_draw);

if(get_training_cpu_action() == CPU_FIGHT) main()
else{
	
	set_variables()
	
	AttackUpdate()
	
	if(ai_recovering){
		try_recover()
	}
}


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

set_variables()

AttackUpdate();

if !free and ai_target.y - 70 > y and !ai_target.free and ground_type != 1 {
	tap_down()
}

if(free and (has_hit or has_hit_player) and state == PS_ATTACK_AIR and !offstage){
	if (collision_line(x, y + 20, x, y+135, solid_asset, false, true) or collision_line(x, y + 20, x, y+100, platform_asset, false, true)){
		unpress_actions()
		tap_down()
	}
}

if(free and vsp >= 0 and (!attacking or window != 1) and !offstage and (ydisp > !ai_target_offstage*char_height or xdist > 200) and random_func(7007, 100, true) < 6){
	// print(last_hbox_num)
	unpress_actions()
	tap_down()

}

// print(agressive_score())

if(state == PS_WALK and ai_target != self and !near_stage_ledge){
	// hold_towards_target()
	tap_current_horizontal_direction()
}

var dont_attack = false
if(ai_target == self){
	dont_attack = true
}

if(ai_recovering){
	time_recovering++
	
	if(newPredict(self, 50, hsp, vsp, true, false)[@1] > stagey + 300 - (!has_walljump + djumps == max_djumps)*100){
		// print("DONT ATTACK")
		// print(game_time)
		dont_attack = true
	}
}else{
	time_recovering = -1
}

// if(!has_walljump and djumps == max_djumps) dont_attack = true

var in_strong = attack == AT_FSTRONG or attack == AT_USTRONG or attack == AT_DSTRONG
var valid_states = ((can_attack or can_strong or can_special) or (state == PS_DASH_START or state == PS_DASH or state_cat == SC_GROUND_NEUTRAL))
valid_states = valid_states or (attacking and ((attack == AT_FSPECIAL and window == 11) or (attack == AT_DATTACK and state_timer < 5)))
if(delay_time <= 0 and valid_states and !dont_attack){
	if(!free and state != PS_JUMPSQUAT){
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
          perform_attack(AT_USPECIAL_GROUND)
        }
        // var static_attacks = free ? [AT_NSPECIAL] : [AT_NSPECIAL, AT_USPECIAL_GROUND];
		    
		  }
    }
		if(attack == AT_DATTACK and attacking) hitboxloc("DACUS")
	}else{
		hitboxloc("aerials")
	}
}

if(delay_time > 0){
	delay_time--
}

if(chosenAttack != noone){
	clear_ai_inputs();
	perform_attack(chosenAttack);
	if(chosenAttack == AT_DATTACK and !(state == PS_DASH and PS_DASH_START)){
		// print("BEGINNING DASH")
	}
	// else{ print(get_attack_name(chosenAttack)); }
	delay_time = (90 - temp_level*10) + 5
}else{
	if(ai_recovering){
		try_recover()
	}else{
		if(ai_target != self){
			
			try_wavedash()
			
			// if(state_cat == SC_GROUND_NEUTRAL and xdist > 230 and !near_stage_wall and !near_stage_ledge and !ai_target_offstage and !jump_down and !jump_pressed and !attacking){
			// 	if(move_cooldown[AT_FSPECIAL] <= 0) perform_attack(AT_FSPECIAL)
			// }
			
			if(instance_exists(right_bubble)){
				var dirt = point_direction(x, y - char_height, ai_target.x, ai_target.y - ai_target.char_height)
				var dirb = point_direction(x, y - char_height, right_bubble.x, right_bubble.y - 20)
				var dirbt = point_direction(right_bubble.x, right_bubble.y - 20, ai_target.x, ai_target.y - ai_target.char_height)
				var pitb = point_direction(0,0, right_bubble.hsp, right_bubble.vsp)
				
				
				var dot = dot_product(dcos(pitb) + dcos(dirbt), -(dsin(pitb) + dsin(dirbt)), dcos(dirb), -dsin(dirb))

				if(!free){
					if(angle_difference(dirb, dirt) >= 120 or dot <= 0){
						if(dist > 300) perform_attack(AT_USPECIAL_GROUND)
					}else{
						var pos = newPredict(right_bubble, 5, right_bubble.hsp, right_bubble.vsp, true, true)
						
						var intersect_left = max(x+ 10*spr_dir, pos[@0])
						var intersect_right = min(x+ 100*spr_dir, pos[@0])
					
						var intersect_top = max(y - 60, pos[@1])
						var intersect_bottom = min(y , pos[@1])
						if intersect_right == intersect_left and intersect_bottom == intersect_top {
							unpress_actions()
							perform_attack(AT_JAB)
						}
					}
				}
			}else{
				if(state_cat == SC_GROUND_NEUTRAL and xdist > 300 and !approaching){
					unpress_actions()
					perform_attack(AT_DSTRONG)
				}
			}
		}
		// if(state == PS_HITSTUN and !hitpause){
		// 	var pos = newPredict(self, hitstun, hsp, vsp, true, false)
		// 	if(pos[@0] < lblastzone or pos[@0] > rblastzone){
		// 		hold_toward_center()
		// 	}
		// }
	}
}

var try_parry = false
if(!attacking and !free){
	with pHitBox {
		if(type == 2 and player != other.player and does_not_reflect == false){
			var pos = newPredict(id, 7, hsp, vsp, true, true)
			if(place_meeting(pos[@0], pos[@1], other.hurtboxID)){
				try_parry = true
			}
		}
	}
}
if(try_parry){
	hold_neutral()
	press_parry(true)
}

if(state == PS_JUMPSQUAT or (state == PS_FIRST_JUMP and state_timer <= 1)){
	//Fullhop if needed
	if(ydisp < -100){
		jump_down = true
	}
}

if ai_target == self and !free and !attacking{
	clear_button_buffer(PC_JUMP_PRESSED);
	unpress_actions()
	tiltDance();
}


get_average_threat_range()
#define set_variables()

last_xdist = xdist
xdisp = ai_target.x - x
ydisp = ai_target.y - y
xdist = abs(xdisp);
ydist = abs(ydisp);

dist = point_distance(x, y, ai_target.x, ai_target.y)

approaching = (xdist - last_xdist) > 0

var upward_velocity = min(0, vsp)
tgt_teching = (ai_target.state == PS_TECH_GROUND or ai_target.state == PS_TECH_BACKWARD or ai_target.state == PS_TECH_FORWARD)
tgt_rolling = (ai_target.state == PS_ROLL_BACKWARD or ai_target.state == PS_ROLL_FORWARD)

offstage = (x >= stage_right || x <= stage_left) and free;
near_stage_wall = offstage and !(x > stage_width + stage_left + 90 or x < stage_left - 90)
near_stage_ledge = !offstage and (x > stage_width + stage_left - 60 or x < stage_left + 60)
hurtboxWidth = HurtboxWidth(ai_target);
ai_target_offstage = (ai_target.x - hurtboxWidth > stage_width + stage_left || ai_target.x + hurtboxWidth < stage_left);

closest_wall_xdist = min(abs(stage_left - x), abs(stage_right - x));

chosenAttack = noone;

targetdamage = get_player_damage( ai_target.player );

#define try_wavedash()

if(approaching and (state == PS_DASH or state == PS_DASH_START or state_cat == SC_GROUND_NEUTRAL)){
	if(ai_target.state == PS_ATTACK_AIR or ai_target.state == PS_ATTACK_GROUND ) and xdist < 150 and ydist < 30{
		press_jump(true)
	}
}
if(ydisp < -100 and ai_target.state_cat == SC_HITSTUN and !free and abs(hsp) < 7){
	press_jump(true)
}
if(attacking and attack == AT_FSPECIAL and xdist > 150 and ydisp < 0 and vsp >= 0){
	press_jump(true)
}
if(state == PS_IDLE){
	if ((xdist > 175 or state_timer > 5) and !near_stage_ledge) press_jump(true)
}
if(state == PS_JUMPSQUAT){
	if(approaching and (ai_target.state == PS_ATTACK_AIR or ai_target.state == PS_ATTACK_GROUND ) and xdist < 200) {
		hold_away_from_target()
	}
}
if(state_cat == SC_AIR_NEUTRAL and !check_fast_fall){
	var pred_ydisp = abs((ai_target.y + ai_target.vsp*3.7) - y)
	
	if((pred_ydisp < 90 and ydisp < 60 or xdist > 350) and (position_meeting(x, y, platform_asset) or position_meeting(x, y, solid_asset) or position_meeting(x + 50*sign(xdisp), y, platform_asset) or position_meeting(x - 50*sign(xdisp), y, platform_asset))){
		if(!(xdist < 100) or (xdisp*spr_dir > 0) or random_func(11, 100, 50) < 10) press_parry(true)
	}
	
}
if(state == PS_AIR_DODGE){
	var pl = position_meeting(x, y, platform_asset);
	var sl = position_meeting(x, y, solid_asset);
	
	if(pl or sl){
		
		if(xdist > 350){
			hold_towards_target()
		}
		if(tgt_teching or tgt_rolling){
			var dir = (-1 + random_func_2(10, 2, true)*2);
			if(dist < 100) hold_toward_direction(dir)
			else hold_towards_target()
		}
		if(approaching and (ai_target.state == PS_ATTACK_AIR or ai_target.state == PS_ATTACK_GROUND )) {
			hold_away_from_target()
		}
		if(ai_target.state_cat == SC_GROUND_NEUTRAL or (ai_target.can_attack or ai_target.can_special or ai_target.can_strong or ai_target.can_shield)){
			var dir = (-1 + random_func_2(10, 2, true)*2);
			hold_toward_direction(dir)
		}
		if(ai_target.state_cat == SC_HITSTUN and ydisp > -150){
			hold_towards_target()
		}
		if(ydisp > -100 and xdist > 100){
			hold_towards_target()
		}
	}else{
		if(position_meeting(x + 50, y, platform_asset)){
			press_right()
		}else if(position_meeting(x - 50, y, platform_asset)){
			press_left()
		}else{
			press_down()
		}
	}
}
if(state_cat == SC_GROUND_NEUTRAL and (tgt_teching or tgt_rolling) and ai_target.state_timer > 4 and abs(ai_target.hsp) > 0 and ai_target.state_timer < 14){
	if(xdist < 100){
		press_jump(true)
	}
}

#define try_recover()

if(vsp > 0 and y < stagey and !near_stage_wall and !near_stage_ledge and closest_wall_xdist > 280 and xdist > 280){
		if(move_cooldown[AT_FSPECIAL_AIR] <= 0) perform_attack(AT_FSPECIAL)
}else{
	var pos = newPredict(ai_target, 16, ai_target.hsp, ai_target.vsp, true, false)
	var posdist = point_distance(x,y, pos[0], pos[1])
	if(random_func(100, 100, true) < 10 and vsp > 0 and y + 50 < stagey and !near_stage_wall and !near_stage_ledge and closest_wall_xdist > 180 and dist > 180 and posdist > 180){
		if(move_cooldown[AT_FSPECIAL] <= 0) if(random_func(7, 100, true) < 30) perform_attack(AT_FSPECIAL)
	}
}
if(y > stagey and y < stagey + 50 and near_stage_wall and closest_wall_xdist < 80 and !has_walljump and !has_airdodge){
	if(move_cooldown[AT_FSPECIAL_AIR] <= 0){
		perform_attack(AT_FSPECIAL)
		hold_toward_center()
	} 
}
if(state == PS_DOUBLE_JUMP and x < stage_right + 200 and x > stage_left - 200 and ai_target.y + 75 < y){
	if(state_timer <= 1){
		if(random_func(4, 100, true) < (40 + 60*(y - 70 > stagey and y < stagey + 200 and !has_walljump))) perform_attack(AT_DSPECIAL)
	}
}

#define get_average_threat_range()

if(state_cat == SC_HITSTUN and hitstop == hitstop_full){
	var old_tr = ai_threat_range_arr[hit_player_obj.player];
	ai_threat_range_arr[hit_player_obj.player] = (abs(hit_player_obj.x-x) + old_tr)/2;
	print(ai_threat_range_arr[hit_player_obj.player]);
};

// make_rect_outline_center(x + ai_threat_range_arr[ai_target.player]*sign(ai_target.x-x), y, 50, 50, c_red);

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
  	case AT_NTHROW:
  		if(near_stage_ledge){
      	hold_toward_center()
      }
    break;
    case AT_NSPECIAL:
    	var pull_dist = point_distance( pull_dir_x, pull_dir_y, ai_target.x, ai_target.y)
    	if pull_dist > 50 and ((ai_target.static_pull and dist < 200) or ai_target.hitstun_full - ai_target.hitstun > 30){
        press_special(true)
      }
      
    break;
    case AT_USPECIAL:
    	if(near_stage_wall and window == 1 and y > stagey + 35){
    		// print("GO UP IDO")
    		unpress_left()
    		unpress_right()
    		press_up()
    	}
    	if(vsp > 0 and collision_rectangle(bbox_left - 1, bbox_top - 1, bbox_right + 1, bbox_bottom + 1, solid_asset, false, true)){
    		// print("pressing jump")
    		press_jump(true)
    	}
    break;
    case AT_USPECIAL_GROUND:
    	var pull_dist = point_distance( pull_dir_x, pull_dir_y, ai_target.x, ai_target.y)
      if(ai_target.static_pull and min(pull_dist, dist) > 240) or (ai_target.state == PS_HITSTUN and  ai_target.hitstun_full - ai_target.hitstun > 15){
        press_special(true)
      }
    break;
    case AT_DSPECIAL:
    	if(vsp > 0 and collision_rectangle(bbox_left - 1, bbox_top - 1, bbox_right + 1, bbox_bottom + 1, solid_asset, false, true)){
    		// print("pressing jump")
    		press_jump(true)
    	}
    break;
    case AT_FSPECIAL:
    	hold_towards_target()
    	tap_current_horizontal_direction()
    	if(window == 1 and window_timer <= 1){
    		tried_to_parry = false
    	}
      if(window == 2){
      	var par_value = clamp(times_tried_to_parry*30, 0, 80)
      	if((random_func(0, 100, true) < (10 + par_value) and ai_target.state_cat == SC_GROUND_NEUTRAL) or (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1)){
	      	// print("pressing parry")
	        press_parry(true)
      	}
      }
      if(ai_target.state == PS_PARRY and state_timer == 0){
      	tried_to_parry = true
      	times_tried_to_parry++
      }
      if(window == 10 or window == 3){
      	if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
      		if(!tried_to_parry and times_tried_to_parry > 0) times_tried_to_parry--
      	}
      }
      // if(near_stage_ledge and ai_target_offstage) press_parry()
    break;
    case AT_EXTRA_1:
    	if(y - stagey > 120){
    		press_jump(true)
    	}
    break
    case AT_DATTACK:
    	// if(state_timer < 5){
    		
    	// 	hitboxloc("DACUS")
    	// 	if(chosenAttack != noone){
    	// 		perform_attack(AT_USTRONG)
    	// 	}
    	// }
    break;
  }
}

#define newPredict(tgt, frame, vo_x, vo_y, apply_grav, is_hitbox)

var xx = tgt.x;
var yy = tgt.y;
var tgt_attacking = !is_hitbox ? tgt.state == PS_ATTACK_GROUND or tgt.state == PS_ATTACK_AIR : false
var ac_y = tgt.free and apply_grav ? tgt.grav : 0 ;
var ac_x = tgt.free ? -tgt.air_friction*sign(tgt.hsp) : -tgt.frict*sign(tgt.hsp);

if(tgt_attacking){
	with tgt{
		if(get_attack_value(attack, AG_USES_CUSTOM_GRAVITY)){
			ac_y *= get_window_value(attack, window, AG_WINDOW_CUSTOM_GRAVITY);
		}
	}
}

// print(ac_y)
var new_x2 = xx + vo_x*frame;
var new_hsp = vo_x + ac_x*frame;
var new_x = new_x2 + ac_x*frame*frame/2;
var new_y = yy;
// print(sign(new_hsp*tgt.hsp))

if(sign(new_hsp*tgt.hsp) == -1){
	var zero_hsp_frame = (-vo_x)/ac_x
	// print(zero_hsp_frame)
	new_x = new_x2 + ac_x*zero_hsp_frame*zero_hsp_frame/2
}

if(!is_hitbox) var max_fall_spd = tgt.fast_falling ? tgt.fast_fall : tgt.max_fall;
else var max_fall_spd = 999
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

#define hitboxloc(type)

switch(type){
	case "tilts":
		var attacke = [AT_JAB, AT_DTILT, AT_FTILT, AT_UTILT, AT_DATTACK, AT_USPECIAL_GROUND];
		break;
		
	case "aerials":
		var attacke = [AT_NAIR, AT_DAIR, AT_FAIR, AT_UAIR, AT_BAIR, AT_FSPECIAL_AIR];
		break;
		
	case "strongs":
		var attacke = [AT_DSTRONG, AT_USTRONG, AT_FSTRONG];
		break;
	case "specials":
		var attacke = [AT_NSPECIAL];
		break;
	case "DACUS":
		var attacke = [AT_USTRONG];
		// print("trying DACUUUUUUS")
		break;
}

var which_hop = (state == PS_JUMPSQUAT)*(jump_down + 1)

var len = array_length_1d(attacke);

var listAtk = [];
var j = 0;
var distadd_x = 0;
var distadd_y = 0;
var can_reverse = false
var thw = HurtboxWidth(ai_target);
var thh = HurtboxHeight(ai_target);
var vo_x = self.hsp*(1 - (state==PS_WAVELAND)*0.75);
var vo_y = self.vsp;
var apply_grav = true
var apply_grav_target = true

for(var i = 0; i < len; i++){
	// print(ai_attack_data)
	var att_idx = attacke[@ i]
  var cad = ai_attack_data[@ att_idx];
  if(cad[@ AD_FRAME] <= ai_target.invince_time) continue
  var frame = cad[@ AD_FRAME]
  vo_x = self.hsp*(1 - (state==PS_WAVELAND)*0.75);
	vo_y = self.vsp;
	apply_grav = true
	apply_grav_target = true
  can_reverse = false
  
  switch(att_idx){ case AT_FSPECIAL: case AT_FTILT: case AT_UTILT: case AT_DTILT: case AT_FSTRONG: case AT_DSTRONG: case AT_USTRONG: can_reverse = true; break; }
  if(att_idx == AT_FSPECIAL_AIR){
  	vo_x = 3*spr_dir + spr_dir > 0 ? max(hsp, 2) : min(hsp, -2);
  	vo_y = -8;
  }
	if(att_idx == AT_DATTACK){
  	vo_x = 0;
  }
	if(att_idx == AT_USTRONG){
		vo_x = vo_x + sign(hsp)*12*0.2
	}
  
  lastPos = newPredict(self, frame, vo_x, vo_y, apply_grav, false);
  estOPos = newPredict(ai_target, frame, ai_target.hsp, ai_target.vsp, apply_grav_target, false);
	
	var face = 1
	if(can_reverse) face = (spr_dir*sign(estOPos[@0]-lastPos[@0]) > 0) ? 1 : -1;
  
  var ai_target_hurtbox_bbox = [estOPos[@ 1] + thh, estOPos[@ 1], estOPos[@ 0] - thw / 2, estOPos[@ 0] + thw / 2];

  
  var attack_bbox =  [lastPos[@ 1] + (cad[@ AD_CY] + distadd_y) - cad[@ AD_HEIGHT] / 2,
									    lastPos[@ 1] + (cad[@ AD_CY] + distadd_y) + cad[@ AD_HEIGHT] / 2,
									    lastPos[@ 0] + (cad[@ AD_CX] + distadd_x) * spr_dir*face - (cad[@ AD_WIDTH] / 2),
									    lastPos[@ 0] + (cad[@ AD_CX] + distadd_x) * spr_dir*face + (cad[@ AD_WIDTH] / 2)];
    
  var ov = amount_of_rectangle_overlap(ai_target_hurtbox_bbox[@ BBOX_LEFT], ai_target_hurtbox_bbox[@ BBOX_TOP], ai_target_hurtbox_bbox[@ BBOX_RIGHT], ai_target_hurtbox_bbox[@ BBOX_BOTTOM], 
        attack_bbox[@ BBOX_LEFT], attack_bbox[@ BBOX_TOP], attack_bbox[@ BBOX_RIGHT], attack_bbox[@ BBOX_BOTTOM])

  // if(attacke[@ i] == AT_USTRONG) make_rect_outline(attack_bbox[@ BBOX_LEFT], attack_bbox[@ BBOX_TOP], attack_bbox[@ BBOX_RIGHT], attack_bbox[@ BBOX_BOTTOM], $880088);
  // if(attacke[@ i] == AT_USTRONG) make_rect_outline(ai_target_hurtbox_bbox[@ BBOX_LEFT], ai_target_hurtbox_bbox[@ BBOX_TOP], ai_target_hurtbox_bbox[@ BBOX_RIGHT], ai_target_hurtbox_bbox[@ BBOX_BOTTOM], $008888);
  
  if(ov){
  	listAtk[j] = att_idx;
		j++;
  }
  
  // var ai_target_hurtbox_bbox = [estOPos[@ 1] + thh, estOPos[@ 1], estOPos[@ 0] - thw / 2, estOPos[@ 0] + thw / 2];
  
  
}

var reroll = true;
len = array_length_1d(listAtk);
iterations = 0;
var temp_chosen = chosenAttack
//Chooses from the new array based on a set of conditions randomly, test are done to reroll for a new attack if a condition is not met
if len != 0{
	while(reroll and iterations < 5){
		
		iterations++;
		reroll = false;
		
		chosenAttack = listAtk[random_func(2, j, true)];
		
		if(chosenAttack != noone and move_cooldown[chosenAttack] > 0){
			reroll = true;
			chosenAttack = temp_chosen
			if(len == 1) break
		}
		
		if(chosenAttack == AT_NSPECIAL){
			if(temp_chosen == AT_DTILT){
				reroll = true;
				chosenAttack = temp_chosen
				if(len == 1) break
			} 
		}
		
		// if(chosenAttack == AT_FSTRONG or chosenAttack == AT_DSTRONG or chosenAttack == AT_USTRONG){
		// 	if(ai_target.state_cat == SC_AIR_NEUTRAL or ai_target.state_cat == SC_GROUND_NEUTRAL){
		// 		reroll = true;
		// 		chosenAttack = temp_chosen
		// 		if(len == 1) break
		// 	}
		// }
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

return -(tgt).char_height;
  // return (tgt).hurtboxID.bbox_top - (tgt).hurtboxID.bbox_bottom;

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

#define get_direction(angle)

var dir = floor(point_direction(0,0, dcos(angle), -dsin(angle))/45 + .5)%8;
return dir

#define hold_towards_target_8way(tgt)

var pd = point_direction(x, y, tgt.x, tgt.y)
var dir = get_direction(pd);
hold_toward_direction_8way(dir)

return dir

#define hold_toward_direction_8way(dir)

joy_dir = dir*45
joy_pad_idle = false

var coss = dcos(joy_dir)
var sinn = dsin(joy_dir)

right_down  = coss > 0;
left_down  = coss < 0;
up_down = sinn > 0;
down_down = sinn < 0;


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
	// print("left")
	joy_dir = 180
	joy_pad_idle = false
	
	left_down = true
	left_pressed = true
	unpress_right()	

#define tap_left()
	press_left()
	left_hard_down = true
	left_hard_pressed = true

#define press_right()
	// print("right")
	joy_dir = 0
	joy_pad_idle = false
	
	right_down = true
	right_pressed = true
	unpress_left()

#define tap_right()
	press_right()
	right_hard_down = true
	right_hard_pressed = true

#define press_up()
	
	joy_dir = 90
	joy_pad_idle = false
	
	up_down = true
	up_pressed = true
	unpress_down()
	
#define tap_up()
	press_up()
	up_hard_down = true
	up_hard_pressed = true

#define press_down()
	
	joy_dir = 90
	joy_pad_idle = false
	
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
	
#define press_taunt(press)
	unpress_actions()
	taunt_down = press
	taunt_pressed = press
	taunt_counter = press ? 0 : 7

#define press_attack(press)
	unpress_actions()
	attack_down = press
	attack_pressed = press
	attack_counter = press ? 0 : 7
	
#define press_special(press)
	unpress_actions()
	special_pressed = press
	special_down = press
	
#define press_strong(press)
	unpress_actions()
	if up_pressed{
		up_strong_pressed = press
		up_strong_down = press
	}
	if left_pressed {
		left_strong_pressed = press
		left_strong_down = press
	}
	if right_pressed {
		right_strong_pressed = press
		right_strong_down = press
	}
	if down_pressed {
		down_strong_pressed = press
		down_strong_down = press
	}


#define press_jump(press)
	jump_pressed = press
	jump_down = press

#define press_parry(press)
	shield_pressed = press
	shield_down = press
	parry_pressed = press
	parry_down = press

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
		case AT_FSTRONG:
		case AT_USTRONG:
		case AT_DSTRONG:
		case AT_FTILT:
		case AT_UTILT:
		case AT_DTILT:
			if(state == PS_DASH_START or state == PS_DASH){
				print("BABY DASH")
				hold_neutral()
				return;
			}
		break
	}

	switch _attack {
		case AT_JAB:
			hold_neutral()
			press_attack(true)
		break
		case AT_DATTACK:
			hold_neutral()
			hold_towards_target()
			tap_current_horizontal_direction()
			press_attack(true)
		break
		case AT_NSPECIAL:
			hold_neutral()
			press_special(true)
		break
		case AT_FSPECIAL:
		case AT_FSPECIAL_2:
		case AT_FSPECIAL_AIR:
			hold_neutral()
			hold_towards_target();
			press_special(true)
		break
		case AT_USPECIAL:
		case AT_USPECIAL_GROUND:
			press_up()
			hold_towards_target()
			press_special(true)
		break
		case AT_DSPECIAL:
		case AT_DSPECIAL_2:
		case AT_DSPECIAL_AIR:
			tap_down()
			hold_towards_target()
			press_special(true)
		break
		case AT_FSTRONG:
			hold_neutral()
			hold_towards_target()
			press_strong(true)
		break;
		case AT_USTRONG:
			press_up()
			// hold_towards_target()
			press_strong(true)
		break
		case AT_DSTRONG:
			press_down()
			// hold_towards_target()
			press_strong(true)
		break
		case AT_FTILT:
			hold_neutral()
			hold_towards_target()
			press_attack(true)
		break
		case AT_UTILT:
			press_up()
			hold_towards_target()
			press_attack(true)
		break
		case AT_DTILT:
			press_down()
			hold_towards_target()
			press_attack(true)
		break
		case AT_NAIR:
			hold_neutral()
			press_attack(true)
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
			press_attack(true)
			if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } 
		break
		case AT_DAIR:
			press_down()
			hold_towards_target()
			press_attack(true)
			if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } 
		break
		case AT_UAIR:
			press_up()
			hold_towards_target()
			press_attack(true)
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
			press_attack(true)
		break
		case AT_TAUNT:
			hold_neutral()
			press_taunt(true)
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
    var g_index = 2
    var groups = array_length_1d(atp)-g_index;
    for (var j = 0; j < groups; j++) {
      ai_attack_data[@ thisAttack] = calc_attack_data(i, thisAttack, atp[@ j + g_index]);
    }
  }
  attack_data_obtained = true;

#define calc_attack_data(data_index, _attack, hitboxes)
  var hit_window = get_hitbox_value( _attack, hitboxes[0], HG_WINDOW );
  var startFrame = get_hitbox_value( _attack, hitboxes[0], HG_WINDOW_CREATION_FRAME );
  for (var i = 0; i < hit_window-1; i++) {
    startFrame += get_window_value( _attack, i+1, AG_WINDOW_LENGTH );
  }
  
  var left = 9999;
  var top = 9999;
  var right = -9999;
  var bottom = -9999;
	
	var overwrite = ai_attacks[@ data_index][1];
	print(overwrite)
	if( array_length_1d(overwrite) > 3 ){
		var width = overwrite[2];
		var height = overwrite[3];
		var cx = overwrite[0];
		var cy = overwrite[1];
	}else{
	  var len = array_length_1d(hitboxes);
	  for (var i = 0; i < len; i++) {
	    var hb = hitboxes[i];
	    var hbx = get_hitbox_value( _attack, hb, HG_HITBOX_X );
	    var hby = get_hitbox_value( _attack, hb, HG_HITBOX_Y );
	    var hbsx = get_hitbox_value( _attack, hb, HG_WIDTH );
	    var hbsy = get_hitbox_value( _attack, hb, HG_HEIGHT );
	
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
	  print("ran this")
	}
  var data = [
    _attack,
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