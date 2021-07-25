if (get_player_color( player ) == 8) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}
//please stop crashing-

//init_shader
if(get_player_color(player) == 0){
    set_character_color_slot( 7, 255, 220, 100 );
}