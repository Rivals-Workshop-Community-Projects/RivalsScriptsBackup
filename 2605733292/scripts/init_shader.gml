//init_shader.gml

// shadow
if (get_player_color(player) == 6){
	set_character_color_shading( 2, 0.625 );
}

// early access
if (get_player_color(player) == 7){
	outline_color = [35, 67, 49];
    for(i = 0; i < 20; i++){//>
		set_character_color_shading(i, 0);
    }
}

// yellow
if (get_player_color(player) == 8){
	set_character_color_shading( 3, -5 );
}

// brown
if (get_player_color(player) == 10){
	set_character_color_shading( 0, 1.6 );
}

// sapphire
if (get_player_color(player) == 12){
	set_character_color_shading( 3, 1.8 );
}

// red + blue
if (get_player_color(player) == 15){
	set_character_color_shading( 0, 1.6 );
}

// infamous
if (get_player_color(player) == 16){
	set_character_color_shading( 0, 1.5 );
}

// pure gold
if (get_player_color(player) == 17){
	set_character_color_shading( 0, 1.8 );
	set_character_color_shading( 3, 1.8 );
    for(i = 0; i < 6; i++){//>
		outline_color = [76, 53, 0];
    }
}

// citrus
if (get_player_color(player) == 24){
	set_character_color_shading( 3, -4 );
}

// nuzl alt
if (get_player_color(player) == 26){
	set_character_color_shading( 6, 0.65 );
}

// TAS5 Hopes and Dreams
if (get_player_color(player) == 27){
	outline_color=[32, 32, 32];
	set_character_color_shading( 1, 0.75 );
	set_character_color_shading( 3, 1.6 );
	set_character_color_shading( 6, 0.75 );
}