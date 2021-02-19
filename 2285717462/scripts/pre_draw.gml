if (attacking && attack == AT_USTRONG && image_index = clamp(image_index, 6, 10)){
	draw_sprite_ext(spr_vfx_ustrong_spark, image_index - 6, spark_x, spark_y, spr_dir, 1, 0, c_white, 1);
}



if (laser_alpha > 0){
	for (var i = 1; i < array_length(laser_x); i++){
		var alp = draw_get_alpha();
		draw_set_alpha(laser_alpha);
		draw_line_width_color(laser_x[i-1], laser_y[i-1], laser_x[i], laser_y[i], lerp(2, 8, clamp(laser_alpha, 0, 1)), laser_color, laser_color);
		draw_set_alpha(alp);
	}
}