var playerAlt = "currAlt" in self ? currAlt : get_player_color(player);
switch (playerAlt)
{
	case 2:
	case 7:
	case 12:
	case 17:
	case 19:
	case 20:
	case 22:
	case 23:
	case 26:
	case 30:
		set_character_color_shading(2, 1.6);
		break;
	//paint
	case 8:
		if ("hue" not in self) hue = 0;
		var color_rgb=make_color_rgb(255, 0, 255);
		AltColour(0, make_color_hsv((color_get_hue(color_rgb)+hue)%255,color_get_saturation(color_rgb)*0.5,color_get_value(color_rgb)));
		AltColour(3, make_color_hsv((color_get_hue(color_rgb)+hue+256/3*2)%255,color_get_saturation(color_rgb)*0.7,color_get_value(color_rgb)*0.7));
		AltColour(4, make_color_hsv((color_get_hue(color_rgb)+hue+256/3*2)%255,color_get_saturation(color_rgb)*0.5,color_get_value(color_rgb)));
		AltColour(5, make_color_hsv((color_get_hue(color_rgb)+hue+256/3)%255,color_get_saturation(color_rgb)*0.5,color_get_value(color_rgb)));
		AltColour(6, make_color_hsv((color_get_hue(color_rgb)+hue+256/3)%255,color_get_saturation(color_rgb)*0.7,color_get_value(color_rgb)*0.7));
		break;
	//champion
	case 29:
		AltColourAlpha(2, 0.4);
		set_character_color_shading(2, 1.6);
		break;
	//custom
	case 31:
		switch (string_upper(get_player_name(player)))
		{
			default: // riptide
				set_character_color_shading(2, 1.6);
				break;
			case "KARU":
			case "LUKARU":
				if ("hue" not in self) hue = 0;
				var color_rgb=make_color_rgb(255, 0, 255);
				AltColour(0, make_color_hsv((color_get_hue(color_rgb)+hue)%255,color_get_saturation(color_rgb)*0.5,color_get_value(color_rgb)));
				break;
		}
		break;
}

#define AltColourAlpha(_index, _alpha)
{
	var alt = "currAlt" in self ? currAlt : get_player_color(player);
	var temp_r = get_color_profile_slot_r(alt, _index);
	var temp_g = get_color_profile_slot_g(alt, _index);
	var temp_b = get_color_profile_slot_b(alt, _index);
	set_character_color_slot(_index, temp_r, temp_g, temp_b, _alpha);
	set_article_color_slot(_index, temp_r, temp_g, temp_b, _alpha);
}

#define AltColour(_index, _colour)
{
	var temp_r = color_get_red(_colour);
	var temp_g = color_get_green(_colour);
	var temp_b = color_get_blue(_colour);
	set_character_color_slot(_index, temp_r, temp_g, temp_b, 1);
	set_article_color_slot(_index, temp_r, temp_g, temp_b, 1);
}