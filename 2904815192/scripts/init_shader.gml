//init_shader.gml

if (get_player_color(player) == 7 || get_player_color(player) == 9){
	for(i = 0; i < 24; i++){//>
		set_character_color_shading(i, 0);
	}
}

if (get_player_color(player) == 7){//>
	outline_color = [35, 67, 49];
} else if (get_player_color(player) == 17){
	outline_color = [76, 53, 0];
} else {
	outline_color = [0, 0, 0];
}

//Color Mapping
if (get_player_color(player) == 0) {
	set_character_color_slot(2, 63, 63, 74, 1);
	set_character_color_slot(3, 63, 63, 74, 1);
	set_character_color_slot(4, 63, 63, 74, 1);
	set_character_color_slot(5, 255, 0, 0, 1);
	set_character_color_slot(7, 246, 253, 255, 1);
}

//Fixing Shading on some alts
//Blue
if (get_player_color(player) == 1){
	set_character_color_shading( 0, 1.7 );
	set_character_color_shading( 3, 1.4 );
}

//Red
if (get_player_color(player) == 2){
	set_character_color_shading( 0, 1.25 );
}

//White
if (get_player_color(player) == 4){
	set_character_color_shading( 0, 1.3 );
	set_character_color_shading( 1, 2 );
	set_character_color_shading( 2, 2 );
}

// Pink
if (get_player_color(player) == 5){
	set_character_color_shading( 0, 1.4 );
	set_character_color_shading( 2, 1.9 );
}

//Yellow
if (get_player_color(player) == 8){
	set_character_color_shading( 0, 1.5 );
}

//Brown
if (get_player_color(player) == 10){
	set_character_color_shading( 0, 1.1 );
}

//Violet
if (get_player_color(player) == 11){
	set_character_color_shading( 0, 1.4 );
}

//holy crap its the pringles man!!!
if (get_player_color(player) == 12){
	set_character_color_shading( 0, 1.55 );
	set_character_color_shading( 2, 1.35 );
}

//Old Artwork
if (get_player_color(player) == 13){
	set_character_color_shading( 0, 0.7 );
	set_character_color_shading( 2, 1.4 );
}

// walter... we need to cook
if (get_player_color(player) == 14){
	set_character_color_shading( 0, 1.4 );
	set_character_color_shading( 1, 1.4 );
	set_character_color_shading( 2, 1.4 );
}

//Orange
if (get_player_color(player) == 15){
	set_character_color_shading( 0, 1.4 );
	set_character_color_shading( 2, 1.4 );
}

// Infamous
if (get_player_color(player) == 16){
	set_character_color_shading( 0, 1.9 );
	set_character_color_shading( 1, 1.25 );
	set_character_color_shading( 2, 1.6 );
	set_character_color_shading( 3, 1.25 );
}

// Ranked Gold
if (get_player_color(player) == 18){
	set_character_color_shading( 0, 1.4 );
	set_character_color_shading( 2, 1.8 );
}

// Light Blue
if (get_player_color(player) == 21){
	set_character_color_shading( 0, 1.4 );
	set_character_color_shading( 1, 1.4 );
	set_character_color_shading( 2, 1.4 );
}

//Oops! You need to put the CD in the computer.
if (get_player_color(player) == 21){
	set_character_color_shading( 0, 1.4 );
	set_character_color_shading( 6, 1.4 );
}