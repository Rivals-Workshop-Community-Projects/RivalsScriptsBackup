if ("afterImageLonin" in self)
{
	if (afterImageLonin != -1 && afterImageLonin.lonin == other_player_id.player)
	{
		gpu_set_blendmode(bm_add);
		draw_circle_colour(x, y - floor(char_height/2), char_height * 1.5 * afterImageLonin.alpha/30, c_black, c_white, false);
		gpu_set_blendmode(bm_normal);
	}

	// Trans
	if (outlineState == 1)
	{
		FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
		FlagPart(make_colour_rgb(247, 168, 223), 3/5, 1/5); // pink
		FlagPart(c_white, 1/5, 2/5);
		gpu_set_fog(0, c_white, 0, 0);
	}

	// BLM
	else if (outlineState == 2)
	{
		FlagPart(c_black, 1/3, 0);
		FlagPart(c_white, 1/3, 1/3);
		FlagPart(make_colour_rgb(251, 238, 31), 1/3, 2/3); // yellow
		gpu_set_fog(0, c_white, 0, 0);
	}
}

#define FlagPart(_colour, _heightRatio, _xOffsetRatio)
{
	gpu_set_fog(1, _colour, 0, 1);
	for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
		draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
}