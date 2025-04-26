//ai_update - called every frame for this character as a CPU

if((temp_level == 1 || temp_level == 2 || temp_level == 3) && FinalSmash <= 0 && bossattack != 1 && bossattack != 3){
	ai_attack_time = 0;
}

//recovery
if(place_meeting(x+5*spr_dir,y,asset_get("par_block")) && can_wall_jump && ai_recovering){
	jump_pressed = true;
}
if(ai_recovering && attack == AT_USPECIAL){
	with(oPlayer){
		if (self != other){
			if(point_distance(x, y, other.x, other.y) > 100){
				other.special_down = true;
			}else{
				other.special_down = false;
			}
		}
	}
}

//hitfalling
if(free && hitpause && can_fast_fall && has_hit && attack != AT_UAIR
&& (position_meeting(x,y+50,asset_get("par_block")) || position_meeting(x,y+200,asset_get("par_block"))
|| position_meeting(x,y+50,asset_get("par_jumpthrough")) || position_meeting(x,y+200,asset_get("par_jumpthrough")))){
	if(!fast_falling)do_a_fast_fall = true;
}

//rapid jab
if(phone_attacking && attack == AT_JAB && has_hit && !was_parried && window < 4){
	attack_pressed = true;
}

//better nspec usage
if(phone_attacking && attack == AT_NSPECIAL && instance_exists(ai_target)){
	with(ai_target){
		if(point_distance(x, y, other.x, other.y) > 100 && random_func(0,20,true) != 0){
			other.special_down = true;
			if(point_distance(x, y, other.x, other.y) < 400 && state == PS_PARRY){
				other.special_down = false;
			}
		}else{
			other.special_down = false;
		}
		if(y < other.y || point_distance(x, y, other.x, other.y) > 300){
			other.up_down = true;
		}
	}
}

//better fspec usage
if(phone_attacking && attack == AT_FSPECIAL && instance_exists(ai_target)){
	with(ai_target){
		if(point_distance(x, y, other.x, other.y) < 200 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
		&& (other.spr_dir == 1 && x > other.x || other.spr_dir == -1 && x < other.x) && other.fspec_charge <= 0 && random_func(0,20,true) != 0){
			other.special_down = true;
			if(point_distance(x, y, other.x, other.y) < 400 && state == PS_PARRY){
				other.special_down = false;
			}
		}else{
			other.special_down = false;
		}
	}
}

//rising uair
if(state == PS_ATTACK_AIR && attack == AT_UAIR && (has_hit || instance_exists(ai_target) && ai_target.y < y)){
	attack_down = true;
}

//dstrong cancel when offstage
if(phone_attacking && attack == AT_DSTRONG && hitpause && !dstrong_free && has_hit
&& (!position_meeting(x,y+500,asset_get("par_block")) && !position_meeting(x,y+500,asset_get("par_jumpthrough")))){
	jump_pressed = true;
}

if (get_training_cpu_action() == CPU_FIGHT && ai_target != self){
	//increase aggression if lvl is high & opponent is in hitstun or close
	var targetdist = point_distance(x, y, ai_target.x, ai_target.y);
	if(temp_level == 9 && (ai_target.state == PS_HITSTUN || ai_target.state == PS_HITSTUN_LAND || targetdist < 100)){
		ai_attack_time = 0;
	}
	
	var rng_attack = random_func(0,4,true);
	if(rng_attack <= 2){
		with(pHitBox){
		    if(/*type == 2 &&*/ damage > 0 && kb_value > 0 && hit_priority > 0 && player != other.player){
		        if(point_distance(x,y,other.x,other.y) < 150 || point_distance(x,y,other.x,other.y) < 500 && (hsp > 0 && x < other.x || hsp < 0 && x > other.x) && y > other.y-40 && y < other.y+40){
		            with(other){
		                if(ai_attack_time == 0 && can_attack && attack != AT_FSPECIAL){
		                    set_attack(AT_FSPECIAL);
		                }else if(phone_attacking && attack == AT_FSPECIAL){
		                	special_down = true;
		                }
		            }
		        }
		    }
		}
	}
	
	//charging strongs if opponent is in certain positions, not behind GK, and if they parry
	if(phone_attacking && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && instance_exists(ai_target)){
		with(ai_target){
			if((point_distance(x, y, other.x, other.y) > 150 && random_func(0,20,true) != 0 || state == PS_PARRY && state_timer <= 10)
			&& (other.spr_dir == 1 && x > other.x || other.spr_dir == -1 && x < other.x || other.attack == AT_USTRONG)
			&& (other.attack == AT_FSTRONG && point_distance(x, y, other.x, other.y) > 200 && (y > other.y-100 && y < other.y+100)
			|| other.attack == AT_USTRONG && y < other.y-200
			|| other.attack == AT_DSTRONG && y > other.y+200)){
				other.strong_down = true;
				if(point_distance(x, y, other.x, other.y) < 300 && state == PS_PARRY && other.strong_charge >= 30){
					other.strong_down = false;
				}
			}else{
				other.strong_down = false;
			}
		}
	}
	if(!BossMode){ //lets not do this if boss mode, doesnt need to be even harder lol
	//epic patented KoB parry technology (trademark)
	var react = temp_level <= 8 ? round(temp_level/2)+random_func(10,round(temp_level*2),true) : 7+random_func(10,temp_level,true);
	var reacting = react > 8; //try scale the reaction time with CPU level
	if(ai_target.temp_level > 0  && temp_level > 7)reacting = true;
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
	            	if(dist < 90){ //parry/roll/etc if its close (exact range might depend on character width)
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
	}
	//to make the AI jump a bit more
	with(ai_target){
		if(point_distance(x, y, other.x, other.y) < 125 && random_func(0,15,true) == 0){
			with(other){
                if(!free && can_attack && can_jump && !shield_pressed){
                    jump_pressed = true;
                }
            }
		}
	}
}