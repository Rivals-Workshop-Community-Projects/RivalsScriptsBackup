// init_shader.gml

//Color Mapping (if needed)
if (get_player_color(player) == 0) {
    set_character_color_slot(1, 63, 77, 94, 1); // back
    // set_character_color_slot(3, 220, 229, 237, 1); // number + format buttons
    set_character_color_slot(4, 82, 103, 130, 1); // function buttons
}

// GB no-shading
if (get_player_color(player) == 7){
	for(i = 0; i <= 7; i++){//>
		set_character_color_shading(i, 0);
	}
}

// infamous
if (get_player_color(player) == 16){
	set_character_color_shading(1, 1.85);
	set_character_color_shading(5, 1.45);
}

// the virtual boy. ultimate classic system. according to wario, anyway
if (get_player_color(player) == 22){
	set_character_color_shading(0, 1.75);
	set_character_color_shading(1, 1.75);
	set_character_color_shading(5, 1.8);
}

// Outline Color
if (get_player_color(player) == 7){
	outline_color = [35, 67, 49];
} else if (get_player_color(player) == 17){
	outline_color = [76, 53, 0];
}