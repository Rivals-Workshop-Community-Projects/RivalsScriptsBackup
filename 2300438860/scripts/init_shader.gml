///

if get_player_color(player) = 13 && "color_hsv" in self{
    set_character_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_article_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    
}



if "attackbar" in self {
    if  attackbar != 0 {
    set_character_color_slot( 1, 255, 255, 255 ); //Hair n leg
    set_character_color_slot( 2, 16, 16, 16 ); //Green shirt
    set_character_color_slot( 3, 255, 255, 255 ); //Yellow shirt
    set_character_color_slot( 4, 255, 255, 255 ); //Skin
    set_character_color_slot( 5, 255, 255, 255 ); //weird blush
    set_character_color_slot( 6, 255, 255, 255 ); //Unessessary eyes
    set_character_color_slot( 7, 225, 225, 225 ); //unnamed color row
    }
}



