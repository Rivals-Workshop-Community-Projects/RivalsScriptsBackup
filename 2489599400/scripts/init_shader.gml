//init_shader

//adjusting shading and stuff
if (get_player_color( player ) == 0) {	
	set_character_color_shading(0, 1); //dispenser
	set_character_color_shading(1, 1); //tape
	set_character_color_shading(2, 1); //tape inside
	set_character_color_shading(3, 1); //tape wheel
	set_character_color_shading(4, 1); //dispenser bottom
	set_character_color_shading(5, 1); //dispenser blade
}

if (get_player_color( player ) == 3) {	
	set_character_color_shading(2, .5); //tape inside
}

if (get_player_color( player ) == 4) {	
	set_character_color_shading(2, .5); //tape inside
}

if (get_player_color( player ) == 6) {	
	set_character_color_shading(2, .3); //tape inside
}

if (get_player_color( player ) == 10) {	
	set_character_color_shading(0, .6); //dispenser
}

if (get_player_color( player ) == 15) {	
	set_character_color_shading(2, .5); //tape inside
}