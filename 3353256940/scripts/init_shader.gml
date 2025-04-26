//init shader

switch (get_player_color(player)) {
    case 6:
        for (var slot_num = 0; slot_num < 8; slot_num++) {
            set_character_color_shading( slot_num, 0 );
        }
        outline_color=[35, 67, 49]
    break;
    case 20: 
        set_character_color_shading( 2, 0 );
        set_character_color_shading( 3, 0 );
}