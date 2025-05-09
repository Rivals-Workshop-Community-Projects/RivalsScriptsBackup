//init_shader

//adjusting shading and stuff
if (get_player_color( player ) == 0) {
    set_character_color_slot(1, 0, 180, 255, 1);
    set_character_color_slot(3, 0, 180, 255, 1);	
	
	set_character_color_shading(0, 1); //shoes/bracelets
	set_character_color_shading(1, 1.25); //headband
	set_character_color_shading(2, 1); //shirt
	set_character_color_shading(3, 1); //skirt
	set_character_color_shading(4, 1.1); //skin
	set_character_color_shading(5, 1); //socks
	set_character_color_shading(6, 1); //hair
	set_character_color_shading(7, 1); //wand
}

if (get_player_color( player ) == 1) {
	set_character_color_shading(0, 1); //shoes/bracelets
	set_character_color_shading(2, 1.2); //shirt
	set_character_color_shading(4, 1.1); //skin
	set_character_color_shading(5, .5); //socks
	set_character_color_shading(7, 1); //wand
}

if (get_player_color( player ) == 2) {
	set_character_color_shading(2, 3); //shirt
	set_character_color_shading(3, .7); //skirt
	set_character_color_shading(6, 1.5); //hair
}

if (get_player_color( player ) == 3) {
	set_character_color_shading(0, .6); //shoes/bracelets
	set_character_color_shading(2, 2); //shirt
	set_character_color_shading(3, .7); //skirt
}

if (get_player_color( player ) == 4) {
	set_character_color_shading(5, 1.1); //socks
}

if (get_player_color( player ) == 5) {
	set_character_color_shading(2, .3); //shirt
	set_character_color_shading(0, .5); //shoes/bracelets
	set_character_color_shading(1, .8); //headband
	set_character_color_shading(3, .6); //skirt
	set_character_color_shading(5, .4); //socks
	set_character_color_shading(6, .7); //hair
}

if (get_player_color( player ) == 6) {
	set_character_color_shading(2, .7); //shirt
	set_character_color_shading(6, .5); //hair
}

if (get_player_color( player ) == 7) {
	set_character_color_shading(0, .5); //shoes/bracelets
	set_character_color_shading(1, .7); //headband
	set_character_color_shading(2, 3); //shirt
	set_character_color_shading(3, .6); //skirt
	set_character_color_shading(6, 3); //hair
}

if (get_player_color( player ) == 8) {
	set_character_color_shading(0, .7); //shoes/bracelets
	set_character_color_shading(2, 2); //shirt
}

if (get_player_color( player ) == 9) {
	set_character_color_shading(1, 1.25); //headband
	set_character_color_shading(2, 2); //shirt
	set_character_color_shading(4, 1.1); //skin
	set_character_color_shading(6, 3); //hair
	set_character_color_shading(7, 2); //wand
}


if (get_player_color( player ) == 10) {
	set_character_color_shading(0, 0);
	set_character_color_shading(1, 0);
	set_character_color_shading(2, 0);
	set_character_color_shading(3, 0);
	set_character_color_shading(4, 0);
	set_character_color_shading(5, 0);
	set_character_color_shading(6, 0);
	set_character_color_shading(7, 0);
}

if (get_player_color( player ) == 11) {
	set_character_color_shading(2, 3); //shirt
	set_character_color_shading(6, 2); //hair
}

if (get_player_color( player ) == 12) {
	set_character_color_shading(2, 2); //shirt
	set_character_color_shading(6, 6); //hair
	set_character_color_shading(4, 1.2); //skin
}

if (get_player_color( player ) == 13) {
	set_character_color_shading(2, 2); //shirt
	set_character_color_shading(4, 1.1); //skin
}

if (get_player_color( player ) == 14) {
	set_character_color_shading(5, .5); //socks
}

if (get_player_color( player ) == 15) {
	set_character_color_shading(0, .7); //shoes/bracelets
	set_character_color_shading(1, 1.25); //headband
	set_character_color_shading(2, 2.5); //shirt
	set_character_color_shading(3, .7); //skirt
	set_character_color_shading(4, 1.1); //skin
	set_character_color_shading(5, 1); //socks
	set_character_color_shading(6, .8); //hair
	set_character_color_shading(7, 1); //wand
}

if (get_player_color( player ) == 16) {
	set_character_color_shading(0, 1); //shoes/bracelets
	set_character_color_shading(1, 1.25); //headband
	set_character_color_shading(2, 3); //shirt
	set_character_color_shading(3, .5); //skirt
	set_character_color_shading(4, 1.6); //skin
	set_character_color_shading(5, .65); //socks
	set_character_color_shading(6, 5); //hair
	set_character_color_shading(7, 2); //wand
}

if (get_player_color( player ) == 17) {
	set_character_color_shading(0, .5); //shoes/bracelets
	set_character_color_shading(2, 3); //shirt
	set_character_color_shading(1, 1); //headband
	set_character_color_shading(3, .65); //skirt
	set_character_color_shading(4, 1.1); //skin
	set_character_color_shading(6, 3); //hair
	set_character_color_shading(7, 1.5); //wand
}