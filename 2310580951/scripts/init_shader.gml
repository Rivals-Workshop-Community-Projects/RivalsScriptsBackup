//init_shader

//adjusting shading and stuff
if (get_player_color( player ) == 0) {
    set_character_color_slot(1, 255, 0, 0, 1);
	
	set_character_color_shading(0, 1.1); //cap
	set_character_color_shading(1, 1.1); //shirt
	set_character_color_shading(2, 1); //overalls
	set_character_color_shading(3, 1); //shoes
	set_character_color_shading(4, 1); //gloves
	set_character_color_shading(5, 1); //skin
	set_character_color_shading(6, 1); //hair
	set_character_color_shading(7, 1); //overall buttons

}

if (get_player_color( player ) == 1) {

}

if (get_player_color( player ) == 2) {
	set_character_color_shading(3, 2); //shoes
	set_character_color_shading(4, 5); //gloves
}

if (get_player_color( player ) == 3) {

}

if (get_player_color( player ) == 4) {
	set_character_color_shading(0, .4); //cap
	set_character_color_shading(1, .4); //shirt
	set_character_color_shading(3, .4); //shoes
	set_character_color_shading(6, .5); //hair
}


if (get_player_color( player ) == 6) {
	set_character_color_shading(2, .5); //overalls
	set_character_color_shading(3, 2); //shoes
}

if (get_player_color( player ) == 7) {
	set_character_color_shading(0, .6); //cap
	set_character_color_shading(2, .6); //overalls
	set_character_color_shading(3, .6); //shoes
}

if (get_player_color( player ) == 9) {
	set_character_color_shading(0, .6); //cap
	set_character_color_shading(1, .6); //shirt
	set_character_color_shading(2, 1.5); //overalls
	set_character_color_shading(3, 2); //shoes
	set_character_color_shading(4, .3); //gloves
}

if (get_player_color( player ) == 14) {
	set_character_color_shading(3, .6); //shoes
}

if (get_player_color( player ) == 15) {
	set_character_color_shading(0, 1.5); //cap
	set_character_color_shading(2, 1.5); //overalls
	set_character_color_shading(4, 9); //gloves
}