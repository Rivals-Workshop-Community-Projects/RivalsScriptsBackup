if luma_pop_timer{
	shader_start();
	
	draw_sprite_ext(spr_luma_spin_flourish, lerp(0, 7, (luma_pop_timer_max - luma_pop_timer) / luma_pop_timer_max), x, y, luma_pop_spr_dir, 1, 0, c_white, 1);
	
	shader_end();
}