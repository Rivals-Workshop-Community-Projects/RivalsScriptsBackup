
if (get_player_color( player ) == 7){ //omari
if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
outline_color=[153, 19, 255]
init_shader();
}
}

if  (get_player_color(player) == 24) { 
    if(start_predraw){
    set_character_color_slot( 5, 0, 0, 0, 0); 
    set_character_color_slot( 7, 0, 0, 0, 0); 
    set_article_color_slot( 7, 0, 0, 0, 0); 
    set_article_color_slot( 5, 0, 0, 0, 0); 
    }
}