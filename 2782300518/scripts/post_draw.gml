//Draw Tail in front of Carol
if (tsprite_index!=-1 && tfront==true){
	init_shader();
	shader_start();
	draw_sprite_ext(tsprite_index, timage_index, x+tx, y+ty, tsx*image_xscale, tsy, trotation, c_white, 1);
	shader_end();
}

//Draw Bike and shield in front of Carol
if (bsprite_index!=-1 && bfront==true){
	init_shader();
	shader_start();
	draw_sprite_ext(bsprite_index, bimage_index, x+bx, y+by, bsx*image_xscale, bsy, brotation, c_white, 1);
	shader_end();
}