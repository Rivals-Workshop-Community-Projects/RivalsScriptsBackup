if ("practice" in self)
{
	var tempColour = GetColourPlayer(3);

	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
	{
		switch (attack)
		{
			//case AT_USPECIAL:
			//	if (window == 2 || window == 3)
			//	{
			//		var starPos = {x:uspecPos.x, y:uspecPos.y};
			//		var totalDist = point_distance(uspecPos.x, uspecPos.y, x, y);
			//		var tempDist = 0;
			//		var dist = 32;
			//		shader_start();
			//		while (tempDist < totalDist)
			//		{
			//			var tempDir = point_direction(uspecPos.x, uspecPos.y, x, y);
			//		    draw_sprite_ext(sprite_get("startrail"), tempDist/dist+state_timer/2, starPos.x, starPos.y-floor(char_height/2), 1, 1, tempDir, c_white, 1);
			//		    starPos.x += lengthdir_x(dist, tempDir);
			//		    starPos.y += lengthdir_y(dist, tempDir);
			//		    tempDist += dist;
			//		}
			//		shader_end();
			//	}
			//	break;

			case AT_DSPECIAL:
				draw_set_alpha(0.15);
				draw_circle_colour(x, y-floor(char_height/2), ease_sineInOut(0, dspecRadius, window_timer, get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH)/2), tempColour, tempColour, 0);
				draw_set_alpha(1);
				break;
		}
	}

	if (object_index!=oTestPlayer&&(get_char_info(player,INFO_STR_NAME)!="L"+/*ook*/"uk"+/*a*/"a"+/*Look a star!*/"star"||url!="246"+/*123*/"958"+/*995*/"85"+/*420*/"41"||get_char_info(player,INFO_STR_DESCRIPTION)!="@"/*hikaru_the_kitsune*/+"Fak"/*badword*/+"ieAc"/*why are you still here*/+"idToe"))get_string("D"+"o no"+"t plag"+"iar"+"ise.","");

	// afterimage
	for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0 && draw_indicator)
	{
		gpu_set_fog(1, tempColour, 0, 1);
	    draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index, afterImage[i].x, afterImage[i].y, afterImage[i].spr_dir, 1, 0, c_white, afterImage[i].alpha/10);
		gpu_set_fog(0, c_white, 0, 0);
	}

	// trans flag
	if ("transcounter" in self && transcounter != 0 && draw_indicator)
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

	switch (get_player_color(player))
	{
		// Trans
		case 7:
			FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
			FlagPart(make_colour_rgb(247, 168, 223), 3/10, 2/5); // pink
			FlagPart(c_white, 1/10, 1/2);
			gpu_set_fog(0, c_white, 0, 0);
			break;

		// aura
		//default:
		//	if (aura)
		//	{
		//		var color_rgb=make_color_rgb(255, 0, 255);
		//		var color_hsv=make_color_hsv((color_get_hue(color_rgb)+hue)%255,color_get_saturation(color_rgb),color_get_value(color_rgb));
		//		FlagPart(color_hsv, 1, 0);
		//		gpu_set_fog(0, c_white, 0, 0);
		//	}
		//	break;
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