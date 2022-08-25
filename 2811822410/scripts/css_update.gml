/*
//Browser

text_timer += 1;
if !instance_exists(cursor_id) exit;

suppress_cursor = browser_show;

//Click Menu
if ((get_instance_x(cursor_id) >= x + button_cord[0] && get_instance_x(cursor_id) <= x + button_cord[0] + 30) && (get_instance_y(cursor_id) >= y + button_cord[1] && get_instance_y(cursor_id) <= y + button_cord[1] + 26) && menu_a_pressed) {
	menu_a_pressed = false;
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

if browser_show {
	if (menu_y_pressed || menu_x_pressed) {
		menu_y_pressed = false;
		menu_x_pressed = false;
		if (browser_type == "text") {
			browser_type = "framedata";
		} else {
			browser_type = "text";
		}	
	}
}
*/









