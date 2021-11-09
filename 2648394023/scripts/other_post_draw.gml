if "other_player_id" not in self exit; // why

if glare_status_id == other_player_id{
	
	var col_light = c_white;
	var col_dark = other_player_id.wing_colors[other_player_id.ir][0];
	var amt = (sin(state_timer / 2) + 1) / 2;
	var col = make_color_rgb(
		lerp(color_get_red(col_light), color_get_red(col_dark), amt),
		lerp(color_get_green(col_light), color_get_green(col_dark), amt),
		lerp(color_get_blue(col_light), color_get_blue(col_dark), amt)
		);
	
	// var col = other_player_id.wing_colors[other_player_id.ir][0];
	gpu_set_fog(true, col, 1, 1);
	draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir * (1 + small_sprites), 1 + small_sprites, spr_angle, image_blend, 0.75);
	gpu_set_fog(false, c_white, 1, 1);
}