//css_update

//alt effects
//purple, yellow and squawk
if get_player_color(player) == 5 || get_player_color(player) == 6 || get_player_color(player) == 8 {
	set_character_color_shading(0, 1.2);
	set_character_color_shading(1, 0.8);
}
//EA and cover
if get_player_color(player) == 7 || get_player_color(player) == 19 {
    for(i = 0; i < 8; i++){
		set_character_color_shading(i, 0);
		if get_player_color(player) == 7 {
			outline_color = [ 35, 67, 49 ];
		}
		if get_player_color(player) == 19 {
			set_character_color_shading(1, 1.5);
		}
    }
}
if get_player_color(player) == 26{
	for(i = 0; i < 8; i++){
		set_character_color_shading(i, 0.3);
	}
}

//MuttDude mode