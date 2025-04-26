//init_shader

//adjusting shading and stuff
if (get_player_color( player ) == 0) {
	set_character_color_shading(0, 1); //cap
	set_character_color_shading(1, 1); //skin
	set_character_color_shading(2, 1); //shell
	set_character_color_shading(3, 1); //shoes
	set_character_color_shading(4, 1); //gloves
	set_character_color_shading(5, 1); //wings
	set_character_color_shading(6, 1); //shell belly
}

if (get_player_color( player ) == 2) {
	set_character_color_shading(0, 1);
	set_character_color_shading(1, 1);
	set_character_color_shading(2, .4);
	set_character_color_shading(4, .7);
	set_character_color_shading(3, 1.4);
	set_character_color_shading(6, .9);
}

if (get_player_color( player ) == 3) {
	set_character_color_shading(0, 1); //cap
	set_character_color_shading(1, 1); //skin
	set_character_color_shading(2, 1); //shell
	set_character_color_shading(3, 1); //shoes
	set_character_color_shading(4, 2); //gloves
	set_character_color_shading(5, 1); //wings
	set_character_color_shading(6, 1); //shell belly
}

if (get_player_color( player ) == 4) {
	set_character_color_shading(0, .9); //cap
	set_character_color_shading(2, .5); //shell
	set_character_color_shading(3, .5); //shoes
	set_character_color_shading(4, .5); //gloves
}

if (get_player_color( player ) == 5) {
	set_character_color_shading(0, 1); //cap
	set_character_color_shading(1, .75); //skin
	set_character_color_shading(2, .75); //shell
	set_character_color_shading(3, 1.5); //shoes
	set_character_color_shading(4, 2); //gloves
	set_character_color_shading(5, .75); //wings
}

if (get_player_color( player ) == 6) {
	set_character_color_shading(0, .9);
	set_character_color_shading(4, 2); //gloves
	set_character_color_shading(3, 1.5); //shoes
}

if (get_player_color( player ) == 7) {
	set_character_color_shading(0, 2);
	set_character_color_shading(2, 1.45); //shell
	set_character_color_shading(3, 1.5); //shoes
	set_character_color_shading(4, 2); //gloves
}

if (get_player_color( player ) == 8) {
	set_character_color_shading(0, 1.5);
	set_character_color_shading(3, 1.5); //shoes
	set_character_color_shading(4, 1.5); //gloves
}

if (get_player_color( player ) == 9) {
	set_character_color_shading(0, 2); //cap
	set_character_color_shading(1, .7); //skin
	set_character_color_shading(2, .7); //shell
	set_character_color_shading(3, 1.5); //shoes
	set_character_color_shading(4, 2); //gloves
	set_character_color_shading(5, 1); //wings
	set_character_color_shading(6, 1); //shell belly
}

if (get_player_color( player ) == 10) {
	set_character_color_shading(0, 1);
	set_character_color_shading(1, 1);
	set_character_color_shading(2, .9);
	set_character_color_shading(3, .7);
}

if (get_player_color( player ) == 11) {
	set_character_color_shading(0, 1);
	set_character_color_shading(1, .7);
	set_character_color_shading(2, .7);
	set_character_color_shading(3, .25); //shoes
	set_character_color_shading(4, 4); //gloves
	set_character_color_shading(6, .6); //shell belly
}