//EA
if (get_player_color(player) == 3){
        set_character_color_shading(2, 4);
    set_character_color_shading(3, 5);
}

if (get_player_color(player) == 4){
        set_character_color_shading(2, 3);
    set_character_color_shading(3, 3);
}

if (get_player_color(player) == 5){
        set_character_color_shading(2, 5);
    set_character_color_shading(3, 5);
}

if (get_player_color(player) == 7) && "color_hsv" in self{
        set_character_color_shading(2, 5);
    set_character_color_shading(3, 5);
    
    set_character_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_article_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_character_color_slot(5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_article_color_slot(5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    
}