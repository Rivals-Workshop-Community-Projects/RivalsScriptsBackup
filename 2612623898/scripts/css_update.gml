//
set_synced_var(player, button_mode);

//
suppress_cursor = false;

if draw_button(button_cord[0], button_cord[1], 30, 26, sprite_get("ssl_hud_css")) {
	if (menu_a_pressed) {
		if button_mode {
			button_mode = false;
			sound_play(asset_get("mfx_confirm"));
		} else {
			button_mode = true;
			sound_play(asset_get("mfx_confirm"));
		}
		menu_a_pressed = false;
	}
} 

#define draw_button(_x, _y, _width, _height, _image)
	if ((get_instance_x(cursor_id) >= x + _x && get_instance_x(cursor_id) <= x + _x + _width) && (get_instance_y(cursor_id) >= y + _y && get_instance_y(cursor_id) <= y + _y + _height)) {
		suppress_cursor = true;
		return true;
	} else {
		return false;
	}
