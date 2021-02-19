// HEDAN'S ATTACK UPDATE

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || (attack == AT_DSPECIAL && window == 1 && free) || attack == AT_USPECIAL) {
    trigger_ult_b_reverse();
}

var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);

switch (attack) {
	case AT_JAB: // Jab
		if (window < 3 && was_parried) {
			was_parried = false;
		}
		if (window == 3 && !was_parried) {
	        // Jab looping, checks to see if the attack button has been pressed and
	        // repeats it if it has.
	        if (window_timer < get_window_value(AT_JAB, 3, AG_WINDOW_LENGTH) && attack_pressed) {
	            jab_loop = true;
	        } else if (window_timer == get_window_value(AT_JAB, 3, AG_WINDOW_LENGTH) && jab_loop) {
	            attack_end(); // Reset hitboxes
	            jab_loop = false; // Reset jab_loop so it can be stopped.
	            window_timer = 0;
	        }
    	}
    	if (window == 2 && window_timer == get_window_value(AT_JAB, 2, AG_WINDOW_LENGTH)) {
    		// For some reason JAB sometimes doesn't go to the next window so this is necessary
    		window = 3;
    		window_timer = 0;
    	}
    	break;
    case AT_DATTACK: // Dash Attack
    	if (runeA && window >= 2 && !was_parried) {
    		// Rune Buddy
    		can_jump = true;
    	}
    	if (window > 2) {
	        // Makes it so it can't go off ledge if the rolling part is already done
	        set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);
	    } else {
	        // Makes it so you can't influence your movement while aerial
	        can_move = false;
	        set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
	    }
	    
	    if (!hitpause) {
	        can_fast_fall = false; // Makes it so he cannot fastfall without hitfall
	    } else {
	        can_fast_fall = true;
	    }
	    break;
	case AT_NAIR:
		if (window == 2 && window_timer >= 11 && attack_down) {
			window_timer = 11;
		}
		if (window == 2 && window_timer == 12) {
			window_timer = 28;
		}
		can_move = hitpause; // Enables hitfalling
		
		// Enables, then disables the nair landing hit to come out window 2 only
		if (window == 2) {
			set_num_hitboxes(AT_NAIR, 3);
			splash_created = false;
		} else {
			set_num_hitboxes(AT_NAIR, 2);
			splash_created = true;
		}
		break;
	case AT_UAIR: // Up Air
		if (runeI) {
			// Rune buddy, let upair go six times (effectively a recovery)
			if (uair_count < 4) {
				if (window == 2 && window_timer == get_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH) && attack_down) {
					uair_count++;
					window_timer = 0;
				}
			}
		}
		if (window == 2 && attack_down) {
			if (runeI) {
				// Rune buddy, have a set speed for upair
				vsp = uair_speed
			} else {
				// Normally, just make it let you float a little
				grav = uair_grav; // Make him fly a little if attack is held
			}
		} else {
			grav = gravity_speed; // Reset to normal gravity
		}
		break;
	case AT_UTILT: // Up Tilt
		can_move = false;
		if (window == 1 && free) {
			set_state(PS_IDLE_AIR);
		} else if (window == 3 && window_timer == 9) {
			// Play the landing sound when UTILT hits the ground. Originally
			// was set to play when the landing actually works but it played a frame
			// late, so it needs to be hardcoded. :/ lame.
			sound_play(land_sound);
		}
		break;
	case AT_DSTRONG: // Down Strong
		// Make it parry
		if (window == 2 && window_timer == dstrong_parry_frame - 1 && dstrong_charged) {
			// - 1 because the first frame of parry isn't an actual parry
			set_state(PS_PARRY);
			dstrong_parry = true;
		}
		if (!splash_created && window == 3 && dstrong_parried) {
			// Spawn the dstrong splash
			spawn_hit_fx(x, y, giga_splash_fx).depth = depth-1;
			splash_created = true;
		}
		if (dstrong_charged) {
			parry_cooldown = 20;
		}
		if (window == 2 && window_timer == 1 && v_steam <= -1) {
			// Make DSTRONG charge work post charge
		    dstrong_charged = true;
		    set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
		    set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_parry_hurt"));
		    set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 20);
		    if (!dstrong_parried) {
		    	set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
		    }
		    set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
		}
		break;
	case AT_USTRONG: // Up Strong
		if (window == 3 && grabbed != -1) {
			// Switch to the grab attack if someone was sucessfully grabbed
			window = 5;
			window_timer = 0;
		}
		if (window == 3 && window_timer > get_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME)) {
			// Make it so you can't combo the sourspots into the grab (minus the first one)
			// by changing hitbox groups after the first sourspot is gone
		}
		if (window == 5 && window_timer == get_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH)) {
			// If the attack part is over, switch to the endlag. This needs to be done
			// because USTRONG is only set to have 4 windows
			window = 6;
			window_timer = 0;
			grabbed = -1;
		}
		// The rest of the code is in pre_draw, since attack_update did not do it fast enough.
		// Rune Buddy rune L code
		if (runeL) {
			if (window == 3) {
				if (window_timer <= get_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME) && window_timer > get_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME)) {
					// First hitbox grapple range
	    			for(k = starting_grapple_x; k < grapple_x; k += x_inc) {
		                for (j = starting_grapple_y; j > grapple_y; j -= y_inc) {
		                	if (((j != starting_grapple_y - 1 * (y_inc) || k != starting_grapple_x + 2 * (x_inc)) && (!grappled_block && !grappled_platform))) {
		                		// Erase corners from being considered in the grapple to make it mildly less disjointed, and also make sure that the grapple block and grapple platform aren't actually checked off yet
			                	grappled_block = position_meeting(x + k * spr_dir, y - j, asset_get("par_block"));
			                	grappled_platform = position_meeting(x + k * spr_dir, y - j, asset_get("par_jumpthrough"));
			                	grappled_pos = [x + k * spr_dir, y - j];
			                	grappled = 1
		                	}
		                }
	    			}
				} else if (window_timer > get_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME)) {
		    		// Second Hitbox grapple range
	    			for(k = starting_grapple_x; k < grapple_x; k += x_inc) {
		                for (j = starting_grapple_y_2; j > grapple_y_2; j -= y_inc) {
		                	if (((j != starting_grapple_y_2 || k != starting_grapple_x)) && (!grappled_block && !grappled_platform)) {
		                		// Erase corners from being considered in the grapple to make it mildly less disjointed, and also make sure that the grapple block and grapple platform aren't actually checked off yet
			                	grappled_block = position_meeting(x + k * spr_dir, y - j, asset_get("par_block"));
			                	grappled_platform = position_meeting(x + k * spr_dir, y - j, asset_get("par_jumpthrough"));
			                	grappled_pos = [x + k * spr_dir, y - j];
			                	grappled = 2;
		                	}
		                }
	    			}
		    	}
		    	if (grappled_block || grappled_platform) {
	    			sound_play(sound_get("sfx_stinky_steam1"));
	    			spawn_hit_fx(grappled_pos[0], grappled_pos[1], 6);
	    			// If it is grappling a wall or a platform
	    			vsp = -20; // Set vertical speed
	    			hsp += 5 * spr_dir; // Add to horizontal (can let you go weee)
	    			window = 4;
	    			window_timer = 0;
	    			if (grappled == 2) {
	    				reset_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES);
						reset_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START);
	    			} else if (grappled == 1) {
	    				set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
						set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 13);
	    			}
		    	}
		    }
		}
		if (runeM && !free && not_free_time > ustrong_parry_frame) {
			// Makes sure the aerial version doesn't cause shenanigans
			// Rune Buddy code
			if (!runeL) {
				if (window == 2 && window_timer > ustrong_parry_frame - 1) {
					// - 1 because the first frame of parry isn't an actual parry
					set_state(PS_PARRY);
					ustrong_parry = true;
				}
			} else {
				if (window == 2 && window_timer > ustrong_parry_frame/1.5 - 1) {
					// - 1 because the first frame of parry isn't an actual parry
					set_state(PS_PARRY);
					ustrong_parry = true;
				}
			}
		}
		break;
	case AT_FSTRONG:
		if (runeM) {
			// Rune Buddy code
			if (window == 2 && window_timer > fstrong_parry_frame - 1) {
				// - 1 because the first frame of parry isn't an actual parry
				set_state(PS_PARRY);
				fstrong_parry = true;
			}
		}
		break;
	case AT_USPECIAL: // Up Special
		if (window <= 2) {
	        // Can't use it twice in midair
	        if (!runeC) {
	        	// Rune lets you use DSPECIAL after
	        	move_cooldown[AT_DSPECIAL] = 999999;
	        }
	        move_cooldown[AT_USPECIAL] = 999999;
	    }
	    if (vsp >= 0) {
	    	can_wall_jump = true; // Walljump if the move is going down to sweetspot you
	    }
	    if (window <= 2) {
	        // Assures that you can not wiggle until you are falling
	        can_move = false
	        if (window == 2) {
	            //USPECIAL can not go down until endlag
	            if (vsp >= 0) {
	                vsp = 0;
	                hsp = 0 * spr_dir; // Start slowing down horizontal speed
	            }
	        }
	    } else {
	        can_move = true;
	    }
	    if (window == 2) {
	    	if (window_timer > 10 && somersault_charged && vsp < 0) {
	    		// Eases the end of the somersault to make it stop more suddenly
	        	vsp += somersault_easing;
	        }
	    }
	    if (window > 1 && window != 4) {
			// Allow you to pickup NSPECIAL with USPECIAL
	    	with (pHitBox) if (player_id == other && attack == AT_NSPECIAL && hbox_num == 1) {
	    		var sweatwhirl_pickup = self;
		    	if (point_distance(x + 25, y, other.x, other.y - other.char_height) < 30 || point_distance(x + 25, y, other.x, other.y) < 30) || (point_distance(x - 25, y, other.x, other.y - other.char_height) < 30 || point_distance(x - 25, y, other.x, other.y) < 30)  {
			    	// Checks the distance between you and the sweatwhirl because collision won't work
			    	// with levelled sweatwhirls due to small hitbox
			    	other.sweatwhirl_grabbed = true;
			    	other.sweatwhirl_exists = false;
			    	hbox_num = 3; // Delete it
			    	destroyed = true;
			    	destroy_fx = 1; // Makes it die with a little 
			    	with (other) {
			    		// Play a sound and spawn a hit FX where you grabbed that mf
			    		sound_play(sound_get("sfx_stinky_steam2"));
			    		spawn_hit_fx(x + hsp, y - (char_height/2) + vsp, 6);
			    	}
		    	}
	    	}
	    	if (sweatwhirl_grabbed && ((window == 2 && window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH) || window == 3))) {
	    		// Throws the sweatwhirl
	    		destroy_hitboxes();
	    		sweatwhirl_grabbed = false;
	    		window_timer = 0;
	    		window = 4;
	    	}
	    	if (sweatwhirl_grabbed && position_meeting(x + (20 * spr_dir) + hsp, y, asset_get("par_block"))) {
	    		// Checks for collision with walls
	    		instance_create(round(x), round(y), "obj_article1");
        		sweatwhirl_grabbed = false;
        		spawn_hit_fx(x, y, sweatwhirl_fx);
        		sound_play(sound_get("sfx_stinky_steam2"));
	    	}
	    	if (!dspecial_level_2_hit && sweatwhirl_level == 2 && sweatwhirl_grabbed && !hitpause) {
	    		create_hitbox(AT_DSPECIAL, 3, round(x + hsp), round(y + vsp));
	    	}
	    	
	    	if (sweatwhirl_grabbed && sweatwhirl_level == 3 && window_timer % dspecial_level_3_time == 0 && !hitpause && !dspecial_level_3_hit) {
	    		create_hitbox(AT_DSPECIAL, 4, round(x + hsp), round(y + vsp));
	    	}
    	} else if (window == 4) {
    		if (window_timer == throw_frame && !nspecial_thrown) {
    			create_hitbox(AT_DSPECIAL, 5, x, y); // Spike hitbox
    			create_hitbox(AT_NSPECIAL, 1, round(x + (8 * spr_dir) + hsp), round(y + (char_height/2) + vsp)); // Projectile
	    		sound_play(asset_get("sfx_swipe_medium2"));
	    		hsp *= 0.5;
	    		vsp = -8;
	    		nspecial_thrown = true;
	    		sweatwhirl_exists = true;
	    		move_cooldown[AT_FSPECIAL] = 999;
		    	move_cooldown[AT_NSPECIAL] = 999;
		    	sweatwhirl_cooldown_time = get_gameplay_time();
    		}
    	}
    	if (!free && window == 1 && window_timer == window_length) {
        	spawn_hit_fx(x, y, special_splash_fx).depth = depth-10;
        }
	    break;
	case AT_DSPECIAL: // Down Special
		if (window == 1) {
			// Makes it so you can't fast fall before the move even comes out
			can_fast_fall = false;
			if (!free) {
				var direction_held = right_down - left_down;
				if (spr_dir == direction_held * -1) {
					// If you're holding back
					set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 4);
					set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -12);
				} else {
					// If you're holding nothing or forward
					set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 9);
					reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED);
				}
			} else {
				reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED);
				reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED);
			}
		}
	
		if (vsp >= 0) {
	    	can_wall_jump = true; // Walljump if the move is going down to sweetspot you
	    }
	
		if (window <= 2) {
	        // Can't use it twice in midair
            move_cooldown[AT_DSPECIAL] = 999999;
    	}
    	// Hitfalling only on the way back down.
    	if (!runeB) {
	    	if (hitpause) {
	    		if (old_vsp < 0 && window > 1) {
	    			can_fast_fall = false;
	    		}
	    	}
    	} else {
    		can_fast_fall = true;
    	}
    	
    	if (window > 1 && window != 4) {
    		if (inf_steam) {
    			// Vapour lets you jump cancel
    			can_jump = true;
    			can_wall_jump = true;
    		}
    		// Gives the wet particles
    		if (sweatwhirl_grabbed) {
    			set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_PARTICLE_NUM, 1);
    		} else {
    			set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_PARTICLE_NUM, 0);
    		}
    		
	    	// Allow you to pickup NSPECIAL with DSPECIAL
	    	with (pHitBox) if (player_id == other && attack == AT_NSPECIAL && hbox_num == 1) {
	    		var sweatwhirl_pickup = self;
		    	if (point_distance(x + 25, y, other.x, other.y - other.char_height) < 30 || point_distance(x + 25, y, other.x, other.y) < 30) || (point_distance(x - 25, y, other.x, other.y - other.char_height) < 30 || point_distance(x - 25, y, other.x, other.y) < 30)  {
			    	// Checks the distance between you and the sweatwhirl because collision won't work
			    	// with levelled sweatwhirls due to small hitbox
			    	other.sweatwhirl_grabbed = true;
			    	other.sweatwhirl_exists = false;
			    	hbox_num = 3; // Delete it
			    	destroyed = true;
			    	destroy_fx = 1; // Makes it die with a little 
			    	with (other) {
			    		// Play a sound and spawn a hit FX where you grabbed that mf
			    		sound_play(sound_get("sfx_stinky_steam2"));
			    		spawn_hit_fx(x + hsp, y - (char_height/2) + vsp, 6);
			    	}
		    	}
	    	}
	    	if (sweatwhirl_grabbed && ((window == 2 && window_timer == get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH)) || (window == 3 && window_timer == get_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH)))) {
	    		// Reset the window when holding a sweatwhirl
	    		window = 2;
	    		window_timer = get_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME);
	    		sweatwhirl_looped = true;
	    	}
	    	if ((attack_pressed || down_strong_pressed || special_pressed || down_stick_pressed) && sweatwhirl_grabbed) {
	    		// Throws the sweatwhirl
	    		destroy_hitboxes();
	    		sweatwhirl_grabbed = false;
	    		window_timer = 0;
	    		window = 4;
	    	}
	    	if (sweatwhirl_grabbed && position_meeting(x + (20 * spr_dir) + hsp, y, asset_get("par_block"))) {
	    		// Checks for collision with walls
	    		instance_create(round(x), round(y), "obj_article1");
        		sweatwhirl_grabbed = false;
        		spawn_hit_fx(x, y, sweatwhirl_fx);
        		sound_play(sound_get("sfx_stinky_steam2"));
	    	}
	    	
	    	if (!dspecial_level_2_hit && sweatwhirl_level == 2 && sweatwhirl_grabbed && !hitpause) {
	    		create_hitbox(AT_DSPECIAL, 3, round(x + hsp), round(y + vsp));
	    	}
	    	
	    	if (sweatwhirl_grabbed && sweatwhirl_level == 3 && window_timer % dspecial_level_3_time == 0 && !hitpause && !dspecial_level_3_hit) {
	    		create_hitbox(AT_DSPECIAL, 4, round(x + hsp), round(y + vsp));
	    	}
    	} else if (window == 4) {
    		if (window_timer == throw_frame && !nspecial_thrown) {
    			create_hitbox(AT_DSPECIAL, 5, x, y); // Spike hitbox
    			create_hitbox(AT_NSPECIAL, 1, round(x + (8 * spr_dir) + hsp), round(y + (char_height/2) + vsp)); // Projectile
	    		sound_play(asset_get("sfx_swipe_medium2"));
	    		hsp *= 0.5;
	    		vsp = -8;
	    		nspecial_thrown = true;
	    		sweatwhirl_exists = true;
	    		move_cooldown[AT_FSPECIAL] = 999;
		    	move_cooldown[AT_NSPECIAL] = 999;
		    	sweatwhirl_cooldown_time = get_gameplay_time();
    		}
    	}
    	if (!free && window == 1 && window_timer == window_length) {
        	spawn_hit_fx(x, y, special_splash_fx).depth = depth-10;
        }
    	break;
    case AT_NSPECIAL: 
    case AT_FSPECIAL:
    	// Continually reset the cooldown time so it doesn't start until
    	// the move is no longer active
    	if (!runeO) {
    		// Rune Buddy rune J disables this
    		sweatwhirl_cooldown_time = get_gameplay_time();
    	}
	    if (window == 1 && window_timer == 1 && !runeO) {
	    	// Rune Buddy rune J disables this
	        move_cooldown[AT_FSPECIAL] = 999;
		    move_cooldown[AT_NSPECIAL] = 999;
	    }
	    if (window == 2 && window_timer == 1 && vsp > 0) {
	    	if (!runeO || !down_down) {
	        	vsp = sweatwhirl_float_speed;
	    	}
	        grav = sweatwhirl_gravity/2;
	    } else if (window >= 2) {
	        if (window < 3) {
	            grav = sweatwhirl_gravity/2;
	        } else {
	            grav = sweatwhirl_gravity;
	        }
	    }
	    if (spr_dir != sweatwhirl_starting_dir) {
	    	// Make B-reversing cancel the charge
	    	// Sweatwhirl
		    sweatwhirl_charged = false;
		    // FSPECIAL
		    reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH);
		    reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED);
		    reset_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME);
		    reset_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK);
		    reset_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING);
		    reset_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE);
		    reset_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING);
		    reset_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX);
		    // NSPECIAL
		    reset_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH);
		    reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED);
		    reset_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME);
		    reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
		    reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING);
		    reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
		    reset_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING);
		    reset_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX);
		    reset_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX);
	    }
	    if (window > 2 && !was_parried) {
	    	// Make it walljump cancellable to enhance recovery
	    	can_wall_jump = true;
	    }
	    if (!free && window == 1 && window_timer == window_length) {
        	spawn_hit_fx(x, y, special_splash_fx).depth = depth-10;
        }
	    break;
	case AT_TAUNT:
		if (taunt_down && window == 2 && window_timer == get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH)) {
			window_timer = 0;
		}
}

#define trigger_ult_b_reverse

// Let's go Super!

if ((left_down && state_timer <= 5 && spr_dir == 1) || (right_down && state_timer <= 5 && spr_dir == -1) && (attack_has_b_reversed == false)) {
    hsp *= -1;
    spr_dir *= -1;
    attack_has_b_reversed = true;
} else if (state_timer == 6) {
    attack_has_b_reversed = false;
}