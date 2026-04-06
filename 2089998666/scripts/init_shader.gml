//init_shader

//adjusting shading and stuff
if (get_player_color( player ) == 0) {
    set_character_color_slot(0, 93, 206, 36);
    set_character_color_slot(1, 213, 33, 9);
    set_character_color_slot(4, 211, 220, 176);
	
	set_character_color_shading(0, 1.25); //skin
	set_character_color_shading(1, 1.15); //saddle
	set_character_color_shading(2, 1); //shoes
	set_character_color_shading(3, 1); //soles
	set_character_color_shading(4, 1.45); //belly
}

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