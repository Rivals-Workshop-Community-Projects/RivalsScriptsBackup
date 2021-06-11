//GB Alt
if (get_player_color(player) == 7){
	for(i = 0; i < 5; i++){
		set_character_color_shading(i, 0);
	}
}
if (get_player_color(player) == 13 || get_player_color(player) == 14){
	for(i = 0; i < 5; i++){
		set_character_color_shading(i, 0.5);
	}
}