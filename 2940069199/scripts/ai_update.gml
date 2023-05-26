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

if !free and ai_target.y - 70 > y and !ai_target.free and ground_type != 1 {
	tap_down()
}

if(free and vsp >= 0 and (has_hit or has_hit_player) and state == PS_ATTACK_AIR and !offstage){
	// print(last_hbox_num)
	if((attack != AT_UAIR and attack != AT_NAIR) or hit_player_obj.last_hbox_num > 3 + attack == AT_UAIR){
		if (collision_line(x, y + 20, x, y+200, solid_asset, false, true) or collision_line(x, y + 20, x, y+100, platform_asset, false, true)){
			unpress_actions()
			tap_down()
		}
	}
}

if(free and vsp >= 0 and (!attacking or window != 1) and !ai_target_offstage and !offstage and ydisp > ai_target.char_height){
	// print(last_hbox_num)
	unpress_actions()
	tap_down()

}

if(state == PS_WALK and ai_target != self and !near_stage_ledge and !near_stage_wall){
	// hold_towards_target()
	tap_current_horizontal_direction()
}

// if(!free and !attacking and ai_target != self and near_stage_ledge and y == stagey and dist > 120 and ai_target_offstage){
// 	hold_neutral()
// }

var dont_attack = false
if(ai_target == self or ai_target.state == PS_PARRY or ai_target.state == PS_PARRY_START){
	dont_attack = true
}

if(ai_recovering){
	time_recovering++
	var death_test_pos = newPredict(self, 40, hsp, vsp, true, false)
	if(death_test_pos[@1] > stagey + (300 - ((!has_walljump)*100 + (djumps == max_djumps)*100))){
		// print("DONT ATTACK")
		// print(game_time)
		dont_attack = true
	}else{
		
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
		
		
		if(can_special){
	    hitboxloc("specials")
	    
	    if(comet_exists){
				
				// var array_t = collision_time(comet.y, -6, .3, ai_target.y, ai_target.vsp, ai_target.grav)
				// var len = array_length(array_t)
				// // print(array_t)
				// // var t = calculate_meeting_time(-6, ai_target.vsp, comet.y - ai_target.y);
				// var t = infinity;
				// if(len > 1){
				// 	if(array_t[0] > 0) t = array_t[0]
				// 	if(array_t[1] > 0 and t > array_t[1]) t = array_t[1]
				// }else{
				// 	if((len > 0 and array_t[0] > 0 and t > array_t[0])) t = array_t[0]
				// 	if((len > 0 and array_t[1] > 0 and t > array_t[1])) t = array_t[1]
				// }
				// // print(t)
				
				// var tgt_pos = newPredict(ai_target, t, ai_target.hsp, ai_target.vsp, true, false)
				// var comet_pos = newCometPredict(t, (sign(tgt_pos[@0]-comet.x))*6, -6)
				
				// make_rect_outline(comet_pos[@0]-50, comet_pos[@1]-50, comet_pos[@0]+50, comet_pos[@1]+50, c_white)
				
				// if point_in_rectangle(comet_pos[@1]-50, comet_pos[@1]+50, comet_pos[@0]-50, comet_pos[@0]+50, tgt_pos[@0], tgt_pos[@1]){
				// 	// print(t)
				// 	chosenAttack = AT_NSPECIAL
				// }
				
				hitboxloc("COMET")
			}
	    
	  }
		
		hitboxloc("tilts")
		
		if can_strong{
			hitboxloc("strongs")
		}
		
		// if(attack == AT_DATTACK and attacking) hitboxloc("DACUS")
	}else{
		
		hitboxloc("aerials")
		if(can_special){
	    hitboxloc("specials")
	    hitboxloc("COMET")
	  }
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
	}else{ print(get_attack_name(chosenAttack)); }
	delay_time = (90 - temp_level*10) + 5
}else{
	if(ai_recovering){
		try_recover()
	}else{
		if(ai_target != self and state_cat != SC_HITSTUN){
			
			if(ai_target.state_cat == SC_HITSTUN and !offstage and !ai_target_offstage){
				if( ydisp > -130 and ydisp < -50 and djumps < max_djumps and xdist < 75){
					press_jump(true)
				}
				hold_towards_target()
			}
			
			try_wavedash()
			
			// if(!comet_exists){ if(move_cooldown[AT_NSPECIAL] <= 0) perform_attack(AT_NSPECIAL) }
			// else stay_close_to_comet()
			
			if(comet_exists){
				if(closest_wall_xdist > 50 and sign(xdisp) == sign(comet.x-x)) hitboxloc("COMET")
			}
			
			if(chosenAttack == AT_FSPECIAL){
				// print("AAAAAAAAAAA")
				press_special(true)
				hold_toward_direction(comet.x-x)
				tap_current_horizontal_direction()
			}
			
			var neutral_and_far = ((state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL) and xdist > (200 + approaching*50))
			
			var rd = random_func(50, 100, true)
			var rd2 = random_func_2(0, 100, true)
			
			if(neutral_and_far){
				if(rd < 30){
					if(rd2 < 35 and move_cooldown[AT_NSPECIAL] <= 0 and y > stagey - 70){
						unpress_actions()
						perform_attack(AT_NSPECIAL)
					}
					
					if(rd2 > 35 and move_cooldown[AT_DSPECIAL] <= 0 and tetrimino < 6){
						unpress_actions()
						perform_attack(AT_DSPECIAL)
					}
				}
			}
			if(tetrimino == 6){
				var my_pos = newPredict(self, 11, hsp, vsp, false, false);
				var pos = newPredict(ai_target, 11, ai_target.hsp, ai_target.vsp, true, false);
				if(point_in_rectangle(my_pos[@1] - 50, my_pos[@1], my_pos[@0]-150, my_pos[@0]+150, pos[@0], pos[@1])){
					perform_attack(AT_DSPECIAL)
					// print("SHORYUKEN")
				}
			}
			if(move_cooldown[AT_USPECIAL] <= 0 and ai_target.state_cat == SC_HITSTUN and random_func(999, 100, true) < (20 - free*16)){
				var vo_x = self.hsp*(1 - (state==PS_WAVELAND)*0.75);
				var pos = newPredict(self, 11, vo_x, vsp, true, false)
				var tgt_pos = newPredict(ai_target, 19, ai_target.hsp, ai_target.vsp, true, false)
				var c_xdisp_pred = tgt_pos[@0] - pos[@0]
				var c_ydisp_pred = tgt_pos[@1] - pos[@1] - 52
				var c_xdist_pred = abs(c_xdisp_pred)
				var c_ydist_pred = abs(c_ydisp_pred)
				var min_xdist = max((5/15)*c_ydist_pred - 50, 0)
				var max_xdist = min(c_ydist_pred, 192) + 50
				if(c_ydisp_pred < -c_xdist_pred and c_ydisp_pred > -128*2 - 25) and (c_xdist_pred > min_xdist and c_xdist_pred < max_xdist){
					// print(slopee)
					var slopee = c_ydist_pred/c_xdist_pred
					// make_rect_outline(x+min_xdist, y + -128*2 - 25,x+max_xdist, y - c_xdist_pred, c_red)
					if(slopee >= 1 and slopee <= 3.5 and move_cooldown[AT_USPECIAL] <= 0){
						// print("PERFORMING TO TARGEWT")
						perform_attack(AT_USPECIAL)
						hold_toward_direction(sign(c_xdisp_pred))
					}
					
				}
			}
		}
		if(state_cat == SC_HITSTUN and !hitpause){
			var pos = newPredict(self, hitstun, hsp, vsp, true, false)
			if(pos[@0] < lblastzone or pos[@0] > rblastzone){
				hold_toward_center()
			}
		}
	}
}

