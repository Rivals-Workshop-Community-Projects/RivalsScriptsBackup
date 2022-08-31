//early access alt
if (get_player_color(player) == 7){
    outline_color = [35, 67, 49];
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
}

//champion alt
if (get_player_color(player) == 13){
    set_character_color_slot(0, 255, 255, 255, .5);
    set_character_color_slot(6, 176, 146, 157, .5);
}

//hector alt
if (get_player_color(player) == 10){
    outline_color = [129, 16, 180];
}

//masked alt
if (get_player_color(player) == 9 && masking_alt){
    set_article_color_slot( 7, 0, 0, 0, 0 );
}