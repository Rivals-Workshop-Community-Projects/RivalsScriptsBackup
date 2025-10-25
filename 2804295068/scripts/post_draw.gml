if (snow_pea_chill_id != noone){
	if (snow_pea_chill_time > 0){
		gpu_set_fog(1, c_blue, 0, 1);
		
		draw_sprite_ext(sprite_index, image_index, 
		round(x) + draw_x, round(y) + draw_y, 
		image_xscale * (small_sprites+1), image_yscale * (small_sprites+1), 
		spr_angle, c_white, 0.5);
		
		gpu_set_fog(0, c_white, 0, 0);
	}
}