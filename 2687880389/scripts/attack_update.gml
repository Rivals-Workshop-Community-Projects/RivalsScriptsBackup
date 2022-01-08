//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if ((attack == AT_NSPECIAL)
    || (attack == AT_NTHROW)
    || (attack == AT_FTHROW)
    || (attack == AT_UTHROW)
    || (attack == AT_DTHROW))
{
    can_fast_fall = false;
    if ((attack == AT_DTHROW)
    	&& (window > 1)
    	&& (window < 5))
	{
    	can_move = true;
    } else {
    	can_move = false;
    }
    // Prevent grab spamming
    //move_cooldown[AT_NSPECIAL] = 20;
    
    holding_someone = false;
    // Try to make sure nobody else can grab who we're holding
    var last_frame_of_window = get_window_value(attack, window, AG_WINDOW_LENGTH);
    with (oPlayer) {
        if (RETROBLAST_HOLDER_ID == other.id) {
        //if (RETROBLAST_HOLDER_ID != noone) {
        //if (RETROBLAST_HOLDER_ID == other.player_id) {
        //if (id != other.id) {
            other.holding_someone = true;
            // Some characters will respect the grabbed player's super armor and fail their grab and let us finish ours
            //super_armor = true;
            // Prevent the opponent from acting
            //state = PS_HITSTUN;
            // Not sure what the difference between this and setting state to hitpause is
            hitpause = true;
            // This is how many frames to stay in hitpause.  It refreshes to 2 every cycle of this move
            hitstop = 2;
            //white_flash_timer = 0;
            // Hold 'em still
            //hsp = -0.5 * other.spr_dir;
            //vsp = -0.5;
            // Bump them away gently if we fumble
            //old_hsp = -0.5 * other.spr_dir;
            //old_vsp = -0.5;
            
            // Determine the offset needed to appear where the holder is holding this player
            var grab_x_offset = x;
            var grab_y_offset = y;
            
            switch (other.attack) {
                case AT_NSPECIAL :
                    spr_dir = -other.spr_dir;
                    switch (other.window) {
                        case 3 :
                        	if (other.window_timer < last_frame_of_window) {
                            	grab_x_offset = other.x + (54 * other.spr_dir);
                            	grab_y_offset = other.y - 32;
                        	} else {
                            	grab_x_offset = other.x + (46 * other.spr_dir);
                            	grab_y_offset = other.y - 34;
                        	}
                            break;
                        case 4 :
                            grab_x_offset = other.x + (46 * other.spr_dir);
                            grab_y_offset = other.y - 34;
                            break;
                        case 6 :
                            grab_x_offset = other.x + (46 * other.spr_dir);
                            grab_y_offset = other.y - 34;
                            break;
                        default :
                            break;
                    }
                    break;
                case AT_NTHROW :
                    switch (other.window) {
                        case 1 :
                            if (other.window_timer < (last_frame_of_window / 3)) {
                                spr_dir = other.spr_dir;
                                grab_x_offset = other.x - (46 * other.spr_dir);
                                grab_y_offset = other.y - 32;
                            } else if (other.window_timer < ((2 * last_frame_of_window) / 3)) {
                                spr_dir = other.spr_dir;
                                grab_x_offset = other.x - (44 * other.spr_dir);
                                grab_y_offset = other.y - 28;
                            } else if (other.window_timer < last_frame_of_window) {
                                spr_dir = other.spr_dir;
                                grab_x_offset = other.x - (28 * other.spr_dir);
                                grab_y_offset = other.y - 24;
                            } else {
                            	spr_dir = -other.spr_dir;
                                grab_x_offset = other.x + (90 * other.spr_dir);
                                grab_y_offset = other.y - 28;
                            }
                            break;
                        case 2 :
                            spr_dir = -other.spr_dir;
                            if (other.window_timer < (last_frame_of_window / 2)) {
                                grab_x_offset = other.x + (90 * other.spr_dir);
                                grab_y_offset = other.y - 28;
                            }
                            break;
                        default :
                            break;
                    }
                    break;
                
                case AT_FTHROW :
                    spr_dir = -other.spr_dir;
                    switch (other.window) {
                        case 1 :
                        	if (other.window_timer < last_frame_of_window) {
                            	grab_x_offset = other.x + (26 * other.spr_dir);
                            	grab_y_offset = other.y - 56;
                        	} else {
                        		grab_x_offset = other.x - (56 * other.spr_dir);
                            	grab_y_offset = other.y - 80;
                        	}
                            break;
                        case 2 :
                        	if (other.window_timer < last_frame_of_window) {
	                            grab_x_offset = other.x - (56 * other.spr_dir);
	                            grab_y_offset = other.y - 80;
                        	} else {
	                            grab_x_offset = other.x - (60 * other.spr_dir);
	                            grab_y_offset = other.y - 74;
                        	}
                            break;
                        case 3 :
                        	if (other.window_timer < last_frame_of_window) {
	                            grab_x_offset = other.x - (60 * other.spr_dir);
	                            grab_y_offset = other.y - 74;
                        	} else {
	                            grab_x_offset = other.x - (42 * other.spr_dir);
	                            grab_y_offset = other.y - 96;
                        	}
                            break;
                        case 4 :
                        	if (other.window_timer < last_frame_of_window) {
	                            grab_x_offset = other.x - (42 * other.spr_dir);
	                            grab_y_offset = other.y - 96;
                        	} else {
	                            grab_x_offset = other.x + (46 * other.spr_dir);
	                            grab_y_offset = other.y - 96;
                        	}
                            break;
                        default :
                            break;
                    }
                    break;
                    
                case AT_UTHROW :
                    spr_dir = -other.spr_dir;
                    switch (other.window) {
                        case 1 :
                        	if (other.window_timer < last_frame_of_window) {
	                            grab_x_offset = other.x + (46 * other.spr_dir);
	                            grab_y_offset = other.y - 44;
                        	} else {
                        		grab_x_offset = other.x + (40 * other.spr_dir);
                            	grab_y_offset = other.y - 54;
            				}
                            break;
                        case 2 :
                            grab_x_offset = other.x + (40 * other.spr_dir);
                            grab_y_offset = other.y - 54;
                            break;
                        default :
                            break;
                    }
                    break;
                
                case AT_DTHROW :
                	// I think trying to use get_window_value here accesses
                	// the window belonging to the grabbed target, so I'll
                	// need to be clever if I want to do that some other way.
                	//var current_window_length = get_window_value(other.attack, other.window, AG_WINDOW_LENGTH);
                    spr_dir = -other.spr_dir;
                    switch (other.window) {
                        case 1 :
                			if (other.window_timer == last_frame_of_window) {
	                            grab_x_offset = other.x + (46 * other.spr_dir);
	                            grab_y_offset = other.y - 32;
                			} else if (other.window_timer < (last_frame_of_window / 2)) {
	                            grab_x_offset = other.x + (46 * other.spr_dir);
	                            grab_y_offset = other.y - 26;
                            } else {
	                            grab_x_offset = other.x + (46 * other.spr_dir);
	                            grab_y_offset = other.y - 20;
                            }
                            break;
                        case 2 :
                        	if (other.window_timer < last_frame_of_window) {
                    			grab_x_offset = other.x + (46 * other.spr_dir);
                            	grab_y_offset = other.y - 32;
                        	} else {
                        		grab_x_offset = other.x + (44 * other.spr_dir);
	                            grab_y_offset = other.y - 68;
                        	}
                            break;
                        case 3 :
                        	if (other.window_timer < last_frame_of_window) {
	                            grab_x_offset = other.x + (44 * other.spr_dir);
	                            grab_y_offset = other.y - 68;
                        	} else {
	                            grab_x_offset = other.x + (-10 * other.spr_dir);
	                            grab_y_offset = other.y - 100;
                        	}
                            break;
                        case 4 :
	                        if (free) {
	                            grab_x_offset = other.x + (-10 * other.spr_dir);
	                            grab_y_offset = other.y - 100;
                        	} else {
                        		grab_x_offset = other.x + (46 * other.spr_dir);
	                        	grab_y_offset = other.y - 26;
                        	}
                            break;
                        case 5 :
                        	grab_x_offset = other.x + (46 * other.spr_dir);
	                        grab_y_offset = other.y - 26;
                            break;
                        default :
                            break;
                    }
                    break;
                default :
                    break;
            }
            
            x = grab_x_offset;
            y = grab_y_offset;
        }
    }
    
    //sound_play(sound_get("borpo"));
    
    // TODO - prove we can at least detect holding an opponent
    /*
    if (window == 3) {
        window = 6;
        window_timer = 0;
        with (asset_get("oPlayer")) {
            if (RETROBLAST_HOLDER_ID == other.id) {
                RETROBLAST_HOLDER_ID = noone;
            }
        }
        holding_someone = false;
    }
    */
    
    if (attack == AT_NSPECIAL) {
    	if (window == 1) { // Allow changing directions during windup
    		created_grab_hitbox = false;
            if (left_down) {
                if (spr_dir > 0) {
                    // Turn around
                    spr_dir *= -1;
                }
            } else if (right_down) {
                if (spr_dir < 0){
                    // Turn around
                    spr_dir *= -1;
                }
            }
    	} else if (window == 2) {
    		if ((window_timer == 4) && !created_grab_hitbox) {
    			grab_hitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
    			created_grab_hitbox = true;
    		}
    	} else if (holding_someone && (window == 3)) {
        	vsp = 0;
        	if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
	        	// Opponent was grabbed, enter holding position
	            window = 6;
	            window_timer = 0;
        	}
        } else if (window == 6) { // Holding, time to decide on a throw
            // If a direction is pressed, do that throw
            /*if (special_down) {
            	// same as pressing forward
                attack = AT_FTHROW;
                hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
                window = 0;
                window_timer = 0;
            } else */if (up_down) {
                attack = AT_UTHROW;
                hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
                window = 0;
                window_timer = 0;
            } else if (down_down) {
                attack = AT_DTHROW;
                hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
                window = 0;
                window_timer = 0;
            } else if (left_down) {
                if (spr_dir > 0) { // backward throw
                    attack = AT_NTHROW;
                    hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
                    window = 0;
                    window_timer = 0;
                    // Turn around
                    spr_dir *= -1;
                } else { // forward throw
                    attack = AT_FTHROW;
                    hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
                    window = 0;
                    window_timer = 0;
                }
            } else if (right_down) {
                if (spr_dir > 0) { // forward throw
                    attack = AT_FTHROW;
                    hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
                    window = 0;
                    window_timer = 0;
                } else { // backward throw
                    attack = AT_NTHROW;
                    hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
                    window = 0;
                    window_timer = 0;
                    // Turn around
                    spr_dir *= -1;
                }
            } else {
                // If hold expired, drop 'em ya butterfingers
                if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                    with (asset_get("oPlayer")) {
                        if (RETROBLAST_HOLDER_ID == other.id) {
                            RETROBLAST_HOLDER_ID = noone;
                        }
                    }
                    holding_someone = false;
                    window = 7;
                    window_timer = 0;
                }
            }
        }
    } else if (attack == AT_NTHROW) {
    	off_edge = true; // don't slip off ledge
        // Oficially let go
        if ((window == 2)
            && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
        {
            let_everyone_go();
        }
    } else if (attack == AT_FTHROW) {
    	off_edge = true; // don't slip off ledge
        // Oficially let go
        if ((window == 5) && (window_timer == 1)) {
            let_everyone_go();
        }
    } else if (attack == AT_UTHROW) {
    	if ((window == 2) && (window_timer == 1)) {
    		current_effect_sound = sound_play(takeoff_start_sound, false, noone, 1, 1.3);
    	} else if ((window == 2) && (window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH) - 4))) {
	        sound_stop(current_effect_sound);
	        sound_play(laser_blast_sound, false, noone, 1, 0.5);
    	}
    		
        // Oficially let go
        if ((window == 2)
            && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
        {
            let_everyone_go();
        }
    } else if (attack == AT_DTHROW) {
    	// Break out of loop on contact with the ground
    	if ((window == 4) && (!free)) {
    		window = 5
    		window_timer = 0;
    	}
    	
    	// Oficially let go
        if ((window == 5)
            && (window_timer == 1))
        {
            let_everyone_go();
        }
    }
}



