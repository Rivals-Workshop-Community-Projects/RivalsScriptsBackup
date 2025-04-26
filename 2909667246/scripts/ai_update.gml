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
if(op){
	temp_level = 9;
}
if(place_meeting(x+5*spr_dir,y,asset_get("par_block")) && can_wall_jump && ai_recovering){
	jump_pressed = true;
}
//uspec stuff
if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL){
	if(ai_recovering){
		special_down = true;jump_down = false;
		with(oPlayer){
			if (self != other){
				if(point_distance(x, y, other.x, other.y) < 100 && get_player_team(player) != get_player_team(other.player)
				&& state_cat != SC_HITSTUN && other.y < room_height-200){
					other.attack_pressed = true;other.special_down = false;
				}
			}
		}
	}else{
		attack_pressed = true;special_down = false;
	}
}
//try use fspec instead of uspec to recover, if possible
if(ai_recovering && !instance_exists(Lloid_Rocket) && (attacking && (attack == AT_FSPECIAL || attack == AT_USPECIAL) || y >= room_height-400)){
	if(can_attack && attack != AT_FSPECIAL && (attack == AT_USPECIAL || y >= room_height-400)){
		if(!position_meeting(x+75,y,asset_get("par_block")) && !position_meeting(x-75,y,asset_get("par_block"))){
			if(move_cooldown[AT_USPECIAL] < 2)move_cooldown[AT_USPECIAL] = 2;
			set_attack(AT_FSPECIAL);
			if(x < room_width/2)spr_dir = 1;
			else if(x > room_width/2)spr_dir = -1;
		}
	}
}

