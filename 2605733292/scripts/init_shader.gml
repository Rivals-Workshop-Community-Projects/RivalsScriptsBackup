//init_shader.gml

// early access
if (get_player_color(player) == 7){
	outline_color = [35, 67, 49];
    for(i = 0; i < 20; i++){//>
		set_character_color_shading(i, 0);
    }
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
    for(i = 0; i < 6; i++){//>
		outline_color = [76, 53, 0];
    }
}

// TAS5 Hopes and Dreams
if (get_player_color(player) == 23){
	outline_color=[32, 32, 32];
	set_character_color_shading( 1, 0.75 );
	set_character_color_shading( 3, 1.6 );
}