// init_shader.gml

// Retro Color
if (get_player_color(player) == 7){
	for(i = 0; i < 8; i++){
		set_character_color_shading(i, 0);
	}
	outline_color = [35, 67, 49]; 
}

//ghost
if (get_player_color(player) == 11){
set_character_color_slot( 0, 83, 228, 237, 0.5 ); //white
set_character_color_slot( 1, 0, 255, 208, 0.5 ); //skin1
set_character_color_slot( 2, 0, 224, 224, 0.5 ); //skin2
set_character_color_slot( 3, 0, 130, 166, 0.5 ); //skin3
set_character_color_slot( 4, 0, 207, 162, 0.5 ); //red1
set_character_color_slot( 5, 0, 133, 119, 0.5 ); //red2
set_character_color_slot( 6, 0, 199, 166, 0.5 ); //blue1
set_character_color_slot( 7, 0, 136, 166, 0.5 ); //blue2
outline_color = [0, 50, 80]; 
}

// Nes Color
if (get_player_color(player) == 19){
	for(i = 0; i < 8; i++){
		set_character_color_shading(i, 0);
	}
	//outline_color = [35, 67, 49]; 
}