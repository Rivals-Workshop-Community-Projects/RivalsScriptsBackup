// init_shader.gml
// called every time the init_shader() function is run,
// either by the game or when the function is called by the user.
// Used for refreshing the character’s shader values after changing them.

// Black Socks for base color Date Girl
if (get_player_color(player) == 0) {
	set_character_color_slot(6, 1, 1, 1, 1);
	set_character_color_slot(7, 1, 1, 1, 1);
}

// Retro Color Code
if (get_player_color(player) == 7){
	for(i = 0; i < 8; i++){
		set_character_color_shading(i, 0);
	}
}