 //B - Reversals

if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Dilt cancel
if(attack == AT_DTILT){
	if(window == 2 && has_hit && !hitpause){
		window = 3
		window_timer = 0
		destroy_hitboxes();
		if(hsp > 4){
			hsp = 4
		}else if(hsp < -4){
			hsp = -4
		}
	}
}

//Jab stuff (unused)
if(attack == AT_JAB){
	if(window == 1){
		lockon_id = noone
		geyser_free_far = false
		geyser_free_close = false
		geyser_exists = false
	}
	if(window == 8 && !geyser_exists){
		if(has_hit_player){
			create_hitbox(AT_JAB, 3, lockon_id.x, y - 18)
		}else{
			var geyser_1 = create_hitbox(AT_JAB, 3, x + 66*spr_dir, y - 18)
			var geyser_2 = create_hitbox(AT_JAB, 3, x - 30*spr_dir, y - 18)
			geyser_1.spr_dir *= -1
		}
	}
	if(window == 9){
		geyser_exists = false
		geyser_free_far = false
		geyser_free_close = false
	}
}

//Nair 2nd Hitbox
if(attack == AT_NAIR){
	if(window == 2 || window == 3 || window == 5){
		char_height = lerp(char_height, 70, 0.5)
	}else{
		char_height = lerp(char_height, 44, 0.5)
	}
	if(window == 4){
		if(window_timer == 6){
			if(!was_parried){
				set_state(PS_IDLE_AIR)
			}else{
				set_state(PS_PRATFALL)
			}
		}
	}
	if(window == 1){
		attack_buffer = false
	}
	if(window == 2 && attack_pressed && has_hit_player){
		attack_buffer = true
	}
	if(window == 3){
		if(attack_pressed || attack_buffer){
			window = 5
			window_timer = 0
		}
	}
}

//Uair Height Adjustment
if(attack == AT_UAIR){
	if(window == 1 || window == 2 || window == 3){
		char_height = lerp(char_height, 100, 0.2)
	}else{
		char_height = lerp(char_height, 44, 0.2)
	}
}

//Utilt Height Adjustment
if(attack == AT_UTILT){
	if(window == 2 || window == 3 && window_timer < 6){
		char_height = lerp(char_height, 100, 0.75)
	}else{
		char_height = lerp(char_height, 44, 0.2)
	}
}


//Nspecial Bomb Stuff

