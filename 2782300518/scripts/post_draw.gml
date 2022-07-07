//Draw Tail in front of Carol
if (tsprite_index!=-1 && tfront==true){
	init_shader();
	if (get_player_color(player) == 17)
	{
		var base = 4*8;
		static_colorO[base] = 0.137;
		static_colorO[base+1] = 0.262;
		static_colorO[base+2] = 0.192;
	}
	shader_start();
	draw_sprite_ext(tsprite_index, timage_index, x+tx, y+ty, tsx*image_xscale, tsy, trotation, c_white, 1);
	shader_end();
}

//Draw Bike and shield in front of Carol
if (bsprite_index!=-1 && bfront==true){
	init_shader();
	if (get_player_color(player) == 17)
	{
		var base = 4*8;
		static_colorO[base] = 0.137;
		static_colorO[base+1] = 0.262;
		static_colorO[base+2] = 0.192;
	}
	shader_start();
	draw_sprite_ext(bsprite_index, bimage_index, x+bx, y+by, bsx*image_xscale, bsy, brotation, c_white, 1);
	shader_end();
}