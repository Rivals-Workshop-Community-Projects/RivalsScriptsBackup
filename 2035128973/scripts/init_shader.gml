if ("hue" in self && get_player_color(player) == 27)
{
    var color_rgb=make_color_rgb(255, 0, 255);
    var color_hsv1=make_color_hsv((color_get_hue(color_rgb)+hue)%255,color_get_saturation(color_rgb)*0.7,color_get_value(color_rgb));
    var color_hsv2=make_color_hsv((color_get_hue(color_rgb)+hue)%255,color_get_saturation(color_rgb),color_get_value(color_rgb)*0.6);
    set_character_color_slot(4,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
    set_character_color_slot(5,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
    set_character_color_slot(7,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
    set_article_color_slot(7,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
}