if(!attacking and !free){
	try_parry()
}
if(state == PS_JUMPSQUAT or (state == PS_FIRST_JUMP and state_timer <= 1)){
	//Fullhop if needed
	if(ydisp < -100){
		jump_down = true
	}
}

if ai_target == self{
	if(!free and !attacking and (state != PS_ATTACK_GROUND and attack != AT_TAUNT)){
		perform_attack(AT_TAUNT)
	}
}

if(state_cat == SC_HITSTUN){
	// if(left_down) print("left_down")
	// if(right_down) print("right_down")
	// if(down_down) print("down_down")
	// if(up_down) print("up_down")
	
}
if(special_pressed and state_cat == SC_HITSTUN){
	// print("IM TRYING TO SPECIAL AT THE WRONGTIME")
}

AttackUpdate();

#define set_variables()

last_xdist = xdist
xdisp = ai_target.x - x
ydisp = ai_target.y - y //negative == above
xdist = abs(xdisp);
ydist = abs(ydisp);

dist = point_distance(x, y, ai_target.x, ai_target.y)

approaching = (xdist - last_xdist) > 0

var upward_velocity = min(0, vsp)
tgt_teching = (ai_target.state == PS_TECH_GROUND or ai_target.state == PS_TECH_BACKWARD or ai_target.state == PS_TECH_FORWARD)
tgt_rolling = (ai_target.state == PS_ROLL_BACKWARD or ai_target.state == PS_ROLL_FORWARD)

