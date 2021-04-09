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

outline_colour = [0, 0, 0];
switch (get_player_color(player))
{
    case 3:  outline_colour = [60, 0,  60]; break;
    case 5:  outline_colour = [35, 67, 49]; break;
    case 21: outline_colour = [90, 31,  7]; break;
}

if ("teleFlash" in self && teleFlash > 0)
{
	var glow_value = abs(8-teleFlash)/8;
	outline_color = [	lerp(255,outline_colour[0],glow_value), 
						lerp(255,outline_colour[1],glow_value),
						lerp(255,outline_colour[2],glow_value) ];
}
else outline_color = outline_colour;

if (object_index == asset_get("draw_result_screen") && gpu_get_alphatestfunc())
{
    winner_name = "Void Dragon Lonin wins!";
}