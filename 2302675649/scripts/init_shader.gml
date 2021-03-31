switch (get_player_color(player))
{
    //early access alt
    case 5:
    {
        for(var i = 0; i < 8; ++i)
        {
            set_character_color_shading(i, 0);
        }
    }
    break;
    //metal
    case 18:
    {
        set_character_color_shading(0, 3);
        set_character_color_shading(7, 2);
    }
    break;
}

var                                             outline_colour = [  0,   0,  0  ];
if (get_player_color(player) == 3)              outline_colour = [  60,  0,  60 ];
else if (get_player_color(player) == 5)         outline_colour = [  35,  67, 49 ];

if ("teleFlash" in self && teleFlash > 0)
{
	var glow_value = abs(8-teleFlash)/8;
	outline_color = [	lerp(255,outline_colour[0],glow_value), 
						lerp(255,outline_colour[1],glow_value),
						lerp(255,outline_colour[2],glow_value) ];
}
else outline_color = outline_colour;