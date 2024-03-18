if attack == AT_NSPECIAL {
	player_id.attack_cooldown[AT_NSPECIAL] = 90
}

if attack == AT_FSPECIAL && hbox_num == 1 {
	if "lantern_collision" not in self {
		lantern_collision = false
	}
	player_id.knife_x = x;
	player_id.knife_y = y;
	if player_id.attack == AT_FSPECIAL && player_id.window != 4 && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND){
		if hitbox_timer <= 1 {
			if !player_id.joy_pad_idle {
			var player_stick_dir = player_id.joy_dir;

			// stick clamping
			if player_id.spr_dir < 0 { // left

				player_stick_dir = clamp(player_stick_dir, 180 - player_id.fspecial_angle_maximum, 180 - player_id.fspecial_angle_minimum)
				draw_xscale = -1;
				proj_angle = player_stick_dir + 180;


			} else { // right

				if player_stick_dir > 180 {
					player_stick_dir = player_stick_dir - 360
				}

				player_stick_dir = clamp(player_stick_dir, player_id.fspecial_angle_minimum, player_id.fspecial_angle_maximum)
				draw_xscale = 1;
				proj_angle = player_stick_dir;

			}

			

			var proj_speed = abs(hsp);

			hsp = lengthdir_x(proj_speed, player_stick_dir);
			vsp = lengthdir_y(proj_speed, player_stick_dir);

			}
			hit_something = false;
		}

		if hit_something && player_id.attack == AT_FSPECIAL {
			hitbox_timer -= 1;
		} else {
			var wall_collision = place_meeting(x, y, asset_get("par_block")) || lantern_collision
			if has_hit || wall_collision {

				hit_something = true;

				if wall_collision {
					player_id.has_wall_hooked = max(1, player_id.has_wall_hooked);
					player_id.knife_hit = true;
					sound_play(sound_effect)
					if hitbox_timer <= 1 { // Failsafe if you're using it against the wall
						x -= hsp;
						y -= vsp;
					}
				}

				hsp = 0;
				vsp = 0;

				player_id.knife_x = x;
				player_id.knife_y = y;
				player_id.knife_obj = self;
			}
		}
	} else {
        var player_origin_x = player_id.x + (5 * player_id.spr_dir);
        var player_origin_y = player_id.y - 35;
		x = lerp(x, player_origin_x, 0.6);
		y = lerp(y, player_origin_y, 0.6);
	}
}

if attack == AT_JAB && hbox_num == 3 {
    if "soul_goto_x" in self {
        var end_x = player_id.nspecial_lantern_active ? player_id.nspecial_current_lantern.x : player_id.lantern_x
        var end_y = player_id.nspecial_lantern_active ? player_id.nspecial_current_lantern.y : player_id.lantern_y
        var travel_span = floor(length/2)
        var target_x = soul_start_x + soul_goto_x
        var target_y = soul_start_y + soul_goto_y
        if hitbox_timer < travel_span {
            circ_mod = ease_circOut(0, 1, hitbox_timer, travel_span)
            x = ((soul_goto_x) * circ_mod) + soul_start_x
            y = ((soul_goto_y) * circ_mod) + soul_start_y
        } else {
            circ_mod = ease_circIn(0, 1, hitbox_timer - travel_span, travel_span)
            x = ((end_x - target_x) * circ_mod) + target_x
            y = ((end_y - target_y) * circ_mod) + target_y
        }

        var soul_trail_length = array_length_1d(soul_last_positions_x) - 1

        for (i=0; i < soul_trail_length; i++) {
            soul_last_positions_x[i] = soul_last_positions_x[i + 1]
            soul_last_positions_y[i] = soul_last_positions_y[i + 1]
        }

        soul_last_positions_x[soul_trail_length] = x + random_func(15, player_id.soul_trail_random_offset, false)
        soul_last_positions_y[soul_trail_length] = y + random_func(21, player_id.soul_trail_random_offset, false)

        if hitbox_timer == length {
            player_id.soul_trail_temp_x = soul_last_positions_x
            player_id.soul_trail_temp_y = soul_last_positions_y
            player_id.soul_trail_temp_length = array_length_1d(soul_last_positions_x)
            player_id.soul_trail_temp_scale = draw_xscale
            sound_play(player_id.soul_collect_sound, false, noone, player_id.soul_collect_volume, player_id.soul_collect_pitch)
        }
    }
}