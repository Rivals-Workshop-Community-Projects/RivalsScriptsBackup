// Always updates a frame late!

#region //B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
#endregion

var _hit_time = (get_window_value(attack, window, AG_WINDOW_LENGTH) - 1);
var _whiff_time = ((get_window_value(attack, window, AG_WINDOW_LENGTH) * 1.5) - 1);

wren_prev_attack = attack;

#region //Attack Code
#region // During Hitpause
if hitpause{
    switch(attack){
    	#region // HIT DTILT
    	case AT_DTILT:
    		switch(window){
    			case 2:
    				if !wren_dtiltwo_buffer and (attack_pressed){
    					wren_dtiltwo_buffer = true;
    				}
    				break;
    			case 5:
    				if (down_pressed and has_hit and !was_parried){
    					wren_dtiltwo_hitfall = true;
    				} else {
    					wren_dtiltwo_hitfall = false;
    				}
    				break;
    		}
    		break;
    	#endregion
    	#region // HIT FSPECIAL
        case AT_FSPECIAL:
			if check_for_bounce{
				check_for_bounce = false;
				if !was_parried{
					old_vsp = -7;
				}
			}
            break;
        #endregion
    }
}
#endregion
#region // Outside of Hitpause
if !hitpause{
    // Structure for attacks: Jab, DAttack, Tilts, Aerials, Strongs, Specials, Taunt
    switch(attack){
    	#region // UTILT
    	case AT_UTILT:
    		switch(window){
    			case 1:
    				if (window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 1){
    					sound_play(asset_get("sfx_ori_stomp_spin"));
    				}
    				break;
    		}
    		break;
    	#endregion
    	#region // DTILT
    	case AT_DTILT:
    		switch(window){
    			case 1:
    				reset_attack_value(attack, AG_CATEGORY);
    				clear_button_buffer(PC_ATTACK_PRESSED);
    				break;
    			case 3:
    				if wren_dtiltwo_buffer and window_timer >= (get_window_value(attack, 3, AG_WINDOW_CANCEL_FRAME) - 1){
    					window = 4;
    					window_timer = 0;
    				}
    				break;
    			case 4:
    				set_attack_value(attack, AG_CATEGORY, 2);
    				hsp += .5 * spr_dir;
    				break;
    			case 5:
    				if (window_timer == 1){
    					if !wren_dtiltwo_hitfall or (has_hit and !down_pressed and !was_parried){
    						vsp -= jump_speed;
    					}
    					can_move = true;
    				}
    				break;
    		}
    		break;
    	#endregion
    	#region // FTILT
    	case AT_FTILT:
    		switch(window){
    			case 2:
    				if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1){
    					sound_play(asset_get("sfx_swish_medium"));
    					if !instance_exists(wren_wave) and wren_wave_cooldown == 0{
	    					wren_wave = instance_create(x, y-2, "obj_article2");
	    					wren_wave.player_id = id;
	    					wren_wave.orig_player_id = id;
	    					wren_wave.spr_dir = spr_dir;
	    					wren_wave.hsp = 8 * spr_dir;
    					}
    				}
    				break;
    		}
    		break;
    	#endregion
    	#region // NAIR
    	case AT_NAIR:
    		switch(window){
    			case 2:
    				if window_timer == 7{
    					sound_play(asset_get("sfx_forsburn_cape_swipe"));
    				}
    				break;
    		}
    		break;
    	#endregion
    	#region // Strongs
    	case AT_FSTRONG:
    		switch(window){
    			case 2:
    				if window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1{
    					if joy_pad_idle{
							set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
							set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
							set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
							set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
    						for(var h = 2; h < 5; h++){
    							set_hitbox_value(attack, h, HG_HITBOX_X, (get_hitbox_value(attack, h-1, HG_HITBOX_X) - 32));
    							set_hitbox_value(attack, h, HG_HITBOX_Y, -35);
    						}
    						set_hitbox_value(attack, 1, HG_HITBOX_Y, -35);
    						set_hitbox_value(attack, 5, HG_HITBOX_Y, -35);
    					} else {
    						if up_down and !down_down{
    							set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
								set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 9);
    							set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
								set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
	    						for(var h = 2; h < 5; h++){
	    							set_hitbox_value(attack, h, HG_HITBOX_X, (get_hitbox_value(attack, h-1, HG_HITBOX_X) - 32));
									switch(h){
										case 2:
											set_hitbox_value(attack, h, HG_HITBOX_Y, -48);
											break;
										case 3:
											set_hitbox_value(attack, h, HG_HITBOX_Y, -41);
											break;
									}
	    						}
	    						set_hitbox_value(attack, 1, HG_HITBOX_Y, -56);
	    						set_hitbox_value(attack, 5, HG_HITBOX_Y, -65);
    						}
    						if down_down and !up_down{
    							set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
								set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 14);
    							set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
								set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 15);
	    						for(var h = 2; h < 5; h++){
	    							set_hitbox_value(attack, h, HG_HITBOX_X, (get_hitbox_value(attack, h-1, HG_HITBOX_X) - 32));
									switch(h){
										case 2:
											set_hitbox_value(attack, h, HG_HITBOX_Y, -16);
											break;
										case 3:
											set_hitbox_value(attack, h, HG_HITBOX_Y, -23);
											break;
									}
	    						}
	    						set_hitbox_value(attack, 1, HG_HITBOX_Y, -8);
	    						set_hitbox_value(attack, 5, HG_HITBOX_Y, -5);
    						}
    					}
    					spawn_hit_fx( x + (get_hitbox_value(attack, 5, HG_HITBOX_X) * spr_dir), y + get_hitbox_value(attack, 5, HG_HITBOX_Y), vfx_sweetspot);
    				}
    				break;
    		}
    		break;
    	case AT_USTRONG:
    		switch(window){
    			case 2:
    				if window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1{
    					spawn_hit_fx( x + (get_hitbox_value(attack, 2, HG_HITBOX_X) * spr_dir), y + get_hitbox_value(attack, 2, HG_HITBOX_Y), vfx_sweetspot);
    				}
    				break;
    		}
    		break;
    	case AT_DSTRONG:
    		switch(window){
    			case 2:
    				if window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1{
    					spawn_hit_fx( x + (get_hitbox_value(attack, 2, HG_HITBOX_X) * spr_dir), y + get_hitbox_value(attack, 2, HG_HITBOX_Y), vfx_sweetspot);
    				}
    				break;
    			case 4:
    				if window_timer == get_window_value(attack, 4, AG_WINDOW_LENGTH) - 1{
    					spawn_hit_fx( x + (get_hitbox_value(attack, 5, HG_HITBOX_X) * spr_dir), y + get_hitbox_value(attack, 5, HG_HITBOX_Y), vfx_sweetspot);
    				}
    				break;
    		}
    		break;
    	#endregion
        #region // NSPECIAL
        case AT_NSPECIAL:
            switch(window){
                #region // 1 - Start-Up
                case 1:
                    var _sound_played = false;
                    if (window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
                        if !special_down or wren_charge_lvl == 2{
                        	spawn_yoyo();
                            set_window(3);
                        }
                    }
                    break;
                #endregion
                #region // 2 - Looping
                case 2: 
                    if !special_down{
                    	spawn_yoyo();
                        set_window(3);  // Set to Active window
                    }
                    if shield_pressed{
                        clear_button_buffer(PC_SHIELD_PRESSED);
                        set_window(5);  // Set to Cancel Window
                        sound_play(asset_get("sfx_frog_fspecial_cancel"));
                    }
                    break;
                #endregion
                #region // 3 - Active
                case 3:
                    // Toss out the Yo-Yo
                    move_cooldown[AT_NSPECIAL] = 45;
                    break;
                #endregion
                #region // 4 - Recovery
                case 4:
                    // Just end the special
                    if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
                        destroy_hitboxes();
                        attack_end();
                    }
                    break;
                #endregion
                #region // 5 - Cancel
                case 5:
                    // Just end the special
                    if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
                        destroy_hitboxes();
                        attack_end();
                    }
                    break;
                #endregion
            }
            break;
        #endregion
        
        #region // NSPECIAL 2 - RECALL
        case AT_NSPECIAL_2:
            switch(window){
                case 1:
                    if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
                        if instance_exists(wren_yoyo){
                            sound_play(asset_get("mfx_star"));
                            if wren_yoyo.state == 1{
                                wren_yoyo.state = 2;
                                wren_yoyo.state_timer = 0;
                            }
                        }
                    }
                    break;
                case 2:
                	if window_timer >= 2 and !was_parried{
                		iasa_script();
                	}
                	break;
            }
            break;
        #endregion
        
        #region // FSPECIAL
        case AT_FSPECIAL:
    		if was_parried{
    		    can_move = false;
    		}
    		check_for_bounce = true;
    		
            if (!moved_up){
                if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
                    for (var i = 0; i < 20; i++){
                        if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
                            y -= i;
                            moved_up = true;
                            break;
                        }
                    }
                }
            }
    		
    		if (instance_exists(wren_yoyo) and (window > 1 and window < 5)){
    		    if place_meeting(x, y, wren_yoyo) and wren_yoyo.state < 5{
   		        	if wren_nostall < wren_nostall_max{
    		        	move_cooldown[AT_FSPECIAL] = 0;
    		        	wren_nostall++;
    		        }
    		        sound_play(sound_get("sfx_whirlpool_loop"), true);
    		        destroy_hitboxes();
    		        set_window(5);
    		        wren_yoyo.state = 6;
    		        wren_yoyo.state_timer = 0;
    		    }
    		}
    		
            switch(window){
                case 1:
                	move_cooldown[AT_FSPECIAL] = 99999;
    				if window_timer == 1{
    					if up_down and !down_down{
	    					hsp = 6 * spr_dir;
	    					vsp = -10;
    					} else if down_down and !up_down{
	    					hsp = 10 * spr_dir;
	    					vsp = -6;
    					} else {
	    					hsp = 8 * spr_dir;
	    					vsp = -8;
    					}
    					free = true;
    					has_bounced = false;
    					sound_play(asset_get("sfx_forsburn_cape_swipe"));
    					spawn_base_dust(x, y, "dash_start");
    				}
    				if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH){
    					hsp = lerp(hsp, clamp(hsp, -air_max_speed, air_max_speed), 0.5);
    					vsp = 0;
    				}
                    break;
                case 2: // Active
    				if !free{
    					can_attack = false;
    					if has_bounced || was_parried {
    						attack_end();
    						set_state(was_parried ? PS_PRATLAND : PS_LAND);
    					} else {
    						vsp = -5;
    						has_bounced = true;
    						spawn_base_dust(x, y, "land");
    						sound_play(landing_lag_sound);
    					}
    				} else {
    					can_attack = true;
    				}
    				vsp -= gravity_speed * 0.5;
                    break;
                case 3: // Endlag
                    can_wall_jump = true;
                    break;
                case 4: // Falling
					can_wall_jump = true;
    				if !free{
    					if ((has_bounced and !special_down) or was_parried){
    						attack_end();
    						set_state(was_parried ? PS_PRATLAND : PS_LAND);
    					} else {
    						if !down_down{
	    						vsp = -6;
	    						has_bounced = true;
    						} else {
    							destroy_hitboxes();
    							attack_end();
    							set_state(PS_LANDING_LAG);
    							move_cooldown[AT_FSPECIAL] = 30;
    						}
    						spawn_base_dust(x, y, "land");
    						sound_play(landing_lag_sound);
    					}
    				}
    				else if !was_parried{
    				    iasa_script();
    				}
                    break;
                case 5:	// Riding the wave
                	can_move = false;
                	can_fast_fall = false;
                	
                	wren_noloop++;
                	
                	if jump_pressed or shield_pressed or special_pressed or wren_noloop >= wren_noloop_max{
                		if instance_exists(wren_yoyo){
                			if instance_exists(wren_yoyo.hbox){
                				instance_destroy(wren_yoyo.hbox);
                			}
	                		wren_yoyo.state = 7;
	                		wren_yoyo.state_timer = 0;
                		}
                		sound_stop(sound_get("sfx_whirlpool_loop"));
                		set_window(6);
                	}
                	
                	if instance_exists(wren_yoyo){
	                	wren_yoyo.spr_dir = -spr_dir;
	                	x = wren_yoyo.x + (16 * spr_dir);
	                	y = wren_yoyo.y + 4;
                	}
                	
			        if joy_pad_idle{
			            wren_yoyo.hsp = 6.5 * spr_dir;
			            wren_yoyo.vsp = 0;
			        } else {
			            wren_yoyo.hsp = 6.5 * spr_dir;
			            if !up_down and down_down{
			            	wren_yoyo.vsp = 3;
			            }
			            if up_down and !down_down{
			            	wren_yoyo.vsp = -3;
			            }
			        }
                	
                	hsp = 0;
                	vsp = 0;
                	break;
                case 6:
        			if instance_exists(wren_yoyo){
        				with(wren_yoyo){
        					if instance_exists(hbox){
        						instance_destroy(hbox);
        					}
        					state = 5;
        					state_timer = 0;
        				}
        			}
        			move_cooldown[AT_FSPECIAL] = 60;
                	can_move = true;
                	hsp = 8 * spr_dir;
                	vsp = -4;
                	break;
            }
            break;
        #endregion
        
        #region // USPECIAL
        case AT_USPECIAL:
	        can_move = false;
	        can_wall_jump = true;
	        can_fast_fall = false;
	        if window < 3{
	            if (!moved_up){
	                if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
	                    for (var i = 0; i < 20; i++){
	                        if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
	                            y -= i;
	                            moved_up = true;
	                            break;
	                        }
	                    }
	                }
	            }
	        }
	        switch(window){
	            case 1:
	                if (window_timer == 1){
	                        reset_window_value(attack, 2, AG_WINDOW_HSPEED);
	                        reset_window_value(attack, 2, AG_WINDOW_VSPEED);
	                }
	                if instance_exists(wren_yoyo){
	                	switch(wren_tidecall_toggle){
	                		case 0: // Default
	                			if window_timer < 8 and attack_pressed and wren_yoyo.state != 15{
				                	destroy_hitboxes();
				                	attack_end();
				                	set_state(PS_IDLE);
				                	set_attack(AT_USPECIAL_2);
	                			}
	                			break;
	                		case 1:	// Tap/Hold
				                if (window_timer == 1){
				                	clear_button_buffer(PC_SPECIAL_PRESSED);
				                }
	                			if window_timer == 5 and special_down{
	                				destroy_hitboxes();
				                	attack_end();
				                	set_state(PS_IDLE);
				                	set_attack(AT_USPECIAL_2);
	                			}
	                			break;
	                	}
	                }
	                /*
	                if ((window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 1)){
	                    // check if holding back
	                    if ((spr_dir == -1 and right_down) or (spr_dir == 1 and left_down)){
	                        set_window_value(attack, 2, AG_WINDOW_HSPEED, 1);
	                        set_window_value(attack, 2, AG_WINDOW_VSPEED, -8);
	                        set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HSPEED, 2);
							set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_VSPEED, -7);
	                        set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80);
	                        set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
	                        set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 90);
	                        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 80);
	                        set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_ANGLE, 90);
	                    } else {
	                        if ((spr_dir == -1 and left_down) or (spr_dir == 1 and right_down)){
	                            set_window_value(attack, 2, AG_WINDOW_HSPEED, 5);
	                            set_window_value(attack, 2, AG_WINDOW_VSPEED, -6);
	                            set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HSPEED, 6);
								set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_VSPEED, -4);
	                            set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 65);
	                            set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 75);
	                            set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 75);
	                            set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 65);
	                            set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_ANGLE, 75);
	                        } else {
	                            reset_window_value(attack, 2, AG_WINDOW_HSPEED);
	                            reset_window_value(attack, 2, AG_WINDOW_VSPEED);
	                            reset_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HSPEED);
								reset_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_VSPEED);
	                            reset_hitbox_value(AT_USPECIAL, 1, HG_ANGLE);
	                            reset_hitbox_value(AT_USPECIAL, 2, HG_ANGLE);
	                            reset_hitbox_value(AT_USPECIAL, 4, HG_ANGLE);
	                            reset_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE);
	                            reset_hitbox_value(AT_USPECIAL_GROUND, 3, HG_ANGLE);	                        }
	                    }
	                }*/
	                break;
	            case 2:
	            	if instance_exists(wren_yoyo) and wren_yoyo.state == 1 and position_meeting(x, y, wren_yoyo){
	            		// Upgrade
	            		instance_destroy(wren_yoyo);
	            		destroy_hitboxes();
	            		attack_end();
	            		set_attack(AT_USPECIAL_GROUND);
	            	}
	                if ((window_timer % 6 == 0) and !hitpause){
	                    sound_play(asset_get("sfx_swish_weak"))
	                }
	                break;
	            case 3:
	                // spawn visual effect
	                if ((window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH) - 6) and !hitpause){
	                    spawn_hit_fx(x + (get_hitbox_value(attack, 5, HG_HITBOX_X) * spr_dir), y + get_hitbox_value(attack, 5, HG_HITBOX_Y), vfx_uspecialfinal)
	                }
	                break;
	        	}
            break;
        #endregion
        
        #region // USPECIAL EMPOWERED
        case AT_USPECIAL_GROUND:
	        can_move = false;
	        can_wall_jump = true;
	        can_fast_fall = false;
	        if window < 3{
	            if (!moved_up){
	                if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
	                    for (var i = 0; i < 20; i++){
	                        if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
	                            y -= i;
	                            moved_up = true;
	                            break;
	                        }
	                    }
	                }
	            }
	        }
	        switch(window){
	            case 1:
	                if (window_timer == 1){
	                        reset_window_value(attack, 2, AG_WINDOW_HSPEED);
	                        reset_window_value(attack, 2, AG_WINDOW_VSPEED);
	                }
	                break;
	            case 2:
	                if ((window_timer % 6 == 0) and !hitpause){
	                    sound_play(asset_get("sfx_swish_weak"))
	                }
	                break;
	            case 3:
	                // spawn visual effect
	                if ((window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH) - 6) and !hitpause){
	                    spawn_hit_fx(x + (get_hitbox_value(attack, 5, HG_HITBOX_X) * spr_dir), y + get_hitbox_value(attack, 5, HG_HITBOX_Y), vfx_uspecialfinal)
	                }
	                break;
	        	}
            break;
        #endregion
        
        #region // USPECIAL 2
        case AT_USPECIAL_2:
        	can_wall_jump = true;
        	can_move = false;
        	can_fast_fall = false;
        	move_cooldown[AT_USPECIAL] = 9999;
        	
	        if window < 3{
	            if (!moved_up){
	                if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
	                    for (var i = 0; i < 20; i++){
	                        if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
	                            y -= i;
	                            moved_up = true;
	                            break;
	                        }
	                    }
	                }
	            }
	        }
        	
        	switch(window){
        		case 1:
        			_timesthrough = 0;
        			moved_up = false;
        			if wren_yoyo.x <= x{
        				spr_dir = -1;
        			} else {
        				spr_dir = 1;
        			}
        			wren_yoyo_old_x = wren_yoyo.x;
        			wren_yoyo_old_y = wren_yoyo.y;
        			if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1{
        				sound_play(asset_get("sfx_spin_longer"));
        			}
        			break;
        		case 2:
        			// i hate this fucking  move
        			fall_through = true;
        			//print(_timesthrough);
        			can_jump = true;
        			can_tap_jump();
        			can_shield = true;
    				if jump_pressed{
						hsp = clamp(hsp, -(air_max_speed*2.5), air_max_speed*2.5)
						vsp = clamp(vsp, -djump_speed, max_fall)
    					_timesthrough = 0;
    					move_cooldown[AT_NSPECIAL] = 60;
    					move_cooldown[AT_DSPECIAL] = 60;
    				}
    				if shield_pressed{
    					_timesthrough = 0;
    					move_cooldown[AT_NSPECIAL] = 60;
    					move_cooldown[AT_DSPECIAL] = 60;
    				}
        			if (point_distance(x, y, wren_yoyo_old_x, wren_yoyo_old_y) <= 60){
        				window = 3;
        				window_timer = 0;
        				sound_stop(asset_get("sfx_spin_longer"));
        				sound_stop(sfx_wren_whirlpool_loop)
        				instance_destroy(wren_yoyo);
        			} else {
        				var _wren_dir = point_direction(x,y,wren_yoyo_old_x,wren_yoyo_old_y);
        				
        				if floor(x + hsp) != (wren_yoyo_old_x + (60 * sign(hsp))){
        					hsp += lengthdir_x(.75, _wren_dir);
        				} else {
        					print("TEST")
        					hsp = 0;
        				}	
        				
        				if floor(y + vsp + (-30 * sign(vsp))) != (wren_yoyo_old_y + (-30 * sign(vsp))){
        					vsp += lengthdir_y(.75, _wren_dir);
        				} else {
        					print("TEST")
        					vsp = 0;
        				}
        			}
        			if window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1{
        				_timesthrough++;
        			}
        			break;
        		case 3:
        			hsp = clamp(hsp, -3, 3)
					vsp = clamp(vsp, -3, 3)
        			break;
        	}
        	break;
        #endregion
        
        #region // DSPECIAL
        case AT_DSPECIAL:
        	move_cooldown[AT_DSPECIAL] = 10;
        	hsp = clamp(hsp, -2, 2);
            switch(window){
            	case 1:
            		_timesthrough = 0;
            		
            		if window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 1{
	            		with(oPlayer){
	            			if other.id != id{
			            		if wren_riptide_id == other.id{
			            			switch(wren_stacks){
			            				case 1:
					            			with(wren_riptide_id){
					            				create_hitbox(AT_DSPECIAL_2, 1, other.x, other.y);
					            			}
			            					break;
			            				case 2:
					            			with(wren_riptide_id){
					            				create_hitbox(AT_DSPECIAL_2, 2, other.x, other.y);
					            			}
			            					break;
			            				default:
					            			with(wren_riptide_id){
					            				create_hitbox(AT_DSPECIAL_2, 3, other.x, other.y);
					            			}
			            					break;
			            			}
			            		}
	            			}
	            		}
            		}
            		break;
                case 2:
                	//print(string(_timesthrough));
                	if free{
                		vsp = lerp(vsp, 0.5, .125);
                	}
                	
                	if window_timer % 8 == 0{
                		sound_play(asset_get("sfx_swipe_weak1"))
                	}
                	
                	if _timesthrough >= 4{
                		with(oPlayer){
                			if id != other.id{
                				if wren_stacks == 2{
                					with (wren_riptide_id){
                						remove_riptide();
                					}
                				}
                			}
                		}
                	}
                	
                	if window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1{
                		if !special_down{
                			window = 3;
                			window_timer = 0;
                		} else {
                			if _timesthrough >= 4{
                				window = 3;
								window_timer = 0;
                			} else {
                				_timesthrough++;
                			}
                		}
                	}
                    break;
                case 3:
                	if window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH) - 1{
						remove_riptide();
                		if !instance_exists(wren_yoyo){
	                        wren_yoyo = instance_create(x, y-50, "obj_article1");
	                        wren_yoyo.player_id = id;
                            wren_yoyo.hsp = (13 + (13 * (wren_charge_lvl/2))) * spr_dir;
                            wren_yoyo.vsp = 0;
	                        wren_yoyo.yoyo_charge_lvl = wren_charge_lvl;
	                        wren_charge = 0;
	                        wren_charge_lvl = 0;
                		}
                	}
                	break;
                case 4:
                	if window_timer == get_window_value(attack, 4, AG_WINDOW_LENGTH) - 1{
                		if _timesthrough <= 2{
                			window = 5;
                			window_timer = 0;
                			_timesthrough = 0;
                		} else {
                			window = 6;
                			window_timer = 0;
                			_timesthrough = 0;
                		}
                	}
                	break;
                case 7:
                	if window_timer == get_window_value(attack, 7, AG_WINDOW_LENGTH) - 1{
                		if _timesthrough < 5{
                			window = 8;
                			window_timer = 0;
                			_timesthrough = 0;
                		} else {
                			_timesthrough++;
                		}
                	}
                	break;
            }
            // Outside of the window switch will work on all frames of the attack
            can_fast_fall = false;
            break;
        #endregion
        
        #region // DSPECIAL 2
        case AT_DSPECIAL_2:
        	move_cooldown[AT_DSPECIAL] = 10;
        	hsp = clamp(hsp, -2, 2);
            switch(window){
            	case 1:
            		_timesthrough = 0;
            		if window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 5{
            			if instance_exists(wren_yoyo){
            				if wren_yoyo.state < 10{
            					if wren_yoyo.hbox != noone{
            						instance_destroy(wren_yoyo.hbox);
            					}
            					wren_yoyo.state = 14;
            					wren_yoyo.state_timer = 0;
            				}
            			}
            		}
            		if window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 1{
	            		with(oPlayer){
	            			if other.id != id{
			            		if wren_riptide_id == other.id{
			            			switch(wren_stacks){
			            				case 1:
					            			with(wren_riptide_id){
					            				create_hitbox(AT_DSPECIAL_2, 1, other.x, other.y);
					            			}
			            					break;
			            				case 2:
					            			with(wren_riptide_id){
					            				create_hitbox(AT_DSPECIAL_2, 2, other.x, other.y);
					            			}
			            					break;
			            				default:
					            			with(wren_riptide_id){
					            				create_hitbox(AT_DSPECIAL_2, 3, other.x, other.y);
					            			}
			            					break;
			            			}
			            		}
	            			}
	            		}
            		}
            		break;
                case 2:
                	//print(string(_timesthrough));
                	if free{
                		vsp = lerp(vsp, 0.5, .125);
                	}
                	if instance_exists(wren_yoyo){
                		var _wren_dir = point_direction(x, y, wren_yoyo.x,wren_yoyo.y);
                		
                		wren_yoyo.hsp = lengthdir_x(-4, _wren_dir);
                		wren_yoyo.vsp = lengthdir_y(-4, _wren_dir);
                	}
                	
                	if _timesthrough >= 4{
                		with(oPlayer){
                			if id != other.id{
                				if wren_stacks == 2{
                					with (wren_riptide_id){
                						remove_riptide();
                					}
                				}
                			}
                		}
                	}
                	
                	if window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1{
                		if !special_down{
                			window = 3;
                			window_timer = 0;
                		} else {
                			if _timesthrough >= 8{
                				window = 4;
								window_timer = 0;
								_timesthrough = 0;
                			} else {
                				_timesthrough++;
                			}
                		}
                	}
                    break;
                case 3:
                case 4:
                	if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1{
						remove_riptide();
						if instance_exists(wren_yoyo){
							sound_stop(sfx_wren_whirlpool_loop);
							wren_yoyo.state = 1;
							wren_yoyo.state_timer = 1;
							if instance_exists(wren_yoyo.hbox){
								with(wren_yoyo){
									instance_destroy(hbox);
								}
							}
						}
                	}
                	break;
                case 5:
                	if window_timer == get_window_value(attack, 5, AG_WINDOW_LENGTH) - 1{
                		if _timesthrough < 5{
                			window = 8;
                			window_timer = 0;
                			_timesthrough = 0;
                		} else {
                			_timesthrough++;
                		}
                	}
                	break;
            	}
            #endregion
            #region // TAUNT
            case AT_TAUNT:
            	switch(window){
            		case 1:
	    				if (window_timer == 19){
	    					sound_play(asset_get("sfx_swish_medium"));
	    				}
	    				if (window_timer == 24){
	    					sound_play(asset_get("sfx_waterhit_medium"), false, noone, .5);
	    				}
	    				if (window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 1){
	    					sound_play(sound_get("sfx_whirlpool_loop"),true);
	    				}
            			break;
            		case 2:
            			if taunt_pressed or jump_pressed or attack_pressed or special_pressed or shield_pressed{
            				sound_stop(sound_get("sfx_whirlpool_loop"));
            				set_window(3);
            			}
            			break;
            		case 3:
            			if window_timer == 10{
            				hsp = 3 * spr_dir;
            			}
            			if window_timer == 16{
            				hsp = 2 * spr_dir;
            			}
            			break;
            	}
            	break;
            break;
            #endregion
        #endregion
        
        #region // RIVALS 2 MODE
        //////////////////////////
        #region // Knockdown
        case AT_EXTRA_1:
        	switch(window){
        		case 1:	// Landed on stage
        			break;
        		case 2: // Knockdown loop
        			soft_armor = 4;
        			if up_pressed or ((window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1) and wren_rtwo_was_hit){
        				window = 3;
        				window_timer = 0;
        			}
        			switch(spr_dir){
        				case -1:
        					if left_pressed and !right_pressed{
        						set_state(PS_ROLL_FORWARD);
        						destroy_hitboxes();
        						attack_end();
        					}
        					if !left_pressed and right_pressed{
        						set_state(PS_ROLL_BACKWARD);
        						destroy_hitboxes();
        						attack_end();
        					}
        					break;
        				case 1:
        					if !left_pressed and right_pressed{
        						set_state(PS_ROLL_FORWARD);
        						destroy_hitboxes();
        						attack_end();
        					}
        					if left_pressed and !right_pressed{
        						set_state(PS_ROLL_BACKWARD);
        						destroy_hitboxes();
        						attack_end();
        					}
        					break;
        			}
        			if attack_pressed and !special_pressed{
        				window = 4;
        				window_timer = 0;
        			}
        			if !attack_pressed and special_pressed{
        				window = 7;
        				window_timer = 0;
        			}
        			break;
        		case 3: // Normal Get-up
        			break;
        		case 4:	// Get-up Attack (Start-Up)
        			break;
        		case 5: // Get-up Attack (Active)
        			break;
        		case 6: // Get-up Attack (Recovery)
        			break;
        		case 7:	// Get-up Special (Start-Up)
        			break;
        		case 8: // Get-up Special (Active)
        			break;
        		case 9: // Get-up Special (Recovery)
        			break;
        	}
        	break;
    	#endregion
    	#region // Shield
        case AT_EXTRA_2:
        	can_move = false;
        	if special_pressed and window <= 2 and wren_parry_cool == 0{
        		set_state(PS_PARRY_START);
        		wren_rtwo_stopparry = false;
        		destroy_hitboxes();
        		attack_end();
        	}
        	switch(window){
        		case 1:	// Shield Start
        			if window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 1{
        				if !shield_down{
        					window = 3;
        					window_timer = 0;
        				}
        			}
        			break;
        		case 2:	// Shield Loop
        			invincible = true;
        			can_tap_jump();
        			can_jump = true;
        			if shield_down {
        				switch(spr_dir){
        					case -1:
        						if left_pressed{
        							set_state(PS_ROLL_FORWARD);
        						}
        						if right_pressed{
        							set_state(PS_ROLL_BACKWARD)
        						}
        						break;
        					case 1:
        						if left_pressed{
        							set_state(PS_ROLL_BACKWARD);
        						}
        						if right_pressed{
        							set_state(PS_ROLL_FORWARD)
        						}
        						break;
        				}
        				if down_pressed{
	        				clear_button_buffer(PC_DOWN_STICK_PRESSED);
	        				window = 6;
	        				window_timer = 0;
        				}
        			} else {
    					window = 3;
    					window_timer = 0;
    				}
        			break;
        		case 3:	// Shield Drop
        			can_tap_jump();
        			can_jump = true;
        			break;
        		case 4:	// Shield Break (Launch)
        			if window_timer < 6{
        				invincible = true;
        			} else {
        				invincible = false;
        			}
        			if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 6{
        				vsp = -6;
        			}
        			break;
        		case 5:	// Shield Break (Loop, just use spin hurt anim)
        			if !free{
        				destroy_hitboxes();
        				attack_end();
        				set_attack(AT_EXTRA_1);
        			}
        			break;
        		case 6:	// Spot Dodge Start 
        			break;
        		case 7:	// Spot Dodge Active 
        			invincible = true;
        			break;
        		case 8:	// Spot Dodge End 
        			if window_timer == get_window_value(attack, 8, AG_WINDOW_LENGTH) - 1{
        				if shield_down{
        					window = 1;
        					window_timer = 0;
        				}
        			}
        			break;
        	}
        	break;
        #endregion
        #region // Ledge
        case AT_EXTRA_3:
        	can_move = false;
        	switch(window){
        		case 1:	// Grabbed Ledge
        			vsp = 0;
        			hsp = 0;
        			if window_timer >= 1{
        				invincible = true;
        			}
        			break;
        		case 2: // Hanging from Ledge
        			vsp = 0;
        			hsp = 0;
        			if up_pressed{
        				set_window(3);
        			}
        			if attack_pressed{
        				set_window(4);
        			}
        			if special_pressed{
        				set_window(7)
        			}
        			if shield_pressed{
        				set_window(10)
        			}
        			if jump_pressed{
        				set_state(PS_FIRST_JUMP);
        			}
        			break;
        		case 3: // Normal Get-up
        			break;
        		case 4:	// Get-up Attack (Start-Up)
        			break;
        		case 5: // Get-up Attack (Active)
        			break;
        		case 6: // Get-up Attack (Recovery)
        			break;
        		case 7:	// Get-up Special (Start-Up)
        			break;
        		case 8: // Get-up Special (Active)
        			break;
        		case 9: // Get-up Special (Recovery)
        			break;
        		case 10: // Get-up Roll (Start)
        			break;
        		case 11: // Get-up Roll (Active)
        			break;
        		case 12: // Get-up Roll (Recovery)
        			break;
        	}
        	break;
        #endregion
        #endregion
    }
}
#endregion
#endregion
#define spawn_yoyo
if !instance_exists(wren_yoyo){
    wren_yoyo = instance_create(x, y-50, "obj_article1");
    wren_yoyo.player_id = id;
    if joy_pad_idle{
        wren_yoyo.hsp = (13 + (13 * (wren_charge_lvl/2))) * spr_dir;
        wren_yoyo.vsp = 0;
    } else {
        wren_yoyo.hsp = lengthdir_x(13 + (13 * (wren_charge_lvl/2)),joy_dir);
        wren_yoyo.vsp = lengthdir_y(13 + (13 * (wren_charge_lvl/2)),joy_dir);
    }
    wren_yoyo.yoyo_charge_lvl = wren_charge_lvl;
    wren_charge = 0;
    wren_charge_lvl = 0;
}
#define remove_riptide
with(oPlayer){
	if other.id != id{
		if wren_riptide_id == other.id{
			if wren_caught_cooldown == 0{
				hitstop = 0;
				hitpause = false;
				hitstun = 10 + get_hitstun_formula(get_player_damage(player)*2, knockback_adj, get_match_setting(SET_SCALING), 1, 4, 0);
				wren_caught = false;
				wren_riptide_id.wren_enemy_riptide_id = noone;
				wren_riptide_id = noone;
			} else {
				wren_caught_cooldown = 0;
			}
		}
	}
}

#define spawn_base_dust // supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return newdust;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define set_window(_new_window) // Version 0
    // Sets the window to the given state and resets the window timer.
    window = _new_window
    window_timer = 0
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion