if ("fuel" in self)
{
	var tempColour = GetColourPlayer(0);
	//var tempColour2 = GetColourPlayer(5);

	// afterimage
	for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0 && draw_indicator)
	{
		shader_start();
		gpu_set_blendmode(bm_add);
		draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index, afterImage[i].x, afterImage[i].y, afterImage[i].spr_dir*2, 2, 0, tempColour, afterImage[i].alpha/20);
		gpu_set_blendmode(bm_normal);
		shader_end();
	}

	// field gain fuel effect
	if (fieldGain.timer > 0 && draw_indicator)
	{
		shader_start();
		gpu_set_blendmode(bm_add);
		draw_sprite_ext(sprite_get("fuel_trail"), 0, floor(lerp(x,fieldGain.x,fieldGain.timer/fieldGainTimer)), floor(lerp(y-char_height/2,fieldGain.y,fieldGain.timer/fieldGainTimer)), 1, 1, point_direction(fieldGain.x, fieldGain.y, x, y-char_height) - 180, tempColour, 0.9);
		gpu_set_blendmode(bm_normal);
		shader_end();
	}

	// trans flag
	if ("transcounter" in self && !transphobia && transcounter != 0 && draw_indicator)
	{
		var mayablue = make_colour_rgb(85, 205, 252);
		var pinkkk = make_colour_rgb(247, 168, 223);
		var drawyyy = y - 30;
		draw_set_alpha(0.5);
	    draw_rectangle_color(x-transcounter,drawyyy-30,x+transcounter,drawyyy-19,mayablue,mayablue,mayablue,mayablue,false);
	    draw_rectangle_color(x-transcounter,drawyyy-18,x+transcounter,drawyyy-7,pinkkk,pinkkk,pinkkk,pinkkk,false);
	    draw_rectangle_color(x-transcounter,drawyyy-6,x+transcounter,drawyyy+5,c_white,c_white,c_white,c_white,false);
	    draw_rectangle_color(x-transcounter,drawyyy+6,x+transcounter,drawyyy+17,pinkkk,pinkkk,pinkkk,pinkkk,false);
	    draw_rectangle_color(x-transcounter,drawyyy+18,x+transcounter,drawyyy+29,mayablue,mayablue,mayablue,mayablue,false);
		draw_set_alpha(1);
	}

	// Trans
	if (get_player_color(player) == 5 && !transphobia)
	{
		FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
		FlagPart(make_colour_rgb(247, 168, 223), 3/5, 1/5); // pink
		FlagPart(c_white, 1/5, 2/5);
		gpu_set_fog(0, c_white, 0, 0);
	}
}

#define GetColourPlayer(_index)
{
	return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),get_color_profile_slot_g(get_player_color(player), _index),get_color_profile_slot_b(get_player_color(player), _index));
}

#define FlagPart(_colour, _heightRatio, _xOffsetRatio)
{
	gpu_set_fog(1, _colour, 0, 1);
	for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
		draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
}