// Alt-specific things
// Have macros representing which alt is which for switch statements
#macro codename_default_number      0
#macro codename_mega_number         7
#macro codename_metroid_number      8
#macro codename_halo_number         9
#macro codename_dva_number          10
#macro codename_rob_number          11
#macro codename_emerl_number        12
#macro codename_aperture_number     13
#macro codename_ironman_number      14
#macro codename_cyborg_number       15
#macro codename_mischeif_number     16
#macro codename_ugh_number          17
#macro codename_ea_number           20
#macro codename_wireframe_number    21
#macro codename_mettaton_number     22
#macro codename_queen_number        23
#macro codename_cabinet_number      24
#macro codename_rotom_number        25

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL || attack == AT_FSPECIAL_2 || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// Create boomerang
if (attack == AT_NSPECIAL_2) {
	can_fast_fall = false;
	
	if ((window == 2) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
		//sound_play(sound_get("horn_rotom"));
		var boomerang_hitbox = create_hitbox(AT_NSPECIAL_2, 1, x + spr_dir * 58, y - 44);
		//var fthrow_hsp = intial_boomerang_throw_speed;
		//var fthrow_vsp = 0;
		var throw_angle = 0;
		if (up_down && !down_down) {
			throw_angle = boomerang_upward_angle;
			//fthrow_hsp = lengthdir_x(intial_boomerang_throw_speed, boomerang_upward_angle);
			//fthrow_vsp = lengthdir_y(intial_boomerang_throw_speed, boomerang_upward_angle);
		} else if (!up_down && down_down) {
			throw_angle = boomerang_downward_angle;
			//fthrow_hsp = lengthdir_x(intial_boomerang_throw_speed, boomerang_downward_angle);
			//fthrow_vsp = lengthdir_y(intial_boomerang_throw_speed, boomerang_downward_angle);
		}
		
		//boomerang_hitbox.intial_boomerang_angle = throw_angle;
		var corrected_throw_angle = ((spr_dir > 0) ? throw_angle
													: (throw_angle <= 180) ? 180 - throw_angle
																			: 360 - (throw_angle - 180)) % 360;
		boomerang_hitbox.curr_angle = corrected_throw_angle;
		boomerang_hitbox.proj_angle = corrected_throw_angle;
		boomerang_hitbox.hsp = spr_dir;
		boomerang_hitbox.orig_hsp = spr_dir;
		boomerang_hitbox.vsp = 0;
		boomerang_hitbox.orig_vsp = 0;
		//boomerang_hitbox.hsp = spr_dir * fthrow_hsp;
		//boomerang_hitbox.orig_hsp = spr_dir * fthrow_hsp;
		//boomerang_hitbox.vsp = fthrow_vsp;
		//boomerang_hitbox.orig_vsp = fthrow_vsp;
		//boomerang_hitbox.boomerang_time_to_turn = boomerang_time_to_turn;
		boomerang_hitbox.length = boomerang_lifetime;
		//boomerang_hitbox.intial_boomerang_throw_speed = intial_boomerang_throw_speed;
		//boomerang_hitbox.decelleration = spr_dir * fthrow_hsp / boomerang_time_to_turn;
		//boomerang_hitbox.decelleration = fthrow_vsp / boomerang_time_to_turn;
		move_cooldown[AT_NSPECIAL_2] = boomerang_lifetime;
	}
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
	var current_window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
    switch (attack) {
        case AT_NSPECIAL :
	        switch (window) {
	        	case 1 : // Allow changing directions during windup
			    	//created_grab_hitbox = false;
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
		            
		            // reset held player state
		            if (window_timer == 1) {
		            	let_everyone_go();
		            }
		        	break;
	        	case 2 :
		    		if ((window_timer == 4)) {// && !created_grab_hitbox) {
		    			grab_hitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
		    			//created_grab_hitbox = true;
		    		} else if ((window_timer == 8)) {// && !created_grab_hitbox) {
		    			//grab_hitbox = create_hitbox(AT_NSPECIAL, 2, x, y);
		    			//created_grab_hitbox = true;
		    		}
		        	break;
	        	case 3 :
					if (holding_someone) {
			        	vsp = 0;
			        	if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
				        	// Opponent was grabbed, enter holding position
				            window = 6;
				            window_timer = 0;
			        	}
					}
		        	break;
	        	case 6 : // Holding, time to decide on a throw
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
		                draw_big_arrow_timer = draw_big_arrow_timer_max;
						draw_big_arrow_timer_x = x;
						draw_big_arrow_timer_y = y - 34;
						draw_big_arrow_drift = 2;
						draw_big_arrow_angle = 90;
		            } else if (down_down) {
		                attack = AT_DTHROW;
		                hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
		                window = 0;
		                window_timer = 0;
		                draw_big_arrow_timer = draw_big_arrow_timer_max;
						draw_big_arrow_timer_x = x;
						draw_big_arrow_timer_y = y - 34;
						draw_big_arrow_drift = 1.5;
						draw_big_arrow_angle = 270;
		            } else if (left_down) {
		                if (spr_dir > 0) { // backward throw
		                    attack = AT_NTHROW;
		                    hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
		                    window = 0;
		                    window_timer = 0;
							draw_big_arrow_drift = 4;
		                    // Turn around
		                    spr_dir *= -1;
		                } else { // forward throw
		                    attack = AT_FTHROW;
		                    hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
		                    window = 0;
		                    window_timer = 0;
							draw_big_arrow_drift = 2.5;
		                }
		                draw_big_arrow_timer = draw_big_arrow_timer_max;
						draw_big_arrow_timer_x = x;
						draw_big_arrow_timer_y = y - 34;
						draw_big_arrow_angle = 180;
		            } else if (right_down) {
		                if (spr_dir > 0) { // forward throw
		                    attack = AT_FTHROW;
		                    hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
		                    window = 0;
		                    window_timer = 0;
							draw_big_arrow_drift = 2.5;
		                } else { // backward throw
		                    attack = AT_NTHROW;
		                    hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
		                    window = 0;
		                    window_timer = 0;
							draw_big_arrow_drift = 4;
		                    // Turn around
		                    spr_dir *= -1;
		                }
		                draw_big_arrow_timer = draw_big_arrow_timer_max;
						draw_big_arrow_timer_x = x;
						draw_big_arrow_timer_y = y - 34;
						draw_big_arrow_angle = 0;
		            } else {
		                // If hold expired, drop 'em ya butterfingers
		                if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
		                    let_everyone_go();
		                    window = 7;
		                    window_timer = 0;
		                }
		            }
		        	break;
	        	default :
	        		break;
	        }
	        break;
	        
        case AT_NTHROW :
    		off_edge = true; // don't slip off ledge
    		var throw_at = ceil((current_window_length * 2) / 3);
            switch (window) {
                case 1 :
                    if ((window_timer == 1) && !codename_mischeif_active) {
                    	current_effect_sound = sound_play(asset_get("sfx_ell_drill_loop"),
                    	                                		false, noone, 1, 0.6);
                    } else if (window_timer == throw_at) {
                    	//var shake_duration = current_window_length - throw_at + get_hitbox_value(attack, 1, HG_LIFETIME);
        				//shake_camera(6, shake_duration);
                    } else if (window_timer == (current_window_length - 1)) {
                    	sound_stop(current_effect_sound);
                    	current_effect_sound = sound_play(bthrow_sound_effect,
                    	                                		false, noone, 1, codename_mischeif_active ? 1 : 0.8);
                    }
                    break;
                case 2 :
                    if (window_timer == 2) {
			            let_everyone_go();
			        }
                	break;
                default :
                    break;
            }
            break;
            
        case AT_FTHROW :
    		off_edge = true; // don't slip off ledge
            switch (window) {
                case 1 :
                	if ((window_timer == 1) && !codename_mischeif_active) {
                    	current_effect_sound = sound_play(asset_get("sfx_ell_drill_loop"),
                    	                                		false, noone, 1, 0.7);
                    }
                    break;
                case 4 :
                    if (window_timer == (current_window_length - 1)) {
                    	sound_stop(current_effect_sound);
                    	current_effect_sound = sound_play(fthrow_sound_effect,
                    	                                		false, noone, 1, codename_mischeif_active ? 1 : 0.9);
                    }
                    break;
                case 5 :
                    if (window_timer == 2) {
			        	//shake_camera(3, get_window_value(attack, window, AG_WINDOW_LENGTH));
			            let_everyone_go();
			        }
                    break;
                default :
                    break;
            }
            break;
            
        case AT_UTHROW :
            switch (window) {
                case 1 :
                    if (window_timer == 1) {
						current_effect_sound = sound_play(takeoff_start_sound,
																false, noone, 1, 1.3);
                    }
                    break;
                case 2 :
			        if (window_timer = 1) {
			        	shake_camera(1, current_window_length / 4);
			    	} else if (window_timer == current_window_length  / 4) {
			        	shake_camera(3, current_window_length / 4); // old intensity 1
						sound_play(asset_get("sfx_zetter_fireball_fire"),
								   false, noone, 0.9, 0.9);
			    	} else if (window_timer == current_window_length  * 2 / 4) {
			        	shake_camera(2, current_window_length / 4); // old intensity 3
			    	} else if (window_timer == current_window_length  * 3 / 4) {
			        	shake_camera(1, current_window_length / 4); // old intensity 4
			    	} else if (window_timer == (current_window_length - 1)) {
						sound_stop(current_effect_sound);
				        current_effect_sound = sound_play(laser_blast_sound,
														  false, noone, 1, 0.5);
						sound_play(asset_get("sfx_absa_uair"),
								   false, noone, 0.8, 0.7);
                    }
                    break;
                case 3 :
			        if (window_timer = 0) {
                		shake_camera(8, get_window_value(attack, window, AG_WINDOW_LENGTH));
			        } else if (window_timer == 2) {
			            let_everyone_go();
			        }
                    break;
                default :
                    break;
            }
            break;
            
        case AT_DTHROW :
            switch (window) {
                case 1 :
                	if (window_timer == 1) {
						current_effect_sound = sound_play(asset_get("sfx_ell_drill_loop"),
                    	                                		false, noone, 1, 0.5);
                    }
                    break;
                case 2 :
                	if (window_timer == 1) {
						sound_stop(current_effect_sound);
						current_effect_sound = sound_play(dthrow_sound_effect);
                    }
                    break;
                case 4 :
                	// Break out of loop on contact with the ground
                	if (!free) {
			    		window = 5
			    		window_timer = 0;
                	}
                    break;
                case 5 :
                	if (window_timer == 0) {
                		shake_camera(10, get_window_value(attack, window, AG_WINDOW_LENGTH));
						sound_stop(current_effect_sound);
                    } else if (window_timer == 2) {
						sound_stop(current_effect_sound);
            			let_everyone_go();
                    }
                    break;
                default :
                    break;
            }
            break;
        default :
            break;
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
    	afterimage_countdown = fspecial_endlag;
    	
    	if (rocket_fuel >= booster_rush_cost) {
    		fuel_recovery_active = false;
        	if (!infinite_energy) {
    	    	rocket_fuel -= booster_rush_cost;
        	}
    	}
    } else if ((window == 4) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
    	// Play a sound as it ends
    	sound_play(asset_get("sfx_burnend"), false, noone, 0.9, 1.5);
		white_flash_timer = white_flash_duration;
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
	can_fast_fall = false;
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
    if (!free && (window != penalty_window) && (window != 1)) {
        set_state(PS_LANDING_LAG);
    } else {
        // Dampen fall at start
        if (window == 1) {
            if (vsp > 0) {
                vsp *= 0.4;
            }
            uspecial_ember_countdown = uspecial_ember_countdown_max;
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
	            	
	            	// Play a funny sound if we run  out of fuel
	            	if (rocket_fuel == 0) {
	            		sound_play(sound_get("gasp"), false, noone, 1, 1.1);
	            	}
            	}
                if (special_down) {
                    //var max_rocket_rising_speed = remap_specials ? -3 : -5.5;
                    //var max_rocket_rising_speed = -5.5;

                    //var max_rocket_rising_speed = -3;
                    var speed_diff = max_rocket_rising_speed + vsp;
                    if (vsp > max_rocket_rising_speed) {
                        //vsp += (0.1 * speed_diff);
                        vsp += (0.08 * speed_diff); // 0.05
                        
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
            /// Occasionally drop embers
			create_embers();
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


if (attack == AT_USPECIAL_2) {
	can_fast_fall = true;
	
	if (window > 1) {
        can_wall_jump = true;
    }
	
	if (window == 1) {
        /// Occasionally drop embers
		create_embers();
		if (vsp > 0) {
			vsp *= 0.7;
		}
	}
	
	// Create smoke effect
	if ((window == 2) && (window_timer == 1)) {
		var smoke = spawn_hit_fx(x, y, uspecial_smoke_effect);
	}
}

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
	}/* else if ((window == 3) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
		armor_available = true;
	}*/
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
			if (armor_available && dspecial_grounded) {
				//super_armor = true;
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
		if (armor_available && dspecial_grounded) {
			//super_armor = true;
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
			armor_available = false;
			//super_armor = false;
		}
	} else if ((window == 7) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
		attack_end();
		sound_stop(current_effect_sound);
		if (!was_parried) {
			if (!free) {
				set_state(PS_CROUCH);
				change_hurtbox_sprite_to_crouch_next_frame = true;
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
	
	if ((window >= 5) && (!free) && (!was_parried)
		&& window_timer > 0)
	{
		if (attack_down && down_down) {
			attack_end();
			set_attack(AT_DTILT);
		} else if (can_dstrong_cancel_dspecial) {
			if ((strong_down && down_down) || (down_strong_pressed)) {
				attack_end();
				set_attack(AT_DSTRONG);
			}
		}
	}
	
	/*
	if (window >= 5) {
		can_attack = true;
		can_strong = true;
	}
	if ((window == 5) && (window_timer == 1)) {
		// Only allow dtilt and dstrong
		move_cooldown[AT_USTRONG] = dspecial_duration;
		move_cooldown[AT_FSTRONG] = dspecial_duration;
		move_cooldown[AT_JAB] = dspecial_duration;
		move_cooldown[AT_DATTACK] = dspecial_duration;
		move_cooldown[AT_FTILT] = dspecial_duration;
		move_cooldown[AT_UTILT] = dspecial_duration;
		move_cooldown[AT_FAIR] = dspecial_duration;
		move_cooldown[AT_UAIR] = dspecial_duration;
		move_cooldown[AT_BAIR] = dspecial_duration;
		move_cooldown[AT_DAIR] = dspecial_duration;
		move_cooldown[AT_NAIR] = dspecial_duration;
	}
	*/
}

if (attack == AT_DSTRONG) {
	// Slide a little left or right
	if ((window > 2) && (window < 4 + num_dstrong_spins)) {
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
		change_hurtbox_sprite_to_crouch_next_frame = true;
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

if (attack == AT_UTILT) {
	if ((window == 2)
		&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
	{
		spawn_base_dust(x - (spr_dir * 0), y, "jump");
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
	if ((window == 1) && (!free) && (!was_parried)
		&& window_timer <= 3)
	{
		if ((strong_down && up_down) || (up_strong_pressed)) {
			attack_end();
			set_attack(AT_USTRONG);
		}
	}

	/*if ((window >= 2) && (has_hit) && (!was_parried)) {
		can_jump = true;
	}*/
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
    //if (window > 6) && (window < 11) {
	    off_edge = false;
    //} else {
    //    off_edge = true;
    //}
    
    // Tilt fstrong up or down
    // Can only change selection in the 'hold' stage
    if ((window == 3) || (window == 7) || (window == 11)) {
        //smash_charging = strong_charge >= 90;
        if (up_down) {
        	if (window_timer == 4) {
        		smash_charging = true;
        	}
            window = 7;
        } else if (down_down) {
        	if (window_timer == 4) {
        		smash_charging = true;
        	}
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
    if ((!was_parried) && ((window == 6) || (window == 10) || (window >= 14))) {
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
		sound_play(laser_blast_supplemental_sound,
				   false, noone, 0.4, 2.2);
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


if (attack == AT_BAIR) {
	if ((window == 2) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
		current_aerial_laser_sound = sound_play(laser_stomp_supplemental_sound,
												false, noone, 0.5, 1.2);
	}
	if ((!free) && (current_aerial_laser_sound != noone)) {
		sound_stop(current_aerial_laser_sound);
		current_aerial_laser_sound = noone;
	}
}

if (attack == AT_DAIR) {
	if ((window == 2) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
		current_aerial_laser_sound = sound_play(laser_stomp_supplemental_sound,
												false, noone, 0.5, 1.2);
	}
	if ((!free) && (current_aerial_laser_sound != noone)) {
		sound_stop(current_aerial_laser_sound);
		current_aerial_laser_sound = noone;
	}
}

if (attack == AT_USTRONG) {
	can_fast_fall = false;
	can_move = false;
	
	if (accellerated_jump_kick)
		&& ((window > 1)
		&& (window < 4))
	{
		sliding_speed += (spr_dir * sliding_speed_accel);
		hsp = sliding_speed;
	} else if ((window != penalty_window) && (window >= 5)) { // dampen movement during endlag
		hsp *= 0.8; // 0.85
	} else {
		sliding_speed = hsp;
	}
	
	// Play windup sound
	if ((window == 1) && (window_timer == 1)) {
		current_effect_sound = sound_play(takeoff_charge2_sound);
	}

	if ((window == 1) && (window_timer == 1)) {
		ustrong_rising_count = 1;
	}
	
	// End playing sound
	if ((window == 3) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
        attack_end();
        set_attack(AT_USTRONG_2);
        attack = AT_USTRONG_2;
        window = 1;
        window_timer = 0;
        ustrong_stored_charge = strong_charge;
	}
	
	/*if (window == 4) {
		// Increase rising speed based on charge level
		var current_max_rising_speed = ustong_min_v_speed + ((ustong_max_v_speed - ustong_min_v_speed) * (strong_charge / 60));
		var rising_completion_percent = window_timer / get_window_value(attack, window, AG_WINDOW_LENGTH);
		vsp = ustong_init_v_speed + current_max_rising_speed * rising_completion_percent;
		
		// Allow a little horizontal influence
		hsp = spr_dir * 1.5;
		var h_influence_amount = 3 * rising_completion_percent;
		if (left_down) {
			hsp -= h_influence_amount;
		}
		if (right_down) {
			hsp += h_influence_amount;
		}
		if (ustrong_rising_countdown <= 0) {
			window = 5;
			window_timer = 0;
		} else {
			//ustrong_rising_countdown--;
		}
	}*/
	
	/*
	// Do rising loops
	if ((ustrong_loop_count < ustrong_num_rising_loops)
		&& (window == 4)
		&& (window_timer == get_window_value(AT_USTRONG, window, AG_WINDOW_LENGTH))) {
		window_timer = 0;
		ustrong_loop_count++;
	}
	*/
}

if (attack == AT_USTRONG_2) {
	can_fast_fall = false;
	can_move = false;

	if ((window == 1) && (window_timer == 1)) {
		//created_grab_hitbox = false;
    	let_everyone_go();
    	//ustrong_loop_count = 0;
    	strong_charge = ustrong_stored_charge;
	}
	
	if ((window == 1)
		&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
	{
		sound_stop(current_effect_sound);
    	current_effect_sound = sound_play(takeoff_active_sound);
    	// Create first grab hitbox here because it will apear on the next frame
    	grab_hitbox = create_hitbox(AT_USTRONG_2, 1, x, y);
	}
	
	// Loop indefinitely until kicked out
	if (//(ustrong_loop_count < ustrong_loop_max)
		(window == 2)
		&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
	{
		window_timer = 0;
		//ustrong_loop_count++;
	}
	
	if (window == 2) {
		// Increase rising speed based on charge level
		var current_max_rising_speed = ustong_min_v_speed + ((ustong_max_v_speed - ustong_min_v_speed) * (strong_charge / 60));
		//var rising_completion_percent = window_timer / get_window_value(attack, window, AG_WINDOW_LENGTH);
		var rising_completion_percent = ustrong_rising_count / ustrong_rising_duration;
		vsp = ustong_base_v_speed + current_max_rising_speed * rising_completion_percent;
		
		// Allow a little horizontal influence
		hsp = spr_dir * 1.5;
		var h_influence_amount = ustring_drift * rising_completion_percent;
		if (left_down) {
			hsp -= h_influence_amount;
		}
		if (right_down) {
			hsp += h_influence_amount;
		}
		// -1 because we want to transition on frame 20, not 21, for example
		if (ustrong_rising_count < ustrong_rising_duration) {
			//if ((window_timer == 1)) {// && (!created_grab_hitbox)) {
			if (ustrong_rising_count % ustrong_rising_hitbox_duration == 0) {
				grab_hitbox = create_hitbox(AT_USTRONG_2, 1, x, y);
				//created_grab_hitbox = true;
			}
			ustrong_rising_count++;
		} else {
			window = 3;
			window_timer = 0;
		}
	}

	//if ((window == 3) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
	if ((window == 5) && (window_timer == 2)) {
		sound_stop(current_effect_sound);
        let_everyone_go();
    }
    
	if ((window != penalty_window) && (window > 6) && (!free) && (!was_parried)) {
		// Enter landing lag on contact with the ground
		set_state(PS_LANDING_LAG);
		state_timer = 0;
		hurtboxID.sprite_index = hurtbox_spr;
		landing_lag_time = has_hit_player ? 6 : 10;
		window = 0;
		window_timer = 0;
		attack_end();
	}
}

if (attack == AT_UTILT) {
	//can_fast_fall = false;
	if ((window != penalty_window) && (window > 4) && (!free) && (!was_parried)) {
		// Enter landing lag on contact with the ground
		set_state(PS_LANDING_LAG);
		state_timer = 0;
		hurtboxID.sprite_index = hurtbox_spr;
		landing_lag_time = 8;
		window = 0;
		window_timer = 0;
		attack_end();
	}
}

// Can hold taunt if you want
if (attack == AT_TAUNT_2) {
	if (window == 1) && (window_timer == 1) {
		if (specific_taunt_transformation_required) {
			selected_taunt_transformation = selected_player_color;
			if (selected_taunt_transformation == codename_mettaton_number) {
				roll_mettaton();
			}
		} else {
			selected_taunt_transformation = random_func(0, highest_random_transformation_option - color_select_skip_count, true) + 1;
			if (selected_taunt_transformation >= color_select_skip_begin) {
				selected_taunt_transformation += color_select_skip_count;
			}
		}
	} else if ((window == 2)
			   && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
	{
		var taunt_sound = sound_get("horn_transform");
		switch (selected_taunt_transformation) {
		    case codename_mega_number :
		        taunt_sound = sound_get("horn_megaman");
		        break;
		    case codename_metroid_number :
		        taunt_sound = sound_get("horn_samus");
		        break;
		    case codename_halo_number :
		        taunt_sound = sound_get("horn_need_weapon");
		        break;
		    case codename_dva_number :
		        taunt_sound = sound_get("horn_dva");
		        break;
		    case codename_rob_number :
		        taunt_sound = sound_get("horn_rob");
		        break;
		    case codename_emerl_number :
		        taunt_sound = sound_get("horn_emerl");
		        break;
		    case codename_aperture_number :
		        taunt_sound = sound_get("horn_turret");
		        break;
		    case codename_ironman_number :
		        taunt_sound = sound_get("horn_ironman");
		        break;
		    case codename_cyborg_number :
		        taunt_sound = sound_get("horn_booyah");
		        break;
		    case codename_mischeif_number :
		        taunt_sound = sound_get("horn_marina_yahoo");
		        break;
		    case codename_ugh_number :
		        taunt_sound = sound_get("horn_ugh");
		        break;
		    case codename_mettaton_number :
		        taunt_sound = sound_get("horn_mettaton");
		        break;
		    case codename_queen_number :
		        taunt_sound = sound_get("horn_queen");
		        break;
		    case codename_cabinet_number :
		        // Play part of the song
		        cabinet_song_clip_current++;
		        cabinet_song_clip_current %= cabinet_song_clip_max;
		        taunt_sound = sound_get("cabinet_song_clip" + string(cabinet_song_clip_current));
		        break;
		    case codename_rotom_number :
		        taunt_sound = sound_get("horn_rotom");
		        break;
			default :
				break;
		}
		sound_stop(horn_current);
		horn_current = sound_play(taunt_sound);
	} else if ((window == 5) && (!taunt_down)) {
		window = 6;
		window_timer = 0;
	}
	
	if ((window >= 3) || (window <= 6)) {
		// Cabinet's screen flickers
		cabinet_flicker_version_current++;
		cabinet_flicker_version_current %= 2 * cabinet_flicker_duration;
		
		// Mettaton moves in an oval
		var cycle_progress_x = sin(2 * pi * (get_gameplay_time() % mettaton_cycle_max_x) / mettaton_cycle_max_x);
		var cycle_progress_y = sin(2 * pi * (get_gameplay_time() % mettaton_cycle_max_y) / mettaton_cycle_max_y);
		if (cycle_progress_x = 0) {
			roll_mettaton();
		}
		current_mettaton_x_offset = spr_dir * ((mettaton_x_variance * cycle_progress_x) - (mettaton_x_variance / 2));
		current_mettaton_y_offset = mettaton_y_variance * cycle_progress_y - mettaton_y_variance;
	}
}

if (attack == 49) { // Final Smash
	// Play sounds as needed
	if ((window == 1) && (window_timer == 2)) {
		layered_sound_1 = sound_play(takeoff_start_sound, false, noone, 1, 1.6);
		layered_sound_2 = sound_play(takeoff_start_sound, false, noone, 1, 1.9);
	} else if ((window == 2) && (window_timer == 1)) {
		sound_stop(layered_sound_1);
		sound_stop(layered_sound_2);
		layered_sound_2 = sound_play(asset_get("sfx_clairen_uspecial_rise"), false, noone, 1, 0.8);
	} else if ((window == 2) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
		layered_sound_1 = sound_play(laser_blast_sound, false, noone, 1, 1.1);
		layered_sound_2 = sound_play(laser_blast_sound, false, noone, 1, 0.5);
		layered_sound_3 = sound_play(asset_get("sfx_birdclap"), false, noone, 1, 1.1);
		// Start the screen shake here
		shake_camera(12, 13);
	} else if ((window == 4) && (window_timer == 1)) {
		layered_sound_3 = sound_play(asset_get("sfx_ell_steam_release"), false, noone, 1, 1.2);
	} else if ((window == 4) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
		sound_stop(layered_sound_1);
		sound_stop(layered_sound_2);
	}
}

// fspecial/uspecial cancel out of any attack if it hit
if (special_cancels_enabled) {
	if (has_hit && !holding_someone) {
		can_special = true;
		move_cooldown[AT_NSPECIAL] = 1;
		move_cooldown[AT_DSPECIAL] = 1;
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

#define roll_mettaton
// Pick Mettaton body part values
var rand_index = 0;
var mettaton_left_arm_prev = mettaton_left_arm;
mettaton_left_arm = random_func_2(rand_index++, mettaton_max_arm_index, true);
if (mettaton_left_arm >= mettaton_left_arm_prev) mettaton_left_arm++;
var mettaton_right_arm_prev = mettaton_right_arm;
mettaton_right_arm = random_func_2(rand_index++, mettaton_max_arm_index, true);
if (mettaton_right_arm >= mettaton_right_arm_prev) mettaton_right_arm++;
var mettaton_left_leg_prev = mettaton_left_leg;
mettaton_left_leg = random_func_2(rand_index++, mettaton_max_leg_index, true);
if (mettaton_left_leg >= mettaton_left_leg_prev) mettaton_left_leg++;
var mettaton_right_leg_prev = mettaton_right_leg;
mettaton_right_leg = random_func_2(rand_index++, mettaton_max_leg_index, true);
if (mettaton_right_leg >= mettaton_right_leg_prev) mettaton_right_leg++;
var mettaton_mouth_prev = mettaton_mouth;
mettaton_mouth = random_func_2(rand_index++, mettaton_max_mouth_index, true);
if (mettaton_mouth >= mettaton_mouth_prev) mettaton_mouth++;
var mettaton_eye_prev = mettaton_eye;
mettaton_eye = random_func_2(rand_index++, mettaton_max_eye_index, true);
if (mettaton_eye >= mettaton_eye_prev) mettaton_eye++;
// TODO try not to choose the same parts twice in a row

// Function to randomly spawn embers during uspecial
#define create_embers
uspecial_ember_countdown--;
if (uspecial_ember_countdown == 0) {
	// Pick a foot, 0 = front, 1 = rear (closer to camera)
	var rand_index = 0;
	/*
	switch (random_func(rand_index++, 2, true)) {
		case 0 :
			// Spawn randomly, but with a gap in the middle
			var ember_offset_x = random_func(rand_index++, 20, true) + 6;
			var ember_offset_y = -random_func(rand_index++, 16, true);
			current_ember = spawn_hit_fx(x + ember_offset_x, y + ember_offset_y, ember_effect);
			// Randomly flip
			current_ember.spr_dir *= ((2 * random_func(rand_index++, 1, true)) - 1) ;
			break;
		case 1 :
			// Spawn randomly, but with a gap in the middle
			var ember_offset_x = -random_func(rand_index++, 24, true) - 4;
			var ember_offset_y = -random_func(rand_index++, 16, true);
			current_ember = spawn_hit_fx(x + ember_offset_x, y + ember_offset_y, ember_effect);
			// Randomly flip
			current_ember.spr_dir *= ((2 * random_func(rand_index++, 1, true)) - 1) ;
			break;
		default :
			break;
	}
	*/
	// Spawn randomly, but with a gap in the middle
	var ember_offset_x = (random_func(rand_index++, 20, true) + 6) * ((2 * random_func(rand_index++, 2, true)) - 1);
	var ember_offset_y = -random_func(rand_index++, 16, true) - 4;
	current_ember = spawn_hit_fx(x + ember_offset_x, y + ember_offset_y, ember_effect);
	// Randomly flip
	//current_ember.spr_dir *= ((2 * random_func(rand_index++, 2, true)) - 1);
}
// Reset the countdown
if (uspecial_ember_countdown <= 0) {
	uspecial_ember_countdown = uspecial_ember_countdown_max + random_func(rand_index++, uspecial_ember_countdown_variance, true);
}

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