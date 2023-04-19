if ("rollArray" in self)
{
	var tempColour = GetColourPlayer(0);
	var tempColour2 = GetColourPlayer(1);
	if (get_player_color(player)==21)
	{
		var color_rgb1=make_color_rgb(255, 255, 128);
		tempColour = make_color_hsv((color_get_hue(color_rgb1)+hue)%255,color_get_saturation(color_rgb1),color_get_value(color_rgb1));
	}

	// roll vfx
	for (var i = 0; i < 3; ++i) if (rollArray[i] != -1 && rollArray[i].rollAlpha > 0)
	{
		gpu_set_fog(1, tempColour, 0, 1);
		draw_sprite_ext(rollSpr, i, rollArray[i].rollX, rollArray[i].rollY, rollArray[i].rollDir*2, 2, 0, tempColour, rollArray[i].rollAlpha/10);
		gpu_set_fog(0, c_white, 0, 0);
	}
	
	// aura meter
	if ((state == PS_SPAWN || (state == PS_ATTACK_GROUND && attack == AT_TAUNT && !aura)) && auraMeter != -1 && state_timer < 68 && state_timer > 1)
	{
	    draw_rectangle_color(x - 104, y - 124, x + 104, y - 96, c_black, c_black, c_black, c_black, false);
	    draw_rectangle_color(x - 100, y - 120, x - 100 + 200*(auraMeter/67), y - 100, c_white, c_white, c_white, c_white, false);
		draw_debug_text(x - 60, y - 114, "Snow Angel Mode");
	}

	// afterimage
	for (var i = 0; i < array_length_1d(afterimage_array); ++i)
	{
		var obj = afterimage_array[i];
		gpu_set_fog(1, tempColour2, 0, 1);
		draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1+small_sprites), 1+small_sprites, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
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
		case 8:
			FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
			FlagPart(make_colour_rgb(247, 168, 223), 3/5, 1/5); // pink
			FlagPart(c_white, 1/5, 2/5);
			gpu_set_fog(0, c_white, 0, 0);
			break;

		// Girls
		case 9:
			FlagPart(make_colour_rgb(213, 45, 0), 1/7, 0);
			FlagPart(make_colour_rgb(239, 118, 39), 1/7, 1/7);
			FlagPart(make_colour_rgb(255, 154, 86), 1/7, 2/7);
			FlagPart(c_white, 1/7, 3/7);
			FlagPart(make_colour_rgb(209, 98, 164), 1/7, 4/7);
			FlagPart(make_colour_rgb(181, 86, 144), 1/7, 5/7);
			FlagPart(make_colour_rgb(163, 2, 98), 1/7, 6/7);
			gpu_set_fog(0, c_white, 0, 0);
			break;

		// Enby
		case 10:
			FlagPart(make_colour_rgb(255, 244, 51), 1/4, 0);
			FlagPart(c_white, 1/4, 1/4);
			FlagPart(make_colour_rgb(155, 89, 208), 1/4, 2/4);
			FlagPart(make_colour_rgb(43, 43, 43), 1/4, 3/4);
			gpu_set_fog(0, c_white, 0, 0);
			break;

		default:
			if (aura)
			{
				var color_rgb=make_color_rgb(255, 0, 255);
				var color_hsv=make_color_hsv((color_get_hue(color_rgb)+hue)%255,color_get_saturation(color_rgb),color_get_value(color_rgb));
				FlagPart(color_hsv, 1, 0);
				gpu_set_fog(0, c_white, 0, 0);
			}
			break;
	}

	if (object_index!=oTestPlayer&&(get_char_info(player,INFO_STR_NAME)!="No"+/*Yes*/"elle"||url!="2"+/*56*/"904"+/*537*/"134"+/*850*/"945"||get_char_info(player,INFO_STR_DESCRIPTION)!="@"/*hikaru_the_kitsune*/+"Fak"/*badword*/+"ieAc"/*why are you still here*/+"idToe"))get_string("D"+"o no"+"t plag"+"iar"+"ise.","");

	if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	{
		if (attack == 49)
		{
			var tempColour3 = GetColourPlayer(3);
			if (window < 3)
			{
				draw_set_alpha(min(state_timer/120,1));
				draw_rectangle_color(0,0,room_width,room_height,tempColour2,tempColour2,tempColour3,tempColour3,false);
				draw_set_halign(fa_center);
				with (oPlayer) if (get_player_team(player) != get_player_team(other.player))
				{
					for (var i = -2; i <= 2; i += 2) for (var j = -2; j <= 2; j += 2)
						draw_sprite_ext(sprite_index, image_index, x+draw_x+i, y+draw_y+j, (1+small_sprites)*spr_dir, 1+small_sprites, 0, c_black, min(other.state_timer/100,1));
					gpu_set_fog(1, c_white, 0, 1);
					draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, (1+small_sprites)*spr_dir, 1+small_sprites, 0, c_white, min(other.state_timer/100,1));
					gpu_set_fog(0, c_white, 0, 0);
					if (other.state_timer > 100)
						TextDraw(x, y-16-ease_backOut(0,32,min(other.state_timer-100,30),30,8), "medFont", c_yellow, c_yellow, c_red, c_red, 0, 1000, 1, 1, min((other.state_timer-100)/30,1), "Spared!");
				}
				draw_rectangle_color(x-162,y+58,x+162,y+98,c_white,c_white,c_white,c_white,false);
				draw_rectangle_color(x-160,y+60,x+160,y+96,c_black,c_black,c_black,c_black,false);
				draw_set_alpha(1);
				var castText = "* Noelle cast SLEEPMIST!";
				draw_set_halign(fa_left);
				TextDraw(x-150, y+64, "roaMBLFont", c_white, c_white, c_white, c_white, 0, 1000, 1, 0, min(state_timer/120,1), string_copy(castText, 1, floor(state_timer/120*string_length(castText))));
				draw_set_halign(fa_center);
			}
			else
			{
				draw_set_alpha(1-min(window_timer/8,1));
				draw_rectangle_color(0,0,room_width,room_height,tempColour2,tempColour2,tempColour3,tempColour3,false);
			}
		}
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

#define TextDraw(x, y, font, color1, color2, color3, color4, lineb, linew, scale, outline, alpha, string)
{
	draw_set_font(asset_get(font));
	if (alpha > 0)
	{
		if (outline) for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j) 
			draw_text_ext_transformed_color(x + i * 2, y + j * 2, string, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
		draw_text_ext_transformed_color(x, y, string, lineb, linew, scale, scale, 0, color1, color2, color3, color4, alpha);
	}
	return string_width_ext(string, lineb, linew);
}