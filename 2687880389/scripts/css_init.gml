//set_synced_var(player, 0);
tournament_legal_mode_active = false;
special_color_available = false;

party_button_origin_x = 14;//110;//92;
party_button_origin_y = 46;//124;//104;
party_button_width = 15 * 2;//120;
party_button_height = 13 * 2;//48;
party_buton_border_buffer = 0;//4;
party_button_frame = 0;
party_mode_active = false;

special_button_origin_x = 50;//74;//8;
special_button_origin_y = 46;//124;//52;
special_button_width = 15 * 2;//120;
special_button_height = 13 * 2;//48;
special_buton_border_buffer = 0;//4;
special_button_frame = 0;
special_mode_active = false;

// Check if the loaded synced var is legal
var local_synced_var = get_synced_var(player);
if (local_synced_var != 0) {
	var local_selected_color = local_synced_var >> 2;
	if (local_selected_color != 0) {
		// Selected alt needs to match user name
		var name = get_player_name(player);
		var legal = false;
		switch (name) {
			case "ROBOT":
				legal = true;
				break;
			case "GAWR": // Nori
				legal = true;
				break;
			case "PEKO": // Also Nori (they still only get one alt, just using a different tag)
				legal = true;
				break;
			case "MILES": // Jordan
				legal = true;
				break;
			default:
				legal = false;
				break;
		}
		
		if (!legal) {
			local_synced_var &= 0x3;
		}
	}
	local_synced_var = tournament_legal_mode_active ? local_synced_var & 0xfffffffe : local_synced_var | 0x1;
	set_synced_var(player, local_synced_var);
	
	party_mode_active = (local_synced_var & 0x2) != 0;
	special_mode_active = local_selected_color != 0;
}