if (attack == AT_NSPECIAL){
	/*
	Charge on window 2
	Be able to set the different animations
	Gravity change
	Reduce DJ height
	Make hurricane stuff work
	*/
	if(attack == AT_NSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && !instance_exists(waterBomb)){
	    if(window == 2 && state_timer > (10 / B_modifier) && ai != 1){
	        if(!joy_pad_idle ||
	        right_stick_down || left_stick_down || down_stick_down || up_stick_down){
	            if(left_down || left_stick_down){
	                spr_dir = -1
	                if(up_down  || up_stick_down){
	                    if(pointing_direction != 135){
	                        pointing_direction = 135
	                        sound_play(asset_get("mfx_hover"))
	                    }
	                }else if(down_down || down_stick_down){
	                    if(pointing_direction != 225){
	                        pointing_direction = 225
	                        sound_play(asset_get("mfx_hover"))
	                    }
	                }else{
	                    if(pointing_direction != 180){
	                       pointing_direction = 180
	                       sound_play(asset_get("mfx_hover"))
	                    }
	                }
	            }else if(right_down || right_stick_down){
	                spr_dir = 1
	                if(up_down || up_stick_down){
	                    if(pointing_direction != 45){
	                      pointing_direction = 45
	                      sound_play(asset_get("mfx_hover"))
	                    }
	                }else if(down_down || down_stick_down){
	                    if(pointing_direction != 315){
	                       pointing_direction = 315
	                       sound_play(asset_get("mfx_hover"))
	                    }
	                }else{
	                    if(pointing_direction != 0){
	                       pointing_direction = 0   
	                       sound_play(asset_get("mfx_hover"))
	                    }
	                }
	            }else if(up_down || up_stick_down){
	                if(pointing_direction != 90){
	                  pointing_direction = 90
	                  sound_play(asset_get("mfx_hover"))
	                }
	            }else if(down_down || down_stick_down){
	                if(pointing_direction != 270){
	                   pointing_direction = 270
	                   sound_play(asset_get("mfx_hover"))
	                }
	            }
	        }else{
	            if(pointing_direction != 270){
	                pointing_direction = 270
	                sound_play(asset_get("mfx_hover"))
	            }
	        }
	    }
	}
	//Startup
	if(window == 1){
		//Reset variables
		if(window_timer = 1){
			regrab_damage = 0
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_down"));
			set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_down_air"));
			pointing_direction = 270
		}
		if(window_timer == round(3 / B_modifier)){
			if(!instance_exists(waterBomb) && !(instance_exists(hurricane) && hurricane.holding_bomb)){
				sound_play(sound_get("sfx_waterbomb_enlarge"))
			}
		}

		//Regrab bomb
		if(window_timer < 8){
			if(instance_exists(waterBomb) && window_timer > 1){
				if(distance_to_object(waterBomb) < 25 && waterBomb.state == 1 && waterBomb.current_owner == player){
					regrab_damage = waterBomb.damage
					window = 2
					window_timer = 0
					sound_play(asset_get("sfx_frog_dspecial_hit"))
					instance_destroy(waterBomb);
				}
			}else if(!instance_exists(waterBomb) && instance_exists(hurricane)){
				if(distance_to_object(hurricane) < 25 && hurricane.holding_bomb){
					if(hurricane.bomb_strong){
						regrab_damage = 8
					}else{
						regrab_damage = 0
					}
					window = 2
					window_timer = 0
					sound_play(asset_get("sfx_frog_dspecial_hit"))
					hurricane.holding_bomb = false
					hurricane.state = 1
					hurricane.state_timer = 0
					hurricane.image_index = 0
				}
			}
		}
	}
	
	//Startup + Hold Frame
	if(!instance_exists(waterBomb) && !(instance_exists(hurricane) && hurricane.holding_bomb == true)){
		if(window == 1 || window == 2){
			//Movement
			can_move = false
			can_fast_fall = false
			
			//Gravity
			if(state_timer < 40){
				set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
				set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
				hsp *= 0.9
				vsp *= 0.9
			}else{
				set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
				set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
			}
		}
	}else{
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);
	}
	
	//Hold Frame
	if(window == 2){
		//Go to next window
		if(!special_down && state_timer > (14 / B_modifier) || instance_exists(waterBomb) || instance_exists(hurricane) && hurricane.holding_bomb == true || state_timer > 180){
			window = 3
			window_timer = 0
			if(!instance_exists(waterBomb) && !(instance_exists(hurricane) && hurricane.holding_bomb == true)){
				if(!has_rune("H") && !all_runes){
					move_cooldown[AT_NSPECIAL] = 120
				}
			}
		}
		
		//Cancelling
		if(ai != 1){
			if(jump_pressed || (tap_jump_pressed && can_tap_jump() && !tap_jump_suppress)){
				if(free && djumps < 1){
					set_state(PS_DOUBLE_JUMP)
				}else if(!free){
					set_state(PS_JUMPSQUAT)
				}
			}
			can_shield = true
		}
		if(has_airdodge && shield_pressed || djumps < 1 && jump_pressed || djumps < 1 && tap_jump_pressed && can_tap_jump() && !tap_jump_suppress){
			if(!has_rune("H") && !all_runes){
    			move_cooldown[AT_NSPECIAL] = 120
			}
		}
		
		//Set holding animation
		if(pointing_direction == 0 || pointing_direction == 180){
			//Forwards
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_forward"));
			set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_forward_air"));
		}else if(pointing_direction == 45 || pointing_direction == 135){
			//Up-Forwards
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_forwardup"));
			set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_forwardup_air"));
		}else if(pointing_direction == 315 || pointing_direction == 225){
			//Down-Forwards
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_forwarddown"));
			set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_forwarddown_air"));
		}else if(pointing_direction == 90){
			//Up
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_up"));
			set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_up_air"));
		}else if(pointing_direction == 270){
			//Down
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_down"));
			set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_down_air"));
		}
		
		//Ai
		if(ai == 1){
			if(ai_recovering){
				if(ai_debug_var == "Panic Nspecial"){
					//Up
					set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_up"));
					set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_up_air"));
					pointing_direction = 90
				}else if(ai_debug_var == "Comfy Nspecial"){
					//Up-Forwards
					set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_forwardup"));
					set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_forwardup_air"));
					if(spr_dir == 1){
						pointing_direction = 45
					}else{
						pointing_direction = 135
					}
				}
			}
		}
		
	}
	
	//Throw
	if(window == 3){
		if(window_timer == 0){
			//Sound
				sound_play(asset_get("sfx_swipe_medium1"))
			
			//Changing throw direction
			if(!(instance_exists(waterBomb) || instance_exists(hurricane) && hurricane.holding_bomb)){
				if(pointing_direction == 0 || pointing_direction == 180){
					//Forwards
					waterBomb = instance_create(x + (spr_dir*25),y - 35,"obj_article2");
	        		waterBomb.damage = regrab_damage
	        		if(regrab_damage > 7){
		        		waterBomb.strong = true
		        	}
		        	waterBomb.hsp = 6.5 * spr_dir * C_modifier
		        	waterBomb.vsp = -4 * C_modifier
		        	
				}else if(pointing_direction == 45 || pointing_direction == 135){
					//Up-Forwards
					waterBomb = instance_create(x + (spr_dir*15),y - 45,"obj_article2");
	        		waterBomb.damage = regrab_damage
	        		if(regrab_damage > 7){
		        		waterBomb.strong = true
		        	}
		        	waterBomb.vsp = -7 * C_modifier
		        	waterBomb.hsp = 4 * spr_dir * C_modifier
		        	
				}else if(pointing_direction == 315 || pointing_direction == 225){
					//Down-Forwards
					waterBomb = instance_create(x + (spr_dir*25),y - 35,"obj_article2");
	        		waterBomb.damage = regrab_damage
	        		if(regrab_damage > 7){
		        		waterBomb.strong = true
		        	}
		        	waterBomb.hsp = 4 * spr_dir * C_modifier
		        	waterBomb.vsp = -3 * C_modifier
		        	
				}else if(pointing_direction == 90){
					//Up
					waterBomb = instance_create(x,y - 60,"obj_article2");
		        	waterBomb.damage = regrab_damage
		        	if(regrab_damage > 7){
		        		waterBomb.strong = true 
		        	}
		        	waterBomb.vsp = -7.5 * C_modifier
		        	
				}else if(pointing_direction == 270){
					//Down
					waterBomb = instance_create(x + (spr_dir*25),y - 35,"obj_article2");
		        	waterBomb.damage = regrab_damage
	        		if(regrab_damage > 7){
		        		waterBomb.strong = true
		        	}
		        	waterBomb.vsp = -3.5 * C_modifier
		        	waterBomb.hsp = 1.2*spr_dir * C_modifier
				}else{
					//Same as Down
					waterBomb = instance_create(x + (spr_dir*25),y - 35,"obj_article2");
		        	waterBomb.damage = regrab_damage
	        		if(regrab_damage > 7){
		        		waterBomb.strong = true
		        	}
		        	waterBomb.vsp = -3.5 * C_modifier
		        	waterBomb.hsp = 1.2*spr_dir * C_modifier
				}
				
				if(free){
		        	vsp = abs(waterBomb.vsp) * -0.5
		        	hsp = waterBomb.hsp * -1
		        }else{
		        	hsp = waterBomb.hsp * -0.5
		        }
			}
		}
	}
	
	
	
	
	
	
	
	
	/*
	if(!instance_exists(waterBomb) && window_timer == 12){
		if(get_player_color(player) != 11){
			sound_play(asset_get("sfx_orca_soak"));
		}else{
			sound_play(sound_get("sfx_sonic"));
		}
	}
	can_fast_fall = false
	can_move = false
	
	if(state_timer < 40){
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
		hsp *= 0.92
		vsp *= 0.92
	}else{
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
	}
	
	if(window == 1 || window == 2 && window_timer < 2){
		if(left_down){
			spr_dir = -1
		}else if(right_down){
			spr_dir = 1
		}
		if(window == 1 && window_timer < 8){
			if(window_timer == 1){
				regrab_damage = 0
			}
			if(instance_exists(waterBomb) && window_timer > 1){
				if(distance_to_object(waterBomb) < 40 && waterBomb.state == 1 && waterBomb.current_owner == player){
					regrab_damage = waterBomb.damage
					instance_destroy(waterBomb);
					
				}
			}else if(!instance_exists(waterBomb) && instance_exists(hurricane) && window_timer > 1){
				if(distance_to_object(hurricane) < 40 && hurricane.holding_bomb = true && hurricane.state == 0){
					if(hurricane.bomb_strong){
						regrab_damage = 8
					}else{
						regrab_damage = 0
					}
					hurricane.holding_bomb = false
					hurricane.state = 1
					hurricane.state_timer = 0
					hurricane.image_index = 0
				}
			}
		}
	}

	if(special_down && window == 2 && !instance_exists(waterBomb)){
		if(shield_pressed){
			set_state(PS_PARRY_START)
			move_cooldown[AT_NSPECIAL] = 120
			sound_play(asset_get("mfx_back"))
		}else if(jump_pressed && !free){
			set_state(PS_FIRST_JUMP)
			move_cooldown[AT_NSPECIAL] = 120
			sound_play(asset_get("mfx_back"))
		}else if(jump_pressed && free && djumps == 0){
			set_state(PS_DOUBLE_JUMP)
			move_cooldown[AT_NSPECIAL] = 120
			sound_play(asset_get("mfx_back"))
		}else if(state_timer > 120){
			window = 3
			window_timer = 0
			move_cooldown[AT_NSPECIAL] = 120
		}
	}else if(instance_exists(waterBomb) || !special_down && window == 2 && !instance_exists(waterBomb)){
		window = 3
		window_timer = 0
	}
	if(!instance_exists(waterBomb) || waterBomb == noone){
		if(instance_exists(hurricane)){
			if(!hurricane.holding_bomb){
				if (window == 3 && window_timer == 1){
					if(get_player_color(player) != 11){
						sound_play(asset_get("sfx_swipe_medium1"));
					}else{
						sound_play(sound_get("sfx_boom"));
					}
					move_cooldown[AT_NSPECIAL] = 120
					bomb_thump = 1
			        //turning
			        if(left_down){
						spr_dir = -1
					}else if(right_down){
						spr_dir = 1
					}
					//throwing
			        if(up_down){
			        	if(left_down || right_down){
			        		waterBomb = instance_create(x + (spr_dir*15),y - 45,"obj_article2");
			        		waterBomb.damage = regrab_damage
			        		if(regrab_damage > 7){
				        		waterBomb.strong = true
				        	}
				        	waterBomb.vsp = -7
				        	waterBomb.hsp = 4 * spr_dir
				        }else{
				        	waterBomb = instance_create(x,y - 60,"obj_article2");
				        	waterBomb.damage = regrab_damage
			        		if(regrab_damage > 7){
				        		waterBomb.strong = true
				        	}
				        	waterBomb.vsp = -9
				        }
			        }else if(down_down){
			        	if(left_down || right_down){
			        		waterBomb = instance_create(x + (spr_dir*25),y - 35,"obj_article2");
			        		waterBomb.damage = regrab_damage
			        		if(regrab_damage > 7){
				        		waterBomb.strong = true
				        	}
				        	waterBomb.hsp = 3 * spr_dir
				        	waterBomb.vsp = -4
				        }else{
				        	waterBomb = instance_create(x + (spr_dir*25),y - 35,"obj_article2");
				        	waterBomb.damage = regrab_damage
			        		if(regrab_damage > 7){
				        		waterBomb.strong = true
				        	}
				        	waterBomb.vsp = -3.5
				        	waterBomb.hsp = 1.2*spr_dir
				        }
			        }else{
			        	if(left_down || right_down){
			        		waterBomb = instance_create(x + (spr_dir*25),y - 35,"obj_article2");
			        		waterBomb.damage = regrab_damage
			        		if(regrab_damage > 7){
				        		waterBomb.strong = true
				        	}
				        	waterBomb.hsp = 6.5 * spr_dir
				        	waterBomb.vsp = -4
				        }
				        if(joy_pad_idle){
				        	waterBomb = instance_create(x + (spr_dir*25),y - 35,"obj_article2");
				        	waterBomb.damage = regrab_damage
				        	if(regrab_damage > 7){
				        		waterBomb.strong = true
				        	}
				        	waterBomb.vsp = -3.5
				        	waterBomb.hsp = 1.2*spr_dir
				        }
			        }
			        if(free){
			        	vsp = abs(waterBomb.vsp) * -0.5
			        	hsp = waterBomb.hsp * -1
			        }
				}
			}else{
				if(window == 3 && window_timer = 1){
					if(get_player_color(player) != 11){
						sound_play(asset_get("sfx_swipe_medium1"));
					}else{
						sound_play(sound_get("sfx_boom"));
					}
				}
			}
		}else{
			if (window == 3 && window_timer == 1){
				if(get_player_color(player) != 11){
					sound_play(asset_get("sfx_swipe_medium1"));
				}else{
					sound_play(sound_get("sfx_boom"));
				}
				move_cooldown[AT_NSPECIAL] = 120
				bomb_thump = 1
		        //turning
		        if(left_down){
					spr_dir = -1
				}else if(right_down){
					spr_dir = 1
				}
				//throwing
			        if(up_down){
			        	if(left_down || right_down){
			        		waterBomb = instance_create(x + (spr_dir*15),y - 45,"obj_article2");
			        		waterBomb.damage = regrab_damage
			        		if(regrab_damage > 7){
				        		waterBomb.strong = true
				        	}
				        	waterBomb.vsp = -7
				        	waterBomb.hsp = 4 * spr_dir
				        }else{
				        	waterBomb = instance_create(x,y - 60,"obj_article2");
				        	waterBomb.damage = regrab_damage
			        		if(regrab_damage > 7){
				        		waterBomb.strong = true
				        	}
				        	waterBomb.vsp = -9
				        }
			        }else if(down_down){
			        	if(left_down || right_down){
			        		waterBomb = instance_create(x + (spr_dir*25),y - 35,"obj_article2");
			        		waterBomb.damage = regrab_damage
			        		if(regrab_damage > 7){
				        		waterBomb.strong = true
				        	}
				        	waterBomb.hsp = 3 * spr_dir
				        	waterBomb.vsp = -4
				        }else{
				        	waterBomb = instance_create(x + (spr_dir*25),y - 35,"obj_article2");
				        	waterBomb.damage = regrab_damage
			        		if(regrab_damage > 7){
				        		waterBomb.strong = true
				        	}
				        	waterBomb.vsp = -3.5
				        	waterBomb.hsp = 1.2*spr_dir
				        }
			        }else{
			        	if(left_down || right_down){
			        		waterBomb = instance_create(x + (spr_dir*25),y - 35,"obj_article2");
			        		waterBomb.damage = regrab_damage
			        		if(regrab_damage > 7){
				        		waterBomb.strong = true
				        	}
				        	waterBomb.hsp = 6.5 * spr_dir
				        	waterBomb.vsp = -4
				        }
				        if(joy_pad_idle){
				        	waterBomb = instance_create(x + (spr_dir*25),y - 35,"obj_article2");
				        	waterBomb.damage = regrab_damage
				        	if(regrab_damage > 7){
				        		waterBomb.strong = true
				        	}
				        	waterBomb.vsp = -3.5
				        	waterBomb.hsp = 1.2*spr_dir
				        }
			        }
		        if(free){
		        	vsp = abs(waterBomb.vsp) * -0.5
		        	hsp = waterBomb.hsp * -1
		        }
			}
		}
	}else{
		if(window == 3 && window_timer = 1){
			if(get_player_color(player) != 11){
				sound_play(asset_get("sfx_swipe_medium1"));
			}else{
				sound_play(sound_get("sfx_boom"));
			}
		}
	}
	*/
}

