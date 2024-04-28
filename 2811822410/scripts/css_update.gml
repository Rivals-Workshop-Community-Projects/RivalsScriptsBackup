set_ui_element( UI_CHARSELECT, sprite_get( "charselect" ));


//Browser

text_timer += 1;
if !instance_exists(cursor_id) exit;

suppress_cursor = browser_show;

//Click Menu
if ((get_instance_x(cursor_id) >= x + button_cord[0] && get_instance_x(cursor_id) <= x + button_cord[0] + 30) && (get_instance_y(cursor_id) >= y + button_cord[1] && get_instance_y(cursor_id) <= y + button_cord[1] + 26) && menu_a_pressed) {
	menu_a_pressed = false;
	keyboard_lastkey = -1;
	search_term = "";
	browser_show = !browser_show;
	if (browser_show) {
		//game_start(curr_game);
		menu_state = "choose";
		sound_play(asset_get("mfx_confirm"));
	} else {
		sound_play(asset_get("mfx_back"));
	}
}

//Backing out of the games menu or game itself
if (menu_b_pressed) {
	sound_play(asset_get("mfx_back"));
	browser_show = false;
}

/*
if browser_show {
	if (menu_y_pressed || menu_x_pressed) {
		menu_y_pressed = false;
		menu_x_pressed = false;
		switch(browser_type) {
			case "Info Deluxe":
				//browser_type = "Frame Data";
				browser_type = "Patch Notes";
			break;
			case "Frame Data":
				browser_type = "Patch Notes";
			break;
			case "Patch Notes":
				browser_type = "Info Deluxe";
			break;
			default:
				browser_type = "Info Deluxe";
			break;
		}
		sound_play(asset_get("mfx_option"));
	}
}
*/