offstage = (x >= stage_right || x <= stage_left) and free;
near_stage_wall = offstage and !(x >= stage_width + stage_left + 90 or x <= stage_left - 90)
near_stage_ledge = !offstage and (x > stage_width + stage_left - 60 or x < stage_left + 60)
hurtboxWidth = HurtboxWidth(ai_target);
ai_target_offstage = (ai_target.x - hurtboxWidth > stage_width + stage_left || ai_target.x + hurtboxWidth < stage_left);

comet_exists = instance_exists(comet)
if(comet_exists){
	comet_xdisp = comet.x - x
	comet_ydisp = comet.y - y //negative == above
	comet_xdist = abs(comet_xdisp);
	comet_ydist = abs(comet_ydisp);
	
	comet_dist = point_distance(x,y,comet.x,comet.y)
}

closest_wall_xdist = min(abs(stage_left - x), abs(stage_right - x));

chosenAttack = noone;

targetdamage = get_player_damage( ai_target.player );


#define try_parry()

var try_parry = false

with pHitBox {
	if(type == 2 and player != other.player and does_not_reflect == false){
		var pos = newPredict(id, 7, hsp, vsp, true, true)
		if(place_meeting(pos[@0], pos[@1], other.hurtboxID)){
			try_parry = true
		}
	}
}

if(try_parry){
	hold_neutral()
	press_parry(true)
}

#define try_wavedash()

if(approaching and (state == PS_DASH or state == PS_DASH_START or state_cat == SC_GROUND_NEUTRAL)){
	if(ai_target.state == PS_ATTACK_AIR or ai_target.state == PS_ATTACK_GROUND ) and xdist < 150 and ydist < 30{
		press_jump(true)
	}
}
if(ydisp < -100 and (ai_target.state_cat == SC_HITSTUN) and !free and abs(hsp) < 7){
	press_jump(true)
}
if(state == PS_IDLE or state == PS_DASH or (state == PS_WAVELAND and abs(hsp) < 7)){
	if ((xdist > 175 or state_timer > 5) and !near_stage_ledge) press_jump(true)
}
if(state == PS_JUMPSQUAT or (state == PS_FIRST_JUMP and state_timer <= 1)){
	if(approaching and (ai_target.state == PS_ATTACK_AIR or ai_target.state == PS_ATTACK_GROUND ) and xdist < 200) {
		hold_away_from_target()
	}
}
if(state_cat == SC_AIR_NEUTRAL and !check_fast_fall and !dont_airdodge){
	var pred_ydisp = abs((ai_target.y + ai_target.vsp*3.7) - y)
	if((pred_ydisp < 100 and ydisp < 60 or xdist > 350) and (position_meeting(x, y, platform_asset) or position_meeting(x, y, solid_asset) or position_meeting(x + 50*sign(xdisp), y, platform_asset))){
		if(!(xdist < 100) or (xdisp*spr_dir > 0) or random_func(11, 100, 50) < 50) press_parry(true)
	}
	
}
if(state == PS_AIR_DODGE){
	var pl = position_meeting(x, y, platform_asset);
	var sl = position_meeting(x, y, solid_asset);
	
	if(pl or sl){
		
		if(ai_target.state_cat == SC_HITSTUN and ydisp > -150){
			hold_towards_target()
		}
		if(ydisp > -100 and xdist > 100){
			hold_towards_target()
		}
		if(tgt_teching or tgt_rolling){
			var dir = (-1 + random_func_2(10, 2, true)*2);
			if(dist < 100) hold_toward_direction(dir)
			else hold_towards_target()
		}
		if(xdist > 350){
			hold_towards_target()
		}
		if(approaching and (ai_target.state == PS_ATTACK_AIR or ai_target.state == PS_ATTACK_GROUND )) {
			hold_away_from_target()
		}
		if(ai_target.state_cat == SC_GROUND_NEUTRAL or (ai_target.can_attack or ai_target.can_special or ai_target.can_strong or ai_target.can_shield)){
			var dir = (-1 + random_func_2(10, 2, true)*2);
			hold_toward_direction(dir)
		}
	}else{
		if(position_meeting(x + 50, y, platform_asset)){
			press_right()
		}
		if(position_meeting(x - 50, y, platform_asset)){
			press_left()
		}
	}
}
if(state_cat == SC_GROUND_NEUTRAL and (tgt_teching or tgt_rolling) and ai_target.state_timer > 7 and abs(ai_target.hsp) > 0 and ai_target.state_timer < 14){
	if(xdist < 100){
		press_jump(true)
	}
}

