//init_shader.gml

var alt_cur = get_player_color(player);

if variable_instance_exists(self, "timer") {
	if (state == PS_PARRY && window == 1) {
		set_character_color_slot(7, 0, 0, 0, 1);	
	}
}

if alt_cur == 0 {
	/*
	if object_index == asset_get("stage_HUD") || object_index == asset_get("cs_playerbg_obj") || object_index == asset_get("draw_result_screen") || object_index == asset_get("result_screen_box") {
		set_character_color_slot(6, 255, 255, 255, 1);
		set_article_color_slot(6, 255, 255, 255, 1);
	}
	*/
	
	set_character_color_slot(7, 0, 0, 0, 1);
	set_article_color_slot(7, 0, 0, 0, 1);
}

