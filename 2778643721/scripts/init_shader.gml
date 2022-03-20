//

if(get_player_color(player) == 0){
    set_character_color_slot( 7, get_color_profile_slot_r( get_player_color(player), 2), get_color_profile_slot_g( get_player_color(player), 2), get_color_profile_slot_b( get_player_color(player), 2) );
}
if (get_player_color( player ) == 7) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}