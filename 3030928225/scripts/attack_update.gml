//attack_update.gml
//when we want to program in more complex attacks than what the basic attack scripts do, we come here
//this script runs every frame when the player is in an attack state (PS_ATTACK_GROUND, PS_ATTACK_AIR)

//NOTE: to reffer to a window's window_timer == 0, we must take the last frame of the window before
//		example: if (window == 3 && window_timer == window_end) will reffer to window 4, window_timer 0

//B-reverse - it allows the character to turn in while using specials
//B - Reversals
if (attack == AT_FSPECIAL
	|| attack == AT_DSPECIAL
	|| attack == AT_DSPECIAL_AIR)

{
	trigger_b_reverse();
}


// Allow use of previously charged strongs or specials on hit
if (can_stancle) {
    if ((stored_strong_charge >= strong_full_charge_time && !free)
        && (attack != AT_FSTRONG)
        && (attack != AT_DSTRONG)
        && (attack != AT_USTRONG)
        && (attack != AT_USTRONG_2))
    {
        if ((attack != AT_USPECIAL_GROUND)
            || ((window != uspecial_uncharged_hide_window)
                && (window != uspecial_charged_hide_window)))
        {
            can_strong = true;
            can_ustrong = true;
        }
    }
	if ((special_charge >= special_full_charge_time)
		&& (attack != AT_NSPECIAL)
		&& (attack != AT_NSPECIAL_AIR)
		&& (attack != AT_FSPECIAL)
		&& (attack != AT_DSPECIAL)
		&& (attack != AT_DSPECIAL_AIR)
		&& (attack != AT_USPECIAL)
		&& (attack != AT_USPECIAL_GROUND))
	{
		can_special = true;
	}
}

//it's seperate from the switch statement because switch statements always take the later instance of that case
//fair sfx
if attack == AT_FAIR {
    if window == 1 && window_timer == 8 and !hitpause {
        sound_play(sound_get("sfx_Ericcil03"));
    }
}

if attack == AT_DTILT {
    if window == 1 && window_timer == 3 and !hitpause {
    	sound_play(asset_get("sfx_zetter_fireball_fire"), false, noone, 0.7, 1.25);
        sound_play(sound_get("sfx_blade_swipe_delta"), false, noone, 0.7, 0.9);
        sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.7, 1.1);
    }
}

if attack == AT_UTILT {
    if window == 1 && window_timer == 5 and !hitpause {
        sound_play(sound_get("sfx_swing1"));
    }
}

if attack == AT_BAIR {
    if window == 1 && window_timer == 5 and !hitpause {
        sound_play(asset_get("sfx_zetter_fireball_fire"), false, noone, 0.9, 1.25);
    }
    
    if window == 1 && window_timer == 9 and !hitpause {
        sound_play(sound_get("sfx_blade_swipe_delta"), false, noone, 0.7, 0.85);
        sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.8, 1.1);
    }
}
if attack == AT_NSPECIAL {
    if window == 1 && window_timer == 1 and !hitpause {
        sound_play(asset_get("sfx_absa_concentrate"));
    }
}
if attack == AT_NSPECIAL_AIR {
    if window == 1 && window_timer == 1 and !hitpause {
        sound_play(asset_get("sfx_absa_concentrate"));
    }
}

// if attack == AT_USTRONG_2 {
// 	if window == 1 && window_timer == 3 and !hitpause  {
//         sound_play(asset_get("sfx_shovel_swing_med2"));
//     }
	
// }

if attack == AT_UAIR {
    if window == 1 && window_timer == 13 and !hitpause  {
        sound_play(sound_get("sfx_sing"));
    }

    if window == 1 && window_timer == 5 and !hitpause {
        sound_play(asset_get("sfx_pom_ustrong"));
    }
}

if attack == AT_DATTACK {
    if window == 1 && window_timer == 3 and !hitpause {
        sound_play(asset_get("sfx_zetter_fireball_fire"));
        sound_play(asset_get("sfx_zetter_downb"), false, noone, 0.8, 1.1)
    }

    if window == 2 && window_timer == 1 and !hitpause {
        sound_play(asset_get("sfx_ell_drill_loop"));
    }
}

if attack == AT_NAIR {
    if window == 1 && window_timer == 2 and !hitpause {
        sound_play(asset_get("sfx_zetter_fireball_fire"), false, noone, 0.8, 1);
    }

    if window == 1 && window_timer == 6 and !hitpause {
        sound_play(asset_get("sfx_ell_drill_loop"), false, noone, 0.9, 1.05);
        sound_play(asset_get("sfx_zetter_downb"), false, noone, 0.8, 1.1)
    }
}

if attack == AT_JAB {
    if window == 10 && window_timer == 1 and !hitpause {
        sound_play(sound_get("sfx_Ericcil03"));
    }

    if window == 9 && window_timer == 7 and !hitpause {
        sound_play(asset_get("sfx_frog_jab"));
    }
}

if attack == AT_DSTRONG {
	if window == 1 and window_timer == 3 and !hitpause {
		sound_play(asset_get("sfx_forsburn_cape_swipe"), false, noone, 0.8, 1.2);
	}
	
	if window == 4 and window_timer == 3 and !hitpause {
		sound_play(asset_get("sfx_pom_fspecial_swing"), false, noone, 1, 1.2);
	}
	
    if window == 5 && window_timer == 16 and !hitpause {
        sound_play(asset_get("sfx_zetter_fireball_fire"));
    }

    if window == 5 && window_timer == 21 and !hitpause {
        sound_play(asset_get("sfx_zetter_fireball_fire"), false, noone, 0.9, 1.1);
    }
    
    if window == 6 and window_timer == 6 and !hitpause {
    	sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.9, 1.1);
    }
}

if attack == AT_DSPECIAL
	if window == 5 && window_timer == 2 and !hitpause 
		sound_play(asset_get("sfx_syl_nspecial"))
		
if attack == AT_DSPECIAL_AIR
	if window == 4 && window_timer == 8 and !hitpause 
		sound_play(sound_get("sfx_hit4"))

if attack == AT_DSPECIAL_AIR
	if window == 4 && window_timer == 9 and !hitpause 
		sound_play(asset_get("sfx_blow_heavy1"))
		
if attack == AT_FSTRONG {
    if ((window == fstrong_uncharged_window)
    	&& ((window_timer == 9)
    		|| (window_timer == 19))
    		&& !hitpause)
	{
        sound_play(asset_get("sfx_bite"));
    }

    if ((window == fstrong_charged_window)
    	&& ((window_timer == 9)
    		|| (window_timer == 18)
    		|| (window_timer == 27)
    		|| (window_timer == 36)) && !hitpause)
	{
        sound_play(asset_get("sfx_bite"));
    }
}


