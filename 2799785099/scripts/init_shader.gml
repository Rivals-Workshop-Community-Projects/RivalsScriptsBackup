//init_shader

//adjusting shading and stuff
if (get_player_color( player ) == 0) {
    set_character_color_slot(3, 227, 182, 23);
	set_character_color_slot(4, 227, 182, 23);
	
	set_character_color_shading(0, 1); //
	set_character_color_shading(1, 1); //
	set_character_color_shading(2, 1); //
	set_character_color_shading(3, 1); //
	set_character_color_shading(4, 1); //
	
}

if (get_player_color( player ) == 2) {	
	set_character_color_shading(1, .35); // hands
	
}

if (get_player_color( player ) == 4) {	
	set_character_color_shading(1, .65); // hands
	
}

if (get_player_color( player ) == 6) {	
	set_character_color_shading(3, 1.4); // cutter
}

if (get_player_color( player ) == 7) {	
	set_character_color_shading(0, .8); //
	set_character_color_shading(1, .5); //
	set_character_color_shading(2, 1.7); //
	set_character_color_shading(3, 1.4); //
	set_character_color_shading(4, 1.5); //
	
}

if (get_player_color( player ) == 8) {	
	set_character_color_shading(0, 0.75); // body
	set_character_color_shading(1, .8); // hands
	set_character_color_shading(2, .75); // shoes
	set_character_color_shading(3, .75); // cutter
	set_character_color_shading(4, .75); // shoulders
	
}

if (get_player_color( player ) == 9) {	
	set_character_color_shading(0, 1.5); // body
	set_character_color_shading(1, .85); // hands
	set_character_color_shading(2, 1.35); // shoes
	set_character_color_shading(3, 1.25); // cutter
	set_character_color_shading(4, 1.5); // shoulders
	
}