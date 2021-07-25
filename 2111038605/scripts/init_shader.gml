//blush color
if (get_player_color(player) == 0){
    set_character_color_slot(2, 255, 255, 255, 1);
}

//ghost alt
if (get_player_color(player) == 9){
    set_character_color_slot(0, 255, 255, 255, .7);
    set_character_color_slot(1, 191, 204, 222, .7);
    set_character_color_slot(2, 255, 255, 255, .7);
    set_character_color_slot(3, 255, 255, 255, .7);
    set_character_color_slot(4, 191, 204, 222, .7);
}