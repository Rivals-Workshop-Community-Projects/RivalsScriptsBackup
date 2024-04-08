if (get_synced_var(player) == 15005)
{
    if (object_index == asset_get("draw_result_screen") && get_synced_var(player)) winner_name = "100% Accurate Lucario Win!";
}
else
{
    var playerAlt = "currAlt" in self ? currAlt : get_player_color(player);
    if ("hue" in self && playerAlt == 27)
    {
        var color_rgb=make_color_rgb(255, 0, 255);
        var color_hsv1=make_color_hsv((color_get_hue(color_rgb)+hue)%255,color_get_saturation(color_rgb)*0.7,color_get_value(color_rgb));
        var color_hsv2=make_color_hsv((color_get_hue(color_rgb)+hue)%255,color_get_saturation(color_rgb),color_get_value(color_rgb)*0.6);
        set_character_color_slot(4,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
        set_character_color_slot(5,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
        set_character_color_slot(7,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
        set_article_color_slot(7,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
    }
    
    if ("outline_color" in self && "asCharge" in self)
    {
        var outline_colour = [  0,   0,  0  ];
        if (asCharge == asChargeMax && ((state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || attack != AT_NSPECIAL))
        {
        	var glow_value = sin(get_gameplay_time()/8)/2+1;
        	outline_color = [	lerp(255,outline_colour[0],glow_value), 
        						lerp(255,outline_colour[1],glow_value),
        						lerp(255,outline_colour[2],glow_value) ];
        }
        else outline_color = [lerp(outline_color[0], outline_colour[0], 0.1), lerp(outline_color[1], outline_colour[1], 0.1), lerp(outline_color[2], outline_colour[2], 0.1)];
    }
}