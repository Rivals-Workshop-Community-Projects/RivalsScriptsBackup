var playerAlt = "currAlt" in self ? currAlt : get_player_color(player);
switch (playerAlt)
{
	//paint
	case 21:
		if ("hue" in self)
		{
			var color_rgb=make_color_rgb(255, 0, 255);
			AltColour(3, make_color_hsv((color_get_hue(color_rgb)+hue)%255,color_get_saturation(color_rgb)*0.4,color_get_value(color_rgb)));
			AltColour(4, make_color_hsv((color_get_hue(color_rgb)+hue)%255,color_get_saturation(color_rgb)*0.6,color_get_value(color_rgb)*0.7));
		}
		break;
	//champion
	case 22:
	    AltColourAlpha(3, 0.3);
	    AltColourAlpha(4, 0.3);
	    break;
}

#define AltColourAlpha(_index, _alpha)
{
	var alt = get_player_color(player);
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