#define try_recover()
if(state_cat != SC_HITSTUN){
	if y - stagey < closest_wall_xdist{ // If not at the angle needed to USPECIAL
		// if(up_down and special_pressed){
		// 	print("canceling")
		// 	unpress_up()
		// 	press_special(false)
		// }
		
		
		
		if(closest_wall_xdist > 50) hitboxloc("COMET")
		if(chosenAttack == AT_FSPECIAL){
			perform_attack(AT_FSPECIAL)
			hold_toward_center()
		}
	}else{// If at the angle needed to USPECIAL
		if(closest_wall_xdist > 220){
			// if(up_down and special_pressed){
			// 	print("canceling")
			// 	unpress_up()
			// 	press_special(false)
			// }
			// if(y > stagey + 300){
			// 	perform_attack(AT_NSPECIAL)
			// }
		}
	}
	
	if((!comet_exists) or (abs(x-comet.x) > 235 and y-comet.y > 260)) and (djumps == max_djumps and vsp < 0) and (move_cooldown[AT_NSPECIAL] <= 0) and random_func(8843, 100, true) < 10 and closest_wall_xdist > 60{
		// !((y + vsp*5 < stagey ) and closest_wall_xdist < 60)
		var pos = newPredict(self, 29, hsp, vsp, true, false)
		if(pos[@1] + 50 + (djumps < max_djumps + has_airdodge)*100 < bblastzone){
			 perform_attack(AT_NSPECIAL)
		}
	}
	
	// if(closest_wall_xdist < 60 and y < stagey and y > stagey-20){
	// 	if(random_func(888, 100, true) < 30 and move_cooldown[AT_FSPECIAL] <= 0) perform_attack(AT_FSPECIAL)
	// }
	
	if(state == PS_WALL_JUMP and closest_wall_xdist < 60 and y > stagey + 10){
		press_parry(false)
	}
	
	
	if(comet_exists){
		var pos = newPredict(self, 11, hsp, vsp, true, false)
		var comet_pos_pred = newCometPredict(17, comet.hsp, comet.vsp)
		var c_xdisp_pred = comet_pos_pred[@0] - pos[@0]
		var c_ydisp_pred = comet_pos_pred[@1] - pos[@1] - 52
		var c_xdist_pred = abs(c_xdisp_pred)
		var c_ydist_pred = abs(c_ydisp_pred)
		var min_xdist = max((5/15)*c_ydist_pred - 50, 0)
		var max_xdist = min(c_ydist_pred, 192) + 50
		if(c_ydisp_pred < 0 and c_ydisp_pred > -128*2 - 25) and (c_xdist_pred > min_xdist and c_xdist_pred < max_xdist) or (move_cooldown[AT_FSPECIAL] and instance_place(x, y, comet)){
			if(move_cooldown[AT_USPECIAL] <= 0){
				// print("PERFORMING")
				perform_attack(AT_USPECIAL)
				hold_toward_direction(sign(c_xdisp_pred))
			}
			
		}
	}
	
	if(comet_exists and !attacking and (djumps < max_djumps or comet_ydisp < -70) and comet_xdist < closest_wall_xdist and closest_wall_xdist > 80){
		stay_close_to_comet()
	}
	
	if(move_cooldown[AT_FSPECIAL] <= 0 and instance_place(x, y, comet)){
		perform_attack(AT_FSPECIAL)
		hold_toward_center()
	}
	
	if(move_cooldown[AT_USPECIAL]){
		if(vsp > 0 and collision_rectangle(bbox_left - 1, bbox_top - 1, bbox_right + 1, bbox_bottom + 1, solid_asset, false, true)){
			// print("pressing jump")
			press_jump(true)
		}
	}
	
	if(state == PS_TUMBLE){
		if(random_func(120, 100, true) < 7){
			press_jump(true)
		}
	}
	
	if(state == PS_DOUBLE_JUMP){
		if(vsp < -6){
			perform_attack(AT_DSPECIAL)
		}
	}
}
#define agressive_score()
var value = 0;
var ai_dmg = get_player_damage(player);
var ai_target_dmg = get_player_damage(ai_target.player);
var dmg_dif = (ai_target_dmg - ai_dmg);
// value += dist*dmg_dif/50 * n_times_got_hit/

value += ( sign(dmg_dif)*(dmg_dif/50*dmg_dif/50) - ai_dmg)/50;

return value

#define stay_close_to_comet()
var dist_to_be_in = 50
if(comet_dist < dist_to_be_in) return;
var face_this = sign(comet.x - ai_target.x)
// print(face_this)
if(face_this > 0){
	if((x-comet.x) < 75){
		press_right()
	}
}else{
	if((x-comet.x) > -75){
		press_left()
	}
}
if(comet_ydisp < -70){
	press_jump(true)
}