if attack == AT_USPECIAL {
    // Check if we're touching a wall
    if (window <= uspecial_air_falling_window) {
		// Check for wall in front
		if (place_meeting(x + spr_dir * 1, y, asset_get("par_block"))) {
			window = uspecial_air_burrowed_wall_window;
			window_timer = 0;
			x -= spr_dir * 29;
		}
		// Check for wall behind
		if (place_meeting(x - spr_dir * 1, y, asset_get("par_block"))) {
			spr_dir *= -1;
			window = uspecial_air_burrowed_wall_window;
			window_timer = 0;
			x -= spr_dir * 29;
		}
    }
    
	if (window == uspecial_air_burrowed_wall_window) {
		can_move = false;
		hsp = 0;
		
		// Clamp position
		if (window_timer == 0) {
			spot_found = false;
			var uspecial_limit = 0; // Need to hard cap it or the game may freeze
			// Create a thing to pretend to be us because we have no hurtbox right now
			stand_in = instance_create(x + spr_dir * 70, y - 85, "obj_article1");
			stand_in.spr_dir = spr_dir;
			while (!spot_found) {
				// if there's too much space above, slide down
				with (stand_in) {
					if (place_meeting(x + spr_dir * 70, y, asset_get("par_block"))) {
						//print_debug("Grounded on solid plat");
						other.spot_found = true;
					} else {
						other.y = other.y + 1;
						y = y + 1;
						uspecial_limit++;
					}
				}
				
				if (uspecial_limit >= 100) {
					// Give up
					spot_found = true;
				}
			}
			instance_destroy(stand_in);
		}
	}
    
	if (window == uspecial_air_burrowed_ground_window) {
		can_move = false;
		hsp = 0;
		
		// Clamp position
		if (window_timer == 0) {
			clamp_horizontally(48, 56);
			/*
			spot_found = false;
			var uspecial_limit = 0; // Need to hard cap it or the game may freeze
			// Create a thing to pretend to be us because we have no hurtbox right now
			stand_in = instance_create(x, y + 2, "obj_article1");
			stand_in.spr_dir = spr_dir;
			while (!spot_found) {
				// if there's not enough space behind, slide forward
				with (stand_in) {
					if (place_meeting(x - spr_dir * 48, y + 2, asset_get("par_block"))) {
						//print_debug("Grounded on solid plat");
						other.spot_found = true;
					} else {
						other.x = other.x + spr_dir;
						x = x + spr_dir;
						uspecial_limit++;
					}
				}
				
				if (uspecial_limit >= 100) {
					// Give up
					spot_found = true;
				}
			}
			spot_found = false;
			uspecial_limit = 0;
			stand_in.x = x;
			while (!spot_found) {
				// if there's not enough space in front, slide backward
				with (stand_in) {
					if (place_meeting(x + spr_dir * 56, y + 2, asset_get("par_block"))) {
						//print_debug("Grounded on solid plat");
						other.spot_found = true;
					} else {
						other.x = other.x - spr_dir;
						x = x - spr_dir;
						uspecial_limit++;
					}
				}
				
				if (uspecial_limit >= 100) {
					// Give up
					spot_found = true;
				}
			}
			instance_destroy(stand_in);
			*/
		}
	}
	
    
	
    /*if ((window == uspecial_air_burrowed_ground_window)
    	&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
	{
		if (special_charge_ready && !special_down) {
			// Dangerous emergence
        	sound_play(asset_get("sfx_kragg_rock_pull"));
		} else {
			// emergence with no hitbox
        	sound_play(asset_get("sfx_kragg_rock_pillar"));
		}
    }*/
    
    if ((window == uspecial_air_burrowed_wall_window)
    	&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
	{
		/*if (special_charge_ready && !special_down) {
			// Dangerous emergence
        	sound_play(asset_get("sfx_kragg_rock_pull"));
		} else {
			// emergence with no hitbox
        	sound_play(asset_get("sfx_kragg_rock_pillar"));
		}*/
		
		x += spr_dir * uspecial_dig_wall_default_offset;
		// Search for top of platform
		// Note: gives up after a bit if it's too far
		spot_found = false;
		var uspecial_limit = 0; // Need to hard cap it or the game may freeze
		while (!spot_found) {
			// Move there, then check if it's valid
			// if we're already overlapping a block, keep moving up
			if (place_meeting(x, y, asset_get("par_block"))) {
				y = y - 16;
				uspecial_limit++;
			} else {
				spot_found = true;
			}
			
			if (uspecial_limit >= 100) {
				// Give up
				spot_found = true;
			}
		}
		spot_found = false;
		uspecial_limit = 0; // Need to hard cap it or the game may freeze
		while (!spot_found) {
			// if we're not already overlapping a block, look downward for the ground
			if (place_meeting(x, y + 1, asset_get("par_block"))) {
				//print_debug("Grounded on solid plat");
				spot_found = true;
			} else {
				y = y + 1;
				uspecial_limit++;
			}
			
			if (uspecial_limit >= 100) {
				// Give up
				spot_found = true;
			}
		}
		// Try to move forward a fixed distance
		spot_found = false;
		uspecial_original_x = x;
		/*x += spr_dir * 90;
		placement_option = 10;
		while (!spot_found) {
			if (place_meeting(x, y + 1, asset_get("par_block"))
				&& !place_meeting(x, y - 5, asset_get("par_block")))
			{
				//print_debug("Grounded on solid plat");
				spot_found = true;
			}
			
	        //print_debug("Did we find it?");
		    if (!spot_found) {
		        //print_debug("Spot not found yet");
		        if (placement_option <= 0) {
		            //print_debug("Give up - overlap");
		            spot_found = true;
		        }
		        x = uspecial_original_x + 10 * placement_option * spr_dir;
		    }
		    placement_option--;
		}*/
    }
}

if attack == AT_USPECIAL_GROUND {
	if ((window == uspecial_windup_window)
		|| (window == uspecial_uncharged_dig_window)
		|| (window == uspecial_charged_dig_window))
	{
		// Clamp position
		if (window_timer == 1) {
			clamp_horizontally(80, 10);
		}
	}
	
    if ((window == uspecial_uncharged_hide_window)
    	&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
	{
		if (special_charge < special_full_charge_time) {
			special_charge = 0;
		}
		// emergence with no hitbox
        sound_play(asset_get("sfx_kragg_rock_pillar"));
    }
    
    if ((window == uspecial_charged_hide_window)
    	&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
	{
		if (((special_charge >= special_full_charge_time) && special_down && uspecial_hold_to_consume)
			|| ((special_charge >= special_full_charge_time) && !special_down && !uspecial_hold_to_consume))
		{
			// emergence with no hitbox
        	sound_play(asset_get("sfx_kragg_rock_pillar"));
		} else {
			special_charge = 0;
			// Dangerous emergence
        	sound_play(asset_get("sfx_kragg_rock_pull"));
		}
    }

    if ((window == uspecial_charged_rise_window) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
    	// Coffin breaking
        sound_play(asset_get("sfx_kragg_spike"));
    }
}


//ftilt rekka 
if attack == AT_FTILT {
	if (window == 3 )
	{
		if ((attack_pressed and (right_down - left_down = spr_dir)) or (right_stick_pressed - left_stick_pressed = spr_dir))
	    {
	    	window += 1;
	        window_timer = 0;
	    }
	}
    if window == 4
    {
    	if (window_timer == 2)
    	{
	    	if (!hitpause)
	        sound_play(asset_get("sfx_zetter_fireball_fire"));
    	}
    }
    
}

if (attack == AT_USPECIAL) {//I know this was just coded in last night but i removed it due to it having a really weird bug with the hitboxes of uspecial that caused it to bounce everytime it hits someone so i just mainually did everything in the uspecial file to get the same result without the bug. so sorry 
	fall_through = true;    // No prob, all good : )
}

// Section for uspecial reappearance determination, can be messed up if we do it after the state adjustment in the following section
if (((attack == AT_USPECIAL_GROUND)
	 && ((window == uspecial_uncharged_hide_window)
		  || (window == uspecial_charged_hide_window))
	 && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))))
	//|| ((attack == AT_USPECIAL)
	//	&& ((window == uspecial_air_burrowed_ground_window)
	//		|| (window == uspecial_air_burrowed_wall_window))
	//	&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))))
{
	//print_debug("Make the emergence determination");
	uspecial_original_x = x;
	// Find the best place to appear, given where we are/started
	spot_found = false;
	uspecial_dig_distance = uspecial_dig_distance_max;
	//space_between_parts = max_space_between_parts;
	num_placement_options = floor(uspecial_dig_distance / 10);
	placement_option = num_placement_options;
	// Check if we're holding a direction
	chosen_dir = 0;
	if ((left_down && !right_down)
		|| (!left_down && right_down))
	{
		if (left_down) {
			uspecial_dig_distance *= -1;
			chosen_dir = -1;
		} else if (right_down) {
			chosen_dir = 1;
		} else {
			// Should never reach here
			uspecial_dig_distance = 0;
		}
	} else {
		// not holding a direction or holding both directions
		uspecial_dig_distance = 0;
	}
	
	// Move there, then check for a floor
	x = uspecial_original_x + uspecial_dig_distance;
	
	while (!spot_found) {
		if (place_meeting(x, y + 1, asset_get("par_block"))
			&& !place_meeting(x, y - 5, asset_get("par_block")))
		{
			//print_debug("Grounded on solid plat");
			spot_found = true;
		}
		
        //print_debug("Did we find it?");
	    if (!spot_found) {
	        //print_debug("Spot not found yet");
	        if (placement_option <= 0) {
	            //print_debug("Give up - overlap");
	            spot_found = true;
	        }
	        x = uspecial_original_x + 10 * placement_option * chosen_dir;
	    }
	    placement_option--;
	}
	
	clamp_horizontally(50, 50);
}

if(attack == AT_USPECIAL){
	if(window <= uspecial_air_falling_window){
		if(shield_pressed or shield_down){
			attack_end();
			set_state(PS_PRATFALL);
			vsp = -5;
			hsp *= 0.8;
		}
	}
}

// This switch block is for strong/special interactions based on ability to be charged
var any_strong_down = strong_down || up_strong_down || down_strong_down || left_strong_down  || right_strong_down;
switch (attack) {
	case AT_FSTRONG :
		off_edge = false;
		//print("strong charge = " + string(strong_charge));
		if (stored_strong_charge > strong_charge) {
			strong_charge = stored_strong_charge;
		} else if ((strong_charge >= stored_strong_charge) && (window <= fstrong_charging_window)) {
			stored_strong_charge = strong_charge;
		}
		// Skip initial charge window if charge is ready
		if ((window == fstrong_windup_window)
			&& (window_timer == 1))
		{
			current_charge_time = max_charge_time;
			if (strong_charge >= strong_full_charge_time) {
				must_complete_attack = true;
				// Play the 'consuming charge' sound
				sound_play(charge_consume_sound);
				charge_flash_cooldown = charge_flash_cooldown_max;
				strong_charge = 0;
				stored_strong_charge = 0;
			} else {
				must_complete_attack = false;
			}
		}
		
		if (window <= fstrong_bonus_charging_window) {
			strong_charge_interrupted = true;
		} else {
			strong_charge_interrupted = false;
		}
		
		fully_charged = (strong_charge >= strong_full_charge_time);

		if ((window == fstrong_windup_window)
			&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
			&& (must_complete_attack || !any_strong_down))
		{
			if (must_complete_attack) {
				window = fstrong_charged_window;
				stored_strong_charge = 0;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_bite"));
			} else {
				window = fstrong_uncharged_window;
				stored_strong_charge = 0;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_bite"));
			}
		} else if (window < fstrong_bonus_charging_window) {
			if (shield_pressed) {
				// Perform 'stancle' animation, different from stancle
				smash_charging = false;
				stored_strong_charge = strong_charge;
				strong_charge = 0;
				window = fstrong_stancel_window;
				window_timer = 0;
			}
		} else if (window == fstrong_bonus_charging_window) {
			if (fully_charged) {
				if ((window_timer == 1) && !must_complete_attack) {
					// Play the 'done charging' sound the first time we reach this part
					sound_play(charge_sound);
					charge_flash_cooldown = charge_flash_cooldown_max;
 				}
			}
			if (!fully_charged) {
				window = fstrong_uncharged_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_bite"));
			} else if (any_strong_down && !must_complete_attack && (current_charge_time > 0)) {
				// Store charge by pressing parry
				if (shield_pressed) {
					// Perform 'stancle' animation, different from stancle
					stored_strong_charge = strong_charge;
					strong_charge = 0;
					window = fstrong_stancel_window;
					window_timer = 0;
				} else if (!must_complete_attack) {
					// Loop in this window while the button is held down
					// Can't just use a loop type because it's incompatible with attacks using strong charge
					if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
						window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) - 1;
					}
				}
			} else {
				window = fstrong_charged_window;
				stored_strong_charge = 0;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_bite"));
			}
		}

		// Jump to correct recovery window if uncharged
		if ((window == fstrong_uncharged_window) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
			window = fstrong_recovery_window;
			window_timer = 0;
		}
		break;
	case AT_USTRONG :
		off_edge = false;
		//print("strong charge = " + string(strong_charge));
		if (stored_strong_charge > strong_charge) {
			strong_charge = stored_strong_charge;
		} else if ((strong_charge >= stored_strong_charge) && (window <= fstrong_charging_window)) {
			stored_strong_charge = strong_charge;
		}
		// Skip initial charge window if charge is ready
		if ((window == ustrong_windup_window)
			&& (window_timer == 1))
		{
			current_charge_time = max_charge_time;
			if (strong_charge >= strong_full_charge_time) {
				was_fully_charged = true;
				must_complete_attack = true;
				// Play the 'consuming charge' sound
				sound_play(charge_consume_sound);
				charge_flash_cooldown = charge_flash_cooldown_max;
				strong_charge = 0;
				stored_strong_charge = 0;
			} else {
				was_fully_charged = false;
				must_complete_attack = false;
			}
		}
		
		if (window <= ustrong_bonus_charging_window) {
			strong_charge_interrupted = true;
		} else {
			strong_charge_interrupted = false;
		}
		
		fully_charged = (strong_charge >= strong_full_charge_time);

		if ((window == ustrong_windup_window)
			&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
			&& (must_complete_attack || !any_strong_down))
		{
			if (must_complete_attack) {
				set_attack(AT_USTRONG_2);
				window = ustrong_charged_window;
				stored_strong_charge = 0;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_zetter_fireball_fire"));
			} else {
				set_attack(AT_USTRONG_2);
				window = ustrong_uncharged_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_swipe_heavy1"));
			}
		} else if (window < ustrong_bonus_charging_window) {
			if (shield_pressed) {
				// Perform 'stancle' animation, different from stancle
				smash_charging = false;
				stored_strong_charge = strong_charge;
				strong_charge = 0;
				window = ustrong_stancel_window;
				window_timer = 0;
			}
		} else if (window == ustrong_bonus_charging_window) {
			if (fully_charged) {
				was_fully_charged = true;
				if ((window_timer == 1) && !must_complete_attack) {
					// Play the 'done charging' sound the first time we reach this part
					sound_play(charge_sound);
					charge_flash_cooldown = charge_flash_cooldown_max;
 				}
			}
			if (!fully_charged) {
				set_attack(AT_USTRONG_2);
				window = ustrong_uncharged_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_swipe_heavy1"));
			} else if (any_strong_down && !must_complete_attack && (current_charge_time > 0)) {
				// Store charge by pressing parry
				if (shield_pressed) {
					// Perform 'stancle' animation, different from stancle
					stored_strong_charge = strong_charge;
					strong_charge = 0;
					window = ustrong_stancel_window;
					window_timer = 0;
				} else if (!must_complete_attack) {
					// Loop in this window while the button is held down
					// Can't just use a loop type because it's incompatible with attacks using strong charge
					if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
						window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) - 1;
					}
				}
			} else {
				set_attack(AT_USTRONG_2);
				window = ustrong_charged_window;
				stored_strong_charge = 0;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_zetter_fireball_fire"));
			}
		}
		break;
	case AT_USTRONG_2 :
		// If in the air, allow wall-jump cancel
		if (free) {
			can_wall_jump = true;
		}
	
		// Jump to correct recovery window if uncharged
		if (((window == ustrong_uncharged_final_window) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
			|| (!free && ((window == ustrong_uncharged_final_window)
						  || (window == ustrong_charged_final_window))))
		{
			window = ustrong_recovery_window;
			stored_strong_charge = 0;
			window_timer = 0;
		}
		break;
	case AT_DSTRONG :
		off_edge = false;
		//print("strong charge = " + string(strong_charge));
		if (stored_strong_charge > strong_charge) {
			strong_charge = stored_strong_charge;
		} else if ((strong_charge >= stored_strong_charge) && (window <= fstrong_charging_window)) {
			stored_strong_charge = strong_charge;
		}
		// Skip initial charge window if charge is ready
		if ((window == dstrong_windup_window)
			&& (window_timer == 1))
		{
			current_charge_time = max_charge_time;
			if (strong_charge >= strong_full_charge_time) {
				must_complete_attack = true;
				// Play the 'consuming charge' sound
				sound_play(charge_consume_sound);
				charge_flash_cooldown = charge_flash_cooldown_max;
				strong_charge = 0;
				stored_strong_charge = 0;
			} else {
				must_complete_attack = false;
			}
		}
		
		if (window <= dstrong_bonus_charging_window) {
			strong_charge_interrupted = true;
		} else {
			strong_charge_interrupted = false;
		}
		
		fully_charged = (strong_charge >= strong_full_charge_time);

		if ((window == dstrong_windup_window)
			&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
			&& (must_complete_attack || !any_strong_down))
		{
			if (must_complete_attack) {
				window = dstrong_charged_window;
				stored_strong_charge = 0;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_zetter_fireball_fire"));
			} else {
				window = dstrong_uncharged_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_zetter_fireball_fire"));
			}
		} else if (window < dstrong_bonus_charging_window) {
			if (shield_pressed) {
				// Perform 'stancle' animation, different from stancle
				smash_charging = false;
				stored_strong_charge = strong_charge;
				strong_charge = 0;
				window = dstrong_stancel_window;
				window_timer = 0;
			}
		} else if (window == dstrong_bonus_charging_window) {
			if (fully_charged) {
				if ((window_timer == 1) && !must_complete_attack) {
					// Play the 'done charging' sound the first time we reach this part
					sound_play(charge_sound);
					charge_flash_cooldown = charge_flash_cooldown_max;
 				}
			}
			if (!fully_charged) {
				window = dstrong_uncharged_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_zetter_fireball_fire"));
			} else if (any_strong_down && !must_complete_attack && (current_charge_time > 0)) {
				// Store charge by pressing parry
				if (shield_pressed) {
					// Perform 'stancle' animation, different from stancle
					stored_strong_charge = strong_charge;
					strong_charge = 0;
					window = dstrong_stancel_window;
					window_timer = 0;
				} else if (!must_complete_attack) {
					// Loop in this window while the button is held down
					// Can't just use a loop type because it's incompatible with attacks using strong charge
					if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
						window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) - 1;
					}
				}
			} else {
				window = dstrong_charged_window;
				stored_strong_charge = 0;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_zetter_fireball_fire"));
			}
		}

		// Jump to correct recovery window if uncharged
		if ((window == dstrong_uncharged_window) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
			window = dstrong_recovery_window;
			stored_strong_charge = 0;
			window_timer = 0;
		}
		break;
	case AT_NSPECIAL :
		off_edge = false;
		// Skip initial charge window if charge is ready
		if ((window == nspecial_windup_window)
			&& (window_timer == 1))
		{
			current_charge_time = max_charge_time;
			//special_charge = 0;
			if (special_charge >= special_full_charge_time) {
				//special_charge = special_full_charge_time;
				must_complete_attack = true;
				special_charge = 0;
				super_armor_available = true;
				// Play the 'consuming charge' sound
				sound_play(charge_consume_sound);
				charge_flash_cooldown = charge_flash_cooldown_max;
				special_charge = 0;
			} else {
				must_complete_attack = false;
				super_armor_available = false;
			}
		}
		
		if (window <= nspecial_bonus_charging_window) {
			special_charge_interrupted = true;
		} else {
			special_charge_interrupted = false;
		}
		
		if ((special_charge < special_full_charge_time)
			&& (window == nspecial_charging_window))
		{
			special_charge++;
		}
		
		fully_charged = (special_charge == special_full_charge_time);
		
		if ((fully_charged) && (window == nspecial_bonus_charging_window)) {
			super_armor_available = true;
		}
		
		if ((window == nspecial_uncharged_window) || (window == nspecial_charged_window)) {
			special_charge = 0;
		}

		if ((window == nspecial_windup_window)
			&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
			&& (must_complete_attack || !special_down))
		{
			if (must_complete_attack) {
				window = nspecial_charged_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_zetter_fireball_fire"));
			} else {
				window = nspecial_uncharged_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_zetter_fireball_fire"));
			}
		} else if (window < nspecial_bonus_charging_window) {
			charge_signalled = false;
			if (shield_pressed) {
				// Perform 'stancle' animation, different from stancle
				smash_charging = false;
				//special_charge = 0;
				window = nspecial_stancel_window;
				window_timer = 0;
			} else if (window == nspecial_charging_window) {
				// Move on to the next window if button released or enough charge has built up
				if (!special_down || fully_charged || must_complete_attack) {
					window = nspecial_bonus_charging_window;
					window_timer = 0;
				}
			}
		} else if (window == nspecial_bonus_charging_window) {
			if (fully_charged) {
				if ((window_timer == 1) && !must_complete_attack && !charge_signalled) {
					// Play the 'done charging' sound the first time we reach this part
					sound_play(charge_sound);
					charge_flash_cooldown = charge_flash_cooldown_max;
					charge_signalled = true;
 				}
			}
			if (!fully_charged) {
				window = nspecial_uncharged_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_zetter_fireball_fire"));
			} else if (special_down && !must_complete_attack && (current_charge_time > 0)) {
				// Store charge by pressing parry
				if (shield_pressed) {
					// Perform 'stancle' animation, different from stancle
					window = nspecial_stancel_window;
					window_timer = 0;
				} else if (!must_complete_attack) {
					// Loop in this window while the button is held down
					if (!special_down && (current_charge_time > 0)) {
						window++;
						window_timer = 0;
					}
					// Loop in this window while the button is held down
					// Could use a loop type but let's nto to stay consistent
					if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
						window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) - 1;
					}
				}
			} else {
				window = nspecial_charged_window;
				special_charge = 0;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_zetter_fireball_fire"));
			}
		}

		//print_debug("super_armor_available = " + string(super_armor_available) + ", super_armor = " + string(super_armor));
		//print_debug("window = " + string(window) + ", window_timer = " + string(window_timer) + ", must_complete_attack = " + string(must_complete_attack));
		//print_debug("fully_charged = " + string(fully_charged) + ", special_charge = " + string(special_charge));

		if (super_armor_available
			&& (window != nspecial_recovery_window)
			&& ((window == nspecial_windup_window) || (window == nspecial_charged_window)))
		{
			super_armor = true;
		} else {
			super_armor = false;
		}

		if (window == nspecial_recovery_window) {
			super_armor_available = false;
		}

		/*// Go idle after 
		if ((window == nspecial_stancel_window) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
			if (free) {
				set_state(PS_IDLE_AIR)
			} else {
				set_state(PS_IDLE)
			}
		}*/

		// Jump to correct recovery window if uncharged
		if ((window == nspecial_uncharged_window) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
			window = nspecial_recovery_window;
			window_timer = 0;
		}
		break;
	case AT_NSPECIAL_AIR :
		off_edge = false;
		// Skip initial charge window if charge is ready
		if ((window == nspecial_air_windup_window)
			&& (window_timer == 1))
		{
			current_charge_time = max_charge_time;
			//special_charge = 0;
			if (special_charge >= special_full_charge_time) {
				//special_charge = special_full_charge_time;
				must_complete_attack = true;
				special_charge = 0;
				super_armor_available = true;
				// Play the 'consuming charge' sound
				sound_play(charge_consume_sound);
				charge_flash_cooldown = charge_flash_cooldown_max;
				special_charge = 0;
			} else {
				must_complete_attack = false;
				super_armor_available = false;
			}
		}
		
		if (window <= nspecial_air_bonus_charging_window) {
			special_charge_interrupted = true;
		} else {
			special_charge_interrupted = false;
		}
		
		if ((special_charge < special_full_charge_time)
			&& (window == nspecial_air_charging_window))
		{
			special_charge++;
		}
		
		fully_charged = (special_charge == special_full_charge_time);
		if ((fully_charged) && (window == nspecial_air_bonus_charging_window)) {
			super_armor_available = true;
		}
		
		if ((window == nspecial_air_uncharged_window) || (window == nspecial_air_charged_window)) {
			special_charge = 0;
		}

		if ((window == nspecial_air_windup_window)
			&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
			&& (must_complete_attack || !special_down))
		{
			if (must_complete_attack) {
				window = nspecial_air_charged_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_zetter_fireball_fire"));
			} else {
				window = nspecial_air_uncharged_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_zetter_fireball_fire"));
			}
		} else if (window < nspecial_air_bonus_charging_window) {
			if (shield_pressed && !must_complete_attack) {
				// Perform 'stancle' animation, different from stancle
				smash_charging = false;
				//special_charge = 0;
				window = nspecial_air_stancel_window;
				window_timer = 0;
			} else if (window == nspecial_air_charging_window) {
				// Move on to the next window if button released or enough charge has built up
				if (!special_down || fully_charged || must_complete_attack) {
					window = nspecial_air_bonus_charging_window;
					window_timer = 0;
				}
			}
		} else if (window == nspecial_air_bonus_charging_window) {
			if (fully_charged) {
				if ((window_timer == 1) && !must_complete_attack) {
					// Play the 'done charging' sound the first time we reach this part
					sound_play(charge_sound);
					charge_flash_cooldown = charge_flash_cooldown_max;
 				}
			}
			if (!fully_charged) {
				window = nspecial_air_uncharged_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_zetter_fireball_fire"));
			} else if (special_down && !must_complete_attack && (current_charge_time > 0)) {
				// Store charge by pressing parry
				if (shield_pressed) {
					// Perform 'stancle' animation, different from stancle
					window = nspecial_air_stancel_window;
					window_timer = 0;
				} else if (!must_complete_attack) {
					// Loop in this window while the button is held down
					if (!special_down && (current_charge_time > 0)) {
						window++;
						window_timer = 0;
					}
					// Loop in this window while the button is held down
					// Could use a loop type but let's nto to stay consistent
					if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
						window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) - 1;
					}
				}
			} else {
				window = nspecial_air_charged_window;
				special_charge = 0;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_zetter_fireball_fire"));
			}
		}

		//print_debug("super_armor_available = " + string(super_armor_available) + ", super_armor = " + string(super_armor));
		//print_debug("window = " + string(window) + ", window_timer = " + string(window_timer) + ", must_complete_attack = " + string(must_complete_attack));
		//print_debug("fully_charged = " + string(fully_charged) + ", special_charge = " + string(special_charge));

		if (super_armor_available
			&& (window != nspecial_air_recovery_window)
			&& ((window == nspecial_air_windup_window) || (window == nspecial_air_charged_window)))
		{
			super_armor = true;
		} else {
			super_armor = false;
		}

		if (window == nspecial_air_recovery_window) {
			super_armor_available = false;
		}

		/*// Go idle after 
		if ((window == nspecial_air_stancel_window) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
			if (free) {
				set_state(PS_IDLE_AIR)
			} else {
				set_state(PS_IDLE)
			}
		}*/

		// Jump to correct recovery window if uncharged
		if ((window == nspecial_air_uncharged_window) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
			window = nspecial_air_recovery_window;
			window_timer = 0;
		}
		break;
	case AT_FSPECIAL :
		//print_debug("state_timer in fspecial = " + string(state_timer));
		off_edge = false;
		stun_counter = fspecial_stun_time;
		// Skip initial charge window if charge is ready
		if ((window == fspecial_windup_window)
			&& (window_timer == 1))
		{
			current_charge_time = max_charge_time;
			//special_charge = 0;
			fspecial_caught_one = false;
			let_everyone_go();
			returning_empty_handed_in_last_frames = false; // only use to set visual state
			end_reeling_immediately = false;
			harpoon_parried = false;
			if (special_charge >= special_full_charge_time) {
				//special_charge = special_full_charge_time;
				must_complete_attack = true;
				// Play the 'consuming charge' sound
				sound_play(charge_consume_sound);
				charge_flash_cooldown = charge_flash_cooldown_max;
				special_charge = 0;
			} else {
				must_complete_attack = false;
			}
		}
		
		if (window <= fspecial_bonus_charging_window) {
			special_charge_interrupted = true;
		} else {
			special_charge_interrupted = false;
		}
		
		if ((special_charge < special_full_charge_time)
			&& (window == fspecial_charging_window))
		{
			special_charge++;
		}
		
		fully_charged = (special_charge == special_full_charge_time);
		
		if ((window == fspecial_uncharged_window) || (window == fspecial_charged_window)) {
			special_charge = 0;
		}

		/*if (harpoon_parried) {
			window = fspecial_recovery_window + 1;
			window_timer = 0;
			print_debug("harpoon has been parried, detected in attack_update");
			if ((grab_hitbox != noone)
				&& (instance_exists(grab_hitbox)))
			{
				grab_hitbox.destroyed = true;
			}
		}*/

		if ((window == fspecial_windup_window)
			&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
			&& (must_complete_attack || !special_down))
		{
			if (must_complete_attack) {
				window = fspecial_charged_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_swipe_medium1"));
			} else {
				window = fspecial_uncharged_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_swipe_medium1"));
			}
		} else if (window < fspecial_bonus_charging_window) {
			charge_signalled = false;
			if (shield_pressed && !must_complete_attack) {
				// Perform 'stancle' animation, different from stancle
				smash_charging = false;
				//special_charge = 0;
				window = fspecial_stancel_window;
				window_timer = 0;
			} else if (window == fspecial_charging_window) {
				// Move on to the next window if button released or enough charge has built up
				if (!special_down || fully_charged || must_complete_attack) {
					window = fspecial_bonus_charging_window;
					window_timer = 0;
				}
			}
		} else if (window == fspecial_bonus_charging_window) {
			if (fully_charged) {
				if ((window_timer == 1) && !must_complete_attack && !charge_signalled) {
					// Play the 'done charging' sound the first time we reach this part
					sound_play(charge_sound);
					charge_flash_cooldown = charge_flash_cooldown_max;
					charge_signalled = true;
 				}
			}
			if (!fully_charged) {
				window = fspecial_uncharged_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_swipe_medium1"));
			} else if (special_down && !must_complete_attack && (current_charge_time > 0)) {
				// Store charge by pressing parry
				if (shield_pressed) {
					// Perform 'stancle' animation, different from stancle
					window = fspecial_stancel_window;
					window_timer = 0;
				} else if (!must_complete_attack) {
					// Loop in this window while the button is held down
					if (!special_down && (current_charge_time > 0)) {
						window++;
						window_timer = 0;
					}
					// Loop in this window while the button is held down
					// Could use a loop type but let's nto to stay consistent
					if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
						window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) - 1;
					}
				}
			} else {
				window = fspecial_charged_window;
				special_charge = 0;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_swipe_medium1"));
			}
		} else if (fspecial_caught_one && (window < fspecial_reel_hit_window)) {
			window = fspecial_reel_hit_window;
			window_timer = 0;
		}
		
		//print_debug("window = " + string(window) + ", end_reeling_immediately = " + string(end_reeling_immediately));
		
		if (window == fspecial_reel_hit_window) {
			// If the harpoon is active, wait for it to return
			if ((grab_hitbox != noone)
				&& (instance_exists(grab_hitbox))
				&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
			{
				window_timer--;
			}
			
			if (end_reeling_immediately
				|| (grab_hitbox == noone)
				|| !instance_exists(grab_hitbox))
			{
				window = fspecial_recovery_hit_window;
				window_timer = 0;
				end_reeling_immediately = false;
				// Landed a hook, put the move on enough cooldown to prevent spamming
				move_cooldown[attack] = 40;
				//let_everyone_go();
			}
		}
		
		// Hold the thrown pose if the hitbox is active and hasn't grabbed anyone
		if (((window == fspecial_uncharged_throw_window)
			 || (window == fspecial_charged_throw_window))
			&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
		{
			if (returning_empty_handed_in_last_frames) {
				window = fspecial_recovery_window;
				window_timer = 0;
			}
			
			// If the harpoon is active, wait for it to return
			if ((grab_hitbox != noone)
				&& (instance_exists(grab_hitbox)))
			{
				window_timer--;
			}
		}
		
		if ((window == fspecial_recovery_window)
			&& (end_reeling_immediately
				|| (grab_hitbox == noone)
				|| !instance_exists(grab_hitbox)))
		{
			window++;
			window_timer = 0;
			end_reeling_immediately = false;
			//let_everyone_go();
		}

		// Jump to correct recovery window if uncharged
		if ((window == fspecial_uncharged_throw_window) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
			window = fspecial_recovery_window;
			window_timer = 0;
		}

		break;
	case AT_DSPECIAL :
		// Skip initial charge window if charge is ready
		if ((window == dspecial_windup_window)
			&& (window_timer == 1))
		{
			current_charge_time = max_charge_time;
			//special_charge = 0;
			begin_reeling = false;
			begin_return = false;
			//tail_active = false;
			if (special_charge >= special_full_charge_time) {
				//special_charge = special_full_charge_time;
				must_complete_attack = true;
				// Play the 'consuming charge' sound
				sound_play(charge_consume_sound);
				charge_flash_cooldown = charge_flash_cooldown_max;
				special_charge = 0;
			} else {
				must_complete_attack = false;
			}
		}
		
		if (window <= dspecial_bonus_charging_window) {
			special_charge_interrupted = true;
		} else {
			special_charge_interrupted = false;
		}
		
		if ((special_charge < special_full_charge_time)
			&& (window == dspecial_charging_window))
		{
			special_charge++;
		}
		
		fully_charged = (special_charge == special_full_charge_time);
		
		if ((window == dspecial_uncharged_window) || (window == dspecial_charged_window)) {
			special_charge = 0;
		}

		if ((window == dspecial_windup_window)
			&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
			&& (must_complete_attack || !special_down))
		{
			if (must_complete_attack) {
				window = dspecial_charged_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_swipe_medium1"));
			} else {
				window = dspecial_uncharged_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_swipe_medium1"));
			}
		} else if (window < dspecial_bonus_charging_window) {
			charge_signalled = false;
			if (shield_pressed && !must_complete_attack) {
				// Perform 'stancle' animation, different from stancle
				smash_charging = false;
				//special_charge = 0;
				window = dspecial_stancel_window;
				window_timer = 0;
			} else if (window == dspecial_charging_window) {
				// Move on to the next window if button released or enough charge has built up
				if (!special_down || fully_charged || must_complete_attack) {
					window = dspecial_bonus_charging_window;
					window_timer = 0;
				}
			}
		} else if (window == dspecial_bonus_charging_window) {
			if (fully_charged) {
				if ((window_timer == 1) && !must_complete_attack && !charge_signalled) {
					// Play the 'done charging' sound the first time we reach this part
					sound_play(charge_sound);
					charge_flash_cooldown = charge_flash_cooldown_max;
					charge_signalled = true;
 				}
			}
			if (!fully_charged) {
				window = dspecial_uncharged_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_swipe_medium1"));
			} else if (special_down && !must_complete_attack && (current_charge_time > 0)) {
				// Store charge by pressing parry
				if (shield_pressed) {
					// Perform 'stancle' animation, different from stancle
					window = dspecial_stancel_window;
					window_timer = 0;
				} else if (!must_complete_attack) {
					// Loop in this window while the button is held down
					if (!special_down && (current_charge_time > 0)) {
						window++;
						window_timer = 0;
					}
					// Loop in this window while the button is held down
					// Could use a loop type but let's nto to stay consistent
					if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
						window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) - 1;
					}
				}
			} else {
				window = dspecial_charged_window;
				special_charge = 0;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_swipe_medium1"));
			}
		}/* else if (dspecial_caught_one && (window < dspecial_reel_hit_window)) {
			window = dspecial_reel_hit_window;
			window_timer = 0;
		}*/
		
		//print_debug("window = " + string(window) + ", begin_reeling = " + string(begin_reeling));
		
		//print_debug("window = " + string(window) + "window_timer = " + string(window_timer));
		if (window == dspecial_hold_window) {
			// If the tail is active, wait to be signalled
			//print_debug("waiting for signal");
			if (!begin_reeling
				&& (((dspecial_tail_article != noone) && (instance_exists(dspecial_tail_article)))
					&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))))
			{
				window_timer--;
			}
		}
		
		if (window == dspecial_reeling_window) {
			//print_debug("pulling");
			if (!begin_return) {
				begin_return = true;
				// Find the end piece and tell it to return
				with (asset_get("obj_article1")) {
					if (other.id == player_id) {
						begin_return = true;
					}
				}
			}
			// If the tail is active, wait for it to return
			if (((dspecial_tail_article != noone) && (instance_exists(dspecial_tail_article)))
				&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
			{
				window_timer--;
			}
		}
		
		// Hold the thrown pose if the tail is active
		/*if (((window == dspecial_uncharged_throw_window)
			 || (window == dspecial_charged_throw_window))
			&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
		{
			// If the tail is active, wait for it to return
			if (((dspecial_tail_article != noone) && (instance_exists(dspecial_tail_article)))) {
				window_timer--;
			}
		}*/
		
		/*if (((window == dspecial_reel_windup_window)
			 || (window == dspecial_reeling_window))
			&& (end_reeling_immediately
				|| !tail_active))
		{
			window++;
			window_timer = 0;
			end_reeling_immediately = false;
			//let_everyone_go();
		}*/

		// Jump to correct recovery window if uncharged
		if ((window == dspecial_uncharged_throw_window) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
			window = dspecial_hold_window;
			window_timer = 0;
		}

		break;
	case AT_DSPECIAL_AIR :
		if (((window >= dspecial_air_charged_window) && (window <= dspecial_air_kick_flip_window)) || (window == dspecial_air_charged_recovery_window)) {
			off_edge = false;
		}
		
		// If in the air, allow wall-jump cancel
		if (free) {
			can_wall_jump = true;
		}
		// Prevent opponents from escaping grab
		stun_counter = fspecial_stun_time;
		
		if ((window == dspecial_air_windup_window)
			&& (window_timer == 1))
		{
			must_complete_attack = false;
			dspecial_caught_one = false;
			if (special_charge >= special_full_charge_time) {
				must_complete_attack = true;
				// Play the 'consuming charge' sound
				sound_play(charge_consume_sound);
				charge_flash_cooldown = charge_flash_cooldown_max;
				special_charge = 0;
			} else {
				// Don't do this on uncharged version or you end the 'stunned' state
				let_everyone_go();
			}
		}
	
		// Loop until you touch the ground
		if (window == dspecial_air_diving_window) {
			// If we hit the ground, move to the next window
			if (!free) {
				if (must_complete_attack && dspecial_caught_one) {
					window = dspecial_air_charged_window;
					window_timer = 0;
				} else {
					window = dspecial_air_recovery_window;
					window_timer = 0;
				}
			} else {
				//Otherwise, loop the diving animation
				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
					window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) - dspecial_air_looping_duration;
				}
			}
		}

		// Jump to correct recovery window if charged
		if ((window == dspecial_air_kick_flip_window) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
			window = dspecial_air_charged_recovery_window;
			window_timer = 0;
		}
        if (window == 2) {
        	if (window_timer == 1) {
        		dspecial_dive_time = 0;
        	}
        	dspecial_dive_time++;
        }
    	if ((window == 2)
    		&& (dspecial_dive_time > 15)
    		&& !dspecial_caught_one)
		{
    		if (dspecial_dive_time == 16) {
    			white_flash_cooldown = charge_flash_cooldown_max;
    			sound_play(asset_get("sfx_burnend"));
    		}
	        can_jump = true
	        can_shield = true
        }
		break;
	case AT_USPECIAL :
		if ((window == uspecial_start_window)
			&& (window_timer == 1))
					can_fast_fall = false;
		{
			current_charge_time = max_charge_time;
			//special_charge = 0;
			if (special_charge >= special_full_charge_time) {
				//special_charge = special_full_charge_time;
				must_complete_attack = true;
				if (this_attack_was_the_result_of_a_cancel) {
					// Play the 'consuming charge' sound
					sound_play(charge_consume_sound);
					charge_flash_cooldown = charge_flash_cooldown_max;
					special_charge = 0;
				}
			} else {
				must_complete_attack = false;
			}
		}
		// If we hit the ground, go to the grounded version of the move
		if (((window == uspecial_air_burrowed_ground_window)
			 || (window == uspecial_air_burrowed_wall_window)) 
			&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
		{
			attack_end();
			set_attack(AT_USPECIAL_GROUND);
			if (special_charge >= special_full_charge_time) {
				// Allow us to not use the charge at the last minute
				if ((uspecial_hold_to_consume && special_down)
					|| (!uspecial_hold_to_consume && !special_down))
				{
					window = uspecial_uncharged_hide_window;
				} else {
					window = uspecial_charged_hide_window;
					//special_charge = 0;
				}
			} else {
				window = uspecial_uncharged_hide_window;
			}
			window_timer = 0
		}
		break;
	case AT_USPECIAL_GROUND :
		off_edge = false;
		// Skip initial charge window if charge is ready
		if ((window == uspecial_windup_window)
			&& (window_timer == 1))
		{
			current_charge_time = max_charge_time;
			//special_charge = 0;
			if (special_charge >= special_full_charge_time) {
				//special_charge = special_full_charge_time;
				must_complete_attack = true;
				// Play the 'consuming charge' sound
				sound_play(charge_consume_sound);
				charge_flash_cooldown = charge_flash_cooldown_max;
				//special_charge = 0;
			} else {
				must_complete_attack = false;
			}
		}
		
		if (window <= uspecial_bonus_charging_window) {
			special_charge_interrupted = true;
		} else {
			special_charge_interrupted = false;
		}
		
		if ((special_charge < special_full_charge_time)
			&& (window == uspecial_charging_window))
		{
			special_charge++;
		}
		
		fully_charged = (special_charge == special_full_charge_time);
		
		//if ((window == uspecial_uncharged_dig_window) || (window == uspecial_charged_dig_window)) {
		//	special_charge = 0;
		//}

		if ((window == uspecial_windup_window)
			&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
			&& (must_complete_attack || !special_down))
		{
			if (must_complete_attack) {
				window = uspecial_charged_dig_window;
				//special_charge = 0;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_kragg_rock_pull"));
			} else {
				window = uspecial_uncharged_dig_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_kragg_rock_pull"));
			}
		} else if (window < uspecial_bonus_charging_window) {
			charge_signalled = false;
			if (shield_pressed && !must_complete_attack) {
				// Perform 'stancle' animation, different from stancle
				smash_charging = false;
				//special_charge = 0;
				window = uspecial_stancel_window;
				window_timer = 0;
			} else if (window == uspecial_charging_window) {
				// Move on to the next window if button released or enough charge has built up
				if (!special_down || fully_charged || must_complete_attack) {
					window = uspecial_bonus_charging_window;
					window_timer = 0;
				}
			}
		} else if (window == uspecial_bonus_charging_window) {
			if (fully_charged) {
				if ((window_timer == 1) && !must_complete_attack && !charge_signalled) {
					// Play the 'done charging' sound the first time we reach this part
					sound_play(charge_sound);
					charge_flash_cooldown = charge_flash_cooldown_max;
					charge_signalled = true;
 				}
			}
			if (!fully_charged) {
				window = uspecial_uncharged_dig_window;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_kragg_rock_pull"));
			} else if (special_down && !must_complete_attack && (current_charge_time > 0)) {
				// Store charge by pressing parry
				if (shield_pressed) {
					// Perform 'stancle' animation, different from stancle
					window = uspecial_stancel_window;
					window_timer = 0;
				} else if (!must_complete_attack) {
					// Loop in this window while the button is held down
					if (!special_down && (current_charge_time > 0)) {
						window++;
						window_timer = 0;
					}
				}
			} else {
				window = uspecial_charged_dig_window;
				//special_charge = 0;
				window_timer = 0;
				// Play sound here so it lines up with the first hit
				sound_play(asset_get("sfx_kragg_rock_pull"));
			}
		}
		
		// Allow us to not use the charge at the last minute
		if ((window == uspecial_charged_hide_window) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
			if ((uspecial_hold_to_consume && special_down)
				|| (!uspecial_hold_to_consume && !special_down))
			{
				window = uspecial_uncharged_hide_window;
			} else {
				window = uspecial_charged_hide_window;
				//special_charge = 0;
			}
		}
		
		// Jump to correct recovery window if uncharged
		if ((window == uspecial_uncharged_rise_window) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
			window = uspecial_uncharged_recovery_window;
			window_timer = 0;
		}
		break;
	default :
		// Do nothing
		// If we get hit here, charging wasn't interrupted
		special_charge_interrupted = false;
		strong_charge_interrupted = false;
		break;
}

