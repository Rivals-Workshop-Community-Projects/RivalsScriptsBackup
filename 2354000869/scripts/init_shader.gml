//This init_shader.gml was directly copied from Chef. Update since then: I'm trans now :)
if (get_player_color(player) == 7){
	set_character_color_shading(0, 0);
	set_character_color_shading(1, 0);
	set_character_color_shading(2, 0);
}

if (get_player_color(player) == 9) or (get_player_color(player) == 10) {
	set_character_color_shading(2, 0);
}