//Dspecial Focus Attack
if(attack == AT_DSPECIAL){
	dspecial_used = true
	can_fast_fall = false
	can_move = false
	hsp *= 0.96
	if(window == 1 && window_timer < 8){
		attack_buffer = false
		if(window_timer == 1){
			double_jump_timer /= 1.5
		}
		extended_cooldown = false
	}else{
		if(!extended_cooldown){
			move_cooldown[AT_DSPECIAL] = 60
		}else{
			move_cooldown[AT_DSPECIAL] = 240
		}
	}
	if(window == 1 && window_timer == 8){
		if(vsp > 1.5){
			vsp = 1.5
		}
		super_armor = true
	}
	if(window == 2){
		if(!super_armor){
			destroy_hitboxes();
		}
		if(vsp > 1.5){
			vsp = 1.5
		}
		double_jump_timer = 0
		if(move_cooldown[AT_NSPECIAL] > 0){
			move_cooldown[AT_NSPECIAL] += 1
		}
		if(instance_exists(waterBomb) && window_timer == 1){
			if(waterBomb.current_owner == player){
				waterBomb.hsp /= 2
				waterBomb.vsp /= 2
			}
		}
		if(state_timer > 20){
			if(shield_down){
				attack_buffer = true
			}
		}
		if(state_timer > 30 && !hitpause){
			if(left_down && shield_down || attack_buffer && left_down){
				destroy_hitboxes();
				sound_play(asset_get("sfx_waveland_wra"))
				if(super_armor == true){
					sound_play(sound_get("sfx_watershield_deactivate"))
					spawn_hit_fx(x + 30*spr_dir, y - 31 + 5*sin(state_timer/16), vfx_shieldshatter)
				}
				spr_dir = -1
				if(free){
					super_armor = false
					window = 4
					window_timer = 0
					hsp = -10 * E_modifier
					vsp = -1
					if(instance_exists(waterBomb)){
						if(waterBomb.current_owner == player){
							waterBomb.hsp = -5.5
							waterBomb.vsp = -3
							//if(waterBomb.frozen){
							//	waterBomb.frozen = false
							//}
						}
					}
					if(instance_exists(hurricane)){
						if(hurricane.current_owner == player){
							if(!hurricane.holding_bomb){
								hurricane.hsp = -9
							}else{
								hurricane.state = 1
								hurricane.state_timer = 0
								hurricane.image_index = 0
								if(hurricane.holding_bomb){
									waterBomb = instance_create(hurricane.x, hurricane.y - 10,"obj_article2");
									if(hurricane.bomb_strong){
										waterBomb.strong = true
									}else{
										waterBomb.strong = false
									}
									waterBomb.spr_dir = 1
									waterBomb.hsp = -5.5
									waterBomb.vsp = -3
									hurricane.holding_bomb = false
								}
							}
						}
					}
				}else{
					super_armor = false
					window = 4
					window_timer = 0
					hsp = -12 * E_modifier
					if(instance_exists(waterBomb)){
						if(waterBomb.current_owner == player){
							waterBomb.hsp = -5.5
							waterBomb.vsp = -3
							//if(waterBomb.frozen){
							//	waterBomb.frozen = false
							//}
						}
					}
					if(instance_exists(hurricane)){
						if(hurricane.current_owner == player){
							if(!hurricane.holding_bomb){
								hurricane.hsp = -9
							}else{
								hurricane.state = 1
								hurricane.state_timer = 0
								hurricane.image_index = 0
								if(hurricane.holding_bomb){
									waterBomb = instance_create(hurricane.x, hurricane.y - 10,"obj_article2");
									if(hurricane.bomb_strong){
										waterBomb.strong = true
									}else{
										waterBomb.strong = false
									}
									waterBomb.spr_dir = 1
									waterBomb.hsp = -5.5
									waterBomb.vsp = -3
									hurricane.holding_bomb = false
								}
							}
						}
					}
				}
			}else if(right_down && shield_down || attack_buffer && right_down){
				destroy_hitboxes();
				sound_play(asset_get("sfx_waveland_wra"))
				if(super_armor == true){
					sound_play(sound_get("sfx_watershield_deactivate"))
					spawn_hit_fx(x + 30*spr_dir, y - 31 + 5*sin(state_timer/16), vfx_shieldshatter)
				}
				spr_dir = 1
				if(free){
					super_armor = false
					window = 4
					window_timer = 0
					hsp = 10 * E_modifier
					vsp = -1
					if(instance_exists(waterBomb)){
						if(waterBomb.current_owner == player){
							if(waterBomb.state == 1){
								waterBomb.hsp = 5.5
								waterBomb.vsp = -3
								//if(waterBomb.frozen){
								//	waterBomb.frozen = false
								//}
							}
						}
					}
					if(instance_exists(hurricane)){
						if(hurricane.current_owner == player){
							if(!hurricane.holding_bomb){
								hurricane.hsp = 9
							}else{
								hurricane.state = 1
								hurricane.state_timer = 0
								hurricane.image_index = 0
								if(hurricane.holding_bomb){
									waterBomb = instance_create(hurricane.x, hurricane.y - 10,"obj_article2");
									if(hurricane.bomb_strong){
										waterBomb.strong = true
									}else{
										waterBomb.strong = false
									}
									waterBomb.spr_dir = 1
									waterBomb.hsp = 5.5
									waterBomb.vsp = -3
									hurricane.holding_bomb = false
								}
							}
						}
					}
				}else{
					super_armor = false
					window = 4
					window_timer = 0
					hsp = 12 * E_modifier
					if(instance_exists(waterBomb)){
						if(waterBomb.current_owner == player){
							if(waterBomb.state == 1){
								waterBomb.hsp = 5.5
								waterBomb.vsp = -3
								//if(waterBomb.frozen){
								//	waterBomb.frozen = false
								//}
							}
						}
					}
					if(instance_exists(hurricane)){
						if(hurricane.current_owner == player){
							if(!hurricane.holding_bomb){
								hurricane.hsp = 9
							}else{
								hurricane.state = 1
								hurricane.state_timer = 0
								hurricane.image_index = 0
								if(hurricane.holding_bomb){
									waterBomb = instance_create(hurricane.x, hurricane.y - 10,"obj_article2");
									if(hurricane.bomb_strong){
										waterBomb.strong = true
									}else{
										waterBomb.strong = false
									}
									waterBomb.spr_dir = 1
									waterBomb.hsp = 5.5
									waterBomb.vsp = -3
									hurricane.holding_bomb = false
								}
							}
						}
					}
				}
			}
			if(shield_pressed && !left_down && !right_down || state_timer == 125 || attack_buffer && !left_down && !right_down){
				destroy_hitboxes();
				if(super_armor == true){
					spawn_hit_fx(x + 30*spr_dir, y - 31 + 5*sin(state_timer/16), vfx_shieldshatter)
					sound_play(sound_get("sfx_watershield_deactivate"))
				}
				super_armor = false
				window = 3
				window_timer = 0
				if(instance_exists(waterBomb)){
					/*if(waterBomb.state == 1){
						waterBomb.frozen = true
						waterBomb.frozen_timer = 600
					}*/
				}
			}
		}
	}
	if(window == 1 || window == 2){
		if(instance_exists(waterBomb)){
			if(waterBomb.current_owner == player){
				waterBomb.slow = true
			}else{
				waterBomb.slow = false
			}
		}
	}else{
		if(instance_exists(waterBomb)){
			waterBomb.slow = false
		}
	}
	if(window == 4){
		if(window_timer < 4){
			if(left_pressed){
				spr_dir = -1
			}else if(right_pressed){
				spr_dir = 1
			}
		}
		if(window_timer <= 12){
			if(free){
				var waterfx = spawn_hit_fx(x - ((15 - random_func_2(1, 10, true)) * spr_dir), y - (50 - random_func_2(1, 40, true)), vfx_waterfx_small)
				hsp = 10*spr_dir* E_modifier
				vsp = 0
			}else{
				var waterfx = spawn_hit_fx(x - ((15 - random_func_2(1, 10, true)) * spr_dir), y - (50 - random_func_2(1, 40, true)), vfx_waterfx_small)
				hsp = 10.5*spr_dir* E_modifier
				vsp = 0
			}
		}else if(window_timer == 13){
			hsp /= 3
			vsp = 1
		}
	}
	if(window == 3 && window_timer == 9){
		if(!was_parried){
			if(!free){
				set_state(PS_IDLE)
			}else{
				set_state(PS_IDLE_AIR)
			}
		}else{
			set_state(PS_PRATLAND)
		}
	}
}

