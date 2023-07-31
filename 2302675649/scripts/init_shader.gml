var playerAlt = "currAlt" in self ? currAlt : get_player_color(player);
switch (playerAlt)
{
	//default
	case 0:
	{
		if ("isFurry" in self?isFurry:get_synced_var(player))
		{
			AltColour(1, make_color_rgb(255, 255, 255));
			AltColour(2, make_color_rgb(160, 164, 190));
			AltColour(5, make_color_rgb(255, 239, 99));
			AltColour(6, make_color_rgb(222, 149, 31));
		}
		else
		{
			AltOpacity(1, 1);
			AltOpacity(2, 1);
			AltOpacity(5, 1);
			AltOpacity(6, 1);
		}
	}
	break;
	//early access alt
	case 5:
	{
		for(var i = 0; i < 8; ++i) set_character_color_shading(i, 0);
	}
	break;
	//tanjiro
	case 24:
	{
		if ("state" in self)
		{
			if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack != AT_TAUNT && attack != AT_TAUNT_2 && attack != AT_EXTRA_1)
			{
				if (get_player_damage(player) < 100)
					set_character_color_slot(0, 102, 182, 222, 1);
				else if (state_timer % 3)
					set_character_color_slot(0, 242, 69, 27, 1);
				else
					set_character_color_slot(0, 254, 251, 112, 1);
			}
			else
				set_character_color_slot(0, 24, 30, 37, 1);
		}
	}
	break;
	//paint
	case 26:
	{
		if ("hue" not in self) hue = 0;
		var color_rgb1=make_color_rgb(255, 255, 128);
		var color_rgb2=make_color_rgb(200, 150, 60);
		AltColour(0, make_color_hsv((color_get_hue(color_rgb1)+hue)%255,color_get_saturation(color_rgb1),color_get_value(color_rgb1)));
		AltColour(7, make_color_hsv((color_get_hue(color_rgb2)+hue)%255,color_get_saturation(color_rgb2),color_get_value(color_rgb2)));
	}
	break;
	//voidfox
	case 27:
	{
		if ("state" in self)
		{
			if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack != AT_TAUNT && attack != AT_TAUNT_2 && attack != AT_EXTRA_1)
				set_character_color_slot(0, 162, 255, 0, 1);
			else
				set_character_color_slot(0, 18, 18, 18, 1);
		}
	}
	break;
	//champion
	case 28:
	{
		AltOpacity(0, 0.6);
		AltOpacity(5, 0.6);
		AltOpacity(6, 0.6);
	}
	break;
	case 31:
	{
		switch (string_upper(get_player_name(player)))
		{
			case "LUKARU":
			case "KARU":
			case "AURORA":
			case "AURO<3":
				set_character_color_shading(7, 1.5);
				break;
			case "MAKO":
			case "4MAKO":
				set_character_color_shading(7, 1.5);
				// Endless Now
				if ("isFurry" in self?isFurry:get_synced_var(player))
				{
					AltColour(0, make_color_rgb(172, 61, 142));
					AltColour(1, make_color_rgb(133, 142, 148));
					AltColour(2, make_color_rgb(87, 95, 112));
					AltColour(3, make_color_rgb(72, 70, 87));
					AltColour(4, make_color_rgb(57, 44, 64));
					AltColour(5, make_color_rgb(201, 200, 193));
					AltColour(6, make_color_rgb(168, 156, 134));
					AltColour(7, make_color_rgb(140, 136, 123));
				}
				else
				{
					for (var i = 0; i < 8; ++i)
						AltOpacity(i, 1);
				}
				break;
		}
	}
	break;
}

outline_colour = [0, 0, 0];
switch (playerAlt)
{
	case 3:  outline_colour = [60,   0,   60]; break;
	case 5:  outline_colour = [35,   67,  49]; break;
	case 15: outline_colour = [40,   0,   40]; break;
	case 21: outline_colour = [90,   31,   7]; break;
}

if ("teleFlash" in self && teleFlash > 0)
{
	var glow_value = abs(8-teleFlash)/8;
	outline_color = [	lerp(255,outline_colour[0],glow_value), 
						lerp(255,outline_colour[1],glow_value),
						lerp(255,outline_colour[2],glow_value) ];
}
else outline_color = outline_colour;

#define AltColour(_index, _colour)
{
	var temp_r = color_get_red(_colour);
	var temp_g = color_get_green(_colour);
	var temp_b = color_get_blue(_colour);
	set_character_color_slot(_index, temp_r, temp_g, temp_b, 1);
	set_article_color_slot(_index, temp_r, temp_g, temp_b, 1);
}

#define AltOpacity(_index, _opacity)
{ 
	var currentAlt = "currAlt" in self ? currAlt : get_player_color(player);
	var temp_r = get_color_profile_slot_r(currentAlt, _index);
	var temp_g = get_color_profile_slot_g(currentAlt, _index);
	var temp_b = get_color_profile_slot_b(currentAlt, _index);
	set_character_color_slot(_index, temp_r, temp_g, temp_b, _opacity);
	set_article_color_slot(_index, temp_r, temp_g, temp_b, _opacity);
}