//

if(get_player_color(player) == 0){
    set_character_color_slot( 1, 250, 247, 255 );
}
if (get_player_color( player ) == 7 || get_player_color( player ) == 8 || get_player_color( player ) == 9) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}