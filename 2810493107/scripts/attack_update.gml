
// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_DSPECIAL){

	if(window == 1){
		trigger_dspecial_effect = false;
	}

	if(window == 2){
		super_armor = true;
	}
}

// Create the article for gravity, delete once button is no longer held
if (attack == AT_NSPECIAL_AIR) {
	// Don't allow drift
	can_move = false;
	
	var grav_x = x + (30 * spr_dir);
	var grav_y = y - 50;
	if ((window == 2) && (window_timer == 1)) {
		// deploy the zone
		gravity_instance = instance_create(fs_x, fs_y, "obj_article2");
		gravity_instance.spr_dir = spr_dir;
		gravity_instance.player_id = id;
        gravity_instance.player = player;
		accrued_gravity_time = 0;
	}
	if (gravity_instance != noone) {
		// Follow Reun's position unless the gravity zone is permanent
		if (!gravity_instance.permanent) {
			gravity_instance.x = grav_x;
			gravity_instance.y = grav_y;
		}
		
		// count time gravity zone exists
		if (accrued_gravity_time < max_gravity_time) {
			accrued_gravity_time++;
		}
	}
	
	// Stay in window until button is released or time runs out
	if ((window == 3)
		&& (((!special_down) && (accrued_gravity_time >= min_gravity_time))
			|| (accrued_gravity_time >= max_gravity_time)))
	{
		window = 4;
		window_timer = 0;
	}
	
	// Destroy the Gravity instance at the end of the move
	if (window == 4) && (window_timer == 1) {
	    if (gravity_instance != noone) {
		    if (!gravity_instance.permanent) {
		        instance_destroy(gravity_instance);
		        gravity_instance = noone;
		    }
		}
	}
}

// Charge up nspecial while the button is held
if (attack == AT_NSPECIAL) {
	move_cooldown[AT_NSPECIAL] = 90
	if (window == 2) {
		if ((special_down) && (fs_charge < fs_charge_max)) {
			            var fs_charge_prev = fs_charge; //Helps prevent playing the sound every cycle
            fs_charge++;
            if ((fs_charge == (fs_charge_max / 3)) && (fs_charge_prev < (fs_charge_max / 3))) {
                sound_play(sound_get("fsindicatemedium"));
            } else if ((fs_charge == fs_charge_max)) && ((fs_charge_prev < fs_charge_max)) {
                sound_play(sound_get("fsindicatelarge"));
            }
			can_shield = true;
			if (window_timer == get_window_value(AT_NSPECIAL, window, AG_WINDOW_LENGTH) - 1) {
				window_timer = 0;
			}
		} else {
			window = 3;
			window_timer = 0;
		}
	}
	if ((window == 3) && (window_timer == 1)) {
		// deploy the zone
		var fs_x = x + (30 * spr_dir);
		var fs_y = y - 50;
		var future_sight = instance_create(fs_x, fs_y, "obj_article1");
		future_sight.x = fs_x;
		future_sight.y = fs_y;
		future_sight.spr_dir = spr_dir;
		future_sight.player_id = id;
        future_sight.player = player;
        future_sight.charge_fraction = fs_charge / fs_charge_max;
		future_sight.fs_countdown = fs_countdown_min + (fs_countdown_max * (fs_charge / fs_charge_max));
		future_sight.player_hud_color = get_player_hud_color(player);
		fs_charge = 0;
	}
}

if (attack == AT_NSPECIAL_2) {	
	move_cooldown[AT_NSPECIAL_2] = 90
	// Manually detonate future sight
	if ((window == 2) && (window_timer == 1)) {
		with (asset_get("obj_article1")) {
        	if (player_id == other.id) {
        		fs_countdown = 0;
        	}
		}
	}
}

