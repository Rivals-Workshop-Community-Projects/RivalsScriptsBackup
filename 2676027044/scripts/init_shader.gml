// init_shader.gml
// called every time the init_shader() function is run,
// either by the game or when the function is called by the user.
// Used for refreshing the character’s shader values after changing them.

// Correctly Colors Mimikyu's Body
if (get_player_color(player) == 0) {
	set_character_color_slot(2, 226, 217, 175 ); //Belly (ColorMap)
	set_character_color_slot(4, 42, 41, 39 ); //Ears (ColorMap)
	set_character_color_slot(7, 165, 132, 135 ); //Flame extra color (just felt like changing it)
	set_article_color_slot(7, 215, 151, 247 ); //Flame extra color (just felt like changing it)
}

if (variable_instance_exists(id, "aurawheel") && get_player_color(player) == 12){
	if ( aurawheel == false) {
		set_character_color_slot( 0, 126, 69, 149 ); //Ghost Purp
		set_character_color_slot( 1, 241, 238, 157 ); //Body
		set_character_color_slot( 2, 194, 162, 109 ); //Belly (ColorMap)
		set_character_color_slot( 3, 42, 42, 38 ); //Shadows
		set_character_color_slot( 4, 105, 105, 105 ); //Ears (ColorMap)
		set_character_color_slot( 5, 194, 162, 109 ); //Tail
		set_character_color_slot( 6, 234, 173, 182 ); //Cheeks
		set_character_color_slot( 7, 163, 119, 181 ); //Will-O
	}
	else {
		set_character_color_slot( 0, 241, 238, 157 ); //Ghost Purp
		set_character_color_slot( 1, 124, 123, 128 ); //Body
		set_character_color_slot( 2, 171, 97, 199 ); //Belly (ColorMap)
		set_character_color_slot( 3, 161, 126, 69 ); //Shadows
		set_character_color_slot( 4, 171, 97, 199 ); //Ears (ColorMap)
		set_character_color_slot( 5, 171, 97, 199 ); //Tail
		set_character_color_slot( 6, 234, 173, 182 ); //Cheeks
		set_character_color_slot( 7, 163, 119, 181 ); //Will-O
	}
}