// nspecial has a naerial variant that should have landing lag - we have to introduce it manually here.
if (attack == AT_NSPECIAL_AIR) {
	if ((!free) && (!was_parried)) {
		// Enter landing lag on contact with the ground
		set_state(PS_LANDING_LAG);
		state_timer = 0;
		hurtboxID.sprite_index = hurtbox_spr;
		landing_lag_time = get_attack_value(attack, AG_LANDING_LAG);
		window = 0;
		window_timer = 0;
		attack_end();
	}
}

// Section just for fspecial projectile/grab management
if (attack == AT_FSPECIAL) {
	can_move = false;
	// TODO - check here if there's room to create the hitbox in front of you, if not then skip to recovery
	if ((window == fspecial_uncharged_window) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
		grab_hitbox = create_hitbox(attack, 1, x + (spr_dir * 40), y - 59);
		grab_hitbox.max_distance = fspecial_uncharged_max_distance;
		grab_hitbox.prev_owner_x = x;
		grab_hitbox.next_owner_x = x;
	} else if ((window == fspecial_charged_window) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
		grab_hitbox = create_hitbox(attack, 2, x + (spr_dir * 40), y - 59);
		grab_hitbox.max_distance = fspecial_charged_max_distance;
		grab_hitbox.prev_owner_x = x;
		grab_hitbox.next_owner_x = x;
	}
}

