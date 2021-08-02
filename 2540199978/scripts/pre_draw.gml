if ("rollArray" in self)
{
	var tempColour = GetColourPlayer(0);
	var tempColour2 = GetColourPlayer(5);
	var tempColour3 = GetColourPlayer(3);
	//var outlineColour = make_colour_rgb(outline_color[0],outline_color[1],outline_color[2]);

	// roll vfx
	for (var i = 0; i < 3; ++i) if (rollArray[i] != -1 && rollArray[i].rollAlpha > 0)
	{
		gpu_set_fog(1, tempColour, 0, 1);
		draw_sprite_ext(rollSpr, i, rollArray[i].rollX, rollArray[i].rollY, rollArray[i].rollDir, 1, 0, tempColour, rollArray[i].rollAlpha/10);
		gpu_set_fog(0, c_white, 0, 0);
	}

	//if (object_index!=oTestPlayer&&(get_char_info(player,INFO_STR_NAME)!="L"+/*mao you thought*/"on"+/*ion sk*/"in"||url!="2"+/*420*/"30"+/*69*/"267"+/*621*/"5649"||get_char_info(player,INFO_STR_DESCRIPTION)!="@"/*hikaru_the_kitsune*/+"Fak"/*badword*/+"ieAc"/*why are you still here*/+"idToe"))get_string("D"+"o no"+"t plag"+"iar"+"ise.","");

	// attack
	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
	{
		switch (attack)
		{
			case AT_USPECIAL:
				if (window == 3)
					draw_sprite_ext(sprite_index, image_index, x+draw_x-hsp, y+draw_y-vsp, spr_dir, 1, spr_angle, c_white, 0.5);
				break;
		}
	}

	if (fspecActive)
	{
		gpu_set_fog(1, tempColour, 0, 1);
		draw_sprite_ext(sprite_index, image_index, x+fspecDist, y, spr_dir, 1, 0, c_white, 0.8);
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

	if (spr_angle == 0) switch (get_player_color(player))
	{
		// Trans
		case 6:
			FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
			FlagPart(make_colour_rgb(247, 168, 223), 3/5, 1/5); // pink
			FlagPart(c_white, 1/5, 2/5);
			gpu_set_fog(0, c_white, 0, 0);
			break;
		
		// Ace
		case 13:
			FlagPart(c_black, 1/4, 0);
			FlagPart(make_colour_rgb(164, 164, 164), 1/4, 1/4);
			FlagPart(c_white, 1/4, 2/4);
			FlagPart(make_colour_rgb(129, 0, 129), 1/4, 3/4);
			gpu_set_fog(0, c_white, 0, 0);
			break;

		// Enby
		case 14:
			FlagPart(make_colour_rgb(255, 244, 51), 1/4, 0);
			FlagPart(c_white, 1/4, 1/4);
			FlagPart(make_colour_rgb(155, 89, 208), 1/4, 2/4);
			FlagPart(make_colour_rgb(43, 43, 43), 1/4, 3/4);
			gpu_set_fog(0, c_white, 0, 0);
			break;

		// final smash
		default:
			if (aura > 0)
			{
				var color_rgb=make_color_rgb(255, 0, 255);
				var color_hsv=make_color_hsv((color_get_hue(color_rgb)+hue)%255,color_get_saturation(color_rgb),color_get_value(color_rgb));
				FlagPart(color_hsv, 1, 0);
				gpu_set_fog(0, c_white, 0, 0);
			}
			break;
	}
}

#define draw_rectangle(x1, y1, x2, y2, x3, y3, x4, y4, colour1, colour2)
{
	draw_triangle_colour(x1, y1, x2, y2, x3, y3, colour1, colour1, colour2, false);
	draw_triangle_colour(x2, y2, x3, y3, x4, y4, colour1, colour2, colour2, false);
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