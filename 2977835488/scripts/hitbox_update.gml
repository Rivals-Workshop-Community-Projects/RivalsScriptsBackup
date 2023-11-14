if (attack == AT_JAB) {
	if (hitbox_timer%3 == 0){
		if (hbox_num == 3){
			spawn_hit_fx(x + 5*spr_dir, y-5, player_id.jab_particles);
		}
	}
	if !free {
    sound_play(asset_get("sfx_waterhit_medium"))
    }
}

// Nspecial projectile
// Want to track current target, and adjust direction based on target position
if ((attack == AT_NSPECIAL) && (hbox_num == 1)) {
	// Get list of enemies
    ds_list_clear(target_x_list);
    ds_list_clear(target_y_list);
    with (asset_get("oPlayer")) {
        if (get_player_team(player) != other.owners_team) {
            ds_list_add(other.target_x_list, x);
            ds_list_add(other.target_y_list, y);
        }
    }
    
    // Pick a target and determine who's closest
    x_list_size = ds_list_size(target_x_list);
    y_list_size = ds_list_size(target_y_list);
    target_valid = false;
    if ((x_list_size > 0)
        && (x_list_size == y_list_size))
    {
        // Find the closest one
        current_closest_distance = max_seeking_range;
        for (i = 0; i < x_list_size; i++) {
            var current_target_x = ds_list_find_value(target_x_list, i);
            var current_target_y = ds_list_find_value(target_y_list, i);
            current_distance = point_distance(x, y, current_target_x, current_target_y);
            if (current_distance <= max_seeking_range) {
                // It's only a valid target if it's close enough
                target_valid = true;
                if (current_distance <= current_closest_distance) {
                    current_closest_distance = current_distance;
                    target_x = current_target_x;
                    target_y = current_target_y;
                    // Aim a little higher so we don't always aim at target's feet
                    target_y -= foot_offset;
                }
            }
        }
    }
	
	if (target_valid) {
		// Determine acceleration direction
		target_angle = point_direction(x, y, target_x, target_y);
		//print_debug("target_angle " + string(target_angle));
		// Don't go beyond the max speed
		current_distance = point_distance(x, y, current_target_x, current_target_y);
		// Apply acceleration more strongly when closer
		var proximity_factor = 1 - (current_distance / max_seeking_range);
		var adjusted_acceleration = acceleration * proximity_factor;
		var adjusted_max_speed = max_speed * proximity_factor;
		new_hsp = prev_hsp + lengthdir_x(adjusted_acceleration, target_angle);
		new_vsp = prev_vsp + lengthdir_y(adjusted_acceleration, target_angle);
		var projected_speed = point_distance(0, 0, new_hsp, new_vsp);
		//print_debug("new_hsp " + string(new_hsp) + ", new_vsp " + string(new_vsp));
		//print_debug("projected_speed " + string(projected_speed));
		//print_debug("adjusted_max_speed " + string(adjusted_max_speed));
		if (projected_speed >= adjusted_max_speed) {
			var new_angle = point_direction(0, 0, new_hsp, new_vsp);
			//print_debug("new_angle " + string(new_angle));
			orig_hsp = lengthdir_x(projected_speed * decceleration, new_angle);
	        orig_vsp = lengthdir_y(projected_speed * decceleration, new_angle);
			//print_debug("orig_hsp " + string(new_hsp) + ", orig_hsp " + string(new_vsp));
		} else {
	        orig_hsp = new_hsp;
	        orig_vsp = new_vsp;
		}
		
        // The following block accounts for fractional changes, please don't edit
        frac_hsp = frac(abs(orig_hsp));
        hsp_sign =  sign(orig_hsp);
        abs_whole_hsp = floor(abs(orig_hsp));
        whole_hsp = abs_whole_hsp * hsp_sign;
        hsp = whole_hsp;
        frac_vsp = abs(frac(orig_vsp));
        vsp_sign =  sign(orig_vsp);
        abs_whole_vsp = floor(abs(orig_vsp));
        whole_vsp = abs_whole_vsp * vsp_sign;
        vsp = whole_vsp;
    
        // Add 1 to hsp/vsp on cycles where it crosses a whole number boundary
        summed_hsp_remainder += frac_hsp;
        if (abs(hsp) != abs_whole_hsp) {
            hsp = whole_hsp;
        }
        while (summed_hsp_remainder >= 1) {
            summed_hsp_remainder--;
            if (hsp_sign > 0) {
                hsp++;
            } else if (hsp_sign < 0) {
                hsp--;
            }
        }
        summed_vsp_remainder += frac_vsp;
        if (abs(vsp) != abs_whole_vsp) {
            vsp = whole_vsp;
        }
        while (summed_vsp_remainder >= 1) {
            summed_vsp_remainder--;
            if (vsp_sign > 0) {
                vsp++;
            } else if (vsp_sign < 0) {
                vsp--;
            }
        }
	} else {
		// No target, so slow down
		hsp = hsp * decceleration;
		vsp = vsp * decceleration;
		orig_hsp = hsp;
		orig_vsp = vsp;
	}
	
	prev_hsp = orig_hsp;
	prev_vsp = orig_vsp;
	
	if (hitbox_timer == length) {
		spawn_hit_fx(x, y, hit_fx_create(sprite_get("nspecial_proj_hit"), 45));
	}
	
    //print_debug("proj hsp = " + string(hsp) + ", vsp = " + string(vsp));
    //print_debug("frac hsp = " + string(frac_hsp) + ", vsp = " + string(frac_vsp));
    //print_debug("summed_remainder hsp = " + string(summed_hsp_remainder) + ", vsp = " + string(summed_vsp_remainder));
}

if ((attack == AT_DSPECIAL) && (hbox_num == 1)) {
	if (hitbox_timer == 30) {
		spawn_hit_fx(x, y, player_id.dspecial_vfx2);
	}
}