// Section just for fspecial projectile/grab management
if (attack == AT_DSPECIAL) {
	can_move = false;
	if ((window == dspecial_uncharged_window) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
		// Find the best place to put the first segment
		spot_found = false;
		space_between_parts = max_space_between_parts;
		num_placement_options = floor(space_between_parts / 10);
		placement_option = num_placement_options;
		dspecial_tail_article = instance_create(x + spr_dir * space_between_parts, y, "obj_article1");
		while (!spot_found) {
		    with (dspecial_tail_article){
		        if (place_meeting(x, y + 1, asset_get("par_block"))
		        	&& !place_meeting(x, y - 5, asset_get("par_block")))
		        {
		            //print_debug("Grounded on solid plat");
		            other.spot_found = true;
		        } else if (place_meeting(x, y + 1, asset_get("par_jumpthrough"))
		        		   && !place_meeting(x, y - 5, asset_get("par_jumpthrough")))
	        	{
		            //print_debug("Grounded on dropthrough plat");
		            other.spot_found = true;
		        }
		    }
		    
	        //print_debug("Did we find it?");
		    if (!spot_found) {
		        //print_debug("Spot not found yet");
		        if (placement_option <= 0) {
		            //print_debug("Give up - overlap");
		            spot_found = true;
		        }
		        dspecial_tail_article.x = x + spr_dir * 10 * placement_option;
		    }
		    placement_option--;
		}
		dspecial_tail_article.spr_dir = spr_dir;
		dspecial_tail_article.parent = id;
		dspecial_tail_article.num_children = 1;
	} else if ((window == dspecial_charged_window) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
		// Find the nearest opponent in front of us, default to normal placement distance
		var nearest = -1;
		with (oPlayer) {
			var opponent_found = false;
			var curr_dist = 0;
			if (other.id != id) {
				if (other.spr_dir > 0) {
					if (x >= other.x) {
						opponent_found = true;
						curr_dist = x - other.x;
					}
				} else if (other.spr_dir < 0) {
					if (x <= other.x) {
						opponent_found = true;
						curr_dist = other.x - x;
					}
				}
				if (opponent_found) {
					if (nearest < 0) {
						nearest = curr_dist;
					} else if (curr_dist < nearest) {
						nearest = curr_dist;
					}
				}
			}
		}
		if (nearest < 0) {
			nearest = max_space_between_parts;
		}
		//print_debug("Nearest 'x' = " + string(nearest));
		// Find the best place to put the first segment
		spot_found = false;
		space_between_parts = nearest;
		num_placement_options = floor(space_between_parts / 10);
		placement_option = num_placement_options;
		dspecial_tail_article = instance_create(x + spr_dir * space_between_parts, y, "obj_article1");
		while (!spot_found) {
		    with (dspecial_tail_article){
		        if (place_meeting(x, y + 1, asset_get("par_block"))
		        	&& !place_meeting(x, y - 5, asset_get("par_block")))
		        {
		            //print_debug("Grounded on solid plat");
		            other.spot_found = true;
		        } else if (place_meeting(x, y + 1, asset_get("par_jumpthrough"))
		        		   && !place_meeting(x, y - 5, asset_get("par_jumpthrough")))
	        	{
		            //print_debug("Grounded on dropthrough plat");
		            other.spot_found = true;
		        }
		    }
		    
	        //print_debug("Did we find it?");
		    if (!spot_found) {
		        //print_debug("Spot not found yet");
		        if (placement_option <= 0) {
		            //print_debug("Give up - overlap");
		            spot_found = true;
		        }
		        dspecial_tail_article.x = x + spr_dir * 10 * placement_option;
		    }
		    placement_option--;
		}
		dspecial_tail_article.spr_dir = spr_dir;
		// If we're holding backwards, pull the opponent in instead
		if (((spr_dir > 0) && left_down)
			|| ((spr_dir < 0) && right_down))
		{
			dspecial_tail_article.spr_dir *= -1;
		}
		dspecial_tail_article.parent = id;
		dspecial_tail_article.num_children = 3;
	}
}

