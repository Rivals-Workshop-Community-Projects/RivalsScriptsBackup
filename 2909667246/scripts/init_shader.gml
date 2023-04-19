
var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

if (alt_cur == 0) {
    //set_character_color_slot(1, 36, 171, 248);
    set_character_color_slot(2, 119, 73, 46);
}else if (alt_cur == 24) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}