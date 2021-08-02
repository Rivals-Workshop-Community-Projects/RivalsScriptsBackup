//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if window == 1 and window_timer == 1{
	// randomize
	var hit_rand_light = random_func(0, 3, true);
	var hit_rand_mid   = random_func(2, 1, true);
	var hit_rand_large = random_func(1, 1, true);
	switch(hit_rand_light){
		case 0:
			set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, vfx_hit_small1);
			set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, vfx_hit_small1);
			set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, vfx_hit_small1);
			set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, vfx_hit_small1);
			set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, vfx_hit_small1);
			set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, vfx_hit_small1);
			set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, vfx_hit_small1);
			set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, vfx_hit_small1);
			break;
		case 1:
			set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, vfx_hit_small2);
			set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, vfx_hit_small2);
			set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, vfx_hit_small2);
			set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, vfx_hit_small2);
			set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, vfx_hit_small2);
			set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, vfx_hit_small2);
			set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, vfx_hit_small2);
			set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, vfx_hit_small2);
			break;
		case 2:
			set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, vfx_hit_small3);
			set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, vfx_hit_small3);
			set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, vfx_hit_small3);
			set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, vfx_hit_small3);
			set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, vfx_hit_small3);
			set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, vfx_hit_small3);
			set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, vfx_hit_small3);
			set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, vfx_hit_small3);
			break;
	}
	
	switch(hit_rand_mid){
		case 0:
			set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, vfx_hit_med1);
			set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, vfx_hit_med1);
			set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, vfx_hit_med1);
			set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, vfx_hit_med1);
			set_hitbox_value(AT_NAIR, 8, HG_VISUAL_EFFECT_X_OFFSET, vfx_hit_med1);
			set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, vfx_hit_med1);
			set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, vfx_hit_med1);
			set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, vfx_hit_med1);
			set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, vfx_hit_med1);
			set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, vfx_hit_med1);
			set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, vfx_hit_med1);
			break;
	}
	
	// Large
	switch(hit_rand_large){
		case 0:
			set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, vfx_hit_large1);
			set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, vfx_hit_large1);
			set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, vfx_hit_large1);
			set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, vfx_hit_large1);
			set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, vfx_hit_large1);
			set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, vfx_hit_large1);
			set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, vfx_hit_large1);
			set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, vfx_hit_large1);
			set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, vfx_hit_large1);
			set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, vfx_hit_large1);
			set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, vfx_hit_large1);
			set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT, vfx_hit_large1);
			set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, vfx_hit_large1);
			break;
	}
}

