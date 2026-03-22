// pre-draw

shader_start();

with (asset_get("pHitBox")) {
	if other.id == player_id && attack == AT_DSPECIAL {
		if cookie_state == 1 {
			with other draw_sprite_ext(sprite_get("cookiearrow"), -1, other.x, other.y-26, 1, 1, 0, c_white, 1);
		}
	}
}
		
		
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)) {
	if attack == AT_FSPECIAL {
		if (window == 2 && is_aiming_egg) {
				draw_sprite_ext(
					sprite_get("arrow"),
					get_gameplay_time() / 3,
					x + ((get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X)) * spr_dir),
					y + (get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y)),
					spr_dir,
					1,
					egg_aim_angle * spr_dir,
					c_white,
					.8
				);
			}
		}
		
	if attack == AT_DSPECIAL {
		// Find the next cookie that WILL be thrown
		var next_id = -1;
		for (var i = 0; i < 3; i++) {
			if (cookie_inventory[i] != -1) {
				next_id = cookie_inventory[i];
				break;
			}
		}

		// Draw the overlay based on the next cookie in line
		if (next_id == 0) draw_sprite_ext(sprite_get("dspecial_underlay1"), -1, x, y, spr_dir, 1, 0, c_white, 1);
		if (next_id == 1) draw_sprite_ext(sprite_get("dspecial_underlay2"), -1, x, y, spr_dir, 1, 0, c_white, 1);
		if (next_id == 2) draw_sprite_ext(sprite_get("dspecial_underlay3"), -1, x, y, spr_dir, 1, 0, c_white, 1);
	}
}




shader_end();