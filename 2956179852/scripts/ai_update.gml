//ai_update - called every frame for this character as a CPU

if(ai_target.state != PS_DEAD && ai_target.state != PS_RESPAWN && ai_target != self){
	silly = 0;
}else{
	if(silly == 0){
		silly = 1;
	}
	if(!free){
		ready_to_attack = false;
		if(silly == 1){
			silly = 2+random_func(0,2,true);
		}else if(silly == 2){
			down_down = true;
		}else if(silly == 3){
			if(state == PS_IDLE){
				set_state(PS_WALK_TURN);
				if(spr_dir == 1){
					left_pressed = true;
				}else if(spr_dir == -1){
					right_pressed = true;
				}
			}
		}
	}
}

if(place_meeting(x+5*spr_dir,y,asset_get("par_block")) && can_wall_jump && ai_recovering){
	jump_pressed = true;
}

//hitfalling
if(free && hitpause && can_fast_fall && has_hit
&& (position_meeting(x,y+50,asset_get("par_block")) || position_meeting(x,y+200,asset_get("par_block"))
|| position_meeting(x,y+50,asset_get("par_jumpthrough")) || position_meeting(x,y+200,asset_get("par_jumpthrough")))){
	if(!fast_falling)do_a_fast_fall = true;
}

//jab
if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_JAB && has_hit && !was_parried && window < 7){
	attack_pressed = true;
}