if (attack == AT_USPECIAL_2) {
	can_move = false;
	fall_through = true;
	
	if ((window == 1) && (window_timer == 1)) {
		stored_power_remaining_dashes = stored_power_max_dashes;
		stored_power_next_dash_selected = true;
		stored_power_chosen_angle = 0;
		stored_power_chosen_angle_prev = 0;
		stored_power_next_angle_locked_in = false;
	} else if ((window == 2)
			   && (window_timer == get_window_value(AT_USPECIAL_2, window, AG_WINDOW_LENGTH) - 1))
	{
		// For the first dash, we decide here.
		// On subsequent dashes, we decide just after
		// the dash and honor that decision here.
		
		if (!stored_power_next_angle_locked_in) {
			stored_power_remaining_dashes--;
			// Determine chosen angle
			// (sorry for confusing layout, had to appease priority)
			if (up_down && right_down) {
				stored_power_chosen_angle =315;
			} else if (down_down && right_down) {
				stored_power_chosen_angle = 225;
			} else if (down_down && left_down) {
				stored_power_chosen_angle = 135;
			} else if (up_down && left_down) {
				stored_power_chosen_angle = 45;
			} else if (up_down) {
				stored_power_chosen_angle = 0;
			} else if (right_down) {
				stored_power_chosen_angle = 270;
			} else if (down_down) {
				stored_power_chosen_angle = 180;
			} else if (left_down) {
				stored_power_chosen_angle = 90;
			} else {
				stored_power_chosen_angle = 0;
			}
		}
		
// Can't use the above switch since the angle may already be locked in
		// Determine the window to go to based on angle
		switch (stored_power_chosen_angle) {
			case 315 :
				window = 8;
				window_timer = 0;
				spr_dir = 1;
				break;
			case 225 :
				window = 10;
				window_timer = 0;
				spr_dir = 1;
				break;
			case 135 :
				window = 10;
				window_timer = 0;
				spr_dir = -1;
				break;
			case 45 :
				window = 8;
				window_timer = 0;
				spr_dir = -1;
				break;
			case 270 :
				window = 9;
				window_timer = 0;
				spr_dir = 1;
				break;
			case 180 :
				window = 11;
				window_timer = 0;
				break;
			case 90 :
				window = 9;
				window_timer = 0;
				spr_dir = -1;
				break;
			case 0 : // Intentional fall-through
			default:
				window = 7;
				window_timer = 0;
				break;
		}

		//spr_angle = stored_power_chosen_angle;
		stored_power_chosen_angle_prev = stored_power_chosen_angle;
	} else if (window == 3) {
		/*switch (stored_power_chosen_angle) {
			case 45 :
				hsp = -stored_power_angular_dash_speed_x;
				vsp = -stored_power_angular_dash_speed_y;
				break;
			case 90 :
				hsp = -stored_power_dash_speed;
				break;
			case 135 :
				hsp = -stored_power_angular_dash_speed_x;
				vsp = stored_power_angular_dash_speed_y;
				break;
			case 180 :
				vsp = stored_power_dash_speed;
				break;
			case 225 :
				hsp = stored_power_angular_dash_speed_x;
				vsp = stored_power_angular_dash_speed_y;
				break;
			case 270 :
				hsp = stored_power_dash_speed;
				break;
			case 315 :
				hsp = stored_power_angular_dash_speed_x;
				vsp = -stored_power_angular_dash_speed_y;
				break;
			case 360 : // Intentional fallthrough just in case I mess up
			case 0 :
			default :
				hsp = 0;
				vsp = -stored_power_dash_speed;
				break;
		}*/

		/*if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1) {
			var current_stored_power = create_hitbox(attack, 1,
													 x,
													 y - 10);
			current_stored_power.proj_angle = spr_angle;
			current_stored_power.hsp = -hsp * 0.2;
			current_stored_power.vsp = -vsp * 0.2;
		}
	} else if ((window == 4) && (window_timer == 1)) {
		spr_angle = 0;*/
	} else if ((window == 4)
			   && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1)
			   && (stored_power_remaining_dashes > 0))
	{
		// Decide direction
		stored_power_remaining_dashes--;
		// Determine chosen angle
		// (sorry for confusing layout, had to appease priority)
		if (up_down && right_down) {
			stored_power_chosen_angle =315;
		} else if (down_down && right_down) {
			stored_power_chosen_angle = 225;
		} else if (down_down && left_down) {
			stored_power_chosen_angle = 135;
		} else if (up_down && left_down) {
			stored_power_chosen_angle = 45;
		} else if (up_down) {
			stored_power_chosen_angle = 0;
		} else if (right_down) {
			stored_power_chosen_angle = 270;
		} else if (down_down) {
			stored_power_chosen_angle = 180;
		} else if (left_down) {
			stored_power_chosen_angle = 90;
		} else {
			stored_power_next_dash_selected = false;
		}
		
		if (stored_power_next_dash_selected
			&& ((!stored_power_redirection_required)
				|| (stored_power_chosen_angle != stored_power_chosen_angle_prev)))
		{
			// Loop back
			window = 2;
			window_timer = 1;
			stored_power_next_angle_locked_in = true;
		}
	}
}
if (attack == AT_FSPECIAL) {
	if (window == 2) {
		can_shield = true;
	}
}
if(attack == AT_DAIR) {
	hud_offset = 85
}
if(attack == AT_UAIR) {
	hud_offset = 85
}
if(attack == AT_USTRONG) {
	hud_offset = 85
}