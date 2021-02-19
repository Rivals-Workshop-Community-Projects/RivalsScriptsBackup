switch (get_player_color(player))
{
    //early access alt
    case 9:
    {
        for(var i = 0; i < 8; ++i)
        {
            set_character_color_shading(i, 0);
        }
    }
    break;
    // asriel
    case 13:
    {
        if ("hue" in self)
        {
            hue+=3;
            hue%=255;
            var color_rgb=make_color_rgb(255, 0, 255);
            var color_hsv=make_color_hsv((color_get_hue(color_rgb)+hue)%255,color_get_saturation(color_rgb),color_get_value(color_rgb));
            set_character_color_slot(1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
            set_article_color_slot(1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
        }
    }
    break;
    // Colour selector
    case 15:
    {
        if ("altnum" in self)
        {
            // Raynb0w
            if (altnum == 61)
            {
                if ("hue" in self)
                {
                    hue+=3;
                    hue%=255;
                    var color_rgb=make_color_rgb(255, 0, 255);
	                for (var slot_num = 0; slot_num < 8; ++slot_num)
                    {
                        var temp_color_hsv = slot_num==4
                        ?make_color_hsv((color_get_hue(color_rgb)+hue+3*64)%255,color_get_saturation(color_rgb),color_get_value(color_rgb)/2)
                        :make_color_hsv((color_get_hue(color_rgb)+hue+slot_num*64)%255,color_get_saturation(color_rgb),color_get_value(color_rgb));
                        set_character_color_slot(slot_num,color_get_red(temp_color_hsv),color_get_green(temp_color_hsv),color_get_blue(temp_color_hsv));
                        set_article_color_slot(slot_num,color_get_red(temp_color_hsv),color_get_green(temp_color_hsv),color_get_blue(temp_color_hsv));
                    }
                }
            }
            else
            {
	            for (var slot_num = 0; slot_num < 8; ++slot_num)
                {
		            var temp_r = get_color_profile_slot_r(15, slot_num);
		            var temp_g = get_color_profile_slot_g(15, slot_num);
		            var temp_b = get_color_profile_slot_b(15, slot_num);
		            set_character_color_slot(slot_num, temp_r, temp_g, temp_b, 1);
		            set_article_color_slot(slot_num, temp_r, temp_g, temp_b, 1);
                }
            }
        }
    }
    break;
}

var                                         outline_colour = [  0,   0,  0  ];
if (get_player_color(player) == 9)          outline_colour = [  35,  67, 49 ];
else if (get_player_color(player) == 5)     outline_colour = [  60,  0,  60 ];
//else if (get_player_color(player) == 15 && "altnum" in self && altnum == 36) outline_colour = [ 126, 31, 213 ];
else if (get_player_color(player) == 15 && "altnum" in self && altnum == 36) outline_colour = [ 255, 48, 255 ];

if ("beast_deity" in self && beast_deity && beast_state)
{
    outline_color = [ 212, 175, 55 ];
}
else if ("as_flash" in self && as_flash > 0)
{
	var glow_value = abs(as_flash-8)/8;
	outline_color = [	lerp(255,outline_colour[0],glow_value), 
						lerp(255,outline_colour[1],glow_value),
						lerp(255,outline_colour[2],glow_value) ];
}
else if ("buffmag" in self)
{
	outline_color = [	lerp(outline_colour[0],get_color_profile_slot_r(get_player_color( player ), 1),1-buffmag/100), 
						lerp(outline_colour[1],get_color_profile_slot_g(get_player_color( player ), 1),1-buffmag/100),
						lerp(outline_colour[2],get_color_profile_slot_b(get_player_color( player ), 1),1-buffmag/100) ];
}