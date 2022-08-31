//hitbox_update//hitbox_update


/*if (attack == AT_FSPECIAL) {
print (x)
print (y)
}
*/
if (!free) {
    destroyed = true;
}

if (attack == AT_DSPECIAL_2) {
    // Put this move on cooldown while the projectile it exists
    if (!allow_reuse) {
        player_id.move_cooldown[AT_DSPECIAL_2] = 2;
    }
    
    // Determine targets
    ds_list_clear(target_x_list);
    ds_list_clear(target_y_list);
    with (asset_get("oPlayer")) {
        if (get_player_team(player) != other.owners_team) {
            ds_list_add(other.target_x_list, x);
            ds_list_add(other.target_y_list, y);
        }
    }
    
    // Pick a target
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
                // Only valid target if close enough
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

    // Rise for a short time and orient, then lock in and fire
    if (hitbox_timer < rise_duration) {
        // If no targets, point straight forward
        if (target_valid) {
            proj_angle = point_direction(x, y, target_x, target_y) + ((spr_dir < 0) ? 180 : 0);
        } else {
            proj_angle = previous_angle;
        }
        hsp = 0;
        vsp = - rising_speed;
    } else if (hitbox_timer == rise_duration) {
        // Locked in - play a sound
        sound_play(sound_get("psyshockstart"));
        // Lock in target direction and fly
        orig_hsp = lengthdir_x(travel_speed, proj_angle + ((spr_dir < 0) ? 180 : 0));
        orig_vsp = lengthdir_y(travel_speed, proj_angle + ((spr_dir < 0) ? 180 : 0));
    
        frac_hsp = frac(abs(orig_hsp));
        hsp_sign =  sign(orig_hsp);
        abs_whole_hsp = floor(abs(orig_hsp));
        whole_hsp = abs_whole_hsp * hsp_sign;
        hsp = whole_hsp;
        summed_hsp_remainder = 0;
        frac_vsp = abs(frac(orig_vsp));
        vsp_sign =  sign(orig_vsp);
        abs_whole_vsp = floor(abs(orig_vsp));
        whole_vsp = abs_whole_vsp * vsp_sign;
        vsp = whole_vsp;
        summed_vsp_remainder = 0;
    } else {
        // The following block accounts for fractional changes, please don't edit
        
        // Account for redirection/reflection
        var current_hsp_sign = sign(hsp);
        if ((current_hsp_sign != hsp_sign)
            && (current_hsp_sign != 0)
            && (hsp_sign != 0))
        {
            orig_hsp *= -1;
            hsp_sign = current_hsp_sign;
            whole_hsp *= -1;
        }
        var current_vsp_sign = sign(vsp);
        if ((current_vsp_sign != vsp_sign)
            && (current_vsp_sign != 0)
            && (vsp_sign != 0))
        {
            orig_vsp *= -1;
            vsp_sign = current_vsp_sign;
            whole_vsp *= -1;
        }
    
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
    }
    
    previous_angle = proj_angle;
}