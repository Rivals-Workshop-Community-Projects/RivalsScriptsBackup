//init_shader.gml

//Early Access
if (get_player_color(player) == 7){
    for(i = 0; i < 24; i++){
		set_character_color_shading(i, 0);
		outline_color = [35, 67, 49];
    }
}

//Gold Outline
if (get_player_color(player) == 17){
	outline_color = [76, 53, 0];
}

/*
//Fixing Shadin
if (get_player_color(player) == 6){
	set_character_color_shading( 0, 0.7 );
}
if (get_player_color(player) == 14){
	set_character_color_shading( 0, 0.5 );
}
*/