//uspecial stuff
if(attack == AT_USPECIAL){
	if(window == 1){
		hsp *= 0.9
		vsp *= 0.9
		if(teleport && instance_exists(waterBomb)){
			double_jump_timer = 0
		}
	}
	if(window == 1 || window == 2 && window_timer < 20){
		if(!can_teleport || !teleport){
			if(free){
				set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sfx_waterhit_medium);
				set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 5);
				set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 3.5);
				set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.25);
				set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 5);
				set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.35);
				set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 45);
				set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 65);
				set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -15);
				set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 15);
				set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, vfx_waterhit_medium);
			}
			if(!free){
				set_num_hitboxes(AT_USPECIAL, 0);
			}else{
				set_num_hitboxes(AT_USPECIAL, 1);
			}
			if(window == 1 && !can_teleport){
				window = 2
				window_timer = 8
			}
		}else{
			set_num_hitboxes(AT_USPECIAL, 1);
			set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sfx_kick_blow_medium1);
			set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 8);
			set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
			set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.35);
			set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 6);
			set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.4);
			set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 40);
			set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 40);
			set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -10);
			set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 5);
			set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 304);
		}
	}
	if(window == 1 && window_timer == 4 || window == 2 && window_timer == 4){
		sound_play(asset_get("sfx_orcane_fspecial"))
	}
	if(window == 1 || window == 2 && window_timer < 20){
		can_move = false
		if(instance_exists(waterBomb)){
			if(teleport){
				if(waterBomb.state == 1){
					waterBomb.slow = true
				}else if(window == 1){
					window = 2
					window_timer = 0
				}
			}else{
				if(window == 1){
					if(waterBomb.state == 1){
					waterBomb.slow = true
					}else if(window == 1){
						window = 2
						window_timer = 0
					}
				}else{
					waterBomb.slow = false
				}
			}
		}else if(instance_exists(hurricane)){
			if(!(hurricane.state == 0 && hurricane.holding_bomb)){
				if(window == 1){
					window = 2
					window_timer = 0
				}
			}else{
				if(hurricane.holding_bomb && hurricane.state == 0){
					waterBomb = instance_create(hurricane.x, hurricane.y - 10,"obj_article2");
					waterBomb.slow = true
					if(hurricane.bomb_strong){
						waterBomb.strong = true
					}else{
						waterBomb.strong = false
					}
					waterBomb.spr_dir = 1
					hurricane.holding_bomb = false
					hurricane.state = 1
					hurricane.state_timer = 0
					hurricane.image_index = 0
				}
			}
		}else if(window == 1){
			window = 2
			window_timer = 0
		}
		if(window == 1 && window_timer == 18){
			if(shield_down || shield_pressed){
				teleport = false
			}else{
				teleport = true
			}
		}
		if(window == 2 && window_timer < 20){
			if(instance_exists(waterBomb)){
				if(waterBomb.current_owner != player){
					can_teleport = false
					teleport = false
				}
			}
			if(instance_exists(waterBomb) && teleport && can_teleport){
				if(waterBomb.state == 1){
					x = waterBomb.x
					y = waterBomb.y - 20
					hsp = 0
					vsp = 0
				}
			}else  if(!teleport && instance_exists(waterBomb) || !can_teleport && instance_exists(waterBomb)){
				hsp = 0
				vsp = 0
				if(window_timer > 4){
					if(double_jump_timer <= 0 && free){
						hsp *= 0.9
						vsp *= 0.9
						var waterfx = spawn_hit_fx(x - ((35 - random_func_2(1, 55, true)) * spr_dir), y + ((10 + vsp) - random_func_2(2, 10, true)), vfx_waterfx_small)
					}
				}
			}else if(!instance_exists(waterBomb)){
				if(window_timer > 4){
					if(double_jump_timer <= 0 && free){
						hsp *= 0.9
						vsp *= 0.9
						var waterfx = spawn_hit_fx(x - ((35 - random_func_2(1, 55, true)) * spr_dir), y + ((10 + vsp) - random_func_2(2, 10, true)), vfx_waterfx_small)
					}
				}
			}
			/*else if(instance_exists(hurricane)){
				if(hurricane.holding_bomb){
					x = hurricane.x
					y = hurricane.y - 20
				}
			}*/
		}
		/*if(window == 2 && window_timer > 16){
			if(shield_down || shield_pressed){
				set_state(PS_PRATFALL)
				vsp = -4
				sound_play(asset_get("mfx_back"))
			}
		}*/
	}else{
		if(instance_exists(waterBomb)){
			waterBomb.slow = false
		}
	}
	if(window == 2){
		if(window_timer <= 1){
			if(right_down){
				spr_dir = 1
			}else if(left_down){
				spr_dir = -1
			}
		}
		if(window_timer == 20){
			if(instance_exists(waterBomb) && teleport){
				if(waterBomb.state == 1){
					vsp = -12
					prat_land_time = 20;
					hsp = 5*spr_dir
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
				}else if(!hitpause){
					if(free){
						set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
						vsp = -9
						hsp = 4*spr_dir
						prat_land_time = 10;
						sound_play(sound_get("sfx_waterdash")) 
						sound_play(asset_get("sfx_swipe_weak2"))
						spawn_hit_fx(x, y - 30, vfx_waterburst)
					}else{
						set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
						vsp = -7
						hsp += 4*spr_dir
						/*
						if(!down_down && !shield_down){
							vsp = -7
							hsp += 4*spr_dir
						}else{
							hsp += 8*spr_dir
							set_state(PS_WAVELAND)
						}*/
						hsp = 7*spr_dir
						sound_play(asset_get("sfx_swipe_weak2"))
					}
				}
			}else if(!hitpause){
				if(free){
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
					vsp = -9
					hsp = 4*spr_dir
					prat_land_time = 10;
					sound_play(sound_get("sfx_waterdash")) 
					sound_play(asset_get("sfx_swipe_weak2"))
					spawn_hit_fx(x, y - 30, vfx_waterburst)
				}else{
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
					vsp = -7
					hsp += 4*spr_dir
					/*
					if(!down_down && !shield_down){
						vsp = -7
						hsp += 4*spr_dir
					}else{
						hsp += 8*spr_dir
						set_state(PS_WAVELAND)
					}*/
					sound_play(asset_get("sfx_swipe_weak2"))
				}
			}
		}
	}
}