if (attack == AT_FSPECIAL) {
    off_edge = true;
    
    // Spawn dust from the ground
    if ((window == 1) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
        spawn_base_dust(x - (spr_dir * 10), y, "dash_start");
        /*
        var dust = spawn_dust_fx(x - (spr_dir * 10), y, asset_get("empty_sprite"), 100); // length param not taken into account?
        //spawn_dust_fx(x - (spr_dir * 10), y, asset_get("dust_dash_spr"), 100);
        dust.dust_fx = 3;
        dust.fg_sprite = 2646;
        dust.dust_color = 1;
        */
    }
    
    // Start drawing afterimages
    if ((window == 2) && (window_timer == 1)) {
    	afterimage_countdown = 30;
    	
    	if (rocket_fuel >= booster_rush_cost) {
    		fuel_recovery_active = false;
        	if (!infinite_energy) {
    	    	rocket_fuel -= booster_rush_cost;
        	}
    	}
    }
    
    /*
    if (window > 2) {
        can_attack = true;
        can_strong = true;
        can_ustrong = true;
        can_jump = true;
        can_wall_jump = true;
        can_shield = true;
        can_fast_fall = true;
    }
    */
}

if (attack == AT_USPECIAL) {
	/*
	if (remap_specials) {
	    // Freely flip
	    if (right_down) {
	        if (spr_dir < 0) {
	            spr_dir *= -1;
	        }
	    } else if (left_down){
	        if (spr_dir > 0) {
	            spr_dir *= -1;
	        }
	    }
    }
    */
    
    // If we touch the ground, end
    if (!free && (window != 1)) {
        set_state(PS_LANDING_LAG);
    } else {
        // Dampen fall at start
        if (window == 1) {
            if (vsp > 0) {
                vsp *= 0.4;
            }
        }
        
        // rocket state should be cancellable by almost anything
        if (window > 1) {
            can_attack = true;
            can_strong = true;
            can_ustrong = true;
            can_jump = true;
            can_wall_jump = true;
            can_shield = true;
            /*
            can_fast_fall = false;
            if (special_pressed) {
                window = 3;
                window_timer = 0;
                //destroy_hitboxes();
            }
            */
        }
        // Continue to rise while the button is held and we have fuel
        if (window < 3) {
        	fuel_recovery_active = false;
            if (rocket_fuel > 0) {
            	if (!infinite_energy) {
	            	if (rocket_fuel >= fuel_consumption_rate) {
	                	rocket_fuel -= fuel_consumption_rate;
	            	} else {
	            		rocket_fuel = 0;
	            	}
            	}
                if (special_down) {
                    //var max_rocket_rising_speed = remap_specials ? -3 : -5.5;
                    //var max_rocket_rising_speed = -5.5;
                    var max_rocket_rising_speed = -6.0;
                    
                    //var max_rocket_rising_speed = -3;
                    var speed_diff = max_rocket_rising_speed + vsp;
                    if (vsp > max_rocket_rising_speed) {
                        //vsp += (0.1 * speed_diff);
                        vsp += (0.05 * speed_diff);
                        
                        /*
                        var abs_rocket_accel = 0.1;
                        // Add more oomph while going slower
                        if (abs(vsp) < (max_abs_rocket_rising_speed / 2)) {
                            
                        vsp -= (abs_rocket_accel * 2);
                        }
                        vsp -= abs_rocket_accel;
                        */
                    } else {
                        // Exceeded the speed limit
                        vsp = max_rocket_rising_speed;
                        //vsp -= (0.05 * speed_diff);
                    }
                    if (window == 2) {
                        // Loop this window
                        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                            window = 2;
                            window_timer = 0;
                        }
                    }
                } else {
                	if (window == 2) {
                		window = 3;
                		window_timer = 0;
                	}
                }
            }
        }
    }
}
/*
if (attack == AT_USPECIAL) {
    // If we touch the ground, end
    if (!free && (window != 1)) {
        set_state(PS_LANDING_LAG);
    } else {
        // Dampen fall at start
        if (window == 1) {
            if (vsp > 0) {
                vsp *= 0.4;
            }
        }
        
        // rocket state should be cancellable by almost anything
        if (window > 1) {
            can_attack = true;
            can_strong = true;
            can_ustrong = true;
            can_jump = true;
            can_wall_jump = true;
            can_shield = true;
        }
        // Continue to rise while the button is held and we have fuel
        if (window == 2) {
            if (special_down) {
            	if (rocket_fuel > 0) {
                rocket_fuel--;
                    var max_rocket_rising_speed = -5;
                    if (vsp > max_rocket_rising_speed) {
                        var speed_diff = max_rocket_rising_speed + vsp;
                        vsp += (0.1 * speed_diff);
                    } else {
                        // Exceeded the speed limit
                        vsp = max_rocket_rising_speed;
                	}
                	
                    // Loop this window
                    if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                        window = 2;
                        window_timer = 0;
                    }
                }
            }
        }
    }
}
*/


