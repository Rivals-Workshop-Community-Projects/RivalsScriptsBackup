// init_shader.gml
// called every time the init_shader() function is run,
// either by the game or when the function is called by the user.
// Used for refreshing the character’s shader values after changing them.


// Retro Color Code
if (get_player_color(player) == 7){
	for(i = 0; i < 8; i++){
		set_character_color_shading(i, 0);
	}
	outline_color = [35, 67, 49]; 
}

if ("ColorLocked" in self && ColorLocked){
	switch (SecretColor){ // Color Alt 0 Secret Colors
		case 1:
			// Cotton Candy 2
			set_character_color_slot( 0, 255, 130, 183 ); //Body
			set_character_color_slot(1, 153, 235, 229 ); //Leaf
			set_character_color_slot(2, 255, 242, 250 ); //Needle
			set_character_color_slot(3, 224, 255, 249 ); //Box
			
			set_article_color_slot( 0, 255, 130, 183 ); //Body
			set_article_color_slot(1, 153, 235, 229 ); //Leaf
			set_article_color_slot(2, 255, 242, 250 ); //Needle
			set_article_color_slot(3, 224, 255, 249 ); //Box
		break;	
		
		case 2:
			// THE
			set_character_color_slot( 0, 41, 84, 133 ); //Body
			set_character_color_slot(1, 194, 52, 52 ); //Leaf
			set_character_color_slot(2, 20, 42, 107 ); //Needle
			set_character_color_slot(3, 225, 64, 64 ); //Box
			
			set_article_color_slot( 0, 41, 84, 133 ); //Body
			set_article_color_slot(1, 194, 52, 52 ); //Leaf
			set_article_color_slot(2, 20, 42, 107 ); //Needle
			set_article_color_slot(3, 225, 64, 64 ); //Box
		break;	
		
		case 3:
			// TAG
			set_character_color_slot( 0, 4, 123, 51 ); //Body
			set_character_color_slot(1, 255, 222, 135 ); //Leaf
			set_character_color_slot(2, 255, 204, 54 ); //Needle
			set_character_color_slot(3, 129, 82, 31 ); //Box
			
			set_article_color_slot( 0, 4, 123, 51 ); //Body
			set_article_color_slot(1, 255, 222, 135 ); //Leaf
			set_article_color_slot(2, 255, 204, 54 ); //Needle
			set_article_color_slot(3, 129, 82, 31 ); //Box
		break;	
	}
}

/*
// Cotton Candy 2
set_color_profile_slot( 14, 0, 255, 130, 183 ); //Body
set_color_profile_slot( 14, 1, 153, 235, 229 ); //Leaf
set_color_profile_slot( 14, 2, 255, 242, 250 ); //Needle
set_color_profile_slot( 14, 3, 224, 255, 249 ); //Box

// the
set_color_profile_slot( 1, 0, 41, 84, 133 ); //Body
set_color_profile_slot( 1, 1, 194, 52, 52 ); //Leaf
set_color_profile_slot( 1, 2, 20, 42, 107 ); //Needle
set_color_profile_slot( 1, 3, 225, 64, 64 ); //Box

// TAGmo
set_color_profile_slot( 14, 0, 4, 123, 51 ); //Body
set_color_profile_slot( 14, 1, 255, 222, 135 ); //Leaf
set_color_profile_slot( 14, 2, 255, 204, 54 ); //Needle
set_color_profile_slot( 14, 3, 129, 82, 31 ); //Box
*/