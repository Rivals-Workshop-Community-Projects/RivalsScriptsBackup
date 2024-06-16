// init_shader.gml
// called every time the init_shader() function is run,
// either by the game or when the function is called by the user.
// Used for refreshing the character’s shader values after changing them.


if ("ColorLocked" in self && ColorLocked){
	switch (SecretColor){ // GBC Secret Colors
		case 1:
			// Brown
			set_character_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_character_color_slot(1, 132, 66, 4 ); //Dark 1
			set_character_color_slot(2, 236, 154, 84 ); //Light 2
			set_character_color_slot(3, 252, 250, 252 ); //Light 1
			
			set_article_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_article_color_slot(1, 132, 66, 4 ); //Dark 1
			set_article_color_slot(2, 236, 154, 84 ); //Light 2
			set_article_color_slot(3, 252, 250, 252 ); //Light 1
		break;	
		
		case 2:
			// Pastel
			set_character_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_character_color_slot(1, 156, 146, 244 ); //Dark 1
			set_character_color_slot(2, 236, 138, 140 ); //Light 2
			set_character_color_slot(3, 252, 250, 172 ); //Light 1
			
			set_article_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_article_color_slot(1, 156, 146, 244 ); //Dark 1
			set_article_color_slot(2, 236, 138, 140 ); //Light 2
			set_article_color_slot(3, 252, 250, 172 ); //Light 1
		break;	
		
		case 3:
			// Blue
			set_character_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_character_color_slot(1, 4, 50, 252 ); //Dark 1
			set_character_color_slot(2, 124, 170, 252 ); //Light 2
			set_character_color_slot(3, 252, 250, 252 ); //Light 1
			
			set_article_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_article_color_slot(1, 4, 50, 252 ); //Dark 1
			set_article_color_slot(2, 124, 170, 252 ); //Light 2
			set_article_color_slot(3, 252, 250, 252 ); //Light 1
		break;	
		
		case 4:
			// Green & Red
			set_character_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_character_color_slot(1, 252, 50, 4 ); //Dark 1
			set_character_color_slot(2, 4, 250, 4 ); //Light 2
			set_character_color_slot(3, 252, 250, 252 ); //Light 1
			
			set_article_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_article_color_slot(1, 252, 50, 4 ); //Dark 1
			set_article_color_slot(2, 4, 250, 4 ); //Light 2
			set_article_color_slot(3, 252, 250, 252 ); //Light 1
		break;
		
		case 5:
			// Red
			set_character_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_character_color_slot(1, 172, 38, 36 ); //Dark 1
			set_character_color_slot(2, 236, 138, 140 ); //Light 2
			set_character_color_slot(3, 252, 250, 252 ); //Light 1
			
			set_article_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_article_color_slot(1, 172, 38, 36 ); //Dark 1
			set_article_color_slot(2, 236, 138, 140 ); //Light 2
			set_article_color_slot(3, 252, 250, 252 ); //Light 1
		break;
		
		case 6:
			// Yellow & Red
			set_character_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_character_color_slot(1, 252, 50, 4 ); //Dark 1
			set_character_color_slot(2, 244, 254, 4 ); //Light 2
			set_character_color_slot(3, 252, 250, 252 ); //Light 1
			
			set_article_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_article_color_slot(1, 252, 50, 4 ); //Dark 1
			set_article_color_slot(2, 244, 254, 4 ); //Light 2
			set_article_color_slot(3, 252, 250, 252 ); //Light 1
		break;
		
		case 7:
			// Dark Blue
			set_character_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_character_color_slot(1, 68, 50, 164 ); //Dark 1
			set_character_color_slot(2, 156, 146, 244 ); //Light 2
			set_character_color_slot(3, 252, 250, 252 ); //Light 1
			
			set_article_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_article_color_slot(1, 68, 50, 164 ); //Dark 1
			set_article_color_slot(2, 156, 146, 244 ); //Light 2
			set_article_color_slot(3, 252, 250, 252 ); //Light 1
		break;
		
		case 8:
			// Green & Blue
			set_character_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_character_color_slot(1, 4, 50, 252 ); //Dark 1
			set_character_color_slot(2, 4, 250, 4 ); //Light 2
			set_character_color_slot(3, 252, 250, 252 ); //Light 1
			
			set_article_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_article_color_slot(1, 4, 50, 252 ); //Dark 1
			set_article_color_slot(2, 4, 250, 4 ); //Light 2
			set_article_color_slot(3, 252, 250, 252 ); //Light 1
		break;
		
		case 9:
			// Sepia
			set_character_color_slot( 0, 76, 42, 4 ); //Dark 2
			set_character_color_slot(1, 148, 122, 76 ); //Dark 1
			set_character_color_slot(2, 196, 174, 148 ); //Light 2
			set_character_color_slot(3, 252, 234, 228 ); //Light 1
			
			set_article_color_slot( 0, 76, 42, 4 ); //Dark 2
			set_article_color_slot(1, 148, 122, 76 ); //Dark 1
			set_article_color_slot(2, 196, 174, 148 ); //Light 2
			set_article_color_slot(3, 252, 234, 228 ); //Light 1
		break;
		
		case 10:
			// Yellow & Brown
			set_character_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_character_color_slot(1, 132, 66, 4 ); //Dark 1
			set_character_color_slot(2, 244, 254, 4 ); //Light 2
			set_character_color_slot(3, 252, 250, 252 ); //Light 1
			
			set_article_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_article_color_slot(1, 132, 66, 4 ); //Dark 1
			set_article_color_slot(2, 244, 254, 4 ); //Light 2
			set_article_color_slot(3, 252, 250, 252 ); //Light 1
		break;
		
		case 11:
			// Grayscale
			set_character_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_character_color_slot(1, 116, 114, 116 ); //Dark 1
			set_character_color_slot(2, 188, 186, 188 ); //Light 2
			set_character_color_slot(3, 252, 250, 252 ); //Light 1
			
			set_article_color_slot( 0, 0, 0, 0 ); //Dark 2
			set_article_color_slot(1, 116, 114, 116 ); //Dark 1
			set_article_color_slot(2, 188, 186, 188 ); //Light 2
			set_article_color_slot(3, 252, 250, 252 ); //Light 1
		break;
		
		case 12:
			// Inverted
			set_character_color_slot( 0, 252, 250, 252 ); //Dark 2
			set_character_color_slot(1, 244, 254, 4 ); //Dark 1
			set_character_color_slot(2, 4, 162, 164 ); //Light 2
			set_character_color_slot(3, 0, 0, 0 ); //Light 1
			
			set_article_color_slot( 0, 252, 250, 252 ); //Dark 2
			set_article_color_slot(1, 244, 254, 4 ); //Dark 1
			set_article_color_slot(2, 4, 162, 164 ); //Light 2
			set_article_color_slot(3, 0, 0, 0 ); //Light 1
		break;
	}
}