/*
if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    if (window == 2){
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 10){
                times_through++;
                window_timer = 0;
            }
        }
        if (!joy_pad_idle){
            hsp += lengthdir_x(phone_cheats[cheat_flight_speed], joy_dir);
            vsp += lengthdir_y(phone_cheats[cheat_flight_speed], joy_dir);
        } else {
            hsp *= .6;
            vsp *= .6;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 12 * phone_cheats[cheat_flight_speed];
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        if (special_pressed && times_through > 0){
            window = 4;
            window_timer = 0;
        }
        if (shield_pressed){
            window = 3;
            window_timer = 0;
        }
    }
    if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        window++;
        window_timer = 0;
    }
}
*/

if (attack == AT_DSPECIAL) {
	//move_cooldown[AT_DSPECIAL] = 2;
	can_fast_fall = false;
	can_wall_jump = true;
	/*
	if (window > 1) {
		can_jump = true;
		can_attack = true;
		can_special = true;
		can_shield = true;
		can_strong = true;
		can_ustrong = true;
	}
	*/
	
	if ((window == 2) && (window_timer == 1)) {
		current_effect_sound = sound_play(engine_revving_up_sound);
	} else if ((window == 3) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
		armor_available = true;
	}
	if (((window == 2) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
	      || (window == 3)
		  || (window == 4))
	{
		if ((!special_down)
			|| ((window == 4) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))))
		{
			window = 5;
			window_timer = 0;
			sound_stop(current_effect_sound);
			current_effect_sound = sound_play(driving_dash_sound);
			if (armor_available) {
				super_armor = true;
			}
		} else if (shield_pressed && can_store_dspecial_charge) {
			if (window == 4) {
				driving_dash_stored = true;
				armor_available = false;
				sound_stop(current_effect_sound);
				//sound_play(asset_get("sfx_frog_fspecial_cancel"));
			}
			window = 7;
			window_timer = 0;
		}
	} else if (window == 5) {
		if (driving_dash_stored) {
			armor_available = true;
		}
		if (window_timer == 1) {
			driving_dash_stored = false;
			//afterimage_countdown = driving_dash_duration;
		}
		/*
		if ((window_timer > 0)
			&& (window_timer < driving_dash_duration)
			&& ((window_timer % 2) == 0))
		{
			create_hitbox(AT_DSPECIAL, 1, x + (10 * spr_dir), y - 16);
		}
		*/
		if (armor_available) {
			super_armor = true;
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
			armor_available = false;
			super_armor = false;
		}
	} else if ((window == 7) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
		attack_end();
		sound_stop(current_effect_sound);
		if (!was_parried) {
			if (!free) {
				set_state(PS_CROUCH);
				state_timer = 4;
			} else {
				window = 8;
				window_timer = 0;
			}
		}
		/*
		if (was_parried) {
			if (!free) {
				set_state(PS_PRATLAND);
			} else {
				set_state(PS_PRATFALL);
			}
			parry_lag = 40;
		} else if (!free && !was_parried) {
			set_state(PS_CROUCH);
			state_timer = 4;
		} else {
			window = 8;
			window_timer = 0;
		}
		*/
	}
}

