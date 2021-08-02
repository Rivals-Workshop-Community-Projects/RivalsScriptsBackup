//init_shader
// True Default Colors
if get_player_color(player) == 0{
    set_character_color_slot(1, 228, 236, 247, 1);
    set_character_color_slot(2, 228, 236, 247, 1);
    set_character_color_slot(4, 78, 109, 199, 1);
}

if get_player_color(player) == 6{
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}