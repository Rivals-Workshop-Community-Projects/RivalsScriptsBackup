//
init_shader();

if ((get_instance_x(cursor_id) >= x + button_cord[0] && get_instance_x(cursor_id) <= x + button_cord[0] + 30) && (get_instance_y(cursor_id) >= y + button_cord[1] && get_instance_y(cursor_id) <= y + button_cord[1] + 26)) {
	suppress_cursor = true;
	if (menu_a_pressed) 
    {
		menu_a_pressed = false;
        css_gem++;
        if(css_gem == 3) css_gem = 0;
		sound_play(asset_get("mfx_option"))
	}
} else {
	suppress_cursor = false;
}

set_synced_var(player, css_gem)