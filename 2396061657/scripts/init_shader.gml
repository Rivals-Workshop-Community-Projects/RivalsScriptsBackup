// init_shader.gml
// called every time the init_shader() function is run,
// either by the game or when the function is called by the user.
// Used for refreshing the character’s shader values after changing them.

// Black Socks for base color Date Girl
if (get_player_color(player) == 0) {
	set_character_color_slot(6, 34, 34, 82, 1);
	set_character_color_slot(7, 34, 34, 82, 1);
}

// Retro Color Code
if (get_player_color(player) == 7){
	for(i = 0; i < 8; i++){
		set_character_color_shading(i, 0);
	}
}

if ("ColorLocked" in self && ColorLocked){
	switch (SecretColor){ // Color Alt 0 Secret Colors
		case 1:
			//Inner Otaku - Up + Shield + Jump
			set_character_color_slot( 0, 66, 52, 61, 1 ); //Hair Bottom
			set_character_color_slot( 1, 211, 232, 231, 1 ); //Shirt
			set_character_color_slot( 2, 49, 51, 51, 1 ); //Tie/Hoodie
			set_character_color_slot( 3, 255, 195, 0, 1 ); //Skirt
			set_character_color_slot( 4, 161, 27, 0, 1 ); //Eyes
			set_character_color_slot( 5, 148, 92, 58, 1 ); //Skin
			set_character_color_slot( 6, 58, 59, 61, 1 ); //Leggy 1
			set_character_color_slot( 7, 223, 245, 243, 1 ); //Leggy 2

			set_article_color_slot( 0, 66, 52, 61, 1 ); //Hair Bottom
			set_article_color_slot( 1, 211, 232, 231, 1 ); //Shirt
			set_article_color_slot( 2, 49, 51, 51, 1 ); //Tie/Hoodie
			set_article_color_slot( 3, 255, 195, 0, 1 ); //Skirt
			set_article_color_slot( 4, 161, 27, 0, 1 ); //Eyes
			set_article_color_slot( 5, 148, 92, 58, 1 ); //Skin
			set_article_color_slot( 6, 58, 59, 61, 1 ); //Leggy 1
			set_article_color_slot( 7, 223, 245, 243, 1 ); //Leggy 2
		break;	
	}
}

/*
// Inner Color Set
set_color_profile_slot( 12, 0, 66, 52, 61 ); //Hair Bottom
set_color_profile_slot( 12, 1, 211, 232, 231 ); //Shirt
set_color_profile_slot( 12, 2, 49, 51, 51 ); //Tie/Hoodie
set_color_profile_slot( 12, 3, 255, 195, 0 ); //Skirt
set_color_profile_slot( 12, 4, 161, 27, 0 ); //Eyes
set_color_profile_slot( 12, 5, 148, 92, 58 ); //Skin
set_color_profile_slot( 12, 6, 58, 59, 61 ); //Leggy 1
set_color_profile_slot( 12, 7, 223, 245, 243 ); //Leggy 2
*/