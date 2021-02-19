//init_shader.gml

if (get_player_color(player) == 7 || get_player_color(player) == 15){
    for(i = 0; i < 24; i++){
		set_character_color_shading(i, 0);
    }
	if (get_player_color(player) != 15){
		outline_color = [35, 67, 49];
	}
}

if (get_player_color(player) == 11){
    for(i = 0; i < 24; i++){
		set_character_color_shading(i, 1);
    }
}

if get_player_color(player) == 0 {
	set_character_color_slot(1, 238, 3, 16, 1);
}