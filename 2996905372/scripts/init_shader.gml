//Color Mapping
if (get_player_color(player) == 0) {
    set_character_color_slot(1, 255, 102, 0, 1); // Pants
    set_character_color_slot(3, 30, 71, 193, 1); // Bands
    set_character_color_slot(6, 255, 215, 170, 1); // Bands
}

// GB no-shading
if (get_player_color(player) == 7){
	for(i = 0; i <= 4; i++){//>
		set_character_color_shading(i, 0);
	}
}

// Outline Color Swap
if (get_player_color(player) == 7){//>
	outline_color = [35, 67, 49];
} else if (get_player_color(player) == 17){
	outline_color = [76, 53, 0];
} else {
	outline_color = [0, 0, 0];
}


// Fixing shading on some alts

// Blue
if (get_player_color(player) == 1){
	set_character_color_shading( 0, 1.2 );
	set_character_color_shading( 1, 1.2 );
}

// Green
if (get_player_color(player) == 3 || get_player_color(player) == 4){
	set_character_color_shading( 0, 0.7 );
	set_character_color_shading( 1, 0.7 );
	if (get_player_color(player) == 4){
		set_character_color_shading( 4, 0 );
	}
}

// Pink
if (get_player_color(player) == 11){
	set_character_color_shading( 0, 1.2 );
	set_character_color_shading( 1, 1.2 );
}

// Armor, Android 18
if (get_player_color(player) == 12 || get_player_color(player) == 14){
	set_character_color_shading( 1, 0.5 );
}

// Kid Buu
if (get_player_color(player) == 15){
	set_character_color_shading( 6, 0 );
}

// Champion
if (get_player_color(player) == 19){
	var transparencyVar = 0.75;
	set_character_color_slot(0, 95, 97, 97, transparencyVar);
	set_character_color_slot(1, 95, 97, 97, transparencyVar);
}

// Camo
if (get_player_color(player) == 24){
	set_character_color_shading( 2, 0.5 );
	set_character_color_shading( 3, 0.5 );
}