if (attack == AT_DSTRONG) {
	// Slide a little left or right
	if ((window > 2) && (window < 4 + num_dstrong_spins)) {
		var dstrong_max_speed = 4;
		if (left_down) {
			if (abs(hsp) < dstrong_max_speed) {
				hsp -= dstrong_accel;
			} else {
				hsp = -dstrong_max_speed;
			}
		} else if (right_down) {
			if (abs(hsp) < dstrong_max_speed) {
				hsp += dstrong_accel;
			} else {
				hsp = dstrong_max_speed;
			}
		}
	}
	
	// Spawn dust during windup and at start of spin
	if (window == 2) {
		if ((looping_dust_timer % 10) == 0) {
    		spawn_base_dust(x, y, "land");
		}
    	looping_dust_timer++;
	} else if (window == 1) {
		looping_dust_timer = 0;
	}
	
	if ((window == 5 + num_dstrong_spins)
		&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
		&& !was_parried)
	{
		set_state(PS_CROUCH);
		state_timer = 4;
	}
	

	// Play windup sound
	if ((window == 1) && (window_timer == 1)) {
		current_effect_sound = sound_play(tire_screech_burnout_start_sound);
	}
	
	// End playing sound
	if ((window == 3) && (window_timer == 1)) {
        sound_stop(current_effect_sound);
	}
}

