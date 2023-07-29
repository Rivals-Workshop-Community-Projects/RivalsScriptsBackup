// Detect if we should display the special button
var name = get_player_name(player);
special_color_available = false;
var selected_special_color = 0;
switch (name) {
	case "ROBOT":
		special_color_available = true;
		selected_special_color = 1;
		break;
	case "GAWR": // Nori
		special_color_available = true;
		selected_special_color = 2;
		break;
	case "PEKO": // Also Nori (they still only get one alt, just using a different tag)
		special_color_available = true;
		selected_special_color = 2;
		break;
	case "MILES": // Jordan
		special_color_available = true;
		selected_special_color = 3;
		break;
	case "PIKA": // Pikakip
		special_color_available = true;
		selected_special_color = 4;
		break;
	default:
		special_mode_active = false;
		break;
}

if (instance_exists(cursor_id)) {
	var cursor_x = get_instance_x(cursor_id);
	var cursor_y = get_instance_y(cursor_id);

	// Bounds of party button
	// if hovering over button, add 2 to the image used
	if ((cursor_x > party_button_origin_x + party_buton_border_buffer + x)
		&& (cursor_x < party_button_origin_x + party_button_width - party_buton_border_buffer + x)
		&& (cursor_y > party_button_origin_y + party_buton_border_buffer + y)
		&& (cursor_y < party_button_origin_y + party_button_height - party_buton_border_buffer + y))
	{
		party_button_frame = 1;
		// If over one of the boxes, suppress the cursor and detect click
		suppress_cursor = 1;
		if (menu_a_pressed) {
			party_mode_active = !party_mode_active;
			sound_play(asset_get("mfx_forward"), false, noone, 1, 1);
		}
	} else {
		party_button_frame = 0;
	}
	if (party_mode_active) {
		party_button_frame += 2;
	}

	// Bounds of special button (if applicable)
	if (special_color_available) {
		if ((cursor_x > special_button_origin_x + special_buton_border_buffer + x)
			&& (cursor_x < special_button_origin_x + special_button_width - special_buton_border_buffer + x)
			&& (cursor_y > special_button_origin_y + special_buton_border_buffer + y)
			&& (cursor_y < special_button_origin_y + special_button_height - special_buton_border_buffer + y))
		{
			special_button_frame = 1;
			// If over one of the boxes, suppress the cursor and detect click
			suppress_cursor = 1;
			if (menu_a_pressed) {
				special_mode_active = !special_mode_active;
				sound_play(asset_get("mfx_forward"), false, noone, 1, 1);
			}
		} else {
			special_button_frame = 0;
		}
		if (special_mode_active) {
			special_button_frame += 2;
		}
	}


}

var synced_var = tournament_legal_mode_active ? 1 : 0; // turn off special features for tournament
synced_var |= party_mode_active ? 2 : 0; // set party mode
synced_var |= special_mode_active ? (selected_special_color << 2) : 0; // special alt, if applicable (0 is none)
set_synced_var(player, synced_var);