shader_start()
if qpu {
		var flx = random_func(1, 1, 0)*(0.3)
		var shk = random_func(1, 5, 0)*(2+(mariospeed >= 93)*2)
		draw_sprite_ext(sprite_index,image_index,x+shk+10,y,image_xscale,image_yscale,image_angle,image_blend,0.1 + flx)
		draw_sprite_ext(sprite_index,image_index,x-shk-10,y,image_xscale,image_yscale,image_angle,image_blend,0.1 + flx)
	//draw_sprite_ext(sprite_index,image_index,x+random_func(1,30,1)+10,y,image_xscale,image_yscale,image_angle,image_blend,0.5+random_func(2,0.3,0))
}
shader_end()