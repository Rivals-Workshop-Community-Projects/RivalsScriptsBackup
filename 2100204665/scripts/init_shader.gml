if (get_player_color( player ) == 5) {
    for (var slot_num = 0; slot_num < 6; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}
if (get_player_color( player ) == 7) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}
if (get_player_color( player ) == 8) {
    for (var slot_num = 0; slot_num < 9; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}
//please stop crashing-

if(get_player_color(player) == 0){
    set_character_color_slot( 2, 255, 255, 255 );
    set_character_color_slot( 3, 200, 182, 226 );
}