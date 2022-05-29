//article1_post_draw

if (fs_deployed) {
	// Twinkle where Future Sight will hit
	draw_sprite_ext(fs_twinkle_sprite, fs_looping_twinkle_index, x, y,
					spr_dir, 1, 0, c_white, 1);

	// Draw an indicator of where the explosion will be
	draw_sprite_ext(fs_size_indicator_sprite, 0, x, y,
					spr_dir, 1, 0, c_white, 1);
} else if (fs_exploding) {
	// Future Sight's actual explosion
	draw_sprite_ext(fs_explosion_sprite, fs_explosion_index, x, y,
					spr_dir, 1, 0, c_white, 1);
}

// Draw the chevron
	draw_sprite_ext(chevron_sprite, 0, x, y - 20,
					spr_dir, 1, 0, player_hud_color, 1);