//Fspecial hurricane kick
if(attack == AT_FSPECIAL){
	if(window == 1 && window_timer == 1){
		spr_dir_start = spr_dir
		if(get_player_color(player) == 11 && !bypass_sounds){
			sound_play(sound_get("sfx_sonic"))
		}
	}
	if(window == 2){
		if (place_meeting(x + hsp, y, asset_get("par_block")) && free) {
            for (var i = 1; i < 25; i++){
                if (!place_meeting(x + hsp, y - i ,asset_get("par_block"))) {
                    y -= i;
                    break;
                }
            }      
        }
	}
	//move_cooldown[AT_FSPECIAL] = 40
	can_fast_fall = false
	if(window > 2 || window == 2 && window_timer > 3){
		double_jump_timer = 0
	}
	if(window > 2){
		can_move = false
	}
	if(window == 2 || window == 3){
		if(!has_used_fspecial)
			var waterfx = spawn_hit_fx(x - ((15 - random_func_2(1, 10, true)) * spr_dir), y - (50 - random_func_2(1, 40, true)), vfx_waterfx_small)
	}
	if(window == 2 && window_timer == 1){
		if(!has_used_fspecial){
		vsp = -5
		hsp = 8 * spr_dir_start
		}else{
			hsp = 6 * spr_dir_start
			vsp -= 2
		}
	}
	if(window == 2 && window_timer > 2){
		if(!free){
			window = 3
			window_timer = 0
		}
	}
	if(window == 2 && window_timer > 4){
		if(shield_pressed){
			set_state(PS_PRATFALL)
			vsp = -2
			sound_play(asset_get("mfx_back"))
			prat_land_time = 16;
			if(spr_dir == 1){
				if(left_down){
					hsp = -1
				}else{
					hsp /= 1.5
				}
			}else if(spr_dir == -1){
				if(right_down){
					hsp = 1
				}else{
					hsp /= 1.5
				}
			}
		}
		/*
		if(attack_pressed || down_stick_pressed || up_stick_pressed || left_stick_pressed || right_stick_pressed){
			set_state(PS_IDLE_AIR)
			was_parried = true
			hsp *= 1.1
		}
		*/
	}
	if(window == 2 || window == 3 && window_timer < 7){
		can_wall_jump = true
	}
	if(window == 1){
		hsp *= 0.92
		vsp *= 0.92
	}
	
	if(window == 4 && window_timer == 1 && !hitpause){
		if(get_player_color(player) == 11 && !bypass_sounds){
			sound_play(sound_get("sfx_boom"))
		}
		if(instance_exists(hurricane)){
			hurricane.grabbedid = noone
			if(hurricane.state != 1){
				hurricane.state = 1 //death
				hurricane.state_timer = 0
				hurricane.image_index = 0
			}
			if(hurricane.holding_bomb){
				waterBomb = instance_create(hurricane.x, hurricane.y - 10,"obj_article2");
				if(hurricane.bomb_strong){
					waterBomb.strong = true
				}else{
					waterBomb.strong = false
				}
				waterBomb.spr_dir = 1
				hurricane.holding_bomb = false
			}
		}
		hurricane = instance_create(x + (spr_dir*15),y - 40,"obj_article1");
		if(was_parried){
			hurricane.current_owner = parriedID
		}
		if(!has_hit_player){
			if(hsp > 0 && spr_dir == 1 || hsp < 0 && spr_dir == -1){
				hurricane.hsp = hsp * 2
			}else{
				hurricane.hsp = 4*spr_dir
			}
		}else{
			hurricane.hsp = 6*spr_dir
		}
		has_used_fspecial = true
		if(hsp > 4){
			hsp -= 4
		}else if(hsp < -4){
			hsp += 4
		}else{
			hsp /= 2
		}
	}
}

