//init_shader

//adjusting shading and stuff
if (get_player_color( player ) == 0) {
	set_character_color_shading(0, 1); //cap/pants
	set_character_color_shading(1, 1); //shirt
	set_character_color_shading(2, 1); //skin
	set_character_color_shading(3, 1); //shoes
	set_character_color_shading(4, 1); //gloves/scarf/hair
	set_character_color_shading(5, 1); //h
	set_character_color_shading(6, 1); //h shoes
	set_character_color_shading(7, 1); //blueytank
}

if (get_player_color( player ) == 1) {
	set_character_color_shading(2, 1.5); 
	set_character_color_shading(3, 1);
	set_character_color_shading(4, .8); //gloves/scarf/hair
}

if (get_player_color( player ) == 2) {
	set_character_color_shading(0, 1.5); //cap/pants
	set_character_color_shading(1, 5); //shirt
	set_character_color_shading(7, .6); //blueytank
	set_character_color_shading(3, 1.5); //shoes
}

if (get_player_color( player ) == 3) {
	set_character_color_shading(0, .8); //cap/pants
	set_character_color_shading(1, .7); //shirt
	set_character_color_shading(3, 2); //shoes
	set_character_color_shading(4, .7); //gloves/scarf/hair
}

if (get_player_color( player ) == 4) {
	set_character_color_shading(0, .6);
	set_character_color_shading(3, .9);
	set_character_color_shading(5, .6);	
	set_character_color_shading(7, .4);	
	set_character_color_shading(4, .6); //gloves/scarf/hair
}

if (get_player_color( player ) == 5) {
	set_character_color_shading(0, .8);
	set_character_color_shading(4, 3);	
}

if (get_player_color( player ) == 6) {
	set_character_color_shading(1, 2);
	set_character_color_shading(4, 1);
}

if (get_player_color( player ) == 7) {
	set_character_color_shading(4, .6);
}

if (get_player_color( player ) == 8) {
	set_character_color_shading(0, 1.5);
	set_character_color_shading(1, 6);
	set_character_color_shading(3, 1);
	set_character_color_shading(4, .7);	
}

if (get_player_color( player ) == 9) {
	set_character_color_shading(0, 0);
	set_character_color_shading(1, 0);
	set_character_color_shading(2, 0);
	set_character_color_shading(3, 0);
	set_character_color_shading(4, 0);
	set_character_color_shading(5, 0);
	set_character_color_shading(6, 0);
	set_character_color_shading(7, 0);
	outline_color = [0, 26, 49];
}

if (get_player_color( player ) == 10) {
	set_character_color_shading(1, 1.7);
	set_character_color_shading(2, 1.4);
	set_character_color_shading(4, .8);
	set_character_color_shading(5, 1.5);
	set_character_color_shading(6, 1.5);
	set_character_color_shading(7, 1.5);
}

if (get_player_color( player ) == 11) {
	set_character_color_shading(0, .8);
	set_character_color_shading(1, 2);
	set_character_color_shading(3, .8); //shoes
	set_character_color_shading(4, 4);	
	set_character_color_shading(7, .7);
}