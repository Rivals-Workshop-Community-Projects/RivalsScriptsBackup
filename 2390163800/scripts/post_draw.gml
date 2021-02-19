if nspecial_timer{
	shader_start();
	
	draw_sprite_ext(sprite_get("loading"), (nspecial_timer_max - nspecial_timer) / 4, x - 64 * spr_dir, y - 128, spr_dir, 1, 0, c_white, 1)
	
	shader_end();
}



user_event(12);