//init_shader.gml

if (get_player_color(player) == 7){
    for(i = 0; i < 24; i++){
		set_character_color_shading(i, 0);
		outline_color = [35, 67, 49];
    }
}

if (get_player_color(player) == 17){
		outline_color = [76, 53, 0];
	}

// color mapping
if get_player_color(player) == 0 {
	set_character_color_slot(3, 255, 255, 255, 1);
	set_character_color_slot(4, 255, 255, 255, 1);
	set_character_color_slot(5, 255, 255, 255, 1);
	set_character_color_slot(6, 255, 255, 255, 1);
}

//Fixing Shading on some alts

// Jet
if (get_player_color(player) == 3){
	set_character_color_shading( 6, 1.4 );
}

// Classic
if (get_player_color(player) == 8){
	set_character_color_shading( 2, 1.4 );
}

// Chip
if (get_player_color(player) == 15){
	set_character_color_shading( 3, 1.4 );
}