#define AttackUpdate()

if(state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
	attacking = true
  switch(attack){
    case AT_NSPECIAL:
      if(!ai_recovering and state_timer < 5 and comet_exists and spr_dir != sign(ai_target.x-comet.x)){
      	hold_toward_direction(ai_target.x-comet.x)
      	tap_current_horizontal_direction()
      }
      if(ai_recovering and state_timer < 5 and state_timer > 1){
      	print("WHICH WAY IS TEH BUS")
      	hold_toward_center()
      	tap_current_horizontal_direction()
      }
    break;
    case AT_USPECIAL:
	    if(state_timer <= 1){
	    	// print(closest_wall_xdist)
	    }
			if(window == 1){
				hold_neutral()
			}
			if(window == 2 and window_timer == 0){
				var go_to_wall = false
				if(ai_recovering){
					if(comet_exists){
					
						var comet_pos_pred = newCometPredict(clamp((192-comet_ydist)/192, 0, 1)*17, comet.hsp, comet.vsp)
						var c_yd_p = abs(comet_pos_pred[@1]- y)
						var c_xd_p = abs(comet_pos_pred[@0]- x)
						var min_xdist = max((5/15)*c_yd_p - 50, 0)
						var max_xdist = min(c_yd_p, 192) + 50
						print(c_yd_p/c_xd_p)
						if(comet_pos_pred[@1]- y < 0 and comet_pos_pred[@1]- y > -128*2 - 25) and (c_xd_p > min_xdist and c_xd_p < max_xdist){
							var comet_slope = (c_yd_p/c_xd_p)
							hold_neutral()
							if(comet_slope <= 1.35){
								print("holding forward")
								hold_forwards()
							}else if(comet_slope <= 2.25){
								print("holding neutral")
								hold_neutral()
							}else{
								print("holding up")
								press_up()
							}
						}else{
							go_to_wall = true
						}
					}else{
						go_to_wall = true
					}
				}else{
					
					var tgt_pos = newPredict(ai_target, clamp((192-ydist)/192, 0, 1)*17, ai_target.hsp, ai_target.vsp, true, false)
					var pred_slope = abs(tgt_pos[@1] - y - 52)/abs(tgt_pos[@0] - x)
					hold_neutral()
					if(wall_slope <= 1.25 or closest_wall_xdist >= 128){
						print("holding forward")
						hold_forwards()
					}else{
					if(wall_slope <= 2.25 or closest_wall_xdist >= 64){
						print("holding neutral")
						hold_neutral()
					}else{
						print("holding up")
						press_up()
					}
					}
				}
				if(go_to_wall){
					var closest_wall_ydist = abs((stagey)+40 - (y-52))
					print(closest_wall_ydist/closest_wall_xdist)
					var wall_slope = (closest_wall_ydist/closest_wall_xdist)
					hold_neutral()
					if(wall_slope <= 1.25 or closest_wall_xdist >= 128){
						print("holding forward")
						hold_forwards()
					}else{
					if(wall_slope <= 2.25 or closest_wall_xdist >= 64){
						print("holding neutral")
						hold_neutral()
					}else{
						print("holding up")
						press_up()
					}
					}
				}
			}
			if(!ai_recovering and vsp >= 0 and free){
				tap_down()
			}
		break;
    case AT_USPECIAL_GROUND:

    break;
    case AT_DSPECIAL:
    	if(window >= 3) break;
    	if(!free) try_parry()
  		if(dist < 200 + approaching*50){
				if(random_func(129, 100, true) < 20) press_parry(true)
			}
    	if(ai_recovering and closest_wall_xdist > 30){
      	hold_toward_center()
      	if(vsp > 4) press_parry(true)
      }
			
			var downb_self = newPredict(self, 10, -6, -6, true, false);
      var downb_tgt = newPredict(ai_target, 15, ai_target.hsp, ai_target.vsp, true, false);
			
			switch(tetrimino){
				case 0:
					if(ai_recovering and closest_wall_xdist > 50) break
					var ball_dist = 9999999999999999
					if((xdist < 250 + approaching*60) and (ydisp >= -60 and ydisp <= 0)){
						press_special(true)
						hold_towards_target()
					}
					
					if(comet_exists){
						if((comet_dist < 250) and (comet.y - y >= -60 and comet.y - y <= 0) ){
							press_special(true)
							hold_toward_direction(sign(comet.x-x))
						}
					}
				break;
				case 1:
					if(ai_recovering and closest_wall_xdist > 50) break
					var pd = point_direction(downb_self[@0],downb_self[@1], downb_tgt[@0], downb_tgt[@1])
					var dir = get_direction_custom(pd, 30, true)
					if(dir == 11){
						press_special(true)
						hold_towards_target()
					}
					
					if(comet_exists) {
						var pd_ball = point_direction(downb_self[@0],downb_self[@1], comet.x, comet.y)
						var dir_ball = get_direction_custom(pd_ball, 30, true)
						
						if(dir_ball == 11){
							press_special(true)
							hold_toward_direction(sign(comet.x-x))
						}
					}
					
				break;
				case 2:
					if(ai_recovering and closest_wall_xdist > 50) break
					var pd = point_direction(downb_self[@0],downb_self[@1], downb_tgt[@0], downb_tgt[@1])
					var dir = get_direction_custom(pd, 30, true)
					if(comet_exists) {
						var pd_ball = point_direction(downb_self[@0],downb_self[@1], comet.x, comet.y)
						var dir_ball = get_direction_custom(pd_ball, 30, true)
					}
					if(dir == 1){
						press_special(true)
						hold_towards_target()
					}
					if(comet_exists and dir_ball == 1){
						press_special(true)
						hold_toward_direction(sign(comet.x-x))
					}
				break;
				case 3:
					if(ai_recovering and closest_wall_xdist > 50) break;
					if(random_func(0, 100, true) < 4 and ydisp > 0){
						press_special(true)
						hold_towards_target()
					}
				break;
				case 4:
					if(ai_recovering and closest_wall_xdist > 50) break;
					if(random_func(1, 100, true) < 4 and ydisp < 0){
						press_special(true)
						hold_towards_target()
					}
				break;
				case 5:
					if(ai_recovering and closest_wall_xdist > 50) break
					if((xdist < 100 + approaching*60) and (ydisp >= -80 and ydisp <= 0)){
						press_special(true)
						hold_towards_target()
					}
					if(comet_exists and (comet_dist < 200) and (comet.y - y >= -60 and comet.y - y <= 0) ){
						press_special(true)
						hold_toward_direction(sign(comet.x-x))
					}
				break;
				case 6:
					if(window == 1){
						var length = get_window_value(attack, 1, AG_WINDOW_LENGTH)
						var my_pos = newPredict(self, length - window_timer, hsp, vsp, false, false);
						var pos = newPredict(ai_target, length - window_timer, ai_target.hsp, ai_target.vsp, true, false);
						if !(point_in_rectangle(my_pos[@1] - 50, my_pos[@1], my_pos[@0]-150, my_pos[@0]+150, pos[@0], pos[@1])){
							press_parry(true)
						}
					}
				break;
			}
			
    break;
    case AT_FSPECIAL:

    break;
    case AT_TAUNT:
    	if(window == 1 and window_timer == 0){
    		press_taunt(false)
    	}
    	if(window < 5){
    		var cancel = false
    		// with oPlayer{
    		// 	if(initial_invince){
    		// 		print(initial_invince)
    		// 		cancel = true
    		// 	}
    		// }
				if(ai_target != self or cancel){
  				press_parry(true)
				}
    	}
    break
    case AT_DATTACK:

    break;
  }
}else{
	attacking = false
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
var new_vsp = 0
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
		new_vsp = max_fall_spd
	}else{
		new_y = yy + vo_y*frame + ac_y*frame*frame/2;
		new_vsp = vo_y + ac_y*frame
	}
}
// make_line(xx,yy,new_x,new_y, c_fuchsia);

