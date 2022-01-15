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

	outline_color = [35, 67, 49]; 
}

if (get_player_color(player) == 18){

	outline_color = [73, 94, 102]; 
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
		case 2:
			//Slime - Down + Shield + Jump
			set_character_color_slot( 0, 248, 78, 81, 1 ); //Hair Bottom
			set_character_color_slot( 1, 179, 183, 242, 1 ); //Shirt
			set_character_color_slot( 2, 244, 238, 59, 1 ); //Tie/Hoodie
			set_character_color_slot( 3, 99, 51, 176, 1 ); //Skirt
			set_character_color_slot( 4, 185, 86, 132, 1 ); //Eyes
			set_character_color_slot( 5, 251, 223, 209, 1 ); //Skin
			set_character_color_slot( 6, 218, 219, 242 , 1 ); //Leggy 1
			set_character_color_slot( 7, 218, 219, 242 , 1 ); //Leggy 2

			set_article_color_slot( 0, 248, 78, 81, 1 ); //Hair Bottom
			set_article_color_slot( 1, 179, 183, 242, 1 ); //Shirt
			set_article_color_slot( 2, 244, 238, 59, 1 ); //Tie/Hoodie
			set_article_color_slot( 3, 99, 51, 176, 1 ); //Skirt
			set_article_color_slot( 4, 185, 86, 132, 1 ); //Eyes
			set_article_color_slot( 5, 251, 223, 209, 1 ); //Skin
			set_article_color_slot( 6, 218, 219, 242 , 1 ); //Leggy 1
			set_article_color_slot( 7, 218, 219, 242,  1 ); //Leggy 2
		break;	
		case 3:
			//Candle - Up + Shield + Jump
			set_character_color_slot( 0, 255, 226, 69, 1 ); //Hair Bottom
			set_character_color_slot( 1, 158, 21, 69, 1 ); //Shirt
			set_character_color_slot( 2, 109, 65, 95, 1 ); //Tie/Hoodie
			set_character_color_slot( 3, 158, 21, 69, 1 ); //Skirt
			set_character_color_slot( 4, 115, 114, 156, 1 ); //Eyes
			set_character_color_slot( 5, 254, 208, 177, 1 ); //Skin
			set_character_color_slot( 6, 49, 49, 49, 1 ); //Leggy 1
			set_character_color_slot( 7, 49, 49, 49, 1 ); //Leggy 2

			set_article_color_slot( 0, 255, 226, 69, 1 ); //Hair Bottom
			set_article_color_slot( 1, 158, 21, 69, 1 ); //Shirt
			set_article_color_slot( 2, 109, 65, 95, 1 ); //Tie/Hoodie
			set_article_color_slot( 3, 158, 21, 69, 1 ); //Skirt
			set_article_color_slot( 4, 115, 114, 156, 1 ); //Eyes
			set_article_color_slot( 5, 254, 208, 177, 1 ); //Skin
			set_article_color_slot( 6, 49, 49, 49, 1 ); //Leggy 1
			set_article_color_slot( 7, 49, 49, 49,  1 ); //Leggy 2
		break;	
		case 4:
			//Nuzl - Up + Shield + Jump
			set_character_color_slot(0, 64, 64, 64, 1 ); //Hair Bottom
			set_character_color_slot(1, 119, 153, 119, 1 ); //Shirt
			set_character_color_slot(2, 82, 51, 65, 1 ); //Tie/Hoodie
			set_character_color_slot(3, 103, 121, 232, 1 ); //Skirt
			set_character_color_slot(4, 0, 0, 83, 1 ); //Eyes
			set_character_color_slot(5, 215, 201, 221, 1 ); //Skin
			set_character_color_slot(6, 175, 76, 56, 1 ); //Leggy 1
			set_character_color_slot(7, 84, 71, 59, 1 ); //Leggy 2

			set_article_color_slot(  0, 64, 64, 64, 1 ); //Hair Bottom
			set_article_color_slot(  1, 119, 153, 119, 1 ); //Shirt
			set_article_color_slot(  2, 82, 51, 65, 1 ); //Tie/Hoodie
			set_article_color_slot(  3, 103, 121, 232, 1 ); //Skirt
			set_article_color_slot(  4, 0, 0, 83, 1 ); //Eyes
			set_article_color_slot(  5, 215, 201, 221, 1 ); //Skin
			set_article_color_slot(  6, 175, 76, 56, 1 ); //Leggy 1
			set_article_color_slot(  7, 84, 71, 59, 1 ); //Leggy 2
		break;	
		case 5:
			//Stuar - Up + Shield + Jump
			set_character_color_slot( 0, 65, 0, 204 ); //Hair Bottom
			set_character_color_slot( 1, 0, 50, 214 ); //Shirt
			set_character_color_slot( 2, 0, 212, 255 ); //Tie/Hoodie
			set_character_color_slot( 3, 86, 0, 153 ); //Skirt
			set_character_color_slot( 4, 25, 197, 243 ); //Eyes
			set_character_color_slot( 5, 255, 204, 167 ); //Skin
			set_character_color_slot( 6, 0, 13, 255 ); //Leggy 1
			set_character_color_slot( 7, 0, 238, 255 ); //Leggy 2

			set_article_color_slot(  0, 65, 0, 204 ); //Hair Bottom
			set_article_color_slot(  1, 0, 50, 214 ); //Shirt
			set_article_color_slot(  2, 0, 212, 255 ); //Tie/Hoodie
			set_article_color_slot(  3, 86, 0, 153 ); //Skirt
			set_article_color_slot(  4, 25, 197, 243 ); //Eyes
			set_article_color_slot(  5, 255, 204, 167 ); //Skin
			set_article_color_slot(  6, 0, 13, 255 ); //Leggy 1
			set_article_color_slot(  7, 0, 238, 255 ); //Leggy 2

		break;	
		case 6:
			// Dakota Civic Alt
			set_character_color_slot(0, 129, 142, 247 ); //Hair Bottom
			set_character_color_slot(1, 29, 34, 36 ); //Shirt
			set_character_color_slot(2, 153, 188, 247 ); //Tie/Hoodie
			set_character_color_slot(3, 24, 39, 110 ); //Skirt
			set_character_color_slot(4, 107, 181, 255 ); //Eyes
			set_character_color_slot(5, 255, 204, 167 ); //Skin
			set_character_color_slot(6, 22, 26, 31 ); //Leggy 1
			set_character_color_slot(7, 85, 127, 235 ); //Leggy 2
			
			set_character_color_slot(0, 129, 142, 247 ); //Hair Bottom
			set_article_color_slot(1, 29, 34, 36 ); //Shirt
			set_article_color_slot(2, 153, 188, 247 ); //Tie/Hoodie
			set_article_color_slot(3, 24, 39, 110 ); //Skirt
			set_article_color_slot(4, 107, 181, 255 ); //Eyes
			set_article_color_slot(5, 255, 204, 167 ); //Skin
			set_article_color_slot(6, 22, 26, 31 ); //Leggy 1
			set_article_color_slot(7, 85, 127, 235 ); //Leggy 2
		break;	
		case 7:
			// Krankees Alt
			set_character_color_slot(0, 255, 194, 221 ); //Hair Bottom
			set_character_color_slot(1, 28, 22, 22 ); //Shirt
			set_character_color_slot(2, 209, 164, 85 ); //Tie/Hoodie
			set_character_color_slot(3, 212, 0, 0 ); //Skirt
			set_character_color_slot(4, 255, 105, 150 ); //Eyes
			set_character_color_slot(5, 255, 230, 207 ); //Skin
			set_character_color_slot(6, 82, 59, 59 ); //Leggy 1
			set_character_color_slot(7, 82, 59, 59 ); //Leggy 2
			
			set_article_color_slot(0, 255, 194, 221 ); //Hair Bottom
			set_article_color_slot(1, 28, 22, 22 ); //Shirt
			set_article_color_slot(2, 209, 164, 85 ); //Tie/Hoodie
			set_article_color_slot(3, 212, 0, 0 ); //Skirt
			set_article_color_slot(4, 255, 105, 150 ); //Eyes
			set_article_color_slot(5, 255, 230, 207 ); //Skin
			set_article_color_slot(6, 82, 59, 59 ); //Leggy 1
			set_article_color_slot(7, 82, 59, 59 ); //Leggy 2

		break;	
		case 8:
			// BowlingKing Alt
			set_character_color_slot( 0, 252, 244, 207 ); //Hair Bottom
			set_character_color_slot( 1, 80, 87, 158 ); //Shirt
			set_character_color_slot( 2, 249, 236, 154 ); //Tie/Hoodie
			set_character_color_slot( 3, 64, 67, 117 ); //Skirt
			set_character_color_slot( 4, 45, 33, 16 ); //Eyes
			set_character_color_slot( 5, 254, 247, 238 ); //Skin
			set_character_color_slot( 6, 158, 145, 102 ); //Leggy 1
			set_character_color_slot(  7, 254, 254, 254 ); //Leggy 2

			set_article_color_slot( 0, 252, 244, 207 ); //Hair Bottom
			set_article_color_slot( 1, 80, 87, 158 ); //Shirt
			set_article_color_slot( 2, 249, 236, 154 ); //Tie/Hoodie
			set_article_color_slot( 3, 64, 67, 117 ); //Skirt
			set_article_color_slot( 4, 45, 33, 16 ); //Eyes
			set_article_color_slot( 5, 254, 247, 238 ); //Skin
			set_article_color_slot( 6, 158, 145, 102 ); //Leggy 1
			set_article_color_slot( 7, 254, 254, 254 ); //Leggy 2
		break;	
		case 9:
			// Riptide
			set_character_color_slot( 0, 242, 228, 214 ); //Hair Bottom
			set_character_color_slot( 1, 209, 90, 1 ); //Shirt
			set_character_color_slot( 2, 1, 198, 216 ); //Tie/Hoodie
			set_character_color_slot( 3, 12, 25, 58 ); //Skirt
			set_character_color_slot( 4, 1, 198, 216 ); //Eyes
			set_character_color_slot( 5, 230, 166, 126 ); //Skin
			set_character_color_slot( 6, 12, 25, 58 ); //Leggy 1
			set_character_color_slot( 7, 12, 25, 58 ); //Leggy 2
			
			set_article_color_slot( 0, 242, 228, 214 ); //Hair Bottom
			set_article_color_slot( 1, 209, 90, 1 ); //Shirt
			set_article_color_slot( 2, 1, 198, 216 ); //Tie/Hoodie
			set_article_color_slot( 3, 12, 25, 58 ); //Skirt
			set_article_color_slot( 4, 1, 198, 216 ); //Eyes
			set_article_color_slot( 5, 230, 166, 126 ); //Skin
			set_article_color_slot( 6, 12, 25, 58 ); //Leggy 1
			set_article_color_slot( 7, 12, 25, 58 ); //Leggy 2
		break;	
		case 10:
			// Y'shtola
			set_character_color_slot( 0, 228, 228, 232 ); //Hair Bottom
			set_character_color_slot( 1, 59, 33, 41 ); //Shirt
			set_character_color_slot( 2, 54, 193, 192 ); //Tie/Hoodie
			set_character_color_slot( 3, 59, 33, 41 ); //Skirt
			set_character_color_slot( 4, 188, 188, 232 ); //Eyes
			set_character_color_slot( 5, 255, 204, 167 ); //Skin
			set_character_color_slot( 6, 27, 25, 26 ); //Leggy 1
			set_character_color_slot( 7, 27, 25, 26 ); //Leggy 2

			set_article_color_slot( 0, 228, 228, 232 ); //Hair Bottom
			set_article_color_slot( 1, 59, 33, 41 ); //Shirt
			set_article_color_slot( 2, 54, 193, 192 ); //Tie/Hoodie
			set_article_color_slot( 3, 59, 33, 41 ); //Skirt
			set_article_color_slot( 4, 188, 188, 232 ); //Eyes
			set_article_color_slot( 5, 255, 204, 167 ); //Skin
			set_article_color_slot( 6, 27, 25, 26 ); //Leggy 1
			set_article_color_slot( 7, 27, 25, 26 ); //Leggy 2
		break;	
		case 11:
			// Heatwave
			set_character_color_slot( 0, 16, 40, 89 ); //Hair Bottom
			set_character_color_slot( 1, 204, 79, 41 ); //Shirt
			set_character_color_slot( 2, 16, 40, 89 ); //Tie/Hoodie
			set_character_color_slot( 3, 204, 63, 20 ); //Skirt
			set_character_color_slot( 4, 224, 118, 20 ); //Eyes
			set_character_color_slot( 5, 242, 176, 145 ); //Skin
			set_character_color_slot( 6, 212, 203, 17 ); //Leggy 1
			set_character_color_slot( 7, 145, 17, 46 ); //Leggy 2			
	
			set_article_color_slot( 0, 16, 40, 89 ); //Hair Bottom
			set_article_color_slot( 1, 204, 79, 41 ); //Shirt
			set_article_color_slot( 2, 16, 40, 89 ); //Tie/Hoodie
			set_article_color_slot( 3, 204, 63, 20 ); //Skirt
			set_article_color_slot( 4, 224, 118, 20 ); //Eyes
			set_article_color_slot( 5, 242, 176, 145 ); //Skin
			set_article_color_slot( 6, 212, 203, 17 ); //Leggy 1
			set_article_color_slot( 7, 145, 17, 46 ); //Leggy 2

		break;	
		case 200:
			// ThinkEyes
			set_character_color_slot( 0, 255, 221, 28 ); //Hair Bottom
			set_character_color_slot( 1, 255, 208, 48 ); //Shirt
			set_character_color_slot( 2, 255, 221, 28 ); //Tie/Hoodie
			set_character_color_slot( 3, 255, 209, 56 ); //Skirt
			set_character_color_slot( 4, 255, 123, 0 ); //Eyes
			set_character_color_slot( 5, 255, 233, 87 ); //Skin
			set_character_color_slot( 6, 255, 233, 87 ); //Leggy 1
			set_character_color_slot( 7, 255, 233, 87 ); //Leggy 2
						
			set_article_color_slot( 0, 255, 221, 28 ); //Hair Bottom
			set_article_color_slot( 1, 255, 208, 48 ); //Shirt
			set_article_color_slot( 2, 255, 221, 28 ); //Tie/Hoodie
			set_article_color_slot( 3, 255, 209, 56 ); //Skirt
			set_article_color_slot( 4, 255, 123, 0 ); //Eyes
			set_article_color_slot( 5, 255, 233, 87 ); //Skin
			set_article_color_slot( 6, 255, 233, 87 ); //Leggy 1
			set_article_color_slot( 7, 255, 233, 87 ); //Leggy 2
			
			outline_color = [200, 160, 0]; 
		break;	
		case 201:
			// R00
			set_character_color_slot(0, 80, 76, 84 ); //Hair Bottom
			set_character_color_slot(1, 69, 66, 74 ); //Shirt
			set_character_color_slot(2, 234, 242, 10 ); //Tie/Hoodie
			set_character_color_slot(3, 166, 160, 16 ); //Skirt
			set_character_color_slot(4, 242, 184, 24 ); //Eyes
			set_character_color_slot(5, 138, 131, 147 ); //Skin
			set_character_color_slot(6, 55, 53, 59 ); //Leggy 1
			set_character_color_slot(7, 255, 255, 0 ); //Leggy 2

			set_article_color_slot(0, 80, 76, 84 ); //Hair Bottom
			set_article_color_slot(1, 69, 66, 74 ); //Shirt
			set_article_color_slot(2, 234, 242, 10 ); //Tie/Hoodie
			set_article_color_slot(3, 166, 160, 16 ); //Skirt
			set_article_color_slot(4, 242, 184, 24 ); //Eyes
			set_article_color_slot(5, 138, 131, 147 ); //Skin
			set_article_color_slot(6, 55, 53, 59 ); //Leggy 1
			set_article_color_slot(7, 255, 255, 0 ); //Leggy 2
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

/*
// Kagami Sumika - Slime
set_color_profile_slot( 12, 0, 248, 78, 81 ); //Hair Bottom
set_color_profile_slot( 12, 1, 179, 183, 242 ); //Shirt
set_color_profile_slot( 12, 2, 244, 238, 59 ); //Tie/Hoodie
set_color_profile_slot( 12, 3, 99, 51, 176 ); //Skirt
set_color_profile_slot( 12, 4, 185, 86, 132 ); //Eyes
set_color_profile_slot( 12, 5, 251, 223, 209 ); //Skin
set_color_profile_slot( 12, 6, 218, 219, 242 ); //Leggy 1
set_color_profile_slot( 12, 7, 218, 219, 242 ); //Leggy 2
*/

/*
// Candlelight - Dichi
set_color_profile_slot( 13, 0, 255, 226, 69 ); //unnamed color row
set_color_profile_slot( 13, 1, 158, 21, 69 ); //unnamed color row
set_color_profile_slot( 13, 2, 109, 65, 95 ); //unnamed color row
set_color_profile_slot( 13, 3, 158, 21, 69 ); //unnamed color row
set_color_profile_slot( 13, 4, 115, 114, 156 ); //unnamed color row
set_color_profile_slot( 13, 5, 254, 208, 177 ); //unnamed color row
set_color_profile_slot( 13, 6, 49, 49, 49 ); //unnamed color row
set_color_profile_slot( 13, 7, 49, 49, 49 ); //unnamed color row
*/

/*
// Nuzl
set_color_profile_slot( 13, 0, 64, 64, 64 ); //Hair Bottom
set_color_profile_slot( 13, 1, 119, 153, 119 ); //Shirt
set_color_profile_slot( 13, 2, 82, 51, 65 ); //Tie/Hoodie
set_color_profile_slot( 13, 3, 103, 121, 232 ); //Skirt
set_color_profile_slot( 13, 4, 0, 0, 83 ); //Eyes
set_color_profile_slot( 13, 5, 215, 201, 221 ); //Skin
set_color_profile_slot( 13, 6, 175, 76, 56 ); //Leggy 1
set_color_profile_slot( 13, 7, 84, 71, 59 ); //Leggy 2
*/

/*
// Staur
set_color_profile_slot( 13, 0, 65, 0, 204 ); //Hair Bottom
set_color_profile_slot( 13, 1, 0, 50, 214 ); //Shirt
set_color_profile_slot( 13, 2, 0, 212, 255 ); //Tie/Hoodie
set_color_profile_slot( 13, 3, 86, 0, 153 ); //Skirt
set_color_profile_slot( 13, 4, 25, 197, 243 ); //Eyes
set_color_profile_slot( 13, 5, 255, 204, 167 ); //Skin
set_color_profile_slot( 13, 6, 0, 13, 255 ); //Leggy 1
set_color_profile_slot( 13, 7, 0, 238, 255 ); //Leggy 2
*/

/*
// Civic Waga Baga Bobo
set_color_profile_slot( 20, 0, 129, 142, 247 ); //Hair Bottom
set_color_profile_slot( 20, 1, 29, 34, 36 ); //Shirt
set_color_profile_slot( 20, 2, 153, 188, 247 ); //Tie/Hoodie
set_color_profile_slot( 20, 3, 24, 39, 110 ); //Skirt
set_color_profile_slot( 20, 4, 107, 181, 255 ); //Eyes
set_color_profile_slot( 20, 5, 255, 204, 167 ); //Skin
set_color_profile_slot( 20, 6, 22, 26, 31 ); //Leggy 1
set_color_profile_slot( 20, 7, 85, 127, 235 ); //Leggy 2
*/

/*
// Krankees Alt
set_color_profile_slot( 20, 0, 36, 32, 65 ); //Hair Bottom
set_color_profile_slot( 20, 1, 255, 229, 237 ); //Shirt
set_color_profile_slot( 20, 2, 128, 76, 157 ); //Tie/Hoodie
set_color_profile_slot( 20, 3, 121, 63, 206 ); //Skirt
set_color_profile_slot( 20, 4, 75, 84, 97 ); //Eyes
set_color_profile_slot( 20, 5, 255, 222, 191 ); //Skin
set_color_profile_slot( 20, 6, 75, 84, 97 ); //Leggy 1
set_color_profile_slot( 20, 7, 75, 84, 97 ); //Leggy 2

// Krankees Alt 2 Calliope
set_color_profile_slot( 26, 0, 255, 194, 221 ); //Hair Bottom
set_color_profile_slot( 26, 1, 28, 22, 22 ); //Shirt
set_color_profile_slot( 26, 2, 209, 164, 85 ); //Tie/Hoodie
set_color_profile_slot( 26, 3, 212, 0, 0 ); //Skirt
set_color_profile_slot( 26, 4, 255, 105, 150 ); //Eyes
set_color_profile_slot( 26, 5, 255, 230, 207 ); //Skin
set_color_profile_slot( 26, 6, 82, 59, 59 ); //Leggy 1
set_color_profile_slot( 26, 7, 82, 59, 59 ); //Leggy 2

*/

/*
// BowlingKing Alt
set_color_profile_slot( 20, 0, 252, 244, 207 ); //Hair Bottom
set_color_profile_slot( 20, 1, 80, 87, 158 ); //Shirt
set_color_profile_slot( 20, 2, 249, 236, 154 ); //Tie/Hoodie
set_color_profile_slot( 20, 3, 64, 67, 117 ); //Skirt
set_color_profile_slot( 20, 4, 45, 33, 16 ); //Eyes
set_color_profile_slot( 20, 5, 254, 247, 238 ); //Skin
set_color_profile_slot( 20, 6, 158, 145, 102 ); //Leggy 1
set_color_profile_slot( 20, 7, 254, 254, 254 ); //Leggy 2
*/

/*
// 200
set_color_profile_slot( 20, 0, 255, 221, 28 ); //Hair Bottom
set_color_profile_slot( 20, 1, 255, 208, 48 ); //Shirt
set_color_profile_slot( 20, 2, 255, 221, 28 ); //Tie/Hoodie
set_color_profile_slot( 20, 3, 255, 209, 56 ); //Skirt
set_color_profile_slot( 20, 4, 255, 195, 0 ); //Eyes
set_color_profile_slot( 20, 5, 255, 233, 87 ); //Skin
set_color_profile_slot( 20, 6, 255, 233, 87 ); //Leggy 1
set_color_profile_slot( 20, 7, 255, 233, 87 ); //Leggy 2
*/

/*
// R00
set_color_profile_slot( 20, 0, 80, 76, 84 ); //Hair Bottom
set_color_profile_slot( 20, 1, 69, 66, 74 ); //Shirt
set_color_profile_slot( 20, 2, 234, 242, 10 ); //Tie/Hoodie
set_color_profile_slot( 20, 3, 166, 160, 16 ); //Skirt
set_color_profile_slot( 20, 4, 242, 184, 24 ); //Eyes
set_color_profile_slot( 20, 5, 138, 131, 147 ); //Skin
set_color_profile_slot( 20, 6, 55, 53, 59 ); //Leggy 1
set_color_profile_slot( 20, 7, 255, 255, 0 ); //Leggy 2
*/

/*
// Riptide
set_color_profile_slot( 25, 0, 242, 228, 214 ); //Hair Bottom
set_color_profile_slot( 25, 1, 209, 90, 1 ); //Shirt
set_color_profile_slot( 25, 2, 1, 198, 216 ); //Tie/Hoodie
set_color_profile_slot( 25, 3, 12, 25, 58 ); //Skirt
set_color_profile_slot( 25, 4, 1, 198, 216 ); //Eyes
set_color_profile_slot( 25, 5, 230, 166, 126 ); //Skin
set_color_profile_slot( 25, 6, 12, 25, 58 ); //Leggy 1
set_color_profile_slot( 25, 7, 12, 25, 58 ); //Leggy 2
*/

/*
// Y'shtola
set_color_profile_slot( 25, 0, 228, 228, 232 ); //Hair Bottom
set_color_profile_slot( 25, 1, 59, 33, 41 ); //Shirt
set_color_profile_slot( 25, 2, 54, 193, 192 ); //Tie/Hoodie
set_color_profile_slot( 25, 3, 59, 33, 41 ); //Skirt
set_color_profile_slot( 25, 4, 188, 188, 232 ); //Eyes
set_color_profile_slot( 25, 5, 255, 204, 167 ); //Skin
set_color_profile_slot( 25, 6, 27, 25, 26 ); //Leggy 1
set_color_profile_slot( 25, 7, 27, 25, 26 ); //Leggy 2
*/

/*

// Heatwave
set_color_profile_slot( 25, 0, 16, 40, 89 ); //Hair Bottom
set_color_profile_slot( 25, 1, 204, 79, 41 ); //Shirt
set_color_profile_slot( 25, 2, 16, 40, 89 ); //Tie/Hoodie
set_color_profile_slot( 25, 3, 204, 63, 20 ); //Skirt
set_color_profile_slot( 25, 4, 224, 118, 20 ); //Eyes
set_color_profile_slot( 25, 5, 242, 176, 145 ); //Skin
set_color_profile_slot( 25, 6, 212, 203, 17 ); //Leggy 1
set_color_profile_slot( 25, 7, 145, 17, 46 ); //Leggy 2
*/