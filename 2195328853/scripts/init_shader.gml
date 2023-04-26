//init_shader - changing the local color profiles

var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

if (alt_cur == 7){
	for (var slot_num = 0; slot_num < 3; slot_num++){
		// reset the color to default
		var temp_r = get_color_profile_slot_r(7, slot_num);
		var temp_g = get_color_profile_slot_g(7, slot_num);
		var temp_b = get_color_profile_slot_b(7, slot_num);
		set_character_color_slot(slot_num, temp_r, temp_g, temp_b, .8);
		set_article_color_slot(slot_num, temp_r, temp_g, temp_b, .8);
		set_character_color_shading(slot_num, .8);
	}
}else if (alt_cur == 8){
	for (var slot_num = 0; slot_num < 3; slot_num++){
		// reset the color to default
		var temp_r = get_color_profile_slot_r(8, slot_num);
		var temp_g = get_color_profile_slot_g(8, slot_num);
		var temp_b = get_color_profile_slot_b(8, slot_num);
		set_character_color_slot(slot_num, temp_r, temp_g, temp_b, .8);
		set_article_color_slot(slot_num, temp_r, temp_g, temp_b, .8);
		set_character_color_shading(slot_num, .8);
	}
}else if (alt_cur == 13) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}else if (alt_cur == 16) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}else if (alt_cur == 26) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}