//Bair stuff with runes
if(attack == AT_BAIR){
	if(has_rune("K") || all_runes){
		if(window == 2){
			if(window_timer == 10 && (attack_down || right_stick_down || left_stick_down)){
				window_timer = 0
			}
			if(state_timer > 18 && window_timer < 11){
				if(!(attack_down || right_stick_down || left_stick_down)){
					window_timer = 11
				}
			}
		}
	}
}

/*Bair Grab
if (attack == AT_BAIR && state == PS_ATTACK_AIR){
    if (window == 2 && grabbedid != noone){
    	grabbedid.can_shield = false
		grabbedid.ungrab = 0;
		grabbedid.invincible = false
        //grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
        if(abs(grabbedid.y - y) > 50 || grabbedid.vsp > 11 || vsp > 11){
	    	grabbedid.ungrab = 1
	    	if(grabbedid.vsp > 8){
	    		grabbedid.vsp /= 2
	    	}
	    	grabbedid = noone
	    }
	    if(grabbedid != noone){
	        if(window == 2 && window_timer < 12){
	        	grabbedid.hsp = hsp
	        	grabbedid.vsp = vsp / 2
		        grabbedid.x = lerp(grabbedid.x, x - 30*spr_dir, 0.1); //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
				grabbedid.y = lerp(grabbedid.y, y, 0.03); //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
				if(grabbedid.state != PS_HITSTUN){
					grabbedid = noone 
				}
	        }else{
	        	grabbedid.ungrab = 1
	            grabbedid = noone;
	        }
	    }
    }
}
*/

