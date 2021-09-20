//init_shader.gml

if (get_player_color(player) == 7){
    for(i = 0; i < 20; i++){
		set_character_color_shading(i, 0);
    }
}


if (get_player_color(player) == 6){
    for(i = 0; i < 6; i++){
		//outline_color = [30, 30, 30];
    }
}


if (get_player_color(player) == 7){
    for(i = 0; i < 6; i++){
		outline_color = [35, 67, 49];
    }
}

if (get_player_color(player) == 12){
	set_character_color_shading( 3, 1.8 );
}

if (get_player_color(player) == 15){
	set_character_color_shading( 0, 1.6 );
}

if (get_player_color(player) == 16){
	set_character_color_shading( 0, 1.5 );
}

if (get_player_color(player) == 17){
	set_character_color_shading( 0, 1.8 );
    for(i = 0; i < 6; i++){
		outline_color = [76, 53, 0];
    }
}