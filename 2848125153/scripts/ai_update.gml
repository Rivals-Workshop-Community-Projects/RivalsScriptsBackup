//ai_update - called every frame for this character as a CPU

//Credit to DonGT here for all special behavior (outside of the silly stuff), lol I can self promote
target_x_distance = (ai_target.x - x) * spr_dir;
target_y_distance = (y - ai_target.y);

if(ai_target.state != PS_DEAD && ai_target.state != PS_RESPAWN && ai_target != self){
	silly = 0;
	with(oPlayer) if(self != other){
		if(point_distance(x, y, other.x, other.y) <= 125){
			other.taunt_down = false;
		}
	}
}else{
	if(silly == 0){
		silly = 1;
	}
	if(!free){
		ready_to_attack = false;
		if(silly == 1){
			silly = 2+random_func(0,3,true);
		}else if(silly == 2){
			down_down = true;set_attack_ai(AT_TAUNT);taunt_down = true;
		}else if(silly == 3){
			set_attack_ai(AT_TAUNT);taunt_down = true;
		}else if(silly == 4){
			if(get_gameplay_time() % 12 == 0 && haha == 0)haha = 6;
			if(haha > 0)haha--;
			up_down = haha>0;
		}
	}
}
if(jump_cooldown > 0)jump_cooldown--;
if(place_meeting(x+5*spr_dir,y,asset_get("par_block")) && can_wall_jump && ai_recovering){
	jump_pressed = true;
}
if (get_training_cpu_action() == CPU_FIGHT && ai_target != self){
	//increase aggression if lvl is high & opponent is in hitstun or close
	var targetdist = point_distance(x, y, ai_target.x, ai_target.y);
	if(temp_level == 9 && (ai_target.state == PS_HITSTUN || ai_target.state == PS_HITSTUN_LAND || targetdist < 100)){
		ai_attack_time = 0;
	}
	
	if(instance_exists(property) && !property_override){
		if(instance_exists(property)){
			if("destroying" in property){
				if(initial_invince > 0 && can_attack)set_attack_ai(AT_DSPECIAL);
				if(property.destroying){rushdown_override = true;property_override = true;}
			}
		}
	    if(get_player_damage(player) >= 100 && current_money >= 20000 && instance_exists(property)){
	    	money_override = true;
	    	rushdown_override = true;
	        if(abs(target_x_distance) > 100){
	            if((property.x - x) < 0){
	                left_hard_pressed = true;
	                left_down = true;
	            }else{
	                right_hard_pressed = true;
	                right_down = true;
	            }
	        }
	        if(point_distance(x, y, property.x, property.y) <= 100 && !ai_recovering){
	        	if(y < property.y)down_hard_pressed = true;
	        	if(y > property.y+10 && jump_cooldown <= 0 && point_distance(x,y,property.x,property.y) <= 200){jump_pressed = true;jump_cooldown = 12;}
	        	if(point_distance(x, y, property.x-99*property.spr_dir, property.y+40) <= 100){
	        		if(attack != AT_FSPECIAL && !free)set_attack_ai(AT_TAUNT);
	        		if(current_money >= 50000)attack_down = true;
	        		rushdown_override = false;property_override = false;
	        	}
	        }
	    }else{
	    	money_override = false;
		    if(!ai_recovering && ai_target.state != PS_RESPAWN && state != PS_PRATFALL && !rushdown_override){
		        if(abs(target_x_distance) > 100){
		            if((ai_target.x - x) < 0){
		                left_hard_pressed = true;
		                left_down = true;
		            }else{
		                right_hard_pressed = true;
		                right_down = true;
		            }
		        }
		    }
	    }
	}else{
		if(!property_override && current_money >= 5000*discount){
		    if(!ai_recovering && ai_target.state != PS_RESPAWN && state != PS_PRATFALL && can_attack){
		        if(abs(target_x_distance) < 100){
		            if((ai_target.x - x) < 0){
		                right_hard_pressed = true;
		                right_down = true;
		            }else{
		                left_hard_pressed = true;
		                left_down = true;
		            }
		            if(attack == AT_DSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))special_down = false;
		        }else{
		        	set_attack_ai(AT_DSPECIAL);special_down = true;
		        }
		    }
		}
	}
	with(pHitBox){
		if("attack" in self && "player_id" in self){ //roment
			if(attack == AT_JAB && "current_money" in player_id){
				if(hbox_num >= 10 && hbox_num < 12){
			        with(oPlayer) if("current_money" in self && "ai_target" in self){
					    if(!money_override && !ai_recovering && ai_target.state != PS_RESPAWN && state != PS_PRATFALL){
					        if(abs(target_x_distance) > 150){
					        	rushdown_override = true;
					            if((other.x - x) < 0){
					                left_hard_pressed = true;
					                left_down = true;
					            }else{
					                right_hard_pressed = true;
					                right_down = true;
					            }
					            if(point_distance(x,y,other.x,other.y) <= 300){
						        	if(y < other.y)down_hard_pressed = true;
						        	if(y > other.y+10 && jump_cooldown <= 0 && point_distance(x,y,other.x,other.y) <= 200){jump_pressed = true;jump_cooldown = 12;}			            	
					            }
					        }else{
					        	rushdown_override = false;
					        }
					    }if(other.hitbox_timer == other.length-1 || other.destroyed){rushdown_override = false;property_override = false;}     	
			        }
				}
			}
		}
	}
	if(!ai_recovering){
		if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
			if(attack == AT_UAIR){
				if(current_money >= 5000*discount && y < 300){
					attack_down = true;
				}
			}
			if(attack == AT_NAIR){
				if(current_money >= 400*discount){
					nair_chance = 2+random_func(0,2,true);
					if(nair_chance == 3)attack_down = true;
				}
			}		
		}
	    if((state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP) && (point_distance(x, y, ai_target.x, ai_target.y) <= 100)) {
	        set_attack_ai(AT_UAIR);
	    }
	    if((state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP) && (point_distance(x, y, ai_target.x, ai_target.y) <= 200)) {
	        nair_chance = 2+random_func(0,10,true);
	        if(nair_chance == 3)set_attack_ai(AT_NAIR);
	    }
	}
	
	//sick reflect
	with(pHitBox){
        if(type == 2 && (other.player != player && hit_priority > 0 && can_hit[other.player] || other.player == player /*&& attack == AT_BAIR && hbox_num >= 3 && vsp > 0*/)
        && ("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self)){
            if(point_distance(x+(hsp*6), y+(vsp*3), other.x+hsp, other.y-(other.char_height/2)+vsp) < 150){
                with(other){
                    if(can_attack && attack != AT_DSTRONG && !free){
                        set_attack(AT_DSTRONG);
                    }
                }
            }
        }
    }
	
	//epic patented KoB parry technology (trademark)
	var react = temp_level <= 8 ? round(temp_level/2)+random_func(10,round(temp_level*2),true) : 9+random_func(10,temp_level,true); //lvl 9 has perfect reactions. very skillful!
	var reacting = react > 8; //try scale the reaction time with CPU level
	if(reacting && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
		with(ai_target){ //physical hitboxes
			if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
				var hb_window = 100;var hb_window_timer = 900;var hb_pos_x = 0;var hb_pos_y = 0;
				var above = y < other.y;var right = x > other.x;
				for (var hb=1; hb <= get_num_hitboxes(attack); hb+=1;) {
					if(get_hitbox_value(attack, hb, HG_WINDOW) <= hb_window && get_hitbox_value(attack, hb, HG_WINDOW) <= get_attack_value(attack, AG_NUM_WINDOWS)){
						hb_window = get_hitbox_value(attack, hb, HG_WINDOW);
						hb_window_timer = get_hitbox_value(attack, hb, HG_WINDOW_CREATION_FRAME);
						hb_pos_x = x+(get_hitbox_value(attack, hb, HG_HITBOX_X)*spr_dir)+(right?(get_hitbox_value(attack, hb, HG_WIDTH)/2):-(get_hitbox_value(attack, hb, HG_WIDTH)/2));
						hb_pos_y = y+get_hitbox_value(attack, hb, HG_HITBOX_Y)+(above?(get_hitbox_value(attack, hb, HG_HEIGHT)/2):(-get_hitbox_value(attack, hb, HG_HEIGHT)/2));
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
							shield_pressed = true;if(parry_cooldown > 0 && !free){right_down = random_func(1,1,true) == 0;left_down = !right_down;}
						}
					}
				}
			}
		}
		with(pHitBox){ //projectiles and active traveling moves
            if(self != other && player != other.player){
            	if(hit_priority > 0 && can_hit[other.player]){
            		var dist = type = 2 ? (point_distance(x+(hsp*3), y+(vsp*3), other.x+hsp, other.y-(other.char_height/2))+vsp)
            		: (point_distance(x+(player_id.hsp*3), y+(player_id.vsp*3), other.x+hsp, other.y-(other.char_height/2))+vsp);
	            	if(dist < 90){ //parry/roll/etc if its close (exact range might depend on character width)
		            	with(other){
							if(state != PS_JUMPSQUAT)shield_pressed = true;special_down = false;
							if(parry_cooldown > 0 && !free || free){
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
#define set_attack_ai(atk)
if(can_attack && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack != atk || (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state_cat != SC_HITSTUN && state != clamp(state,33,36)))set_attack(atk);