//Dattack Grab
if (attack == AT_DATTACK){
	if(window == 1 && window_timer < 4){
		can_ustrong = true
	}
    if ((window == 2 || window == 3 || window == 4) && grabbedid != noone){
		grabbedid.ungrab = 0;
		grabbedid.can_shield = false
		grabbedid.invincible = false
		grabbedid.state = PS_HITSTUN;
        //grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
        if(window == 2 || window == 3){
        	grabbedid.hsp = hsp
        	grabbedid.vsp = vsp / 2
    		grabbedid.x = lerp(grabbedid.x, x + 10*spr_dir, 0.1)
			grabbedid.y = lerp(grabbedid.y, y, 0.1) //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
			if(grabbedid.state != PS_HITSTUN){
				grabbedid = noone 
			}
        }else{
        	grabbedid.ungrab = 1
            grabbedid = noone;
        }
    }
}

//Dattack stuff
if(attack == AT_DATTACK){
	if(window == 1 && window_timer == 0){
		state_timer = 0
	}
	if(window == 1){
		if(window_timer == 5){
			if(!free){
				spawn_hit_fx(x, y - 2, vfx_dattack_jumpfx)
			}
		}
	}
	if(window == 2){
		if(was_parried){
			window = 3
			hsp = 0
			vsp = 0
		}
	}
	can_move = false
	if(window == 4){
		var waterfx = spawn_hit_fx(x + ((45 - random_func_2(1, 25, true)) * spr_dir), y - 25, vfx_waterfx_small)
		if(state_timer > 52 && !hitpause){
			can_jump = true
			can_shield = true
			can_attack = true
			can_special = true
		}
	}
	if(has_rune("I") || all_runes){
		if(has_hit && !hitpause){
			if(grabbedid != noone){
				if(abs(grabbedid.hsp) < 7){
					can_jump = true
					can_attack = true
					can_shield = true
					can_strong = true
					can_ustrong = true
					can_special = true
				}
			}else{
				can_jump = true
				can_attack = true
				can_shield = true
				can_strong = true
				can_ustrong = true
				can_special = true
			}
		}
	}
}

