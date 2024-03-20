//post-draw
if attack = AT_EXTRA_2{
	var col = make_color_rgb(get_color_profile_slot_r(get_player_color(player), 1), get_color_profile_slot_g(get_player_color(player), 1), get_color_profile_slot_b(get_player_color(player), 1));
	if window_timer < 12{
		shader_start();
		draw_sprite_ext(cur_spr, cur_img, x, y, 2*spr_dir, 2, 0, c_white, 1 - .5*projection);
		shader_end();
		gpu_set_fog(1, col, 1, 0);
		draw_sprite_ext(cur_spr, cur_img, x, y, 2*spr_dir, 2, 0, c_white, (window_timer/12)/(1+projection));
		gpu_set_fog(0, col, 1, 0);
	}else{
		gpu_set_fog(1, col, 1, 0);
		draw_sprite_ext(cur_spr, cur_img, x, y, 2*spr_dir, 2, 0, c_white, (2 - window_timer/12)/(1+projection));
		gpu_set_fog(0, col, 1, 0);
	}
}