// init_shader.gml

if ("curr_alt_costume" not in self){
	curr_alt_costume = false;
}

/*
//Color Mapping (if needed)
if (get_player_color(player) == 0) {
    set_character_color_slot(slotNum, R, G, B, 1); //
}
*/

// ==============================================================================================

//Color Mapping
if (get_player_color(player) == 0) {
    set_character_color_slot(2, 51, 181, 64, 1); // Shoes
}

// No Shading
if (get_player_color(player) == 7 || get_player_color(player) == 15){
	for(i = 0; i <= 7; i++){//>
		set_character_color_shading(i, 0);
	}
}

// Outline Color
if (get_player_color(player) == 7){
	outline_color = [35, 67, 49];
} else if (get_player_color(player) == 17){
	outline_color = [76, 53, 0];
}

// Blue Shell
if (get_player_color(player) == 1){
	set_character_color_shading(0, 1.4); // shell
}

// Red Shell
if (get_player_color(player) == 2){
	set_character_color_shading(1, 1.1); // skin
}

// Greener shell
if (get_player_color(player) == 4){
	set_character_color_shading(2, 0.45); // shoes
}

// Dry Bones
if (get_player_color(player) == 4){
	set_character_color_shading(1, 1.5); // skin
	set_character_color_shading(5, 1.35); // belly
	set_character_color_shading(7, 0); // eye color
}

// Yellow
if (get_player_color(player) == 8){
	set_character_color_shading(0, 1.2); // shell
	set_character_color_shading(2, 2); // shoes
}

// Brown
if (get_player_color(player) == 9){
	set_character_color_shading(1, 1.3); // skin
}

// Kuzzle
if (get_player_color(player) == 13){
	set_character_color_shading(1, 1.3); // skin
}

// Pure Gold
if (get_player_color(player) == 17){
	set_character_color_shading(1, 1.35); // skin
}

// Champion
if (get_player_color(player) == 19){
	set_character_color_shading(3, 0.6); // shoe soles
	set_character_color_shading(4, 0.6); // shell rim
	set_character_color_shading(7, 1.5); // eyes
}

// Parakarry
if (get_player_color(player) == 25){
	set_character_color_shading(7, 0.75); // scarf
}


// ====

/*
// Alternate Costumes
if (get_player_color(player) < 24){			// Default + Roving Racers (Super Mario Odyssey)
	// eye whites, pants
	set_color_profile_slot( 0, 6, 249, 249, 240 );
	set_color_profile_slot_range( 6, 6, 4, 22 );

	// eye col, scarf, hoodie
	set_color_profile_slot( 0, 7, 77, 97, 91 );
	set_color_profile_slot_range( 7, 11, 17, 49 );
} else if (get_player_color(player) >= 27 && get_player_color(player) <= 24){	// Kooper (Paper Mario)
	// eye whites, pants
	set_color_profile_slot( 0, 6, 249, 249, 240 );
	set_color_profile_slot_range( 6, 6, 4, 22 );
	
	// eye col, scarf, hoodie
	set_color_profile_slot( 0, 7, 93, 192, 244 );
	set_color_profile_slot_range( 7, 1, 31, 46 );
} else if (get_player_color(player) >= 31 && get_player_color(player) <= 28){	// Koops (Paper Mario: The Thousand-Year Door)

	// eye whites, pants
	set_color_profile_slot( 0, 6, 21, 111, 225 );
	set_color_profile_slot_range( 6, 1, 7, 44 );

	// eye col, scarf, hoodie
	set_color_profile_slot( 0, 7, 93, 192, 244 );
	set_color_profile_slot_range( 7, 1, 31, 46 );
}
*/

// Roving Racer Alternate Colors
if (get_player_color(player) <= 23 && get_player_color(player) >= 21){
	set_character_color_shading(0, 1.45); // shell
	set_character_color_shading(2, 1.45); // shoe
}

// King K
if (get_player_color(player) == 31){
	set_character_color_shading(6, 0.6); // pants
}


if (!instance_exists(curr_alt_costume)){
	if (get_player_color(player) == 20
	|| get_player_color(player) == 21
	|| get_player_color(player) == 22
	|| get_player_color(player) == 23){
		curr_alt_costume = 1;
	} else if (get_player_color(player) == 24
	|| get_player_color(player) == 25
	|| get_player_color(player) == 26
	|| get_player_color(player) == 27){
		curr_alt_costume = 2;
	} else if (get_player_color(player) == 28
	|| get_player_color(player) == 29
	|| get_player_color(player) == 30
	|| get_player_color(player) == 31){
		curr_alt_costume = 3;
	} else {
		curr_alt_costume = 0;
	}
}

if (curr_alt_costume == 0 || curr_alt_costume == 1){
	//print("no costume / racer")
	
	// eye whites, pants
	set_color_profile_slot( 0, 6, 249, 249, 240 );
	set_color_profile_slot_range( 6, 6, 4, 22 );

	// eye col, scarf, hoodie
	set_color_profile_slot( 0, 7, 77, 97, 91 );
	set_color_profile_slot_range( 7, 11, 17, 49 );
}

if (curr_alt_costume == 2){
	//print("kooper")
	
	// eye whites, pants
	set_color_profile_slot( 0, 6, 249, 249, 240 );
	set_color_profile_slot_range( 6, 6, 4, 22 );
	
	// eye col, scarf, hoodie
	set_color_profile_slot( 0, 7, 93, 192, 244 );
	set_color_profile_slot_range( 7, 1, 31, 46 );
}

if (curr_alt_costume == 3){
	//print("koops")
	
	// eye whites, pants
	set_color_profile_slot( 0, 6, 0, 81, 184 );
	set_color_profile_slot_range( 6, 1, 1, 30 );


	// eye col, scarf, hoodie
	set_color_profile_slot( 0, 7, 93, 192, 244 );
	set_color_profile_slot_range( 7, 1, 31, 46 );
}