//Dstrong

if(attack == AT_DSTRONG){
	if(window == 3){
		if(window_timer == 1){
			sound_play(asset_get("sfx_swipe_heavy2"))
			if(get_player_color(player) == 9){
				sound_play(asset_get("sfx_frog_gong_hit"))
			}
		}
	}
	if(window == 1 || window == 2){
		char_height = lerp(char_height, 90, 0.5)
	}else{
		char_height = lerp(char_height, 44, 0.4)
	}
}

//Ustrong

if(attack == AT_USTRONG){
	if(window != 1 && window != 2){
		set_attack_value(AT_USTRONG, AG_CATEGORY, 1);
	}else{
		set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
	}
	if(get_player_color(player) == 11 && !bypass_sounds){
		set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_flashkick"));
	}else{
		set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
	}
	can_fast_fall = false
	if(window_timer == 2 && window == 1){
		if(free){
			window = 2
			window_timer = 0
			strong_down = false 
		}
	}
	if(has_hit){
		set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 16);
	}else{
		set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 24);
	}
	if(window == 1){
		set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, (-8 + (-24 * strong_charge/60)) * A_modifier);
		set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED, -4);
	}
	if(window == 3 || window == 4 && window_timer < 4){
		char_height = lerp(char_height, 100, 0.8)
	}else{
		char_height = lerp(char_height, 44, 0.15)
	}
}

//Gravity Jump Shit

if(state == PS_ATTACK_AIR){
	//djumps > 0, has_djump
	if((jump_pressed || tap_jump_pressed && can_tap_jump()) && has_djump && djumps > 0 && state_timer <= 1 && has_djump == true && double_jump_timer <= 12){
		sound_play(asset_get("sfx_bubblemouth"))
		double_jump_timer = 20
    	vsp = 2
    	has_djump = false
	    if(left_down){
	    	hsp = -6
	    }else if(right_down){
	    	hsp = 6
	    }else{
	    	hsp = 0
	    }
    	if(down_pressed){
			vsp = 8
		}
		if(left_down){
    		doublejumpVar = -1
	    }
	    if(right_down){
	        doublejumpVar = 1
	    }
	}
}

//Taunt
if(attack == AT_TAUNT){
	if(window == 1){
		if(window_timer == 4){
			sound_play(asset_get("sfx_jumpground"))
		}
		if(window_timer < 4){
			char_height = lerp(char_height, 40, 0.5)
		}else{
			char_height = lerp(char_height, 100, 0.5)
		}
	}else if(window == 2){
		char_height = lerp(char_height, 34, 0.5)
	}else if(window == 3){
		char_height = lerp(char_height, 44, 0.5)
	}else{
		char_height = lerp(char_height, 44, 0.5)
	}
	if(window == 3){
		if(!taunt_down && state_timer > 60){
			window = 4
			window_timer = 0
		}
	}
}

//Taunt 2
if(attack == AT_TAUNT_2){
	if(window == 2){
		if(!taunt_down && state_timer > 20){
			window = 3
			window_timer = 0
		}
	}
}

if(attack == AT_EXTRA_1){
	if(window == 2){
		if(state_timer < 420){
			shake_camera(round(state_timer / 50), 6)
		}else{
			shake_camera(round(state_timer / 100), 6)
		}
		if(state_timer > 450){
			window = 3
			window_timer = 0
			shake_camera(100, 20)
		}
	}
	if(window == 4 && state_timer > 480){
		if(!taunt_down){
			window = 5
			window_timer = 0
		}
	}
}

if(has_rune("O") || all_runes){
	if(has_hit_player && !hitpause && attack != AT_DATTACK){
		can_attack = true
		can_special = true
		can_strong = true
		can_jump = true
		can_shield = true 
		can_ustrong = true
	}
}