if ("button_cord" not in self) exit;

if ((get_instance_x(cursor_id) >= x + button_cord[0] && get_instance_x(cursor_id) <= x + button_cord[0] + 30) && (get_instance_y(cursor_id) >= y + button_cord[1] && get_instance_y(cursor_id) <= y + button_cord[1] + 26)) {
	suppress_cursor = true;
	if (menu_a_pressed) {
		menu_a_pressed = false;
		css_port_select = !css_port_select;
		sound_play(asset_get("mfx_option"))
	}
} else {
	suppress_cursor = false;
}

set_synced_var(player, css_port_select)

if (css_port_select) {
	set_victory_portrait( sprite_get( "portrait_o" ));
	set_ui_element( UI_CHARSELECT, sprite_get( "charselect_o" ));
	set_victory_sidebar( sprite_get( "result_small_o" ));
} else {
	set_victory_portrait( sprite_get( "portrait" ));
	set_ui_element( UI_CHARSELECT, sprite_get( "charselect" ));
	set_victory_sidebar( sprite_get( "result_small" ));
}