// Section just for dspecial grab hitbox management
if (attack == AT_DSPECIAL_AIR) {
	can_move = false;
	if ((window == dspecial_air_windup_window)
		&& (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
	{
		if (must_complete_attack) {
			grab_hitbox = create_hitbox(attack, 3, x - (spr_dir * 20), y - 12);
			// Just make the hitbox last basically forever. If you're falling in dspecial more than a minute, what are you doing with your life?
			grab_hitbox.length = 60 * 60;
		} else {
			non_grab_hitbox = create_hitbox(attack, 1, x - (spr_dir * 20), y - 12);
		}
	} else if ((window == dspecial_air_diving_window)
			   && (window_timer == dspecial_spike_hitbox_duration))
	{
		if (!must_complete_attack) {
			non_grab_hitbox = create_hitbox(attack, 2, x - (spr_dir * 20), y - 12);
			// Just make the hitbox last basically forever. If you're falling in dspecial more than a minute, what are you doing with your life?
			non_grab_hitbox.length = 60 * 60;
		}
	}
	
	/*if ((window == dspecial_air_diving_window)
		&& (window_timer == dspecial_air_initial_duration))
	{
		grab_hitbox = create_hitbox(attack, selected_hitbox_num, x - (spr_dir * 20), y - 12);
		grab_hitbox.length = dspecial_air_looping_duration;
	}*/
	
	if ((window == dspecial_air_kick_flip_windup_window)
		&& (window_timer ==  get_window_value(attack, window, AG_WINDOW_LENGTH)))
	{
		create_hitbox(attack, 4, x - (spr_dir * 20), y - 12);
	}

	// Remove any lingering grab hitboxes
	if (!free) {
		if ((grab_hitbox != noone)
			&& (instance_exists(grab_hitbox)))
		{
			grab_hitbox.destroyed = true;
		}
		if ((non_grab_hitbox != noone)
			&& (instance_exists(non_grab_hitbox)))
		{
			non_grab_hitbox.destroyed = true;
		}
	}
}


if (current_charge_time > 0) {
	current_charge_time--;
}

switch (attack)
{
	/////////////////////////////////////////////// NORMALS ////////////////////////////////////////////////
    //
	case AT_JAB: //
		if (window < 9){
			jabtimer = 0;
		}
		
		if (window == 9){
			jabtimer += 1;
			
			if (jabtimer >= 6 && !attack_down && !hitpause){ //If attack is not held during rapid jab, transition to final hit
				window = 10;
				window_timer = 0;
				jabtimer = 0; //redundant, but may prevent bugs
			} else if (window_timer >= get_window_value(AT_JAB, 9, AG_WINDOW_LENGTH) && !hitpause){ //If at the end of the loop, go back to the start
				window_timer = 0;
			} 
		}
		break;




	/////////////////////////////////////////////// SPECIALS ///////////////////////////////////////////////
    //
	/*case AT_NSPECIAL: //charge shot
		can_move = false; //lock player's left-right movement
		if (window <= 4) vsp = clamp(vsp, vsp, 1 + state_timer/50); //also while charging, our character will slowly fall

		move_cooldown[attack] = ( (nspec_charge_max + 1) * 10 - floor(nspec_charge) * 10 ) + 30;
		if (shield_pressed) move_cooldown[attack] = 0;
		//puts the move in cooldown depending on charge level, unless the charge is being stored with parry
		//the stronger the charge, the lower the cooldown

		switch (window)
		{
			case 1: //var reset
				if (window_timer == 1)
				{
					//if we didn't save the charge while charing and got hit it will reset our charge
					if (!nspec_charge_stored) nspec_charge = 1;
					nspec_charge_stored = false;
					
					//this variable is used to slightly delay the shot so it's not as spammy
					nspec_shoot_delay_time = 0;
				}
				break;
			case 2: case 3: case 4: //charging
				if (shield_pressed) //charge saving by pressing shield
				{
					//store charge
					nspec_charge_stored = true;

					//stop charge sound and play the proper effects
					sound_stop(nspec_charge_sound);
					sound_play(asset_get("sfx_gem_collect"));
					spawn_hit_fx(x - 32 * spr_dir, y - 32, fx_pow_sparks);

					//if the player is on the ground, pressing left/right while storing charge will let them roll like ranno
					if (!free)
					{
						if (right_down && spr_dir || left_down && -spr_dir) set_state(PS_ROLL_FORWARD);
						else if (left_down && spr_dir || right_down && -spr_dir) set_state(PS_ROLL_BACKWARD);
						else set_state(PS_IDLE);
					}
					else set_state(PS_IDLE_AIR);
					clear_button_buffer(PC_SHIELD_PRESSED); //this will just 
				}
				else if (special_down && nspec_shoot_delay_time == 0) //holding down special will charge the projectile
				{
					//looping the animations untill we manually tell it otherwise
					//normally we would use window type 9 but it confuses the game into thinking the roll/parry windows should loop
					if (window_timer == window_end) window_timer = 0;

					if (nspec_charge < nspec_charge_max) nspec_charge += nspec_charge_rate; //the bigger the number - the faster the charge

					//depending on the charge we are making sure the windows are switched correctly
					//set_window is my own custom function, it works like set_attack and set_state, feel free to read more below - bar-kun
					if (nspec_charge == 1 + nspec_charge_rate)
					{
						sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
					}
					else if (nspec_charge == 2 + nspec_charge_rate)
					{
						set_window(3);
						sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
					}
					else if (nspec_charge == 3 && window != 4)
					{
						set_window(4);
						if (!nspec_charge_stored) sound_play(asset_get("sfx_frog_fspecial_charge_full"));
					}

					nspec_shoot_delay_time_max = 10 + 4 * floor(nspec_charge - 1); //charge release delay changes based on charge level (10 | 14 | 18)
				}
				else //releasing the proectile
				{
					nspec_shoot_delay_time ++; //makes our custom timer go down
					if (nspec_shoot_delay_time >= nspec_shoot_delay_time_max) set_window(5); //when not holding down special, fire the projectile
					else if (window_timer == window_end) window_timer = 0; //unless [nspec_shoot_delay_time] isn't 0 yet
				}
				break;
			case 5: //shooting the projectile
				//don't let these window numbers fool you, by putting in "window 5 + window_timer window_end" it acts as "window 6 + window_timer 0"
				//attack_update does not allow us to use the proper numbers
				if (window_timer == window_end)
				{
					//the character has recoil (only in the air)
					if (free)
					{
						hsp = -3 * spr_dir;
						vsp = -5;
					}

					//depending on the "nspec_charge" variable, spawn in a different projectile:
					//	- attack:						reffers to the current attack (AT_NSPECIAL)
					//	- floor(nspec_charge):			decides which projectile to spawn based on the whole numbers (1, 2 and 3)
					//	- x + HG_HITBOX_X * spr_dir:	spawns projectile based on what is written in the attack file (very convinient)
					//	- y + HG_HITBOX_Y:				same as the above
					
					var nspec_proj = create_hitbox(
						attack, 
						floor(nspec_charge + nspec_charge_rate),
						x + get_hitbox_value(attack, floor(nspec_charge + nspec_charge_rate), HG_HITBOX_X) * spr_dir,
						y + get_hitbox_value(attack, floor(nspec_charge + nspec_charge_rate), HG_HITBOX_Y)
					);
					var nspec_angle = free ? -30 * nspec_proj.spr_dir : 0;
					nspec_proj.hsp = lengthdir_x(nspec_proj.hsp, nspec_angle); //the projectile's HG_PROJECTILE_HSPEED is used as the speed indicator
					nspec_proj.vsp = lengthdir_y(nspec_proj.hsp, nspec_angle); //for how fast the projectile should be
					nspec_proj.proj_angle = nspec_angle;

					switch (nspec_proj.hbox_num)
					{
						case 1: sound_play(asset_get("sfx_ori_charged_flame_release")); break;
						case 2: sound_play(asset_get("sfx_ori_grenade_launch")); break;
						case 3: sound_play(asset_get("sfx_boss_laser")); break;
					}

					set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 20 + 10 * floor(nspec_charge - 1)); //sets endlag according to the charge level
					if (nspec_charge > 1) nspec_charge = 1; //reset nspec charge
				}
				break;
		}
		break;*/
	/*case AT_USPECIAL: //directional dash
		can_fast_fall = false; //prevents player from being able to fastfall

		//we need this so the player will be able to fast fall after using the move (unless they got parried)
		if (window == window_last && window_timer == window_end && !was_parried) can_fast_fall = true;

		switch (window)
		{
			case 1: case 2: //angle setup
				if (state_timer == 1) uspec_angle = 90;
				else if (window == 2)
				{
					if (!joy_pad_idle) uspec_angle = joy_dir;
					else uspec_angle = 90;
				}

				//limits the character's movement speed
				can_move = false;
				hsp = 0;
				vsp = clamp(vsp, vsp, 0);
				break;
			case 4: //movement
				//uspec_angle = joy_dir; //dynamic turning rune?

				var uspec_speed = 10;
				hsp = lengthdir_x(uspec_speed, uspec_angle);
				vsp = lengthdir_y(uspec_speed, uspec_angle);

				if (window_timer == 1) uspec_was_free = free;
				else if (window_timer > 2)
				{
					if (uspec_was_free && !free) //bounce
					{
						spawn_hit_fx(x, y-32, fx_pow_hit[1]);
						sound_play(asset_get("sfx_forsburn_combust"));

						vsp = -5;
						set_state(PS_PRATFALL);
						uspec_was_free = false;
					}
					else if (window_timer == window_end) //if the player doesn't hit the ground/was on the ground this entire time
					{
						spawn_hit_fx(x, y-32, fx_pow_hit[0]);

						if (!uspec_was_free && !free) set_state(PS_LANDING_LAG); //slide
					}
				}
				break;
		}
		break;*/
	/*case AT_FSPECIAL: //tether
		can_fast_fall = false; //prevents player from being able to fastfall
		can_move = false;

		switch (window)
		{
			case 1: case 2: //aiming + var reset
				fspec_found_target = false;
				fspec_hit_player = false;
				fspec_tether_pos = [floor(x + 64), floor(y - char_height/2)];
				
				//sets aim direction
				if (up_down) fspec_aim = -1;
				else if (down_down && free) fspec_aim = 1;
				else fspec_aim = 0;

				//limit the speed the character is going
				vsp = clamp(vsp, vsp, 0);
				hsp = clamp(hsp, -2, 2);
				break;
			case 3: //throw windup (check is on update.gml)
				vsp = 0;
				hsp = 0;
				break;
			case 4: //throwing tether
				vsp = 0;
				hsp = 0;

				if (window_timer == 1) create_hitbox(attack, 2, floor(fspec_tether_pos[0]), floor(fspec_tether_pos[1])); //spawn hitbox on the recorded position
				if (window_timer == 2) if (fspec_found_target)
				{
					sound_play(asset_get("sfx_holy_lightning"));
					spawn_hit_fx(fspec_tether_pos[0], fspec_tether_pos[1], fx_pow_hit[0]);

					//sets the tether's speed according to various sources:
					//if the tether has hit a player, it uses the player as a basis, otherwise, it looks a bit forward from the recorded position
					if (my_grab_id != noone) fspec_speed = point_distance(x, y, my_grab_id.x, my_grab_id.y) / 16 * 1.5; //sets the speed according to the hit player
					else fspec_speed = point_distance(x, y, fspec_tether_pos[0] + spr_dir * 32, fspec_tether_pos[1] + spr_dir * 32) / 16 * 1.5;
				}
				if (window_timer == window_end) set_window(fspec_found_target && !was_parried ? 6 : 5); //if a target was found, go to window 6
				break;
			case 5: //goes into pratfall because we couldn't catch anyone
				if (window_timer == window_end)
				{
					//this will force the player into pratfall only in the air, on the ground it will force them into idle instead
					//unless the player was parried

					set_state(free ? PS_PRATFALL : was_parried ? PS_PRATLAND : PS_IDLE);

					//writing [statement] ? [if] : [else] is essencially the same as writing [if (statement) code; else code;]
					

					//NOTE: you can manipulate the [parry_lag] variable to be something different other than the [prat_land_time]
				}
				break;
			case 6: //if a target is found it grapples towards them + applying cooldown
				if (!hitpause && fspec_found_target)
				{
					move_cooldown[attack] = 90; //half a sec cooldown

					//sets the speed values according to fspec_speed and the angles
					hsp = lengthdir_x(fspec_speed, fspec_angle * -fspec_aim) * spr_dir;
					vsp = lengthdir_y(fspec_speed, fspec_angle * -fspec_aim) - gravity_speed;
					
					//wall pop-up
					// this takes effect if you just barely touch the wall, and clips you on top of it. a little bit more player friendly
					if (place_meeting(x + hsp, y + vsp*free, asset_get("par_block")))
					{
						height_limit = 40;
						for (var i = 0; i <= height_limit; i++)
						{
							if (!place_meeting(x + hsp, y + vsp - i, asset_get("par_block")))
							{
								print("fspec is very forgiving")
								y -= i;
								break;
							}
						}
					}

					fall_through = (my_grab_id != noone); //prevents the player tethering from hitting platforms while going into players
					
					//position checks with the stage / hit detection
					//check order:
					//	- ground: when tethering towards the ground, check the proper spot to stop at depending on the fspec_tether_pos[0] (recorded x)
					//	- walls/celling: only check collision based on the hsp, so it will go in front of tester
					//	- platforms: only on collision with the top of platforms, based on vsp being higher than 0, and if my_grab_id isn't any player
					//	- on hit: when hitting players/articles
					if ((spr_dir && x >= fspec_tether_pos[0] || -spr_dir && x <= fspec_tether_pos[0]) && !free ||
						position_meeting(x + 32 * sign(hsp), y - 1, asset_get("par_block")) ||
						position_meeting(x + 32 * sign(hsp), y + sign(vsp) - 1, asset_get("par_jumpthrough")) && vsp > 0 && my_grab_id == noone ||
						has_hit)
					{
						//on hit, there are slightly different values
						//the [has_hit ? a : b] are basically just [if : else]
						vsp = has_hit ? -9 : -6;
						hsp = has_hit ? 0 : -4 * sign(hsp);

						//if the player didn't hit the article/other players this will spawn the hit effect and play the collision sound
						if (!has_hit)
						{
							sound_play(get_hitbox_value(attack, 1, HG_HIT_SFX));
							spawn_hit_fx(x + hsp, y - char_height / 2, get_hitbox_value(attack, 1, HG_VISUAL_EFFECT));
						}
						
						set_state(!has_hit ? PS_PRATFALL : PS_IDLE_AIR);

						//if for some reason the player hit the stage before the grabbed player
						//this part of the code will stop the hitpause on them and reset my_grab_id
						if (my_grab_id != noone)
						{
							my_grab_id.hitstop = 0;
							my_grab_id = noone;
						}
					}
					else if ((spr_dir && x > fspec_tether_pos[0] || -spr_dir && x < fspec_tether_pos[0]) && free) //used for below platform tethering mostly
					{
						hsp /= 8;
						vsp = -9;
						set_state(PS_IDLE_AIR);
					}
				}
				break;
		}
		break;*/
/*	case AT_DSPECIAL: //spawn article / teleport to article
		can_fast_fall = false;
		switch (window)
		{
			//PART 1: WAYPOINT SETUP
			case 3: //spawn article
				if (!instance_exists(artc_dspec)) artc_dspec = instance_create(x + 48 * spr_dir, y, "obj_article1");

				if (free && window_timer == 1) vsp = -3; //does a little bounce in the air
				break;
			case 5: //sends player back to idle
				if (window_timer == window_end) set_state(free ? PS_IDLE_AIR : PS_IDLE);
				break;
			//PART 2: TELEPORT
			//the article existance check happens on set_attack.gml
			
			case 7: //teleport - it happens on window 8, window timer 0, but attack_update doesn't allow for window_timer 0
				if (window_timer == window_end)
				{
					move_cooldown[attack] = 180;

					instance_exists(artc_dspec)
					{
						spawn_hit_fx(x, y-32, fx_pow_hit[0]); //before warp effect

						x = artc_dspec.x; //warp to the coordinates
						y = artc_dspec.y;

						spawn_hit_fx(x, y-32, fx_pow_hit[0]); //after warp effect

						instance_destroy(artc_dspec); //destroy article behind us
					}
					
				}
			case 6: //effects
				var tstr_fx = spawn_hit_fx(
					x + (random_func(5, 5, true) - 2) * 16,
					y + (random_func(6, 5, true) - 2) * 16 - char_height / 2,
					fx_pow_sparks);
				tstr_fx.draw_angle = random_func(7, 30, true) * 12;

				if (instance_exists(artc_dspec))
				{
					var artc_fx = spawn_hit_fx(
						artc_dspec.x + (random_func(8, 5, true) - 2) * 16,
						artc_dspec.y + (random_func(9, 5, true) - 2) * 16 - char_height / 2,
						fx_pow_sparks);
					artc_fx.draw_angle = random_func(10, 30, true) * 12;
				}
			case 8: case 9: case 10: //lock player movement
				can_move = false;
				hsp = 0;
				vsp = 0;
				break;
		}
*/		break;
	///////////////////////////////////////////////// OTHER ////////////////////////////////////////////////
    //
	case 2: //intro
		if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1); // put hud away
		if (window == window_last && window_timer == window_end-1 && game_time <= 125) state = PS_SPAWN; //correct state to spawn if needed
		break;
	case AT_TAUNT_2: //breakdance loop, hold taunt to continiue breakdancing
		if (taunt_down)
		{	
			//play music only on the first frame
			//the reason we are using state_timer is because window_timer is constantly reset
			//get_local_setting(3) reffers to the music's volume

			// "i would have used the cur_loop_sound variable but the taunt is spammable, making the music layer on itself" - bar-kun
			if (state_timer == 1) sound_play(alt_cur == 21 ? sound_get("mus_slaughter") : sound_get("mus_onlyyou"), true, 0, get_local_setting(3));
			suppress_stage_music(0, 1);

			if (window_timer == window_end) set_window(-1); //loops back around
			
		}
		else set_state(PS_IDLE);
		break;
}

custom_attack_grid();

#define clamp_horizontally(front_buffer, rear_buffer)
spot_found = false;
var uspecial_limit = 0; // Need to hard cap it or the game may freeze
// Create a thing to pretend to be us because we have no hurtbox right now
stand_in = instance_create(x, y + 2, "obj_article1");
stand_in.spr_dir = spr_dir;
while (!spot_found) {
	// if there's not enough space behind, slide forward
	with (stand_in) {
		if (place_meeting(x - spr_dir * front_buffer, y + 2, asset_get("par_block"))) {
			//print_debug("Grounded on solid plat");
			other.spot_found = true;
		} else {
			other.x = other.x + spr_dir;
			x = x + spr_dir;
			uspecial_limit++;
		}
	}
	
	if (uspecial_limit >= 100) {
		// Give up
		spot_found = true;
	}
}
spot_found = false;
uspecial_limit = 0;
stand_in.x = x;
while (!spot_found) {
	// if there's not enough space in front, slide backward
	with (stand_in) {
		if (place_meeting(x + spr_dir * rear_buffer, y + 2, asset_get("par_block"))) {
			//print_debug("Grounded on solid plat");
			other.spot_found = true;
		} else {
			other.x = other.x - spr_dir;
			x = x - spr_dir;
			uspecial_limit++;
		}
	}
	
	if (uspecial_limit >= 100) {
		// Give up
		spot_found = true;
	}
}
instance_destroy(stand_in);

// Function to release all held players
#define let_everyone_go
with (oPlayer) {
    if (SQUIGLY_HOLDER_ID == other.id) {
        SQUIGLY_HOLDER_ID = noone;
    }
}
holding_someone = false;  
//custom attack grid example - Looping window X times (by Bar-Kun)
#define custom_attack_grid
{
    //looping window for X times
    var window_loop_value;
    window_loop_value = get_window_value(attack, window, AG_WINDOW_LOOP_TIMES);

    if (!hitpause)
    {
        //loop window
        if (get_window_value(attack, window, AG_WINDOW_TYPE) == 9) //this will make it so it only works if the window type is 9
        {
            if (window_timer == window_end-1) //checks almost the end of the window
            {
                attack_end(attack); //reset hitboxes in case the window has a hitbox so they can hit again
                if (window_loops <= window_loop_value) window_timer = 0; //go back to the start of it manually
            }

            if (window_loop_value > 0) //if the loop value is over 0, this looping mechanic will work
            {
                if (window_timer == 0) window_loops ++; //at the start of the window, count a loop up

                if (window_loops > window_loop_value) //when all the loops are over, go to the next window and reset the loop value
                {
                    destroy_hitboxes();
                    window += 1;
                    window_timer = 0;
                    window_loops = 0;
                }
            }
        }
    }

    if (!is_attacking) window_loops = 0; //resets loop value in case the character isn't attacking (useful for hitstun)
}
//0 will just go to the next window instead of a specific one
//-1 makes it loop on the same window
#define set_window(window_num)
{
    if (window_num == 0) window ++;
    else if (window_num == -1) window = window;
    else window = window_num;
    window_timer = 0;
}