//hitfalling
if(free && hitpause && !ai_recovering && can_fast_fall && has_hit
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
	if((temp_level == 1 || temp_level == 9) && (ai_target.state == PS_HITSTUN || ai_target.state == PS_HITSTUN_LAND
	|| ai_target.state == PS_PRATFALL || ai_target.state == PS_PRATLAND || targetdist < 100)){
		ai_attack_time = 0;
	}
	
	//use nspec if something is pocketed
	rng_attack = random_func(0,4,true);
    with(ai_target){
		if(self != other){
			if(instance_exists(other.Pocketed_Projectile) && !other.ai_recovering
			&& (state == PS_HITSTUN || state == PS_HITSTUN_LAND) && point_distance(x, y, other.x, other.y) < 120){
				if(state == PS_HITSTUN || state == PS_HITSTUN_LAND)with(other)rng_attack = 0;
				with(other){
                    if(can_attack && attack != AT_NSPECIAL && move_cooldown[AT_NSPECIAL] <= 0 && rng_attack == 0){
                        set_attack(AT_NSPECIAL);
                        if(other.x > x)spr_dir = 1;
						else if(other.x < x)spr_dir = -1;
                    }
                }
			}
		}
	}
	
	//try use nspec/grab on projectiles
	var rng_attack = random_func(0,4,true);
	if(rng_attack != 0){
		with(pHitBox){
	        if(type == 2 && self != other && other.player != player && !other.ai_recovering){
	            if(point_distance(x+(hsp*6), y+(vsp*3), other.x+hsp, other.y-(other.char_height/2)+vsp) < 200 && abs(y-(other.y-(other.char_height/2))) < 150){
	                if(!instance_exists(other.Pocketed_Projectile) && (((damage > 0 && hit_priority > 0 &&
					("UnReflectable" in self && !UnReflectable || "UnReflectable" not in self) || "MattStar" in self && MattStar) && "Pocketable" not in self || "Pocketable" in self && Pocketable) &&
					("PocketableByOwner" in self && PocketableByOwner != other.player || "PocketableByOwner" not in self) &&
					("Pocketed" in self && !Pocketed || "Pocketed" not in self) && (sprite_index != asset_get("empty_sprite") || "Pocketable" in self && Pocketable) || other.runeI)){
		                with(other){
		                    if(can_attack && attack != AT_NSPECIAL && move_cooldown[AT_NSPECIAL] <= 0){
		                        set_attack(AT_NSPECIAL);
		                        if(other.x > x)spr_dir = 1;
								else if(other.x < x)spr_dir = -1;
		                    }
		                }
					}
	            }
	        }
	    }
	}else{
		with(pHitBox){
		    if(type == 2 && self != other){
		    	if(string_length(string(player_id.url)) > 0 && orig_player != 5){
		    		var playerurl = real(player_id.url);
		    		if("MattCanGrab" in self && MattCanGrab || other.url != playerurl && (other.canon || other.op || playerurl < 20)){
	                	var dist = point_distance(other.x+70*other.spr_dir, other.y-25, x, y); //distance
                	    if(dist <= 75 && !other.grabbedobject && ("KoB_grabbed" in self && !KoB_grabbed || "KoB_grabbed" not in self)){
					        with(other){
								if(ai_attack_time == 0 && move_cooldown[AT_EXTRA_1] <= 0 && random_func(0,5,true) == 2 && !ai_recovering && can_attack && (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)){
									set_attack(AT_EXTRA_1);
									reset_attack_value(AT_GRAB, AG_NUM_WINDOWS);
									move_cooldown[AT_EXTRA_1] = 80;
								}
					        }                	    
                	    }
		    		}
		    	}
		    }
		}
	}
	
	//fspec
	if(!instance_exists(Lloid_Rocket)){
		mid_side_attacks[1] = AT_FSPECIAL;far_side_attacks[0] = AT_FSPECIAL;
	}else{
		mid_side_attacks[1] = noone;far_side_attacks[0] = noone;
	}
	if(attacking && attack == AT_FSPECIAL){
		if(window == 2 && fspec_spawned && !hitpause && !Lloid_Rocket_Ride && ai_recovering){
			special_down = true;
		}else if(window >= 4 && Lloid_Rocket_Ride){
			if(instance_exists(ai_target) && ai_target.state == PS_PARRY || !ai_recovering
			|| (position_meeting(x,y+50,asset_get("par_block")) || position_meeting(x,y+200,asset_get("par_block"))
			|| position_meeting(x,y+50,asset_get("par_jumpthrough")) || position_meeting(x,y+200,asset_get("par_jumpthrough"))))
			jump_pressed = true;
		}
	}
	//use axe/grab/watr
	with(ai_target) if self != other{
		var choseatt = false;
		if(point_distance(x, y, other.x, other.y) < 60 && abs(y-other.y) < 30 && ((state == PS_HITSTUN || state == PS_HITSTUN_LAND)
		|| get_player_damage(player)/80 >= knockback_adj)){
			with(other){
                if(can_attack && attack != AT_DSPECIAL && move_cooldown[AT_DSPECIAL] <= 0){
                    set_attack(AT_DSPECIAL);shield_down = true;choseatt = true;
                    if(other.x > x)spr_dir = 1; else if(other.x < x)spr_dir = -1;
                }
            }
		}
		if(point_distance(x,y,other.x,other.y) < 100 && !choseatt){
			with(other){
				if(ai_attack_time == 0 && move_cooldown[AT_EXTRA_1] <= 0 && random_func(0,5,true) == 2 && !ai_recovering && can_attack && (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)){
					set_attack(AT_EXTRA_1);choseatt = true;
					reset_attack_value(AT_GRAB, AG_NUM_WINDOWS);
					move_cooldown[AT_EXTRA_1] = 80;
					if(other.x > x)spr_dir = 1; else if(other.x < x)spr_dir = -1;
				}
			}
		}
		if(point_distance(x,y,other.x,other.y) < 400 && !choseatt
		&& (state == PS_PRATFALL || djumps == max_djumps || !has_airdodge || move_cooldown[AT_USPECIAL] > 0 || !bear_uspecial)){
			with(other){
				if(ai_attack_time == 0 && move_cooldown[AT_EXTRA_1] <= 0 && !ai_recovering && can_attack && (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)){
					if(!free)jump_pressed = true;
					set_attack(AT_DSPECIAL);choseatt = true;
					if(other.x > x)spr_dir = 1; else if(other.x < x)spr_dir = -1;
				}
			}
		}
	}
	if(attack == AT_EXTRA_1){
		if(window == 4){
			var rng_attack = random_func(0,3,true);
			if(rng_attack == 0){
				up_pressed = true;
			}else if(rng_attack == 1){
				down_pressed = true;
			}else if(rng_attack == 2){
				right_pressed = true;
			}else if(rng_attack == 3){
				left_pressed = true;
			}
		}
	}
	
	//charging strongs
	if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && instance_exists(ai_target)){
		with(ai_target){
			if((other.spr_dir == 1 && x > other.x || other.spr_dir == -1 && x < other.x || other.attack == AT_DSTRONG)
			&& (other.strong_charge == 1 && random_func(0,2,true) != 0 || other.strong_charge != 1 && random_func(0,30,true) != 0)){
				other.strong_down = true;
				if(point_distance(x, y, other.x, other.y) < 150 && state == PS_PARRY){
					other.strong_down = false;
				}
			}else{
				other.strong_down = false;
			}
		}
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



if(temp_level == 1 || BossMode){
	max_djumps = 999;
	move_cooldown[attack] = 0;
	if(ai_target.state != PS_DEAD && ai_target.state != PS_RESPAWN && ai_target != self){
		if(abs(x + hsp - ai_target.x + ai_target.hsp) < 120 and abs(y + vsp - ai_target.y + ai_target.vsp) < 120){
		    attack_pressed = true;
		    
		    if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack != AT_NSPECIAL){
			    if(state_timer <= 10 && rapidattack <= 0){
			    	x += floor((ai_target.x - x)/8);
			        if free y += floor((ai_target.y - y)/8);
			    }
		    }
		} 
		
		if(state == PS_DOUBLE_JUMP && ai_target.state_cat == SC_HITSTUN && rapidattack <= 0){
			hsp = floor((ai_target.x + ai_target.hsp - x)/10)
			vsp = floor((ai_target.y + ai_target.vsp - y)/10)
		}
		
		if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_NSPECIAL && window <= 3){
			y = ai_target.y;hsp = 0;vsp = 0;
			if(ai_target.x > x){
				spr_dir = 1;
			}else{
				spr_dir = -1;
			}
		}
		/*if(state == PS_ATTACK_GROUND && attack == AT_JAB){
			if(window == 9){
				window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH)-1;
			}else if(window == 11){
				window += 1;window_timer = 0;
			}
		}*/
		
		if(has_hit_player && ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) /*&& (attack != AT_FSPECIAL || attack == AT_FSPECIAL && (window == 8 || window == 8))*/ || rapidattack > 0)){
		    can_attack = true;
		    attack_end();
		    if(!hit_player_obj.hitpause || rapidattack > 0){
		    	spawn_hit_fx(x,y-30,fx_fireworks_yellow);hsp = 0;vsp = 0;
				
		    	var rng_attack = random_func(0,6,true);
		    	if(rng_attack == 0){
			    	x = ai_target.x-60*spr_dir;y = ai_target.y-40;
			    	set_attack(AT_NAIR);
		    	}else if(rng_attack == 1){
			    	x = ai_target.x-90*spr_dir;y = ai_target.y-40;
			    	set_attack(AT_FAIR);
		    	}else if(rng_attack == 2){
			    	x = ai_target.x+80*spr_dir;y = ai_target.y-40;
			    	set_attack(AT_BAIR);
		    	}else if(rng_attack == 3){
			    	x = ai_target.x;y = ai_target.y+100;
			    	set_attack(AT_UAIR);
		    	}else if(rng_attack == 4){
			    	x = ai_target.x;y = ai_target.y-140;
			    	set_attack(AT_DAIR);
		    	}
		    	if(attack != AT_NSPECIAL){
		    		if(attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG){
			    		window = 1;
			    	}else{
			    		window = 2;
			    	}
		    	}window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH);
		    	spawn_hit_fx(x,y-30,fx_fireworks_yellow);
				sound_play( sound_get("pocket_throw") );
				if(rapidattack > 0){
					rapidattack--;hitpause = 0;hitstop = 0;
					if(rapidattack > 0){
						ai_target.hitpause = 1;ai_target.hitstop = 10;
					}
				}else{
					var rng_rapidattack = random_func(0,10,true);
					if(rng_rapidattack == 0 && rapidattack <= 0){
						rapidattack = 10;
					}
				}
			}
		       
		    if(!hit_player_obj.hitpause && !free){
				attack_end();
				state = PS_IDLE;
				hsp = floor((ai_target.x + ai_target.hsp - x)/10);
				vsp = floor((ai_target.y + ai_target.vsp - y)/10);
		    }
		}
	}
}