if (attack == AT_DTILT) {
	if ((window == 1)
		&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
	{
		sound_play(active_horn);
	}
	
	if ((window == 4)
		&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
		&& !was_parried)
	{
		set_state(PS_CROUCH);
		state_timer = 4;
	}
}


/*
if (attack == AT_DSTRONG) {
	can_move = true;
	if ((window == 5) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {

		set_state(PS_CROUCH);

		if (down_down && !free)	{
			state_prev = PS_CROUCH;
			state = PS_CROUCH;
			state_timer = 4;
		}else {
			state_prev = PS_CROUCH;
			state = PS_IDLE;
			state_timer = 0;
		}
	}
}	*/

/*
if (attack == AT_DSPECIAL){
    if (window == 2 && !was_parried){
        can_jump = true;
    }
    can_fast_fall = false;
    can_move = false
}
*/

/*
// Prevent spamming dtilt as a car
if (attack == AT_DTILT) {
    move_cooldown[AT_DTILT] = 20;
}
*/

if (attack == AT_DATTACK) {
	if (window >= 3) {
		can_jump = true;
	}
}

/*
if (attack == AT_DTHROW) {
	if ((window == 5)
		&& (window_timer == 0)
		&& (hitstun == hitstun_full))
	{
		sound_play(asset_get("sfx_shovel_swing_heavy1"));
	}
}
*/

if (attack == AT_FSTRONG) {
    can_fast_fall = false;
    can_move = false;
    // Prevent slipping off the edge if aiming up
    if (window > 6) && (window < 11) {
	    off_edge = false;
    } else {
        off_edge = true;
    }
    
    // Tilt fstrong up or down
    // Can only change selection in the 'hold' stage
    if ((window == 3) || (window == 7) || (window == 11)) {
        smash_charging = true;
        if (up_down) {
            window = 7;
        } else if (down_down) {
            window = 11;
        } else {
            window = 3;
        }
    } else if (((window == 6) || (window == 10) || (window == 14))
               && (window_timer == (get_window_value(AT_FSTRONG, window, AG_WINDOW_LENGTH) - 1)))
    {
        window = 15;
        window_timer = 0;
    }

    // Allow action after flame is gone
    if ((window == 6) || (window == 10) || (window >= 14)) {
        can_jump = true;
        can_attack = true;
        can_special = true;
        can_shield = true;
        can_wall_jump = true;
    }

	// start playing charge sound
	if ((((window == 3) || (window == 7) || (window == 11))
		 && (window_timer == 1))
		&& (first_run_through_fstrong))
	{
		first_run_through_fstrong = false;
		current_effect_sound = sound_play(laser_charge_sound);
	} else if ((window == 2) && (window_timer == 1)) {
		first_run_through_fstrong = true;
	}

    // Stop playing charge sound and play blast sound
    if (((window == 4) || (window == 8) || (window == 12))
        && (window_timer = 4))
    {
        sound_stop(current_effect_sound);
        sound_play(laser_blast_sound);
    }

    // Add dust at feet
    if (!free) {
        if (((window == 5) || (window == 9))
            && (window_timer = 2))
        {
            spawn_base_dust(x - (spr_dir *(30 + 3 * abs(hsp))), y, "dash");
        }
    }
}

if (attack == AT_USTRONG) {
	if (accellerated_jump_kick)
		&& ((window > 1)
		&& (window < 4))
	{
		sliding_speed += (spr_dir * sliding_speed_accel);
		hsp = sliding_speed;
	} else {
		sliding_speed = hsp;
	}
	
	// Play windup sound
	if ((window == 1) && (window_timer == 1)) {
		current_effect_sound = sound_play(takeoff_start_sound);
	}
	
	// End playing sound
	if ((window == 3) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
        sound_stop(current_effect_sound);
	}
}

// Emulate the charge attack flashing
smash_flash_timer++;
smash_flash_timer %= smash_flash_timer_max;


// Function to release all held players
#define let_everyone_go
with (oPlayer) {
    if (RETROBLAST_HOLDER_ID == other.id) {
        RETROBLAST_HOLDER_ID = noone;
    }
}
holding_someone = false;

// Function to spawn built-in dust effects, courtesy of SupersonicNK
#define spawn_base_dust
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
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;