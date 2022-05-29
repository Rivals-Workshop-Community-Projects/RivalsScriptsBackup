//article1_update

if (accrued_time < time_to_reach_intermediate) {
    // Quickly reach intermediate radius
    current_radius = ease_sineInOut(initial_radius, intermediate_radius, accrued_time, time_to_reach_intermediate);
} else if (accrued_time < time_to_hold) {
    // Hold here for a bit
     current_radius = intermediate_radius;
} else if (accrued_time < max_measured_time) {
    // Ease up to large radius
    current_radius = ease_sineInOut(intermediate_radius, final_radius, accrued_time - time_to_hold, max_measured_time - time_to_hold);
} else {
    // Hold at max size
     current_radius = final_radius;
}

// Set collision mask radius to match visual radius
gravity_image_index = get_gameplay_time() / total_sprite_frames;
drawn_radius = current_radius / raw_gravity_image_radius;

// For each player, pull towards the gravity's center
with (asset_get("oPlayer")) {
    if (hurtboxID == collision_circle(other.x, other.y, other.current_radius, hurtboxID, true, false)) {
        // Only apply to others, unless it's become permanent
        if ((other.player_id != id) || other.permanent) {
            // Get distance to center of gravity
            //var angle_to_center = point_direction(x, y, other.x, other.y);
            //var distance_to_center = point_distance(x, y, other.x, other.y);
            //var h_diff = lengthdir_x(distance_to_center, angle_to_center);
            //var v_diff = lengthdir_y(distance_to_center, angle_to_center);
            if (other.x > x) {
                hsp += other.h_pull;
            } else if (other.x < x) {
                hsp -= other.h_pull;
            }
            // Only pull up if not grounded
            if (free) {
                if (other.y > y) {
                    vsp += other.v_pull;
                } else if (other.y < y) {
                    vsp -= other.v_pull;
                }
            }
            
            // play an annoying sound to prove it's working
            //sound_play(asset_get("sfx_birdclap"));
        }
    }
}

if (accrued_time < max_measured_time) {
    accrued_time++;
} 