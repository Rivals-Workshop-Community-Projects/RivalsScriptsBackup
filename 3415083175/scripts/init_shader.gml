//init-shader

var alt_cur = get_player_color(player);
if alt_cur == 0 && variable_instance_exists(self, "timer") && !(state == PS_PARRY && window == 1) {
    set_character_color_slot(0, 33, 33, 36, 1);
	set_article_color_slot(0, 33, 33, 36, 1);
    set_character_color_slot(1, 20, 22, 23, 1);
    set_article_color_slot(1, 20, 22, 23, 1);
}


//victory/css/stage select screen draw

if object_index == asset_get("stage_HUD") || object_index == asset_get("cs_playerbg_obj") || object_index == asset_get("draw_result_screen") || object_index == asset_get("result_screen_box") {
	if alt_cur == 0 {
		set_character_color_slot(0, 33, 33, 36, 1);
		set_article_color_slot(0, 33, 33, 36, 1);
	    set_character_color_slot(1, 20, 22, 23, 1);
	    set_article_color_slot(1, 20, 22, 23, 1);
	}
}