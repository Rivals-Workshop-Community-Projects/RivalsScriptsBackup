//init_shader

//adjusting shading and stuff
if (get_player_color( player ) == 4) {
	set_character_color_shading(0, .7);
}

if (get_player_color( player ) == 8) {
	set_character_color_shading(0, .7);
	set_character_color_shading(2, 1.5);
}

if (get_player_color( player ) == 15) {
	set_character_color_shading(0, 0);
	set_character_color_shading(1, 0);
	set_character_color_shading(2, 0);
	set_character_color_shading(3, 0);
	set_character_color_shading(4, 0);
}