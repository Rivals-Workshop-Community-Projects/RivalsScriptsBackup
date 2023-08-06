// post_draw.gml

// fspecial
if (attack == AT_FSPECIAL && window == 2 && sprite_index == sprite_get("fspecial")){
	if (fspecTeleportDir != 0){
		shader_start();
		if (get_player_color(player) == 0){
			var teleDashSpr = sprite_get("fspecial_dash_default");
		} else {
			var teleDashSpr = sprite_get("fspecial_dash");
		}
		draw_sprite_ext( teleDashSpr, 0, x, y - 34, spr_dir, 1, 16 * fspecTeleportDir * spr_dir, c_white, 1 );
		shader_end();
	}
}

// fspecial directional arrow indicator
if (attack == AT_FSPECIAL && sprite_index == sprite_get("fspecial")){
	if (window == 1){
		if (fspecTeleportDir == 1){ // up
			draw_sprite_ext( sprite_get("_arrow"), 0, x+(36 * spr_dir), y-32, 1, 1, 120 * spr_dir, c_white, 1 );
		} else if (fspecTeleportDir == 0 && !joy_pad_idle){ // neutral
			draw_sprite_ext( sprite_get("_arrow"), 0, x+(40 * spr_dir), y-20, 1, 1, 90 * spr_dir, c_white, 1 );
		} else if (fspecTeleportDir == -1){ // down
			draw_sprite_ext( sprite_get("_arrow"), 0, x+(36 * spr_dir), y-8, 1, 1, 60 * spr_dir, c_white, 1 );
		}
	}
}