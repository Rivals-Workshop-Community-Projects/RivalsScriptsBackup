//GB Alt
if (get_player_color(player) == 7){
	for(i = 0; i < 6; i++){
		set_character_color_shading(i, 0);
	}
}
if (get_player_color(player) == 18){
	for(i = 0; i < 6; i++){
		set_character_color_shading(i, 1.75);
	}
}