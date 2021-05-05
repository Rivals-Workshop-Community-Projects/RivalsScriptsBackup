if ("afterImageLonin" in self)
{
	if (afterImageLonin != -1 && afterImageLonin.lonin == other_player_id.player)
	{
		gpu_set_blendmode(bm_add);
		draw_circle_colour(x, y - floor(char_height/2), char_height * 1.5 * afterImageLonin.alpha/30, c_black, c_white, false);
		gpu_set_blendmode(bm_normal);
	}

	switch (outlineState)
	{
		// Trans
		case 1:
			FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
			FlagPart(make_colour_rgb(247, 168, 223), 3/5, 1/5); // pink
			FlagPart(c_white, 1/5, 2/5);
			gpu_set_fog(0, c_white, 0, 0);
			break;

		// BLM
		case 2:
			FlagPart(c_black, 1/3, 0);
			FlagPart(c_white, 1/3, 1/3);
			FlagPart(make_colour_rgb(251, 238, 31), 1/3, 2/3); // yellow
			gpu_set_fog(0, c_white, 0, 0);
			break;

		// Enby
		case 3:
			FlagPart(make_colour_rgb(255, 244, 51), 1/4, 0);
			FlagPart(c_white, 1/4, 1/4);
			FlagPart(make_colour_rgb(155, 89, 208), 1/4, 2/4);
			FlagPart(make_colour_rgb(43, 43, 43), 1/4, 3/4);
			gpu_set_fog(0, c_white, 0, 0);
			break;

		// Ace
		case 4:
			FlagPart(c_black, 1/4, 0);
			FlagPart(make_colour_rgb(164, 164, 164), 1/4, 1/4);
			FlagPart(c_white, 1/4, 2/4);
			FlagPart(make_colour_rgb(129, 0, 129), 1/4, 3/4);
			gpu_set_fog(0, c_white, 0, 0);
			break;
	}

	// Kirby
	if ("other_player_id" in self && "enemykirby" in other_player_id && other_player_id.enemykirby != undefined && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3 && window == 2)
	{
		gpu_set_blendmode(bm_add);
		shader_start();
		draw_sprite_ext(sprite_index, image_index, x+nspecCharge/16+random_func(4,3,1), y+random_func(6,3,1)-1, spr_dir, 1, 0, c_fuchsia, 1);
		draw_sprite_ext(sprite_index, image_index, x-nspecCharge/16-random_func(5,3,1), y+random_func(7,3,1)-1, spr_dir, 1, 0, c_aqua, 1);
		shader_end();
		gpu_set_blendmode(bm_normal);
		if (nspecCharge == nspecMax)
		{
			draw_set_alpha(min(state_timer-nspecMax, 25)/100);
			draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
			draw_set_alpha(1);
		}
	}
}

#define FlagPart(_colour, _heightRatio, _xOffsetRatio)
{
	gpu_set_fog(1, _colour, 0, 1);
	for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
		draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
}