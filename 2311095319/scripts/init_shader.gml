//init_shader.gml

if (get_player_color(player) == 7 || get_player_color(player) == 29){
    for(i = 0; i <= 7; i++){
		set_character_color_shading(i, 0);
    }
	if (get_player_color(player) != 29){
		outline_color = [35, 67, 49];
	}
}

// gold outline
if (get_player_color(player) == 17){
		outline_color = [76, 53, 0];
	}

// Shadow Mario
if (get_player_color(player) == 12){
    for(i = 0; i <= 7; i++){
		set_character_color_shading(i, 1);
    }
}

// color mapping (sleeves)
if get_player_color(player) == 0 {
	set_character_color_slot(1, 238, 3, 16, 1);
}