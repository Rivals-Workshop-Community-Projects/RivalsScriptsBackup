//init_shader.gml

//Early Access
if (get_player_color(player) == 4 || get_player_color(player) == 7 || get_player_color(player) == 15){
    for(i = 0; i < 24; i++){
		set_character_color_shading(i, 0);
		if (get_player_color(player) == 7){
			outline_color = [35, 67, 49];
		}
    }
}

if(get_player_color(player) == 11){
	set_character_color_shading(6, 0);
}

//Gold Outline
if (get_player_color(player) == 17){
	outline_color = [76, 53, 0];
}

//DL3 Outline
if (get_player_color(player) == 26){
	outline_color = [72, 40, 32];
}
