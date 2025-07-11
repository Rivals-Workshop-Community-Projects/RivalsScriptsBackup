if (get_player_color(player) == 0) {
	set_character_color_slot( 2, 89, 58, 41 ); //Pants
	set_character_color_slot( 3, 128, 128, 128 ); //Hat
	set_character_color_slot( 6, 125, 83, 36 ); //Shoes
}

if (get_player_color(player) == 15) {
	set_character_color_shading( 0, 0 );
	set_character_color_shading( 1, 0 );
	set_character_color_shading( 2, 0 );
	set_character_color_shading( 3, 0 );
	set_character_color_shading( 4, 0 );
	set_character_color_shading( 5, 0 );
	set_character_color_shading( 6, 0 );
	set_character_color_shading( 7, 0 );
	outline_color = [35, 67, 49];
}