if (get_training_cpu_action() == CPU_FIGHT && ai_target != self){
	//increase aggression if lvl is high & opponent is in hitstun or close
	var targetdist = point_distance(x, y, ai_target.x, ai_target.y);
	if(temp_level == 9 && (ai_target.state_cat == SC_HITSTUN || ai_target.state == PS_PRATFALL || ai_target.state == PS_PRATLAND || targetdist < 120)){ai_attack_time = 0;ready_to_attack = true;}
	var target_dmg = get_player_damage(ai_target.player);
	var groundbelow = (position_meeting(x,y+50,asset_get("par_block")) || position_meeting(x,y+100,asset_get("par_block")) || position_meeting(x,y+200,asset_get("par_block"))
	|| position_meeting(x,y+50,asset_get("par_jumpthrough")) || position_meeting(x,y+100,asset_get("par_jumpthrough")) || position_meeting(x,y+200,asset_get("par_jumpthrough")))
	&& state != PS_DEAD && state != PS_RESPAWN;
	
	//use specific moves more
	if(!phone_attacking && can_attack && ready_to_attack){
		if(!free){
			if (abs((y-60)-ai_target.y) < 50 && abs(x-ai_target.x) < 50 && random_func(0,2,true) == 0){
		        cpu_attack(AT_UTILT, false);
			}else if (abs((y-20)-ai_target.y) < 50 && abs((x+(50*spr_dir))-ai_target.x) < 30 && random_func(0,2,true) == 0){
		        cpu_attack(AT_FTILT, true);
			}
		}else if(free && (!ai_recovering || has_walljump || move_cooldown[AT_USPECIAL] <= 0)){
			if (ai_target.y < y-30 && ai_target.y > y-80 && abs(x-ai_target.x) < 60){
		        cpu_attack(AT_UAIR, false);
			}else if (abs((y-20)-ai_target.y) < 50 && abs((x+(60*spr_dir))-ai_target.x) < 30){
		        cpu_attack(AT_FAIR, false);
			}else if (abs(y-ai_target.y) < 50 && abs((x-(50*spr_dir))-ai_target.x) < 30){
		        cpu_attack(AT_BAIR, false);
			}else if (abs((y+60)-ai_target.y) < 50 && abs(x-ai_target.x) < 70){
		        cpu_attack(AT_DAIR, false);
			}
		}
	}
	
	//better cancels
	if(phone_attacking && temp_level > 5){
		//if(attack == AT_DATTACK && has_hit){attack_pressed = random_func(0,2,true) == 0;jump_pressed = !attack_pressed;}
	}
	
	//epic patented KoB parry technology (trademark)
	var react = temp_level <= 8 ? round(temp_level/2)+random_func(10,round(temp_level*2),true) : 7+random_func(10,temp_level,true);
	var reacting = react > 8; //try scale the reaction time with CPU level
	if(ai_target.temp_level > 0 && temp_level > 7)reacting = true;
	if(reacting && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
		with(ai_target){ //physical hitboxes
			if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
				var hb_window = 100;var hb_window_timer = 900;var hb_pos_x = 0;var hb_pos_y = 0;
				var above = y < other.y;var right = x > other.x;
				for (var hb=1; hb <= get_num_hitboxes(attack); hb+=1;) {
					if(get_hitbox_value(attack, hb, HG_WINDOW) <= hb_window && get_hitbox_value(attack, hb, HG_WINDOW) <= get_attack_value(attack, AG_NUM_WINDOWS)){
						//check if you should actually care about this hitbox
						if(get_hitbox_value(attack, hb, HG_PRIORITY) > 0 && (get_hitbox_value(attack, hb, HG_DAMAGE) > 1 || get_hitbox_value(attack, hb, HG_HITSTUN_MULTIPLIER) >= 0
						|| get_hitbox_value(attack, hb, HG_BASE_KNOCKBACK) > 0 || get_hitbox_value(attack, hb, HG_KNOCKBACK_SCALING) > 0)){
							hb_window = get_hitbox_value(attack, hb, HG_WINDOW);
							hb_window_timer = get_hitbox_value(attack, hb, HG_WINDOW_CREATION_FRAME);
							hb_pos_x = x+(get_hitbox_value(attack, hb, HG_HITBOX_X)*spr_dir)+(right?(get_hitbox_value(attack, hb, HG_WIDTH)/2):-(get_hitbox_value(attack, hb, HG_WIDTH)/2));
							hb_pos_y = y+get_hitbox_value(attack, hb, HG_HITBOX_Y)+(above?(get_hitbox_value(attack, hb, HG_HEIGHT)/2):(-get_hitbox_value(attack, hb, HG_HEIGHT)/2));
						}
					}
				}
				//if the timing is at the start of a window, try compensate
				if(hb_window_timer <= 0 && hb_window <= get_attack_value(attack, AG_NUM_WINDOWS)){
					hb_window -= 1;
					if(hb_window > get_attack_value(attack, AG_NUM_WINDOWS) || hb_window >= 100 || hb_window < 1)hb_window = 1; //failsafe
					hb_window_timer = get_window_value(attack, hb_window, AG_WINDOW_LENGTH);
				}
				if(((window == hb_window && window_timer < hb_window_timer-3 && window_timer > hb_window_timer-12
				|| window == hb_window-1 && hb_window_timer < 5 && window_timer > get_window_value(attack, hb_window, AG_WINDOW_LENGTH)-round(hb_window_timer*1.5))
				&& point_distance(hb_pos_x, hb_pos_y, other.x, other.y) < 150) && !smash_charging){
					with(other){
						if(state != PS_JUMPSQUAT){
							shield_pressed = true;right_pressed = false;left_pressed = false;right_down = false;left_down = false;
							if(parry_cooldown > 0 && !free){right_down = random_func(1,1,true) == 0;left_down = !right_down;}
						}
					}
				}
			}
		}
		with(pHitBox){ //projectiles and active traveling moves
            if(self != other && (player != other.player || player == other.player && can_hit_self)){
            	if(hit_priority > 0 && can_hit[other.player] && (damage > 0 || hitstun_factor >= 0 || kb_value > 0 || kb_scale > 0)){
            		var weakproj = (type == 2 && damage <= 3 && (hitstun_factor < 0.5 || kb_value < 1 && kb_scale < 0.1));
            		var dist = type = 2 ? (point_distance(x+(hsp*3), y+(vsp*3), other.x+hsp, other.y-(other.char_height/2))+vsp)
            		: (point_distance(x+(player_id.hsp*3), y+(player_id.vsp*3), other.x+hsp, other.y-(other.char_height/2))+vsp);
	            	if(dist < 100){ //parry/roll/etc if its close (exact range might depend on character width)
		            	with(other){
							if(state != PS_JUMPSQUAT)shield_pressed = true;special_down = false;right_pressed = false;left_pressed = false;right_down = false;left_down = false;
							if((parry_cooldown > 0 && !free || free) && !weakproj){
								right_down = random_func(1,1,true) == 0;left_down = !right_down;
								if(other.type == 2){ //if its a projectile do extra roll / airdodge stuff
									right_down = other.x > x;left_down = !right_down;
									if(free)up_down = true;
								}
							}
						}
	            	}if(dist < 200 && type == 2 && abs(hsp) < 6){ //try jump over slower projectiles
		            	with(other){
							if(abs(other.hsp) < 2 || parry_cooldown > 0 && random_func(2,1,true) == 0){
								if(!free && can_jump || free && can_djump && vsp > -1){
									jump_pressed = true;shield_pressed = false;
								}
							}
						}if(other.state == PS_FIRST_JUMP || other.state == PS_JUMPSQUAT){ //to make jumping over things a bit more reliable
							with(other){if(vsp < -2 || !free || state_timer <= 1){jump_pressed = false;jump_down = true;}if(vsp <= 0)shield_pressed = false;}
						}
	            	}
            	}
            }
		}
	}
	
	//hitfalling aerials
	if(free && hitpause && !ai_recovering && can_fast_fall && has_hit && !fast_falling && groundbelow && temp_level > 5){do_a_fast_fall = true;down_hard_pressed = true;}
	//fast fall more
	if(free && !ai_recovering && ai_target.y > y+60 && vsp > 0.5 && can_fast_fall && !fast_falling && groundbelow && temp_level > 5){down_hard_pressed = true;do_a_fast_fall = true;}
	//more aggressive dashing/wavedashing
	if((state == PS_IDLE || state == PS_WALK) && targetdist > 60 && temp_level > 5){
		if(random_func(2,3,true) != 0){right_hard_pressed = ai_target.x > x;left_hard_pressed = !right_hard_pressed;}
		else{jump_pressed = true;wavedash_dir(random_func(1,2,true) == 0 ? 315 : 225);}
	}
	//to make the AI use platforms and wavedashes better
	if(!ai_recovering && temp_level > 5){
		if(!free && !freemd){
			if(ai_target.y > y+20 && abs(x-ai_target.x) < 100)down_hard_pressed = true;
		}else if(has_airdodge && free && (ai_target.y < y-20 || abs(x-ai_target.x) > 80)){
			if(position_meeting(x+70,y+10,asset_get("par_jumpthrough")) && !position_meeting(x+70,y-40,asset_get("par_jumpthrough")) && ai_target.x > x+70){
				wavedash_dir(0);
			}else if(position_meeting(x-70,y+10,asset_get("par_jumpthrough")) && !position_meeting(x-70,y-40,asset_get("par_jumpthrough")) && ai_target.x < x-70){
				wavedash_dir(180);
			}else if(position_meeting(x,y+10,asset_get("par_jumpthrough")) && !position_meeting(x,y-20,asset_get("par_jumpthrough")) && random_func(0,2,true) == 0){
				wavedash_dir(random_func(1,3,true) == 0 ? 270 : random_func(1,3,true) == 1 ? 315 : 225);
			}
		}if(state == PS_AIR_DODGE || state == PS_WAVELAND || state == PS_JUMPSQUAT || state == PS_FIRST_JUMP && ai_target.y > y-100 && (position_meeting(x,y+10,asset_get("par_block")) || position_meeting(x,y+10,asset_get("par_jumpthrough")))){
			if(ai_target.x > x+50){right_down = true;joy_dir = 315;joy_pad_idle = false;waveland_dir = joy_dir;}else if(ai_target.x < x-50){left_down = true;joy_dir = 225;joy_pad_idle = false;waveland_dir = joy_dir;}
			if(state == PS_FIRST_JUMP){shield_pressed = true;shield_down = true;}
		}if((state == PS_AIR_DODGE || state == PS_JUMPSQUAT) && waveland_dir != -999)joy_dir = waveland_dir;
	}if(state != PS_AIR_DODGE && state != PS_JUMPSQUAT)waveland_dir = -999;
	//to make the AI charge strongs more effectively, and only use strongs if it makes sense to
	if(phone_attacking && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && instance_exists(ai_target)){
		with(ai_target){
			if((other.spr_dir == 1 && x > other.x || other.spr_dir == -1 && x < other.x || other.attack == AT_USTRONG || other.attack == AT_DSTRONG)
			&& (other.strong_charge == 1 && random_func(0,2,true) != 0 || other.strong_charge != 1 && random_func(0,30,true) != 0)){
				other.strong_down = true;
				if(point_distance(x, y, other.x, other.y) < 150 && (state == PS_PARRY || state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR || state_cat == SC_HITSTUN || state == PS_PRATFALL || state == PS_PRATLAND)){
					other.strong_down = false;
				}
			}else other.strong_down = false;
		}
	}else if(!phone_attacking && can_attack && ready_to_attack && attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG){
		if(abs((y-15)-ai_target.y) < 20 && abs(x-ai_target.x) > 50 && abs(x-ai_target.x) < 120 && !free){
            cpu_attack(AT_FSTRONG, true);
        }else if(abs((y-50)-ai_target.y) < 80 && abs(x-ai_target.x) < 50 && !free){
            cpu_attack(AT_USTRONG, false);
        }else if(abs(y-ai_target.y) < 30 && abs(x-ai_target.x) < 60 && !free){
            cpu_attack(AT_DSTRONG, false);
        }
	}
	//to make the AI jump a bit more (randomly for shorthop aerials but also to juggle better)
	if(targetdist < 125 && random_func(0,15,true) == 0 && !free || ai_target.y < y-(free ? 100 : 160) && abs(x-ai_target.x) < 50 && ai_target.state == PS_HITSTUN){
        if((!free || djumps < max_djumps && (state == PS_DOUBLE_JUMP && state_timer > 20 || state != PS_DOUBLE_JUMP)) && can_jump && can_attack && !shield_pressed && !ai_recovering){
            jump_pressed = true;
        }
	}if(state == PS_JUMPSQUAT && ai_target.y < y-140 && abs(x-ai_target.x) < 80)jump_down = true;
	//dont burn double jumps so much (especially important for floaty djump characters)
	if((state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP) && state_timer < 20 && jump_pressed && ai_recovering)jump_pressed = false;
	//make the AI not drift out and die as much, and tech better
	if(state == PS_HITSTUN){
		if(x > room_width*0.8)left_down = true; else if(x < room_width*0.2)right_down = true;
		if(temp_level > 7){shield_pressed = false;if(place_meeting(x+(ai_target.hitpause ? (ai_target.hsp*2) : (ai_target.old_hsp*2)),y+(ai_target.hitpause ? (ai_target.vsp*2) : (ai_target.old_vsp*2)),asset_get("par_block")) || place_meeting(x+hsp,y+vsp,asset_get("par_jumpthrough")) && !position_meeting(x,y-20,asset_get("par_jumpthrough")))shield_pressed = true;}
	}
	//if target is in disadvantage, dont do defensive stuff like parries
	if(!free && (ai_target.state == PS_PRATLAND || ai_target.state_cat == SC_HITSTUN))shield_pressed = false;
}

#define cpu_attack(attack, turn_to_target)
	set_attack(attack);draw_y = 0;
	if(turn_to_target && ai_target != self)spr_dir = x < ai_target.x ? 1 : -1;
	
#define wavedash_dir(wavedash_angle)
	joy_dir = wavedash_angle;joy_pad_idle = false;waveland_dir = joy_dir;shield_pressed = true;