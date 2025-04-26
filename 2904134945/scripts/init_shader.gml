var playerAlt = "currAlt" in self ? currAlt : get_player_color(player);
switch (playerAlt)
{
	//paint
	case 21:
	{
		if ("hue" not in self) hue = 0;
		AltColour(0, make_color_hsv(hue%255,130,255));
		AltColour(2, merge_colour(make_color_hsv(hue%255,150,230), make_color_hsv(180,255,230), 0.4));
	}
	break;
	// custom
	case 30:
	{
		switch (string_upper(get_player_name(player)))
		{
			case "HELP": // Nyan
			case "M30W":
				if ("hue" not in self) hue = 0;
				var color_rgb1=make_color_rgb(216, 136, 219);
				var color_rgb2=make_color_rgb(115, 85, 163);
				AltColour(1, make_color_hsv((color_get_hue(color_rgb1)+hue)%255,color_get_saturation(color_rgb1),color_get_value(color_rgb1)));
				AltColour(3, make_color_hsv((color_get_hue(color_rgb2)+hue)%255,color_get_saturation(color_rgb2),color_get_value(color_rgb2)));
				break;
		}
	}
	break;
}

outline_colour = [0, 0, 0];
switch (playerAlt)
{
	case 7:  outline_colour =	[15, 56, 15]; break;
	case 15:  outline_colour =	[37, 11, 45]; break;
	case 18:  outline_colour =	[48, 0, 0]; break;
	case 19:  outline_colour =	[102, 28, 15]; break;
	case 26:  outline_colour =	[47, 38, 61]; break;
}
outline_color = outline_colour;

#define AltColour(_index, _colour)
{
	var temp_r = color_get_red(_colour);
	var temp_g = color_get_green(_colour);
	var temp_b = color_get_blue(_colour);
	set_character_color_slot(_index, temp_r, temp_g, temp_b, 1);
	set_article_color_slot(_index, temp_r, temp_g, temp_b, 1);
}