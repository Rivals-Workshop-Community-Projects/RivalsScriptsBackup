//init_shader.gml
if ( get_player_color( player ) == 5 ){
	outline_color = [26, 26, 43]
}
if ( get_player_color( player ) == 6 ){
	outline_color = [43, 26, 26]
}
if ( get_player_color( player ) == 7 ){
	outline_color = [26, 43, 26]
}
if ( get_player_color( player ) == 14 || get_player_color( player ) == 16 ){
		set_character_color_shading(0, 0);
		set_character_color_shading(1, 0);
		set_character_color_shading(2, 0);
		set_character_color_shading(3, 0);
		set_character_color_shading(4, 0);
		set_character_color_shading(5, 0);
		set_character_color_shading(6, 0);
		set_character_color_shading(7, 0);
}
if ( get_player_color( player ) == 9 || get_player_color( player ) == 15 ){
	outline_color = [255, 255, 255]
}
if ( get_player_color( player ) == 0 ) {
    set_character_color_slot(0, 76,63,120)
    set_character_color_slot(2, 157,174,194)
}