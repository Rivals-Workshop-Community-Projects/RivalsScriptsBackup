if "cheapmode" in self {
if cheapmode != 3 {


    if (get_player_color(player) < 1) {
        set_character_color_slot( 0, 228, 255, 77); //Energy
    } else {
        set_character_color_slot( 0, 0, 241, 255 );
    }


} else {
    set_character_color_slot( 0, 255, 13, 13 ); //Energy
    set_character_color_slot( 1, 28, 28, 28 ); //Top shading
    set_character_color_slot( 2, 54, 54, 54 ); //Top
    set_character_color_slot( 3, 247, 247, 247 ); //Pattern1
    set_character_color_slot( 4, 204, 204, 204 ); //Pattern2
    set_character_color_slot( 5, 33, 33, 33 ); //Dark parts
    set_character_color_slot( 6, 255, 255, 255 ); //Fur
    set_character_color_slot( 7, 178, 177, 182 ); //Fur shading
    
    set_article_color_slot( 0, 255, 13, 13 ); //Energy
    set_article_color_slot( 1, 28, 28, 28 ); //Top shading
    set_article_color_slot( 2, 54, 54, 54 ); //Top
    set_article_color_slot( 3, 247, 247, 247 ); //Pattern1
    set_article_color_slot( 4, 204, 204, 204 ); //Pattern2
    set_article_color_slot( 5, 33, 33, 33 ); //Dark parts
    set_article_color_slot( 6, 255, 255, 255 ); //Fur
    set_article_color_slot( 7, 178, 177, 182 ); //Fur shading
    
    
}
}