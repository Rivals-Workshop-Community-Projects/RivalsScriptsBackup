//init_shader

//adjusting shading and stuff
if (get_player_color( player ) == 0) {
    set_character_color_slot(0, 0, 71, 237);
	set_character_color_slot(1, 20, 22, 98);
	set_character_color_slot(4, 44, 45, 57);
	
	set_character_color_shading(0, 1.1); //cap
	set_character_color_shading(1, 1.2); //shirt
	set_character_color_shading(2, 1); //pants
	set_character_color_shading(3, 1.1); //skin
	set_character_color_shading(4, 1.5); //gloves / scarf
	set_character_color_shading(5, 1); //hair
	set_character_color_shading(6, 1.6); //shoes / wand1
	set_character_color_shading(7, 1); //shoes / wand2
}

if (get_player_color( player ) == 8) {
	set_character_color_shading(1, 1);
	set_character_color_shading(2, 1);
	set_character_color_shading(3, 1.5);
	set_character_color_shading(4, 1.5);
	set_character_color_shading(7, .8);
}

if (get_player_color( player ) == 9) {
	set_character_color_shading(0, 1.4);
	set_character_color_shading(1, 1.2);
	set_character_color_shading(2, 1.2);
	set_character_color_shading(6, 1.6);
	set_character_color_shading(4, 5);
	set_character_color_shading(7, 2);
}

if (get_player_color( player ) == 3) {
	set_character_color_shading(1, .9);
	set_character_color_shading(4, 1.5);
}

if (get_player_color( player ) == 4) {
	set_character_color_shading(4, 2);
}

if (get_player_color( player ) == 5) {
	set_character_color_shading(4, 1.3);
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

if (get_player_color( player ) == 1) {
	set_character_color_shading(1, 3);
	set_character_color_shading(4, 4);
}

if (get_player_color( player ) == 10) {
	set_character_color_shading(1, 2);
	set_character_color_shading(4, 3);
}

if (get_player_color( player ) == 11) {
	set_character_color_shading(1, 2);
	set_character_color_shading(4, 3);
}

if (get_player_color( player ) == 12) {
	set_character_color_shading(0, 1.3); //cap
	set_character_color_shading(1, 1.6); //shirt
	set_character_color_shading(2, 1.3); //pants
	set_character_color_shading(3, 1.5); //skin
	set_character_color_shading(4, 3); //gloves / scarf
	set_character_color_shading(5, 1.6); //hair
	set_character_color_shading(6, 1.6); //shoes / wand1
	set_character_color_shading(7, 1.5); //shoes / wand2
}

if (get_player_color( player ) == 13) {
	set_character_color_shading(0, .4);
	set_character_color_shading(1, 3);
	set_character_color_shading(2, .4);
	set_character_color_shading(4, 3);
	set_character_color_shading(6, .5);
}

if (get_player_color( player ) == 14) {
	set_character_color_shading(0, .5);
	set_character_color_shading(4, 3);
}

if (get_player_color( player ) == 15) {
	set_character_color_shading(1, 2);
	set_character_color_shading(4, 4);
}

if (get_player_color( player ) == 16) {
	set_character_color_shading(0, 0);
	set_character_color_shading(1, 0);
	set_character_color_shading(2, 0);
	set_character_color_shading(3, 0);
	set_character_color_shading(4, 0);
	set_character_color_shading(5, 0);
	set_character_color_shading(6, 0);
	set_character_color_shading(7, 0);
}

if (get_player_color( player ) == 17) {
	set_character_color_shading(0, 1.1); //cap
	set_character_color_shading(1, 3); //shirt
	set_character_color_shading(2, 1); //pants
	set_character_color_shading(3, 1.1); //skin
	set_character_color_shading(4, 1.5); //gloves / scarf
	set_character_color_shading(5, 1); //hair
	set_character_color_shading(6, 1.6); //shoes / wand1
	set_character_color_shading(7, 1); //shoes / wand2
}

if (get_player_color( player ) == 18) {
	set_character_color_shading(0, 1); //cap
	set_character_color_shading(1, 2); //shirt
	set_character_color_shading(2, 1.2); //pants
	set_character_color_shading(3, 1.1); //skin
	set_character_color_shading(4, 4); //gloves / scarf
	set_character_color_shading(5, 4); //hair
}

if (get_player_color( player ) == 19) {
	set_character_color_shading(0, 1.5); //cap
	set_character_color_shading(1, 1.5); //shirt
	set_character_color_shading(2, 1.5); //pants
	set_character_color_shading(3, 1.5); //skin
	set_character_color_shading(4, 2); //gloves / scarf
	set_character_color_shading(5, 1.7); //hair
	set_character_color_shading(6, 1.6); //shoes / wand1
	set_character_color_shading(7, 1); //shoes / wand2
}

if (get_player_color( player ) == 2) {
	set_character_color_shading(1, 1.5);
	set_character_color_shading(2, .8);
	set_character_color_shading(4, 2);
}

if (get_player_color( player ) == 20) {
	set_character_color_shading(0, .5);
	set_character_color_shading(1, .5);
	set_character_color_shading(4, 2);
	set_character_color_shading(5, 1.5);
	set_character_color_shading(6, 1.5);
}

if (get_player_color( player ) == 21) {
	set_character_color_shading(0, 1.5); //cap
	set_character_color_shading(1, 3); //shirt
	set_character_color_shading(2, 1.5); //pants
	set_character_color_shading(3, 1.1); //skin
	set_character_color_shading(4, 2); //gloves / scarf
	set_character_color_shading(5, 6); //hair
	set_character_color_shading(6, .9); //shoes / wand1
	set_character_color_shading(7, 1.5); //shoes / wand2
}