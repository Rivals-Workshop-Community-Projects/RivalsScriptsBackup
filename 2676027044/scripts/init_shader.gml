// init_shader.gml
// called every time the init_shader() function is run,
// either by the game or when the function is called by the user.
// Used for refreshing the character’s shader values after changing them.

// Correctly Colors Mimikyu's Body
if (get_player_color(player) == 0) {
	set_character_color_slot(2, 226, 217, 175 ); //Belly (ColorMap)
	set_character_color_slot(4, 42, 41, 39 ); //Ears (ColorMap)
}