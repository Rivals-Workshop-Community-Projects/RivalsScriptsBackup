if (get_player_color(player) == 7){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
        outline_color = [35, 67, 49];
    }
}

if (get_player_color(player) == 18){
    set_character_color_slot(0, 255, 255, 255, .5);
    set_character_color_slot(1, 176, 146, 157, .5);
    set_character_color_slot(5, 176, 146, 157, .5);
}
