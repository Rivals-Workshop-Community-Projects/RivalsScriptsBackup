if(get_player_color( player) == 12){
    set_character_color_shading( 0, 0.5 );
    set_character_color_shading( 5, 0.7 );
        
    hue = (hue + hue_speed) % 255; //finds the hue and shifts it
    var color_hsv1 = make_color_hsv(hue, 120, 250); //creates a new  colour variable using the shifted hue
    set_character_color_slot( 3, color_get_red(color_hsv1), color_get_green(color_hsv1), color_get_blue(color_hsv1) ); //fire mid
    
    set_article_color_slot( 3, color_get_red(color_hsv1), color_get_green(color_hsv1), color_get_blue(color_hsv1) ); //fire mid
}