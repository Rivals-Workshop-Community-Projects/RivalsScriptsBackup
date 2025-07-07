//Classic skins no shading
if (get_player_color( player ) == 18){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
}

//Color Separated Whites
if (get_player_color( player ) == 0) {
    set_character_color_slot(5, 240, 250, 255);
    set_article_color_slot(5, 240, 250, 255);
}