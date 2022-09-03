//init_shader

//adjusting shading and stuff
if (get_player_color( player ) == 0) {
    set_character_color_slot(0, 0, 71, 237);
	set_character_color_slot(3, 255, 145, 35);
	
	set_character_color_shading(0, 1.1); //cap
	set_character_color_shading(1, 1); //shirt
	set_character_color_shading(2, 1); //pants
	set_character_color_shading(3, 1.1); //skin
	set_character_color_shading(4, 1); //gloves / scarf
	set_character_color_shading(5, 1); //hair
	set_character_color_shading(6, 1.6); //shoes / wand1
	set_character_color_shading(7, 1); //shoes / wand2
}

if (get_player_color( player ) == 1) {
	set_character_color_shading(1, 1);
	set_character_color_shading(2, 1);
	set_character_color_shading(3, 1.5);
	set_character_color_shading(4, 1.5);
	set_character_color_shading(7, .8);
}

if (get_player_color( player ) == 2) {
	set_character_color_shading(0, 1.4);
	set_character_color_shading(1, .5);
	set_character_color_shading(2, 1.2);
	set_character_color_shading(6, 1.6);
	set_character_color_shading(4, 4);
	set_character_color_shading(7, .8);
}

if (get_player_color( player ) == 3) {
	set_character_color_shading(1, 1.1);
	set_character_color_shading(4, 1.5);
}

if (get_player_color( player ) == 4) {
	set_character_color_shading(4, 2);
}

if (get_player_color( player ) == 6) {
	set_character_color_shading(0, .5);
	set_character_color_shading(1, 1.5);
	set_character_color_shading(2, .5);
	set_character_color_shading(4, 1.3);
	set_character_color_shading(6, .5);
}

if (get_player_color( player ) == 7) {
	set_character_color_shading(1, .8);
	set_character_color_shading(2, .6);
	set_character_color_shading(4, 4);
	set_character_color_shading(6, .6);
}

if (get_player_color( player ) == 8) {
	set_character_color_shading(1, 3);
	set_character_color_shading(4, 4);
}

if (get_player_color( player ) == 9) {
	set_character_color_shading(0, .7);
	set_character_color_shading(1, 2);
	set_character_color_shading(4, 2);
}

if (get_player_color( player ) == 10) {
	set_character_color_shading(1, 2);
	set_character_color_shading(4, 4);
}

if (get_player_color( player ) == 11) {
	set_character_color_shading(1, 1.5);
	set_character_color_shading(2, .8);
	set_character_color_shading(4, 2);
}

if (get_player_color( player ) == 12) {
	set_character_color_shading(0, .6);
	set_character_color_shading(1, 3);
	set_character_color_shading(2, .7);
	set_character_color_shading(4, 5);
}

if (get_player_color( player ) == 13) {
	set_character_color_shading(0, .5);
	set_character_color_shading(4, 2);
}

if (get_player_color( player ) == 14) {
	set_character_color_shading(1, 2);
	set_character_color_shading(4, 4);
}

if (get_player_color( player ) == 15) {
	set_character_color_shading(0, 0);
	set_character_color_shading(1, 0);
	set_character_color_shading(2, 0);
	set_character_color_shading(3, 0);
	set_character_color_shading(4, 0);
	set_character_color_shading(5, 0);
	set_character_color_shading(6, 0);
	set_character_color_shading(7, 0);
}

if (get_player_color( player ) == 16) {
	set_character_color_shading(0, 1.5); //cap
	set_character_color_shading(1, 3); //shirt
	set_character_color_shading(2, 1.5); //pants
	set_character_color_shading(3, 1.1); //skin
	set_character_color_shading(4, 2); //gloves / scarf
	set_character_color_shading(5, 6); //hair
	set_character_color_shading(6, .9); //shoes / wand1
	set_character_color_shading(7, 1.5); //shoes / wand2
}

