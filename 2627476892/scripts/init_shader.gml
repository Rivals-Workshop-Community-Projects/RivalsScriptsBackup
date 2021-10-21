//

if (get_player_color( player ) == 0) {
    set_character_color_slot( 4, 235, 239, 255 ); //Arms
    set_character_color_slot( 5, 70, 115, 255 ); //Symbol
    set_character_color_slot( 6, 70, 115, 255 ); //Hands
    set_character_color_slot( 7, 70, 115, 255 ); //Shoes
    set_article_color_slot( 4, 235, 239, 255 ); 
    set_article_color_slot( 5, 70, 115, 255 ); 
    set_article_color_slot( 6, 70, 115, 255 ); 
    set_article_color_slot( 7, 70, 115, 255 ); 
}

if (get_player_color(player) == 20){
for(i = 0; i < 8; i++){
set_character_color_shading(i, 0);
outline_color = [28, 46, 36];
}
}