if proposed_balance{
    // Balance Change Script:
    user_event(2);
} else {

    switch(attack){
    	case AT_JAB:
    		switch(window){
    			case 4:
    				if was_parried and window_timer == get_window_value(attack, 4, AG_WINDOW_LENGTH) * 1.5{
    					state = PS_IDLE;
    				}
    				break;
    		}
    		break;
    	case AT_DATTACK:
    		switch(window){
	    		case 1:
	    			if window_timer < 4{
		    			can_ustrong = true;
		    			if up_strong_pressed or up_strong_down{
		    				hsp += .5 * spr_dir;
		    			}
	    			}
		    		break;
    		}
    		break;
        // OHOHOHO
        case AT_TAUNT:
            switch(window){
                case 1:
	                if window_timer == 1{
	                    laugh_loop = 0;
	                }
                    break;
                case 3:
                	if get_player_color(player) == 9{
                		if taunt_down{
                			window_timer--;
                		}
                	}
                	break;
                case 4:     // Laugh
	                if (window_timer == get_window_value(attack, 4, AG_WINDOW_LENGTH)){
	                    if (laugh_loop < laugh_loop_max){
	                        laugh_loop++;
	                        window_timer = 0;
	                    }
	                    if get_match_setting(SET_PRACTICE) and laugh_loop == laugh_loop_max{
	                    	charge = charge_max;
	                    }
	                }
                    break;
            }
            break;

        case AT_FSTRONG:
            switch(window){
                case 1:
                    if window_timer == 1{
                        illusion = noone;
                    }
                    break;
                case 2:
                	var illusionx = 12;
                	var illusiony = 0;

                    if window_timer == 1{

	                	if position_meeting(x, y + 2, asset_get("par_jumpthrough")){
	                		print("standing on platform");
	                		illusiony = 10;
	                	}

                        // create the article
                        illusion = instance_create(x + illusionx * spr_dir, y - illusiony, "obj_article2");
                        illusion.hsp_charge = round(strong_charge/10) + 1;
                        illusion.spr_dir = spr_dir;
                    }
                    break;
                case 3:
                	if window_timer >= 16{
                		iasa_script();
                	}
                	move_cooldown[AT_FSTRONG] = 80;
            }
            break;

		case AT_DSTRONG:
			switch(window){
				case 2:
					if window_timer == 3{
						sound_play(asset_get("sfx_ice_nspecial_hit_ground"));
					}
					break;
			}
			break;

        // NSpecial Charge
        case AT_NSPECIAL:
        	if window < 3{
        		charging = true;
        	} else {
        		charging = false;
        	}
            // Window switching because pog?
            switch(window){
                case 1: // Start-up
					//max_fall = 9.5;		// 6    -  11
                    // Checking for the charge to be full prior to this.
                    if (window_timer == get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH)){
                    	sound_play(asset_get("sfx_ice_dspecial_form"));
                        // Check for a full charge.
                        if (!special_down or charge == charge_max){
                        	window = 3;
                        	window_timer = 0;
                        	sound_stop(asset_get("sfx_ice_dspecial_form"));
                        	sound_stop(asset_get("sfx_holy_tablet_spawning"));
                        }
                    }

                    break;
                case 2: // Charging
                
                	// Slow down
                	//max_fall = 5.5;

                    //Jumping and rolling out of charge. Still stores charge level.
                    can_jump = true;

                    // At any time, check to see if special is pressed.
                    if (!special_down){
                        // Jump to the next window.
                        window = 3;
                        window_timer = 0;
                    }
                    
                    if jump_pressed{
                    	sound_stop(asset_get("sfx_holy_tablet_spawning"));
                    }

                    // At any time, check if the player wants to cancel.

                    // Otherwise, begin the charging process.
                    if (window_timer == get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)){
                        // If we reach the end of the move, and aren't at the max charge, apply it.
                        if charge < charge_max{
                            charge++;

                            // Check the charge and play sound
                            if charge == 1{
                                sound_play(asset_get("sfx_ice_shatter_big"));
                            }
                            if charge == 2{
                                sound_play(asset_get("sfx_ice_dspecial_ground"));
                                sound_play(asset_get("sfx_holy_tablet_spawning"));
                            }
                            if charge == 3{
                            	sound_stop(asset_get("sfx_holy_tablet_spawning"));
                                sound_play(asset_get("sfx_ice_nspecial_hit_ground"));
                                sound_play(asset_get("sfx_holy_tablet_appear"));
                            }

                            window = 2;
                            window_timer = 0;

                        } else {

                            // If we have max charge, just go right to the final window.
                            window = 4;
                            window_timer = 0;
                        }
                    }

                    // Change the animation starting frame based on the charge (this is my big assume as to how ranno does it.)
                    // leaving it empty for now because no animation.

                    break;
                case 3: // Casting (Active)
                	//max_fall = 9.5;		// 6    -  11
                	if window_timer < 6{
                		sound_stop(asset_get("sfx_holy_tablet_spawning"));
                		switch(spr_dir){
                			case -1:
                				if right_pressed{
                					spr_dir = 1;
                				}
                				break;
                			case 1:
	                			if left_pressed{
	                				spr_dir = -1;
	                			}
                				break;
                		}
                	}
                    // stuff in the active frames (aka hitbox creation)
                    if (window_timer == 9){
                        // spawn hitboxes
                        if charge == 0{
                        	sound_play(sound_get("sfx_castmid"));
							create_hitbox(AT_NSPECIAL, 1, x + (10 * spr_dir), y-30);
							//move_cooldown[AT_NSPECIAL] = 40;
                        }
                        if charge == 1{
                        	sound_play(sound_get("sfx_castheavy"));
                    		create_hitbox(AT_NSPECIAL, 2, x + (20 * spr_dir), y-30);
                    		//move_cooldown[AT_NSPECIAL] = 70;
                        }
                        if charge == 2{
                        	sound_play(sound_get("sfx_auroraswipe"));
                    		create_hitbox(AT_NSPECIAL, 3, x + (20 * spr_dir), y-30);
                    		//move_cooldown[AT_NSPECIAL] = 120;
                        }
                        if charge == 3{
                        	sound_play(sound_get("sfx_auroraswipe"));
                        	if spr_dir == 1{
                        		create_hitbox(AT_NSPECIAL, 6, x+10, y-30);
                        	} else {
                        		create_hitbox(AT_NSPECIAL, 6, x-10, y-30);
                        	}
                        	//move_cooldown[AT_NSPECIAL] = 200;
                        }
                        // remove charge
                        charge = 0;
                        move_cooldown[AT_NSPECIAL] = 40;
                    }
                    break;
                case 4: // Endlag
                    break;
                case 5: // Cancel
                	// Something I wanna try
                	//max_fall = 9.5;		// 6    -  11
                	charging = false;
                	if window_timer == 1{
	                	switch(spr_dir){
	                		case -1:
	                			if right_down or right_pressed{
	                				spr_dir *= -1;
	                			}
	                			break;
	                		case 1:
	                			if left_down or left_pressed{
	                				spr_dir *= -1;
	                			}
	                			break;
	                	}
                	}
                	
                	sound_stop(asset_get("sfx_ice_dspecial_form"));
                	sound_stop(asset_get("sfx_holy_tablet_spawning"));
                	//can_shield = true;
                    // cleared the button buffer to prevent accidental parry.
                    //clear_button_buffer(PC_SHIELD_PRESSED);
                    break;
            }
            break;

            case AT_FSPECIAL:
                switch(window){
                    case 1:
                    	can_fast_fall = false;
                        if window_timer == 8{
                            if !special_down{
                                // Make the hitbox closer
                                set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 150);
                                //set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 150);
                            } else {
                                // make the hitbox where it is
                                set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 300);
                                //set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 300);
                                fspecial_far = true;
                            }
                    		var detect_x = get_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X);
                    		var detect_y = get_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y);
                    		spawn_hit_fx(x + (detect_x * spr_dir), y - 32, vfx_fspecial_start);
                    		sound_play(asset_get("sfx_bird_sidespecial_start"));
                        }
                        break;
                    case 3:
                      can_fast_fall = false;
                      break;
                    case 4:
                    	if fspecial_far{
                    		move_cooldown[AT_FSPECIAL] = 55;
                    	} else {
							move_cooldown[AT_FSPECIAL] = 35;
                    	}
                    	if window_timer == get_window_value(attack, 4, AG_WINDOW_LENGTH){
                    		fspecial_far = false;
                    	}
                      break;
                }
                break;

            case AT_FSPECIAL_2:
                switch(window){
                    case 1:
                    	can_fast_fall = false;
                        if window_timer == 8{
                    		sound_play(asset_get("sfx_bird_sidespecial_start"));
                        }
                        break;
                    case 3:
                    	if window_timer == 1{
                    		spawn_hit_fx(x + (48 * spr_dir), y - 32, 144);
                    	}
	                    can_fast_fall = false;
	                    break;
                    case 4:
						move_cooldown[AT_FSPECIAL] = 35;
						break;
                }
                break;

			case AT_USPECIAL:
				can_wall_jump = true;
				if window == 1 and window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH){
					if !free{
						// jump right to the jump up
						window = 3;
						window_timer = 0;
						vsp -= 8;
					} else {
						spawn_ice = true;
						sound_play(asset_get("sfx_ice_uspecial_start"));
					}
				}
				if window >= 5{
					if uspec_cool_time > 0{
						uspec_cool_time--;
					}
					if !free{
						attack = AT_EXTRA_1;
						window = 1;
						window_timer = 0;
					}
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
					if down_pressed and uspec_cool_time <= 0{
						window = 6;
						window_timer = 0;
						uspec_cool_time = uspec_cooldown;
					}
				}
				switch(window){
					case 2:
						if spawn_ice and window_timer == 1{
							create_hitbox(attack, 1, x-2, y+30);
						} else {
							spawn_ice = false;
						}
						break;
					case 4:
						if window_timer == 1{
							gliding = true;
							vsp = 0;
						}
						break;
					case 5:
						//can_shield = true;
						if spr_dir == 1{
							// facing right
							if left_down{
								// backwards window
								// change sprite start
								set_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START, 17);
							}
							if right_down{
								// move forward
								// change sprite start
								set_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START, 13);
							}
							if joy_pad_idle{
								// change sprite start
								set_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START, 13);
							}
						} else {
							// facing left
							if left_down{
								// move forward
								// change sprite start
								set_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START, 13);
							}
							if right_down{
								// backwards window
								// change sprite start
								set_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START, 17);
							}
							if joy_pad_idle{
								// change sprite start
								set_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START, 13);
							}
						}
						break;
					case 6:	// Going into Pratfall
						if window_timer == get_window_value(attack, 6, AG_WINDOW_LENGTH){
							if speed_rune_touched and uspecialcap < uspecialcap_max{
								uspecialcap++;
								destroy_hitboxes();
								attack_end();
								state = PS_IDLE;
								speed_rune_touched = false;
								boom_rune_touched = false;
							}
						}
						break;
				}
				break;

        // This will eventually be the mirror/rune
            case AT_DSPECIAL:
            	can_fast_fall = false;
                switch(window){
                	case 1:
                		break;
                    case 2:
                    	if window_timer == 3{
                    		sound_play(sfx_snap);
                    	}
                        if window_timer == get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH){
                        	var runex = 32;
                        	var runey = 0;
                        	var boomruney = -58;
		                	if position_meeting(x, y + 2, asset_get("par_jumpthrough")){
		                		print("standing on platform");
		                		runey = -60;
		                		boomruney = 0;
		                	}


                            // summon the thing.
                            if summons != max_summons{

                                // Check how long you held the button.
                                // Create the mirror
                                summon_tracker[summons] = instance_create(x + (runex * spr_dir), y + runey, "obj_article1");
                                summon_tracker[summons].state = 0;
                                summon_tracker[summons].state_timer = 0;
                                // Increase the count of the summons so we don't go over.
                                //summon_tracker[summons].rune_id = summons + 1;
                                
                                summons++;

                            } else {
                                // If the summon is max, remove the first summon.
                                instance_destroy(summon_tracker[0]);
                                // Move the latest summon down to slot 1
                                summon_tracker[0] = summon_tracker[1];
                                //summon_tracker[0].rune_id = summon_tracker[1].rune_id;
                                summon_tracker[1] = noone;
                                // set the summon count to one
                                summons = 1;

                                // Summon
                                // Create the mirror
                                summon_tracker[summons] = instance_create(x + (runex * spr_dir), y + runey, "obj_article1");
                                summon_tracker[summons].state = 0;
                                summon_tracker[summons].state_timer = 0;
                                //summon_tracker[summons].rune_id = summons + 1;

                                summons++;

                            }
                        }
                        break;
                    case 3:
                        //stuff
                        break;
                }
            break;
    }
}

/*
// Secret Color Stuff
if attack == AT_TAUNT && secretcolor && window == 5 && window_timer == get_window_value(attack, 5, AG_WINDOW_LENGTH){
	// Credit to Giik
    if shield_down{
      sound_play(asset_get("mfx_player_ready"))
      set_num_palettes(18);
      secretcolor = 0;
    }
}*/
