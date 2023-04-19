//

if(get_player_color(player) == 0){
    set_character_color_slot( 5, get_color_profile_slot_r( get_player_color(player), 2), get_color_profile_slot_g( get_player_color(player), 2), get_color_profile_slot_b( get_player_color(player), 2) );
}
if (get_player_color( player ) == 7) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}

if (get_player_color( player ) == 8) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}


if (get_player_color( player ) == 12 || get_player_color( player ) == 11 || get_player_color( player ) == 5) {
        set_character_color_shading( 2, 0.5 );
}


if (get_player_color( player ) == 6) {
        set_character_color_shading( 2, 0.8 );
}