return [new_x, new_y, new_hsp, new_vsp];

#define newCometPredict(frame, vo_x, vo_y)

var xx = comet.x;
var yy = comet.y;

if(comet.state <= 2){
	return [xx, yy]
}
var ac_y = comet.state > 2 ? .3 : 0;
var ac_x = 0;

// print(ac_y)
var new_x2 = xx + vo_x*frame;
var new_hsp = vo_x + ac_x*frame;
var new_x = new_x2 + ac_x*frame*frame/2;
var new_y = yy;
// print(sign(new_hsp*tgt.hsp))

new_y = yy + vo_y*frame + ac_y*frame*frame/2;
// make_line(xx,yy,new_x,new_y, c_fuchsia);

return [new_x, new_y]


// Function to calculate the meeting time
#define  calculate_meeting_time(v1, v2, d)
	var MAX_ITERATIONS = 10
	var EPSILON = 0.00001
  // Initial guess for the meeting time
  var t = d / (v1 + v2)
  
  // Newton-Raphson iteration
  repeat(MAX_ITERATIONS){
    var f = v1*t + 0.5*t*t - v2*t - 0.5*t*t
    var df = v1 + t - v2
    t = t - f/df
    
    // Check for convergence
    if abs(f) < EPSILON
      break
  }
  return t

