//EA

if (get_player_color(player) == 7 || get_player_color(player) == 16){
	for(i = 0; i < 8; i++) if i != 6{
		set_character_color_shading(i, 0);
	}
}