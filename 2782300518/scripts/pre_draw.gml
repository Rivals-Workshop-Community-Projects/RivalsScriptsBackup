//Draw tail behind Carol
if (tsprite_index!=-1 && tfront==false)
{
	init_shader();
	if (alt_cur == 14)
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

//Draw Bike behind Carol
if (bsprite_index!=-1 && bfront==false)
{
	if (bshader == true)
	{
		init_shader();
		if (alt_cur == 14)
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
	else
	{
		draw_sprite_ext(bsprite_index, bimage_index, x+bx, y+by, bsx*image_xscale, bsy, brotation, c_white, 1);
	}
}

switch (state)
{
	case PS_PARRY:
	case PS_AIR_DODGE:
	if (state_timer == 1)
	{
		var guard = spawn_hit_fx(x, y, parry_shield);
		guard.alpha = 0.8;
		guard.depth = 10;
	}
	break;
}