#define hitboxloc(type)

var tgt = type == "COMET" ? comet : ai_target;
if(!instance_exists(tgt) or (tgt == comet and comet.state > 1)) return;

// if (type == "COMET") print("TRYING COMET")
switch(type){
	case "tilts":
		var attacke = [AT_JAB, AT_DTILT, AT_FTILT, AT_UTILT, AT_DATTACK, AT_FSPECIAL];
		break;
		
	case "aerials":
		var attacke = [AT_NAIR, AT_DAIR, AT_FAIR, AT_UAIR, AT_BAIR, AT_FSPECIAL];
		break;
		
	case "strongs":
		var attacke = [AT_DSTRONG, AT_USTRONG, AT_FSTRONG];
		break;
	case "specials":
	case "COMET":
		var attacke = [AT_FSPECIAL];
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
var thw = type == "COMET" ? 60 : HurtboxWidth(ai_target);
var thh = type == "COMET" ? -60 : HurtboxHeight(ai_target);

for(var i = 0; i < len; i++){
	// print(ai_attack_data)
	var att_idx = attacke[@ i]
  var cad = ai_attack_data[@ att_idx];
  if(cad[@ AD_FRAME] <= ai_target.invince_time) continue
  var extra_frames = 0
  var extra_frames_tgt = 0
  var frame = cad[@ AD_FRAME]
  var vo_x = self.hsp*(1 - (state==PS_WAVELAND)*0.75);
  var vo_y = self.vsp;
  var has_boost = false
	var apply_grav = true
	var apply_grav_target = true
  can_reverse = false
  
	if(att_idx == AT_DATTACK){
  	vo_x = 0;
  }
  switch(att_idx){ case AT_FSPECIAL: case AT_FTILT: case AT_UTILT: case AT_DTILT: case AT_FSTRONG: case AT_DSTRONG: case AT_USTRONG: can_reverse = true; break; }
  if(att_idx == AT_FSTRONG){
  	vo_x = 4*spr_dir;
  }
  if(att_idx == AT_FSPECIAL){
  	vo_x = 0;
  	// vo_y = 0
  	has_boost = true
  	apply_grav = true;
  	can_reverse = !ai_recovering and closest_wall_xdist > 64 and can_reverse
  }
  
  lastPos = newPredict(self, frame + extra_frames, vo_x, vo_y, apply_grav, false);
  estOPos = type == "COMET" ? newCometPredict(frame + extra_frames, tgt.hsp, tgt.vsp) : newPredict(ai_target, frame + extra_frames, ai_target.hsp, ai_target.vsp, apply_grav_target, false);
  
  if(has_boost){
  	var pdist = abs(lastPos[@0] - estOPos[@0])
  	var extra_frames = clamp(pdist/10, 0, 15)
  	print(extra_frames)
  	estOPos = type == "COMET" ? newCometPredict(frame + extra_frames, tgt.hsp, tgt.vsp) : newPredict(ai_target, frame + extra_frames, ai_target.hsp, ai_target.vsp, apply_grav_target, false);
  }
  
	var face = 1
	if(can_reverse) face = (spr_dir*sign(estOPos[@0]-lastPos[@0]) > 0) ? 1 : -1;
  
  if(type == "COMET") estOPos[@ 1] -= thh/2
	var ai_target_hurtbox_bbox = [estOPos[@ 1] + thh, estOPos[@ 1], estOPos[@ 0] - thw / 2, estOPos[@ 0] + thw / 2];

  
  var attack_bbox =  [lastPos[@ 1] + (cad[@ AD_CY] + distadd_y) - cad[@ AD_HEIGHT] / 2,
									    lastPos[@ 1] + (cad[@ AD_CY] + distadd_y) + cad[@ AD_HEIGHT] / 2,
									    lastPos[@ 0] + (cad[@ AD_CX] + distadd_x) * spr_dir*face - (cad[@ AD_WIDTH] / 2),
									    lastPos[@ 0] + (cad[@ AD_CX] + distadd_x) * spr_dir*face + (cad[@ AD_WIDTH] / 2)];
    
  var ov = amount_of_rectangle_overlap(ai_target_hurtbox_bbox[@ BBOX_LEFT], ai_target_hurtbox_bbox[@ BBOX_TOP], ai_target_hurtbox_bbox[@ BBOX_RIGHT], ai_target_hurtbox_bbox[@ BBOX_BOTTOM], 
        attack_bbox[@ BBOX_LEFT], attack_bbox[@ BBOX_TOP], attack_bbox[@ BBOX_RIGHT], attack_bbox[@ BBOX_BOTTOM])

  // if(att_idx == AT_FSPECIAL) make_rect_outline(attack_bbox[@ BBOX_LEFT], attack_bbox[@ BBOX_TOP], attack_bbox[@ BBOX_RIGHT], attack_bbox[@ BBOX_BOTTOM], $880088);
  // if(att_idx == AT_FSPECIAL) make_rect_outline(ai_target_hurtbox_bbox[@ BBOX_LEFT], ai_target_hurtbox_bbox[@ BBOX_TOP], ai_target_hurtbox_bbox[@ BBOX_RIGHT], ai_target_hurtbox_bbox[@ BBOX_BOTTOM], $008888);
  // print(ov)
  if(ov){
  	listAtk[j] = att_idx
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
	// print(listAtk)
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
		
		if(chosenAttack == AT_FSTRONG or chosenAttack == AT_DSTRONG or chosenAttack == AT_USTRONG or (chosenAttack == AT_FSPECIAL and type != "COMET")){
			if (ai_target.can_attack or ai_target.can_special or ai_target.can_strong or ai_target.can_shield or random_func(103, 100, true) < 70){
				print("RELLLORED")
				reroll = true;
				chosenAttack = temp_chosen
				if(len == 1) break
			}
		}
		
		if(chosenAttack == AT_FSTRONG){
			if(random_func(949, 100, true) < 50){
				print("RELLLORED")
				reroll = true;
				chosenAttack = temp_chosen
				if(len == 1) break
			}
		}
		
		if(chosenAttack == AT_FSPECIAL){
			if(ai_target_offstage and free and type != "COMET"){
				reroll = true;
				chosenAttack = temp_chosen
				if(len == 1) break
			}
		}
		
		if(chosenAttack == AT_UAIR){
			if(ai_recovering){
				reroll = true;
				chosenAttack = temp_chosen
				if(len == 1) break
			}
		}
	}
	
}
// print(chosenAttack)
#define point_in_rectangle(top, bottom, left, right, point_x, point_y)

var intersect_left = max(left, point_x);
var intersect_right = min(right, point_x)

var intersect_top = max(top, point_y)
var intersect_bottom = min(bottom, point_y)

if intersect_right == intersect_left and intersect_bottom == intersect_top {
	return true;
}
return false;

#define quad_formula(a, b, c)
  // function to calculate the roots of a quadratic equation
  var delta = b*b - 4*a*c;
  if delta < 0
      return [] // no real roots
  else if delta == 0
      return [-b / (2*a)] // one real root
  else
      return [(-b + sqrt(delta)) / (2*a), (-b - sqrt(delta)) / (2*a)] // two real roots

#define collision_time(so1, v1, a1, so2, v2, a2)
  // function to find the time(s) at which two objects cross paths
  // given their positions at different times
  // the positions are given by quadratic equations of the form y(t) = a*t^2 + b*t + c
  // for the two objects
  // a1, b1, c1 are the coefficients of the first object's equation
  // a2, b2, c2 are the coefficients of the second object's equation
  // returns a list of the times at which the objects cross paths
  // (an empty list if they do not cross paths)

  // calculate the coefficients of the quadratic equation of the relative position
  var a = (a1 - a2)/2
  var b = v2 - v1 
  var c = -(so1 - so2)
	// print("a: " + string(a))
  // use the quadratic formula to find the time(s) at which the objects intersect
  return quad_formula(a, b, c)

// ====================== "COMMANDS" THAT TELL THE GAME / AI SYSTEM TO DO SPECIFIC THINGS ======================
#define make_line(x1, y1, x2, y2, color)
  ds_list_add(ai_draw, {type: "line", x1: x1, y1: y1, x2: x2, y2: y2, color: color});

#define make_rect_outline(left, top, right, bottom, color)
  ds_list_add(ai_draw, {type: "rectOutline", left: left, top: top, right: right, bottom: bottom, color: color});

#define make_rect_outline_center(x, y, width, height, color)
  ds_list_add(ai_draw, {type: "rectOutlineCenter", x: x, y: y, width: width, height: height, color: color});

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
return dir;

#define get_direction_custom(angle, snap, face_correct)

var dir = floor(point_direction(0,0, dcos(angle)*(face_correct ? spr_dir : 1 ), -dsin(angle))/snap + .5)%(360/snap);
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

#define hold_away_from_center
	var center_dir = -sign(x - room_width / 2);
	hold_toward_direction(-center_dir)

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
	if(state_cat == SC_HITSTUN and ai_recovering) print("left WHILE RECOVEGING")
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
	if(state_cat == SC_HITSTUN and ai_recovering) print("right WHILE RECOVEGING")
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
	  // print("ran this")
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