//Victory screen shenanigans

if (object_index == asset_get("draw_result_screen")) {
	winner_lower = string_lower(winner_name);
	if (winner == player && string_count("team", winner_lower) == 0 && (get_player_color(player) == 19 || get_player_color(player) == 20)){
		winner_name = "Mario Kart wins!"
	};
}

if object_index != oPlayer exit;

//set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color))

//Aaa, a ghost!

if (get_player_color(player) == 13){
	for (var slot_num = 0; slot_num < 8; slot_num++){
		// reset the color to default
		var temp_r = get_color_profile_slot_r(13, slot_num);
		var temp_g = get_color_profile_slot_g(13, slot_num);
		var temp_b = get_color_profile_slot_b(13, slot_num);
		set_character_color_slot(slot_num, temp_r, temp_g, temp_b, .6);
		set_article_color_slot(slot_num, temp_r, temp_g, temp_b, .6);
		set_character_color_shading(slot_num, 0);
	}
}

if (get_player_color(player) == 14){
	for (var slot_num = 0; slot_num < 8; slot_num++){
		// reset the color to default
		var temp_r = get_color_profile_slot_r(14, slot_num);
		var temp_g = get_color_profile_slot_g(14, slot_num);
		var temp_b = get_color_profile_slot_b(14, slot_num);
		set_character_color_slot(slot_num, temp_r, temp_g, temp_b, .6);
		set_article_color_slot(slot_num, temp_r, temp_g, temp_b, .6);
		set_character_color_shading(slot_num, 0);
	}
}
