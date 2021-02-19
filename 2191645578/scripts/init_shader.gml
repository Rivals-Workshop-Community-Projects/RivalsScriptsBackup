//init_shader.gml:
switch(get_player_color(player)) {
  case 0:
    set_character_color_slot(6,255, 162, 29);
    set_article_color_slot(6,255, 162, 29); //set this with the same exact contents as the above function
  break;
}
// Checks if Player has selected a color
if ("ColorLocked" in self && ColorLocked){
	if (get_color_profile_slot_r(0, 0) == 118){
		switch (Default){ // Color Alt 0 Secret Colors
				case 1:
			//Golden Blues
			set_character_color_slot( 0, 255, 241, 206 ); //SKIN
			set_character_color_slot( 1, 71, 73, 105 ); //HAIR
			set_character_color_slot( 2, 235, 235, 235 ); //SHIRT
			set_character_color_slot( 3, 69, 69, 89 ); //COAT
			set_character_color_slot( 4, 218, 251, 255 ); //FUR
			set_character_color_slot( 5, 193, 193, 157 ); //BANDAGES
			set_character_color_slot( 6, 68, 0, 255 ); //HIGHLIGHTS
			set_character_color_slot( 7, 255, 162, 29 ); //BLOOD
				break;
				case 2:
			// Flaming Devil
			set_character_color_slot( 0, 244, 208, 182 ); //SKIN
			set_character_color_slot( 1, 46, 36, 37 ); //HAIR
			set_character_color_slot( 2, 107, 106, 102 ); //SHIRT
			set_character_color_slot( 3, 54, 53, 49 ); //COAT
			set_character_color_slot( 4, 154, 155, 157 ); //FUR
			set_character_color_slot( 5, 54, 53, 49 ); //BANDAGES
			set_character_color_slot( 6, 139, 211, 225 ); //HIGHLIGHTS
			set_character_color_slot( 7, 255, 132, 0 ); //BLOOD
				break;
				case 3:
			// Sketchy Origins
			set_character_color_slot( 0, 255, 255, 255 ); //SKIN
			set_character_color_slot( 1, 69, 69, 69 ); //HAIR
			set_character_color_slot( 2, 255, 255, 255 ); //SHIRT
			set_character_color_slot( 3, 69, 69, 69 ); //COAT
			set_character_color_slot( 4, 255, 255, 252 ); //FUR
			set_character_color_slot( 5, 255, 255, 255 ); //BANDAGES
			set_character_color_slot( 6, 255, 162, 29 ); //HIGHLIGHTS
			set_character_color_slot( 7, 255, 162, 29 ); //BLOOD
				break;
				case 4:
			// Sin of Greed
			set_character_color_slot( 0, 211, 195, 166 ); //SKIN
			set_character_color_slot( 1, 30, 32, 31 ); //HAIR
			set_character_color_slot( 2, 49, 38, 35 ); //SHIRT
			set_character_color_slot( 3, 66, 73, 75 ); //COAT
			set_character_color_slot( 4, 203, 201, 188 ); //FUR
			set_character_color_slot( 5, 34, 47, 38 ); //BANDAGES
			set_character_color_slot( 6, 131, 122, 119 ); //HIGHLIGHTS
			set_character_color_slot( 7, 90, 94, 98 ); //BLOOD
			break;
		}
	}
	switch (Rune_Maker){ // Color Alt 1 Secret Colors
		case 1:
	//Mad Dog
	set_character_color_slot( 0, 233, 163, 136 ); //SKIN
	set_character_color_slot( 1, 98, 127, 199 ); //HAIR
	set_character_color_slot( 2, 233, 163, 136 ); //SHIRT
	set_character_color_slot( 3, 255, 253, 247 ); //COAT
	set_character_color_slot( 4, 120, 18, 112 ); //FUR
	set_character_color_slot( 5, 78, 57, 62 ); //BANDAGES
	set_character_color_slot( 6, 174, 53, 59 ); //HIGHLIGHTS
	set_character_color_slot( 7, 174, 53, 59 ); //BLOOD
	
	set_article_color_slot( 0, 233, 163, 136 ); //SKIN
	set_article_color_slot( 1, 98, 127, 199 ); //HAIR
	set_article_color_slot( 2, 233, 163, 136 ); //SHIRT
	set_article_color_slot( 3, 255, 253, 247 ); //COAT
	set_article_color_slot( 4, 120, 18, 112 ); //FUR
	set_article_color_slot( 5, 78, 57, 62 ); //BANDAGES
	set_article_color_slot( 6, 174, 53, 59 ); //HIGHLIGHTS
	set_article_color_slot( 7, 174, 53, 59 ); //BLOOD
		break;
		case 2:
	// Storm God
	set_character_color_slot( 0, 109, 129, 179 ); //SKIN
	set_character_color_slot( 1, 66, 83, 106 ); //HAIR
	set_character_color_slot( 2, 66, 83, 106 ); //SHIRT
	set_character_color_slot( 3, 109, 129, 179 ); //COAT
	set_character_color_slot( 4, 66, 83, 106 ); //FUR
	set_character_color_slot( 5, 66, 83, 106 ); //BANDAGES
	set_character_color_slot( 6, 109, 255, 128 ); //HIGHLIGHTS
	set_character_color_slot( 7, 0, 255, 33 ); //BLOOD
	
	set_article_color_slot( 0, 109, 129, 179 ); //SKIN
	set_article_color_slot( 1, 66, 83, 106 ); //HAIR
	set_article_color_slot( 2, 66, 83, 106 ); //SHIRT
	set_article_color_slot( 3, 109, 129, 179 ); //COAT
	set_article_color_slot( 4, 66, 83, 106 ); //FUR
	set_article_color_slot( 5, 66, 83, 106 ); //BANDAGES
	set_article_color_slot( 6, 109, 255, 128 ); //HIGHLIGHTS
	set_article_color_slot( 7, 0, 255, 33 ); //BLOOD
		break;
		case 3:
	// Flaming Gorilla
	set_character_color_slot( 0, 254, 219, 173 ); //SKIN
	set_character_color_slot( 1, 145, 86, 70 ); //HAIR
	set_character_color_slot( 2, 254, 219, 173 ); //SHIRT
	set_character_color_slot( 3, 196, 44, 69 ); //COAT
	set_character_color_slot( 4, 145, 86, 70 ); //FUR
	set_character_color_slot( 5, 218, 212, 94 ); //BANDAGES
	set_character_color_slot( 6, 242, 208, 134 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 233, 0 ); //BLOOD
	
	set_article_color_slot( 0, 254, 219, 173 ); //SKIN
	set_article_color_slot( 1, 145, 86, 70 ); //HAIR
	set_article_color_slot( 2, 254, 219, 173 ); //SHIRT
	set_article_color_slot( 3, 196, 44, 69 ); //COAT
	set_article_color_slot( 4, 145, 86, 70 ); //FUR
	set_article_color_slot( 5, 218, 212, 94 ); //BANDAGES
	set_article_color_slot( 6, 242, 208, 134 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 233, 0 ); //BLOOD
		break;
		case 4:
	// Particle Agitator
	set_character_color_slot( 0, 255, 240, 201 ); //SKIN
	set_character_color_slot( 1, 74, 63, 81 ); //HAIR
	set_character_color_slot( 2, 186, 157, 251 ); //SHIRT
	set_character_color_slot( 3, 95, 74, 151 ); //COAT
	set_character_color_slot( 4, 225, 92, 198 ); //FUR
	set_character_color_slot( 5, 156, 111, 196 ); //BANDAGES
	set_character_color_slot( 6, 59, 59, 59 ); //HIGHLIGHTS
	set_character_color_slot( 7, 156, 111, 196 ); //BLOOD
	
	set_article_color_slot( 0, 255, 240, 201 ); //SKIN
	set_article_color_slot( 1, 74, 63, 81 ); //HAIR
	set_article_color_slot( 2, 186, 157, 251 ); //SHIRT
	set_article_color_slot( 3, 95, 74, 151 ); //COAT
	set_article_color_slot( 4, 225, 92, 198 ); //FUR
	set_article_color_slot( 5, 156, 111, 196 ); //BANDAGES
	set_article_color_slot( 6, 59, 59, 59 ); //HIGHLIGHTS
	set_article_color_slot( 7, 156, 111, 196 ); //BLOOD
		break;
		case 5:
	// Cheery Secretary
	set_character_color_slot( 0, 254, 248, 158 ); //SKIN
	set_character_color_slot( 1, 253, 207, 91 ); //HAIR
	set_character_color_slot( 2, 246, 243, 236 ); //SHIRT
	set_character_color_slot( 3, 161, 190, 97 ); //COAT
	set_character_color_slot( 4, 74, 94, 104 ); //FUR
	set_character_color_slot( 5, 255, 250, 210 ); //BANDAGES
	set_character_color_slot( 6, 49, 40, 30 ); //HIGHLIGHTS
	set_character_color_slot( 7, 253, 207, 91 ); //BLOOD
	
	set_article_color_slot( 0, 254, 248, 158 ); //SKIN
	set_article_color_slot( 1, 253, 207, 91 ); //HAIR
	set_article_color_slot( 2, 246, 243, 236 ); //SHIRT
	set_article_color_slot( 3, 161, 190, 97 ); //COAT
	set_article_color_slot( 4, 74, 94, 104 ); //FUR
	set_article_color_slot( 5, 255, 250, 210 ); //BANDAGES
	set_article_color_slot( 6, 49, 40, 30 ); //HIGHLIGHTS
	set_article_color_slot( 7, 253, 207, 91 ); //BLOOD
		break;
	}
	switch (Crayfish){ // Color Alt 2 Secret Colors
		case 1:
    // Call Shot
	set_character_color_slot( 0, 244, 164, 31 ); //SKIN
	set_character_color_slot( 1, 60, 55, 73 ); //HAIR
	set_character_color_slot( 2, 133, 61, 35 ); //SHIRT
	set_character_color_slot( 3, 60, 55, 73 ); //COAT
	set_character_color_slot( 4, 134, 180, 193 ); //FUR
	set_character_color_slot( 5, 133, 61, 35 ); //BANDAGES
	set_character_color_slot( 6, 134, 180, 193 ); //HIGHLIGHTS
	set_character_color_slot( 7, 244, 164, 31 ); //BLOOD
	
	set_article_color_slot( 0, 244, 164, 31 ); //SKIN
	set_article_color_slot( 1, 60, 55, 73 ); //HAIR
	set_article_color_slot( 2, 133, 61, 35 ); //SHIRT
	set_article_color_slot( 3, 60, 55, 73 ); //COAT
	set_article_color_slot( 4, 134, 180, 193 ); //FUR
	set_article_color_slot( 5, 133, 61, 35 ); //BANDAGES
	set_article_color_slot( 6, 134, 180, 193 ); //HIGHLIGHTS
	set_article_color_slot( 7, 244, 164, 31 ); //BLOOD
		break;
		case 2:
	//Flaming Sentry
	set_character_color_slot( 0, 143, 149, 141 ); //SKIN
	set_character_color_slot( 1, 196, 44, 69 ); //HAIR
	set_character_color_slot( 2, 143, 149, 141 ); //SHIRT
	set_character_color_slot( 3, 145, 86, 70 ); //COAT
	set_character_color_slot( 4, 255, 124, 0 ); //FUR
	set_character_color_slot( 5, 145, 86, 70 ); //BANDAGES
	set_character_color_slot( 6, 255, 124, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 124, 0 ); //BLOOD
	
	set_article_color_slot( 0, 143, 149, 141 ); //SKIN
	set_article_color_slot( 1, 196, 44, 69 ); //HAIR
	set_article_color_slot( 2, 143, 149, 141 ); //SHIRT
	set_article_color_slot( 3, 145, 86, 70 ); //COAT
	set_article_color_slot( 4, 255, 124, 0 ); //FUR
	set_article_color_slot( 5, 145, 86, 70 ); //BANDAGES
	set_article_color_slot( 6, 255, 124, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 124, 0 ); //BLOOD
		break;
		case 3:
	//Loving Athlete
	set_character_color_slot( 0, 255, 248, 253 ); //SKIN
	set_character_color_slot( 1, 135, 106, 129 ); //HAIR
	set_character_color_slot( 2, 255, 248, 253 ); //SHIRT
	set_character_color_slot( 3, 245, 108, 186 ); //COAT
	set_character_color_slot( 4, 255, 248, 253 ); //FUR
	set_character_color_slot( 5, 73, 21, 136 ); //BANDAGES
	set_character_color_slot( 6, 73, 21, 136 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 0, 146 ); //BLOOD
	
	set_article_color_slot( 0, 255, 248, 253 ); //SKIN
	set_article_color_slot( 1, 135, 106, 129 ); //HAIR
	set_article_color_slot( 2, 255, 248, 253 ); //SHIRT
	set_article_color_slot( 3, 245, 108, 186 ); //COAT
	set_article_color_slot( 4, 255, 248, 253 ); //FUR
	set_article_color_slot( 5, 73, 21, 136 ); //BANDAGES
	set_article_color_slot( 6, 73, 21, 136 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 0, 146 ); //BLOOD
		break;
		case 4:
	//Average Schmuck
	set_character_color_slot( 0, 241, 241, 241 ); //SKIN
	set_character_color_slot( 1, 241, 241, 241 ); //HAIR
	set_character_color_slot( 2, 255, 173, 0 ); //SHIRT
	set_character_color_slot( 3, 108, 154, 220 ); //COAT
	set_character_color_slot( 4, 255, 173, 0 ); //FUR
	set_character_color_slot( 5, 164, 164, 164 ); //BANDAGES
	set_character_color_slot( 6, 34, 166, 22 ); //HIGHLIGHTS
	set_character_color_slot( 7, 108, 154, 220 ); //BLOOD
	
	set_article_color_slot( 0, 241, 241, 241 ); //SKIN
	set_article_color_slot( 1, 241, 241, 241 ); //HAIR
	set_article_color_slot( 2, 255, 173, 0 ); //SHIRT
	set_article_color_slot( 3, 108, 154, 220 ); //COAT
	set_article_color_slot( 4, 255, 173, 0 ); //FUR
	set_article_color_slot( 5, 164, 164, 164 ); //BANDAGES
	set_article_color_slot( 6, 34, 166, 22 ); //HIGHLIGHTS
	set_article_color_slot( 7, 108, 154, 220 ); //BLOOD
		break;
		case 5:
	// Shocking Rodent
	set_character_color_slot( 0, 255, 250, 116 ); //SKIN
	set_character_color_slot( 1, 53, 51, 48 ); //HAIR
	set_character_color_slot( 2, 255, 250, 116 ); //SHIRT
	set_character_color_slot( 3, 255, 250, 116 ); //COAT
	set_character_color_slot( 4, 53, 51, 48 ); //FUR
	set_character_color_slot( 5, 53, 51, 48 ); //BANDAGES
	set_character_color_slot( 6, 53, 51, 48 ); //HIGHLIGHTS
	set_character_color_slot( 7, 173, 255, 252 ); //BLOOD	
	
	set_article_color_slot( 0, 255, 250, 116 ); //SKIN
	set_article_color_slot( 1, 53, 51, 48 ); //HAIR
	set_article_color_slot( 2, 255, 250, 116 ); //SHIRT
	set_article_color_slot( 3, 255, 250, 116 ); //COAT
	set_article_color_slot( 4, 53, 51, 48 ); //FUR
	set_article_color_slot( 5, 53, 51, 48 ); //BANDAGES
	set_article_color_slot( 6, 53, 51, 48 ); //HIGHLIGHTS
	set_article_color_slot( 7, 173, 255, 252 ); //BLOOD	
		break;
	}
	switch (Emerald_Confidant){ // Color Alt 3 Secret Colors
		case 1:
	//Heaven Chaser
	set_character_color_slot( 0, 239, 207, 159 ); //SKIN
	set_character_color_slot( 1, 239, 191, 47 ); //HAIR
	set_character_color_slot( 2, 79, 79, 79 ); //SHIRT
	set_character_color_slot( 3, 239, 191, 47 ); //COAT
	set_character_color_slot( 4, 143, 207, 143 ); //FUR
	set_character_color_slot( 5, 239, 191, 47 ); //BANDAGES
	set_character_color_slot( 6, 255, 132, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 246, 214, 165 ); //BLOOD
	
	set_article_color_slot( 0, 239, 207, 159 ); //SKIN
	set_article_color_slot( 1, 239, 191, 47 ); //HAIR
	set_article_color_slot( 2, 79, 79, 79 ); //SHIRT
	set_article_color_slot( 3, 239, 191, 47 ); //COAT
	set_article_color_slot( 4, 143, 207, 143 ); //FUR
	set_article_color_slot( 5, 239, 191, 47 ); //BANDAGES
	set_article_color_slot( 6, 255, 132, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 246, 214, 165 ); //BLOOD
		break;
		case 2:
	//Metal Vampir
	set_character_color_slot( 0, 234, 227, 223 ); //SKIN
	set_character_color_slot( 1, 34, 42, 47 ); //HAIR
	set_character_color_slot( 2, 79, 62, 87 ); //SHIRT
	set_character_color_slot( 3, 37, 46, 52 ); //COAT
	set_character_color_slot( 4, 138, 37, 37 ); //FUR
	set_character_color_slot( 5, 37, 46, 52 ); //BANDAGES
	set_character_color_slot( 6, 209, 165, 56 ); //HIGHLIGHTS
	set_character_color_slot( 7, 108, 125, 132 ); //BLOOD
	
	set_article_color_slot( 0, 234, 227, 223 ); //SKIN
	set_article_color_slot( 1, 34, 42, 47 ); //HAIR
	set_article_color_slot( 2, 79, 62, 87 ); //SHIRT
	set_article_color_slot( 3, 37, 46, 52 ); //COAT
	set_article_color_slot( 4, 138, 37, 37 ); //FUR
	set_article_color_slot( 5, 37, 46, 52 ); //BANDAGES
	set_article_color_slot( 6, 209, 165, 56 ); //HIGHLIGHTS
	set_article_color_slot( 7, 108, 125, 132 ); //BLOOD
		break;
		case 3:
	//Bloody Ronin
	set_character_color_slot( 0, 90, 62, 41 ); //SKIN
	set_character_color_slot( 1, 71, 76, 83 ); //HAIR
	set_character_color_slot( 2, 191, 137, 53 ); //SHIRT
	set_character_color_slot( 3, 234, 232, 223 ); //COAT
	set_character_color_slot( 4, 107, 78, 120 ); //FUR
	set_character_color_slot( 5, 234, 232, 223 ); //BANDAGES
	set_character_color_slot( 6, 181, 72, 60 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 0, 36 ); //BLOOD
	
	set_article_color_slot( 0, 90, 62, 41 ); //SKIN
	set_article_color_slot( 1, 71, 76, 83 ); //HAIR
	set_article_color_slot( 2, 191, 137, 53 ); //SHIRT
	set_article_color_slot( 3, 234, 232, 223 ); //COAT
	set_article_color_slot( 4, 107, 78, 120 ); //FUR
	set_article_color_slot( 5, 234, 232, 223 ); //BANDAGES
	set_article_color_slot( 6, 181, 72, 60 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 0, 36 ); //BLOOD
		break;
		case 4:
	//Vampire Savior
	set_character_color_slot( 0, 176, 192, 240 ); //SKIN
	set_character_color_slot( 1, 96, 80, 128 ); //HAIR
	set_character_color_slot( 2, 64, 64, 112 ); //SHIRT
	set_character_color_slot( 3, 96, 80, 128 ); //COAT
	set_character_color_slot( 4, 240, 240, 192 ); //FUR
	set_character_color_slot( 5, 208, 0, 32 ); //BANDAGES
	set_character_color_slot( 6, 240, 0, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 240, 0, 0 ); //BLOOD
	
	set_article_color_slot( 0, 176, 192, 240 ); //SKIN
	set_article_color_slot( 1, 96, 80, 128 ); //HAIR
	set_article_color_slot( 2, 64, 64, 112 ); //SHIRT
	set_article_color_slot( 3, 96, 80, 128 ); //COAT
	set_article_color_slot( 4, 240, 240, 192 ); //FUR
	set_article_color_slot( 5, 208, 0, 32 ); //BANDAGES
	set_article_color_slot( 6, 240, 0, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 240, 0, 0 ); //BLOOD
		break;
		case 5:
	// Sin of Greed
	set_character_color_slot( 0, 211, 195, 166 ); //SKIN
	set_character_color_slot( 1, 30, 32, 31 ); //HAIR
	set_character_color_slot( 2, 49, 38, 35 ); //SHIRT
	set_character_color_slot( 3, 66, 73, 75 ); //COAT
	set_character_color_slot( 4, 203, 201, 188 ); //FUR
	set_character_color_slot( 5, 34, 47, 38 ); //BANDAGES
	set_character_color_slot( 6, 131, 122, 119 ); //HIGHLIGHTS
	set_character_color_slot( 7, 90, 94, 98 ); //BLOOD
	
	set_article_color_slot( 0, 211, 195, 166 ); //SKIN
	set_article_color_slot( 1, 30, 32, 31 ); //HAIR
	set_article_color_slot( 2, 49, 38, 35 ); //SHIRT
	set_article_color_slot( 3, 66, 73, 75 ); //COAT
	set_article_color_slot( 4, 203, 201, 188 ); //FUR
	set_article_color_slot( 5, 34, 47, 38 ); //BANDAGES
	set_article_color_slot( 6, 131, 122, 119 ); //HIGHLIGHTS
	set_article_color_slot( 7, 90, 94, 98 ); //BLOOD
	    break;
	}
	switch (Black_Blank){ // Color Alt 4 Secret Colors
		case 1:
	//Prideful Lion
	set_character_color_slot( 0, 236, 215, 165 ); //SKIN
	set_character_color_slot( 1, 242, 199, 132 ); //HAIR
	set_character_color_slot( 2, 56, 50, 46 ); //SHIRT
	set_character_color_slot( 3, 198, 117, 78 ); //COAT
	set_character_color_slot( 4, 242, 199, 132 ); //FUR
	set_character_color_slot( 5, 56, 50, 46 ); //BANDAGES
	set_character_color_slot( 6, 186, 255, 248 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 198, 137 ); //BLOOD
	
	set_article_color_slot( 0, 236, 215, 165 ); //SKIN
	set_article_color_slot( 1, 242, 199, 132 ); //HAIR
	set_article_color_slot( 2, 56, 50, 46 ); //SHIRT
	set_article_color_slot( 3, 198, 117, 78 ); //COAT
	set_article_color_slot( 4, 242, 199, 132 ); //FUR
	set_article_color_slot( 5, 56, 50, 46 ); //BANDAGES
	set_article_color_slot( 6, 186, 255, 248 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 198, 137 ); //BLOOD
		break;
		case 2:
	//Void Sacrifice
	set_character_color_slot( 0, 50, 52, 68 ); //SKIN
	set_character_color_slot( 1, 50, 52, 68 ); //HAIR
	set_character_color_slot( 2, 50, 52, 68 ); //SHIRT
	set_character_color_slot( 3, 192, 201, 213 ); //COAT
	set_character_color_slot( 4, 213, 198, 192 ); //FUR
	set_character_color_slot( 5, 0, 0, 0 ); //BANDAGES
	set_character_color_slot( 6, 251, 242, 54 ); //HIGHLIGHTS
	set_character_color_slot( 7, 224, 80, 80 ); //BLOOD
	
	set_article_color_slot( 0, 50, 52, 68 ); //SKIN
	set_article_color_slot( 1, 50, 52, 68 ); //HAIR
	set_article_color_slot( 2, 50, 52, 68 ); //SHIRT
	set_article_color_slot( 3, 192, 201, 213 ); //COAT
	set_article_color_slot( 4, 213, 198, 192 ); //FUR
	set_article_color_slot( 5, 0, 0, 0 ); //BANDAGES
	set_article_color_slot( 6, 251, 242, 54 ); //HIGHLIGHTS
	set_article_color_slot( 7, 224, 80, 80 ); //BLOOD
		break;
		case 3:
	//Immortal Stranger
	set_character_color_slot( 0, 228, 211, 181 ); //SKIN
	set_character_color_slot( 1, 225, 222, 214 ); //HAIR
	set_character_color_slot( 2, 225, 224, 203 ); //SHIRT
	set_character_color_slot( 3, 46, 34, 28 ); //COAT
	set_character_color_slot( 4, 34, 68, 92 ); //FUR
	set_character_color_slot( 5, 46, 34, 28 ); //BANDAGES
	set_character_color_slot( 6, 70, 155, 154 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 0, 0 ); //BLOOD
	
	set_article_color_slot( 0, 228, 211, 181 ); //SKIN
	set_article_color_slot( 1, 225, 222, 214 ); //HAIR
	set_article_color_slot( 2, 225, 224, 203 ); //SHIRT
	set_article_color_slot( 3, 46, 34, 28 ); //COAT
	set_article_color_slot( 4, 34, 68, 92 ); //FUR
	set_article_color_slot( 5, 46, 34, 28 ); //BANDAGES
	set_article_color_slot( 6, 70, 155, 154 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 0, 0 ); //BLOOD
		break;
		case 4:
	//Who is SG?
	set_character_color_slot( 0, 240, 199, 162 ); //SKIN
	set_character_color_slot( 1, 30, 30, 30 ); //HAIR
	set_character_color_slot( 2, 228, 228, 246 ); //SHIRT
	set_character_color_slot( 3, 47, 63, 147 ); //COAT
	set_character_color_slot( 4, 166, 166, 166 ); //FUR
	set_character_color_slot( 5, 236, 158, 82 ); //BANDAGES
	set_character_color_slot( 6, 0, 0, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 0, 255, 255 ); //BLOOD
	
	set_article_color_slot( 0, 240, 199, 162 ); //SKIN
	set_article_color_slot( 1, 30, 30, 30 ); //HAIR
	set_article_color_slot( 2, 228, 228, 246 ); //SHIRT
	set_article_color_slot( 3, 47, 63, 147 ); //COAT
	set_article_color_slot( 4, 166, 166, 166 ); //FUR
	set_article_color_slot( 5, 236, 158, 82 ); //BANDAGES
	set_article_color_slot( 6, 0, 0, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 0, 255, 255 ); //BLOOD
		break;
		case 5:
	//Dragon Install
	set_character_color_slot( 0, 204, 166, 108 ); //SKIN
	set_character_color_slot( 1, 82, 48, 32 ); //HAIR
	set_character_color_slot( 2, 54, 40, 28 ); //SHIRT
	set_character_color_slot( 3, 179, 66, 48 ); //COAT
	set_character_color_slot( 4, 26, 16, 18 ); //FUR
	set_character_color_slot( 5, 54, 40, 28 ); //BANDAGES
	set_character_color_slot( 6, 173, 139, 115 ); //HIGHLIGHTS
	set_character_color_slot( 7, 252, 186, 4 ); //BLOOD	
	
	set_article_color_slot( 0, 204, 166, 108 ); //SKIN
	set_article_color_slot( 1, 82, 48, 32 ); //HAIR
	set_article_color_slot( 2, 54, 40, 28 ); //SHIRT
	set_article_color_slot( 3, 179, 66, 48 ); //COAT
	set_article_color_slot( 4, 26, 16, 18 ); //FUR
	set_article_color_slot( 5, 54, 40, 28 ); //BANDAGES
	set_article_color_slot( 6, 173, 139, 115 ); //HIGHLIGHTS
	set_article_color_slot( 7, 252, 186, 4 ); //BLOOD	
		break;
	}
	switch (Robbery_Purple){ // Color Alt 5 Secret Colors
		case 1:
	//Unbridled Instinct
	set_character_color_slot( 0, 248, 184, 136 ); //SKIN
	set_character_color_slot( 1, 128, 40, 32 ); //HAIR
	set_character_color_slot( 2, 248, 232, 216 ); //SHIRT
	set_character_color_slot( 3, 69, 60, 66 ); //COAT
	set_character_color_slot( 4, 248, 232, 216 ); //FUR
	set_character_color_slot( 5, 248, 232, 216 ); //BANDAGES
	set_character_color_slot( 6, 152, 0, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 123, 74, 247 ); //BLOOD
	
	set_article_color_slot( 0, 248, 184, 136 ); //SKIN
	set_article_color_slot( 1, 128, 40, 32 ); //HAIR
	set_article_color_slot( 2, 248, 232, 216 ); //SHIRT
	set_article_color_slot( 3, 69, 60, 66 ); //COAT
	set_article_color_slot( 4, 248, 232, 216 ); //FUR
	set_article_color_slot( 5, 248, 232, 216 ); //BANDAGES
	set_article_color_slot( 6, 152, 0, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 123, 74, 247 ); //BLOOD
		break;
		case 2:
	//Demon Gangster
	set_character_color_slot( 0, 255, 197, 156 ); //SKIN
	set_character_color_slot( 1, 255, 222, 90 ); //HAIR
	set_character_color_slot( 2, 123, 123, 123 ); //SHIRT
	set_character_color_slot( 3, 82, 82, 82 ); //COAT
	set_character_color_slot( 4, 255, 222, 90 ); //FUR
	set_character_color_slot( 5, 82, 82, 82 ); //BANDAGES
	set_character_color_slot( 6, 255, 222, 90 ); //HIGHLIGHTS
	set_character_color_slot( 7, 232, 7, 7 ); //BLOOD
	
	set_article_color_slot( 0, 255, 197, 156 ); //SKIN
	set_article_color_slot( 1, 255, 222, 90 ); //HAIR
	set_article_color_slot( 2, 123, 123, 123 ); //SHIRT
	set_article_color_slot( 3, 82, 82, 82 ); //COAT
	set_article_color_slot( 4, 255, 222, 90 ); //FUR
	set_article_color_slot( 5, 82, 82, 82 ); //BANDAGES
	set_article_color_slot( 6, 255, 222, 90 ); //HIGHLIGHTS
	set_article_color_slot( 7, 232, 7, 7 ); //BLOOD
		break;
		case 3:
	//Future Mercenary
	set_character_color_slot( 0, 239, 156, 89 ); //SKIN
	set_character_color_slot( 1, 146, 83, 51 ); //HAIR
	set_character_color_slot( 2, 72, 81, 89 ); //SHIRT
	set_character_color_slot( 3, 35, 42, 36 ); //COAT
	set_character_color_slot( 4, 153, 163, 169 ); //FUR
	set_character_color_slot( 5, 153, 163, 169 ); //BANDAGES
	set_character_color_slot( 6, 80, 162, 79 ); //HIGHLIGHTS
	set_character_color_slot( 7, 175, 231, 137 ); //BLOOD
	
	set_article_color_slot( 0, 239, 156, 89 ); //SKIN
	set_article_color_slot( 1, 146, 83, 51 ); //HAIR
	set_article_color_slot( 2, 72, 81, 89 ); //SHIRT
	set_article_color_slot( 3, 35, 42, 36 ); //COAT
	set_article_color_slot( 4, 153, 163, 169 ); //FUR
	set_article_color_slot( 5, 153, 163, 169 ); //BANDAGES
	set_article_color_slot( 6, 80, 162, 79 ); //HIGHLIGHTS
	set_article_color_slot( 7, 175, 231, 137 ); //BLOOD
		break;
		case 4:
	//Drumming Frenzy
	set_character_color_slot( 0, 248, 72, 40 ); //SKIN
	set_character_color_slot( 1, 248, 240, 224 ); //HAIR
	set_character_color_slot( 2, 248, 240, 224 ); //SHIRT
	set_character_color_slot( 3, 47, 63, 147 ); //COAT
	set_character_color_slot( 4, 104, 192, 192 ); //FUR
	set_character_color_slot( 5, 248, 240, 224 ); //BANDAGES
	set_character_color_slot( 6, 48, 48, 48 ); //HIGHLIGHTS
	set_character_color_slot( 7, 248, 72, 40 ); //BLOOD
	
	set_article_color_slot( 0, 248, 72, 40 ); //SKIN
	set_article_color_slot( 1, 248, 240, 224 ); //HAIR
	set_article_color_slot( 2, 248, 240, 224 ); //SHIRT
	set_article_color_slot( 3, 47, 63, 147 ); //COAT
	set_article_color_slot( 4, 104, 192, 192 ); //FUR
	set_article_color_slot( 5, 248, 240, 224 ); //BANDAGES
	set_article_color_slot( 6, 48, 48, 48 ); //HIGHLIGHTS
	set_article_color_slot( 7, 248, 72, 40 ); //BLOOD
		break;
		case 5:
	//Mark of the Wolf
	set_character_color_slot( 0, 254, 205, 156 ); //SKIN
	set_character_color_slot( 1, 221, 180, 89 ); //HAIR
	set_character_color_slot( 2, 64, 56, 48 ); //SHIRT
	set_character_color_slot( 3, 188, 0, 16 ); //COAT
	set_character_color_slot( 4, 253, 245, 245 ); //FUR
	set_character_color_slot( 5, 64, 56, 48 ); //BANDAGES
	set_character_color_slot( 6, 188, 0, 16 ); //HIGHLIGHTS
	set_character_color_slot( 7, 132, 107, 214 ); //BLOOD
	
	set_article_color_slot( 0, 254, 205, 156 ); //SKIN
	set_article_color_slot( 1, 221, 180, 89 ); //HAIR
	set_article_color_slot( 2, 64, 56, 48 ); //SHIRT
	set_article_color_slot( 3, 188, 0, 16 ); //COAT
	set_article_color_slot( 4, 253, 245, 245 ); //FUR
	set_article_color_slot( 5, 64, 56, 48 ); //BANDAGES
	set_article_color_slot( 6, 188, 0, 16 ); //HIGHLIGHTS
	set_article_color_slot( 7, 132, 107, 214 ); //BLOOD
		break;
	}
	switch (Empty_Flame){ // Color Alt 6 Secret Colors
		case 1:
	//Frozen Heart
	set_character_color_slot( 0, 255, 237, 237 ); //SKIN
	set_character_color_slot( 1, 255, 255, 255 ); //HAIR
	set_character_color_slot( 2, 255, 255, 255 ); //SHIRT
	set_character_color_slot( 3, 255, 255, 255 ); //COAT
	set_character_color_slot( 4, 58, 61, 71 ); //FUR
	set_character_color_slot( 5, 21, 0, 184 ); //BANDAGES
	set_character_color_slot( 6, 21, 0, 184 ); //HIGHLIGHTS
	set_character_color_slot( 7, 133, 232, 255 ); //BLOOD
	
	set_article_color_slot( 0, 255, 237, 237 ); //SKIN
	set_article_color_slot( 1, 255, 255, 255 ); //HAIR
	set_article_color_slot( 2, 255, 255, 255 ); //SHIRT
	set_article_color_slot( 3, 255, 255, 255 ); //COAT
	set_article_color_slot( 4, 58, 61, 71 ); //FUR
	set_article_color_slot( 5, 21, 0, 184 ); //BANDAGES
	set_article_color_slot( 6, 21, 0, 184 ); //HIGHLIGHTS
	set_article_color_slot( 7, 133, 232, 255 ); //BLOOD
		break;
		case 2:
	//Demon Gangster
	set_character_color_slot( 0, 255, 255, 255 ); //SKIN
	set_character_color_slot( 1, 109, 47, 26 ); //HAIR
	set_character_color_slot( 2, 214, 73, 94 ); //SHIRT
	set_character_color_slot( 3, 235, 168, 248 ); //COAT
	set_character_color_slot( 4, 235, 168, 248 ); //FUR
	set_character_color_slot( 5, 43, 43, 43 ); //BANDAGES
	set_character_color_slot( 6, 214, 73, 94 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 81, 0 ); //BLOOD
	
	set_article_color_slot( 0, 255, 255, 255 ); //SKIN
	set_article_color_slot( 1, 109, 47, 26 ); //HAIR
	set_article_color_slot( 2, 214, 73, 94 ); //SHIRT
	set_article_color_slot( 3, 235, 168, 248 ); //COAT
	set_article_color_slot( 4, 235, 168, 248 ); //FUR
	set_article_color_slot( 5, 43, 43, 43 ); //BANDAGES
	set_article_color_slot( 6, 214, 73, 94 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 81, 0 ); //BLOOD
		break;
		case 3:
	//Misty Swordmaster
	set_character_color_slot( 0, 249, 248, 240 ); //SKIN
	set_character_color_slot( 1, 249, 248, 240 ); //HAIR
	set_character_color_slot( 2, 51, 48, 45 ); //SHIRT
	set_character_color_slot( 3, 51, 48, 45 ); //COAT
	set_character_color_slot( 4, 44, 49, 53 ); //FUR
	set_character_color_slot( 5, 231, 212, 161 ); //BANDAGES
	set_character_color_slot( 6, 60, 255, 228 ); //HIGHLIGHTS
	set_character_color_slot( 7, 236, 240, 255 ); //BLOOD
	
	set_article_color_slot( 0, 249, 248, 240 ); //SKIN
	set_article_color_slot( 1, 249, 248, 240 ); //HAIR
	set_article_color_slot( 2, 51, 48, 45 ); //SHIRT
	set_article_color_slot( 3, 51, 48, 45 ); //COAT
	set_article_color_slot( 4, 44, 49, 53 ); //FUR
	set_article_color_slot( 5, 231, 212, 161 ); //BANDAGES
	set_article_color_slot( 6, 60, 255, 228 ); //HIGHLIGHTS
	set_article_color_slot( 7, 236, 240, 255 ); //BLOOD
		break;
		case 4:
	//Dynamic Double
	set_character_color_slot( 0, 250, 253, 255 ); //SKIN
	set_character_color_slot( 1, 58, 58, 58 ); //HAIR
	set_character_color_slot( 2, 190, 190, 190 ); //SHIRT
	set_character_color_slot( 3, 58, 58, 58 ); //COAT
	set_character_color_slot( 4, 250, 253, 255 ); //FUR
	set_character_color_slot( 5, 120, 120, 120 ); //BANDAGES
	set_character_color_slot( 6, 72, 226, 255 ); //HIGHLIGHTS
	set_character_color_slot( 7, 72, 226, 255 ); //BLOOD
	
	set_article_color_slot( 0, 250, 253, 255 ); //SKIN
	set_article_color_slot( 1, 58, 58, 58 ); //HAIR
	set_article_color_slot( 2, 190, 190, 190 ); //SHIRT
	set_article_color_slot( 3, 58, 58, 58 ); //COAT
	set_article_color_slot( 4, 250, 253, 255 ); //FUR
	set_article_color_slot( 5, 120, 120, 120 ); //BANDAGES
	set_article_color_slot( 6, 72, 226, 255 ); //HIGHLIGHTS
	set_article_color_slot( 7, 72, 226, 255 ); //BLOOD
		break;
		case 5:
	//Eldrich Dancer
	set_character_color_slot( 0, 255, 245, 236 ); //SKIN
	set_character_color_slot( 1, 74, 62, 66 ); //HAIR
	set_character_color_slot( 2, 255, 245, 236 ); //SHIRT
	set_character_color_slot( 3, 74, 62, 66 ); //COAT
	set_character_color_slot( 4, 255, 135, 206 ); //FUR
	set_character_color_slot( 5, 74, 59, 88 ); //BANDAGES
	set_character_color_slot( 6, 251, 62, 174 ); //HIGHLIGHTS
	set_character_color_slot( 7, 212, 62, 64 ); //BLOOD	
	
	set_article_color_slot( 0, 255, 245, 236 ); //SKIN
	set_article_color_slot( 1, 74, 62, 66 ); //HAIR
	set_article_color_slot( 2, 255, 245, 236 ); //SHIRT
	set_article_color_slot( 3, 74, 62, 66 ); //COAT
	set_article_color_slot( 4, 255, 135, 206 ); //FUR
	set_article_color_slot( 5, 74, 59, 88 ); //BANDAGES
	set_article_color_slot( 6, 251, 62, 174 ); //HIGHLIGHTS
	set_article_color_slot( 7, 212, 62, 64 ); //BLOOD	
		break;
	}
	switch (Crimson_Scourge){ // Color Alt 7 Secret Colors
		case 1:
	//Bone Dry
	set_character_color_slot( 0, 244, 219, 170 ); //SKIN
	set_character_color_slot( 1, 201, 195, 175 ); //HAIR
	set_character_color_slot( 2, 183, 199, 173 ); //SHIRT
	set_character_color_slot( 3, 26, 30, 41 ); //COAT
	set_character_color_slot( 4, 26, 30, 41 ); //FUR
	set_character_color_slot( 5, 231, 242, 203 ); //BANDAGES
	set_character_color_slot( 6, 252, 0, 33 ); //HIGHLIGHTS
	set_character_color_slot( 7, 0, 247, 255 ); //BLOOD
	
	set_article_color_slot( 0, 244, 219, 170 ); //SKIN
	set_article_color_slot( 1, 201, 195, 175 ); //HAIR
	set_article_color_slot( 2, 183, 199, 173 ); //SHIRT
	set_article_color_slot( 3, 26, 30, 41 ); //COAT
	set_article_color_slot( 4, 26, 30, 41 ); //FUR
	set_article_color_slot( 5, 231, 242, 203 ); //BANDAGES
	set_article_color_slot( 6, 252, 0, 33 ); //HIGHLIGHTS
	set_article_color_slot( 7, 0, 247, 255 ); //BLOOD
		break;
		case 2:
	//Hunter's Eye
	set_character_color_slot( 0, 250, 235, 214 ); //SKIN
	set_character_color_slot( 1, 183, 113, 26 ); //HAIR
	set_character_color_slot( 2, 250, 235, 214 ); //SHIRT
	set_character_color_slot( 3, 81, 82, 94 ); //COAT
	set_character_color_slot( 4, 235, 0, 0 ); //FUR
	set_character_color_slot( 5, 81, 82, 94 ); //BANDAGES
	set_character_color_slot( 6, 255, 193, 13 ); //HIGHLIGHTS
	set_character_color_slot( 7, 223, 31, 31 ); //BLOOD
	
	set_article_color_slot( 0, 250, 235, 214 ); //SKIN
	set_article_color_slot( 1, 183, 113, 26 ); //HAIR
	set_article_color_slot( 2, 250, 235, 214 ); //SHIRT
	set_article_color_slot( 3, 81, 82, 94 ); //COAT
	set_article_color_slot( 4, 235, 0, 0 ); //FUR
	set_article_color_slot( 5, 81, 82, 94 ); //BANDAGES
	set_article_color_slot( 6, 255, 193, 13 ); //HIGHLIGHTS
	set_article_color_slot( 7, 223, 31, 31 ); //BLOOD
		break;
		case 3:
	//Infernal Punk
	set_character_color_slot( 0, 179, 32, 29 ); //SKIN
	set_character_color_slot( 1, 61, 22, 108 ); //HAIR
	set_character_color_slot( 2, 40, 43, 43 ); //SHIRT
	set_character_color_slot( 3, 112, 65, 76 ); //COAT
	set_character_color_slot( 4, 165, 143, 86 ); //FUR
	set_character_color_slot( 5, 40, 43, 43 ); //BANDAGES
	set_character_color_slot( 6, 180, 124, 226 ); //HIGHLIGHTS
	set_character_color_slot( 7, 116, 0, 255 ); //BLOOD
	
	set_article_color_slot( 0, 179, 32, 29 ); //SKIN
	set_article_color_slot( 1, 61, 22, 108 ); //HAIR
	set_article_color_slot( 2, 40, 43, 43 ); //SHIRT
	set_article_color_slot( 3, 112, 65, 76 ); //COAT
	set_article_color_slot( 4, 165, 143, 86 ); //FUR
	set_article_color_slot( 5, 40, 43, 43 ); //BANDAGES
	set_article_color_slot( 6, 180, 124, 226 ); //HIGHLIGHTS
	set_article_color_slot( 7, 116, 0, 255 ); //BLOOD
		break;
		case 4:
	//Schwarzschild
	set_character_color_slot( 0, 253, 210, 168 ); //SKIN
	set_character_color_slot( 1, 103, 211, 188 ); //HAIR
	set_character_color_slot( 2, 255, 182, 51 ); //SHIRT
	set_character_color_slot( 3, 65, 118, 112 ); //COAT
	set_character_color_slot( 4, 65, 118, 112 ); //FUR
	set_character_color_slot( 5, 210, 33, 85 ); //BANDAGES
	set_character_color_slot( 6, 255, 182, 51 ); //HIGHLIGHTS
	set_character_color_slot( 7, 153, 51, 255 ); //BLOOD
	
	set_article_color_slot( 0, 253, 210, 168 ); //SKIN
	set_article_color_slot( 1, 103, 211, 188 ); //HAIR
	set_article_color_slot( 2, 255, 182, 51 ); //SHIRT
	set_article_color_slot( 3, 65, 118, 112 ); //COAT
	set_article_color_slot( 4, 65, 118, 112 ); //FUR
	set_article_color_slot( 5, 210, 33, 85 ); //BANDAGES
	set_article_color_slot( 6, 255, 182, 51 ); //HIGHLIGHTS
	set_article_color_slot( 7, 153, 51, 255 ); //BLOOD
		break;
		case 5:
	//Morion Black
	set_character_color_slot( 0, 251, 235, 232 ); //SKIN
	set_character_color_slot( 1, 250, 237, 205 ); //HAIR
	set_character_color_slot( 2, 44, 46, 46 ); //SHIRT
	set_character_color_slot( 3, 253, 250, 253 ); //COAT
	set_character_color_slot( 4, 42, 49, 45 ); //FUR
	set_character_color_slot( 5, 42, 49, 45 ); //BANDAGES
	set_character_color_slot( 6, 230, 0, 4 ); //HIGHLIGHTS
	set_character_color_slot( 7, 45, 44, 105 ); //BLOOD	
	
	set_article_color_slot( 0, 251, 235, 232 ); //SKIN
	set_article_color_slot( 1, 250, 237, 205 ); //HAIR
	set_article_color_slot( 2, 44, 46, 46 ); //SHIRT
	set_article_color_slot( 3, 253, 250, 253 ); //COAT
	set_article_color_slot( 4, 42, 49, 45 ); //FUR
	set_article_color_slot( 5, 42, 49, 45 ); //BANDAGES
	set_article_color_slot( 6, 230, 0, 4 ); //HIGHLIGHTS
	set_article_color_slot( 7, 45, 44, 105 ); //BLOOD	
		break;
	}
	switch (King_of_Kings){ // Color Alt 8 Secret Colors
		case 1:
	//Cruel Comedian
	set_character_color_slot( 0, 255, 255, 255 ); //SKIN
	set_character_color_slot( 1, 255, 255, 255 ); //HAIR
	set_character_color_slot( 2, 235, 235, 235 ); //SHIRT
	set_character_color_slot( 3, 70, 127, 197 ); //COAT
	set_character_color_slot( 4, 185, 188, 197 ); //FUR
	set_character_color_slot( 5, 66, 66, 66 ); //BANDAGES
	set_character_color_slot( 6, 255, 255, 255 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 255, 255 ); //BLOOD
	
	set_article_color_slot( 0, 255, 255, 255 ); //SKIN
	set_article_color_slot( 1, 255, 255, 255 ); //HAIR
	set_article_color_slot( 2, 235, 235, 235 ); //SHIRT
	set_article_color_slot( 3, 70, 127, 197 ); //COAT
	set_article_color_slot( 4, 185, 188, 197 ); //FUR
	set_article_color_slot( 5, 66, 66, 66 ); //BANDAGES
	set_article_color_slot( 6, 255, 255, 255 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 255, 255 ); //BLOOD
		break;
		case 2:
	//Chosen One
	set_character_color_slot( 0, 117, 250, 237 ); //SKIN
	set_character_color_slot( 1, 11, 11, 59 ); //HAIR
	set_character_color_slot( 2, 201, 228, 242 ); //SHIRT
	set_character_color_slot( 3, 11, 11, 59 ); //COAT
	set_character_color_slot( 4, 235, 9, 152 ); //FUR
	set_character_color_slot( 5, 235, 9, 152 ); //BANDAGES
	set_character_color_slot( 6, 255, 0, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 237, 148, 165 ); //BLOOD
	
	set_article_color_slot( 0, 117, 250, 237 ); //SKIN
	set_article_color_slot( 1, 11, 11, 59 ); //HAIR
	set_article_color_slot( 2, 201, 228, 242 ); //SHIRT
	set_article_color_slot( 3, 11, 11, 59 ); //COAT
	set_article_color_slot( 4, 235, 9, 152 ); //FUR
	set_article_color_slot( 5, 235, 9, 152 ); //BANDAGES
	set_article_color_slot( 6, 255, 0, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 237, 148, 165 ); //BLOOD
		break;
		case 3:
	//Beserker
	set_character_color_slot( 0, 229, 128, 200 ); //SKIN
	set_character_color_slot( 1, 133, 36, 107 ); //HAIR
	set_character_color_slot( 2, 97, 43, 149 ); //SHIRT
	set_character_color_slot( 3, 15, 44, 35 ); //COAT
	set_character_color_slot( 4, 133, 36, 107 ); //FUR
	set_character_color_slot( 5, 229, 128, 200 ); //BANDAGES
	set_character_color_slot( 6, 231, 168, 67 ); //HIGHLIGHTS
	set_character_color_slot( 7, 68, 216, 180 ); //BLOOD
	
	set_article_color_slot( 0, 229, 128, 200 ); //SKIN
	set_article_color_slot( 1, 133, 36, 107 ); //HAIR
	set_article_color_slot( 2, 97, 43, 149 ); //SHIRT
	set_article_color_slot( 3, 15, 44, 35 ); //COAT
	set_article_color_slot( 4, 133, 36, 107 ); //FUR
	set_article_color_slot( 5, 229, 128, 200 ); //BANDAGES
	set_article_color_slot( 6, 231, 168, 67 ); //HIGHLIGHTS
	set_article_color_slot( 7, 68, 216, 180 ); //BLOOD
		break;
		case 4:
	//Dark Heart
	set_character_color_slot( 0, 19, 41, 30 ); //SKIN
	set_character_color_slot( 1, 87, 189, 138 ); //HAIR
	set_character_color_slot( 2, 19, 41, 30 ); //SHIRT
	set_character_color_slot( 3, 87, 189, 138 ); //COAT
	set_character_color_slot( 4, 245, 0, 159 ); //FUR
	set_character_color_slot( 5, 245, 0, 159 ); //BANDAGES
	set_character_color_slot( 6, 255, 255, 255 ); //HIGHLIGHTS
	set_character_color_slot( 7, 87, 189, 138 ); //BLOOD
	
	set_article_color_slot( 0, 19, 41, 30 ); //SKIN
	set_article_color_slot( 1, 87, 189, 138 ); //HAIR
	set_article_color_slot( 2, 19, 41, 30 ); //SHIRT
	set_article_color_slot( 3, 87, 189, 138 ); //COAT
	set_article_color_slot( 4, 245, 0, 159 ); //FUR
	set_article_color_slot( 5, 245, 0, 159 ); //BANDAGES
	set_article_color_slot( 6, 255, 255, 255 ); //HIGHLIGHTS
	set_article_color_slot( 7, 87, 189, 138 ); //BLOOD
		break;
		case 5:
	//Hammer Head
	set_character_color_slot( 0, 255, 255, 255 ); //SKIN
	set_character_color_slot( 1, 255, 255, 255 ); //HAIR
	set_character_color_slot( 2, 122, 102, 84 ); //SHIRT
	set_character_color_slot( 3, 28, 54, 73 ); //COAT
	set_character_color_slot( 4, 28, 54, 73 ); //FUR
	set_character_color_slot( 5, 122, 102, 84 ); //BANDAGES
	set_character_color_slot( 6, 255, 214, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 255, 255 ); //BLOOD
	
	set_article_color_slot( 0, 255, 255, 255 ); //SKIN
	set_article_color_slot( 1, 255, 255, 255 ); //HAIR
	set_article_color_slot( 2, 122, 102, 84 ); //SHIRT
	set_article_color_slot( 3, 28, 54, 73 ); //COAT
	set_article_color_slot( 4, 28, 54, 73 ); //FUR
	set_article_color_slot( 5, 122, 102, 84 ); //BANDAGES
	set_article_color_slot( 6, 255, 214, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 255, 255 ); //BLOOD
		break;
	}
	switch (Humble_Melody){ // Color Alt 9 Secret Colors
		case 1:
	//Light Bringer
	set_character_color_slot( 0, 255, 234, 214 ); //SKIN
	set_character_color_slot( 1, 255, 122, 0  ); //HAIR
	set_character_color_slot( 2, 33, 70, 164 ); //SHIRT
	set_character_color_slot( 3, 33, 70, 164 ); //COAT
	set_character_color_slot( 4, 255, 214, 0 ); //FUR
	set_character_color_slot( 5, 255, 214, 0 ); //BANDAGES
	set_character_color_slot( 6, 255, 214, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 214, 0 ); //BLOOD
	
	set_article_color_slot( 0, 255, 234, 214 ); //SKIN
	set_article_color_slot( 1, 255, 122, 0  ); //HAIR
	set_article_color_slot( 2, 33, 70, 164 ); //SHIRT
	set_article_color_slot( 3, 33, 70, 164 ); //COAT
	set_article_color_slot( 4, 255, 214, 0 ); //FUR
	set_article_color_slot( 5, 255, 214, 0 ); //BANDAGES
	set_article_color_slot( 6, 255, 214, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 214, 0 ); //BLOOD
		break;
		case 2:
	//Global Warming
	set_character_color_slot( 0, 249, 205, 196 ); //SKIN
	set_character_color_slot( 1, 182, 73, 218 ); //HAIR
	set_character_color_slot( 2, 67, 74, 72 ); //SHIRT
	set_character_color_slot( 3, 71, 185, 89 ); //COAT
	set_character_color_slot( 4, 71, 185, 89 ); //FUR
	set_character_color_slot( 5, 249, 205, 196 ); //BANDAGES
	set_character_color_slot( 6, 179, 0, 9 ); //HIGHLIGHTS
	set_character_color_slot( 7, 179, 0, 9 ); //BLOOD
	
	set_article_color_slot( 0, 249, 205, 196 ); //SKIN
	set_article_color_slot( 1, 182, 73, 218 ); //HAIR
	set_article_color_slot( 2, 67, 74, 72 ); //SHIRT
	set_article_color_slot( 3, 71, 185, 89 ); //COAT
	set_article_color_slot( 4, 71, 185, 89 ); //FUR
	set_article_color_slot( 5, 249, 205, 196 ); //BANDAGES
	set_article_color_slot( 6, 179, 0, 9 ); //HIGHLIGHTS
	set_article_color_slot( 7, 179, 0, 9 ); //BLOOD
		break;
		case 3:
	//Pruding Songsmith
	set_character_color_slot( 0, 251, 234, 244 ); //SKIN
	set_character_color_slot( 1, 183, 101, 184 ); //HAIR
	set_character_color_slot( 2, 66, 26, 91 ); //SHIRT
	set_character_color_slot( 3, 167, 83, 132 ); //COAT
	set_character_color_slot( 4, 251, 234, 244 ); //FUR
	set_character_color_slot( 5, 66, 26, 91 ); //BANDAGES
	set_character_color_slot( 6, 177, 47, 102 ); //HIGHLIGHTS
	set_character_color_slot( 7, 241, 140, 214 ); //BLOOD
	
	set_article_color_slot( 0, 251, 234, 244 ); //SKIN
	set_article_color_slot( 1, 183, 101, 184 ); //HAIR
	set_article_color_slot( 2, 66, 26, 91 ); //SHIRT
	set_article_color_slot( 3, 167, 83, 132 ); //COAT
	set_article_color_slot( 4, 251, 234, 244 ); //FUR
	set_article_color_slot( 5, 66, 26, 91 ); //BANDAGES
	set_article_color_slot( 6, 177, 47, 102 ); //HIGHLIGHTS
	set_article_color_slot( 7, 241, 140, 214 ); //BLOOD
		break;
		case 4:
	//Phantom Ranger
	set_character_color_slot( 0, 169, 213, 214 ); //SKIN
	set_character_color_slot( 1, 83, 171, 172 ); //HAIR
	set_character_color_slot( 2, 83, 171, 172 ); //SHIRT
	set_character_color_slot( 3, 38, 113, 115 ); //COAT
	set_character_color_slot( 4, 121, 79, 52 ); //FUR
	set_character_color_slot( 5, 121, 79, 52 ); //BANDAGES
	set_character_color_slot( 6, 223, 168, 73 ); //HIGHLIGHTS
	set_character_color_slot( 7, 223, 168, 73 ); //BLOOD
	
	set_article_color_slot( 0, 169, 213, 214 ); //SKIN
	set_article_color_slot( 1, 83, 171, 172 ); //HAIR
	set_article_color_slot( 2, 83, 171, 172 ); //SHIRT
	set_article_color_slot( 3, 38, 113, 115 ); //COAT
	set_article_color_slot( 4, 121, 79, 52 ); //FUR
	set_article_color_slot( 5, 121, 79, 52 ); //BANDAGES
	set_article_color_slot( 6, 223, 168, 73 ); //HIGHLIGHTS
	set_article_color_slot( 7, 223, 168, 73 ); //BLOOD
		break;
		case 5:
	//Blue Sightseer
	set_character_color_slot( 0, 255, 176, 89 ); //SKIN
	set_character_color_slot( 1, 53, 24, 10 ); //HAIR
	set_character_color_slot( 2, 0, 50, 237 ); //SHIRT
	set_character_color_slot( 3, 10, 2, 77 ); //COAT
	set_character_color_slot( 4, 33, 33, 33 ); //FUR
	set_character_color_slot( 5, 33, 33, 33 ); //BANDAGES
	set_character_color_slot( 6, 79, 239, 255 ); //HIGHLIGHTS
	set_character_color_slot( 7, 79, 239, 255 ); //BLOOD
	
	set_article_color_slot( 0, 255, 176, 89 ); //SKIN
	set_article_color_slot( 1, 53, 24, 10 ); //HAIR
	set_article_color_slot( 2, 0, 50, 237 ); //SHIRT
	set_article_color_slot( 3, 10, 2, 77 ); //COAT
	set_article_color_slot( 4, 33, 33, 33 ); //FUR
	set_article_color_slot( 5, 33, 33, 33 ); //BANDAGES
	set_article_color_slot( 6, 79, 239, 255 ); //HIGHLIGHTS
	set_article_color_slot( 7, 79, 239, 255 ); //BLOOD
		break;
	}
	switch (Crystalline_Growth){ // Color Alt 10 Secret Colors
		case 1:
	//Essence Weaver
	set_character_color_slot( 0, 255, 224, 197 ); //SKIN
	set_character_color_slot( 1, 252, 228, 60 ); //HAIR
	set_character_color_slot( 2, 241, 37, 30 ); //SHIRT
	set_character_color_slot( 3, 74, 78, 130 ); //COAT
	set_character_color_slot( 4, 74, 78, 130 ); //FUR
	set_character_color_slot( 5, 255, 224, 197 ); //BANDAGES
	set_character_color_slot( 6, 118, 0, 204 ); //HIGHLIGHTS
	set_character_color_slot( 7, 118, 0, 204 ); //BLOOD
	
	set_article_color_slot( 0, 255, 224, 197 ); //SKIN
	set_article_color_slot( 1, 252, 228, 60 ); //HAIR
	set_article_color_slot( 2, 241, 37, 30 ); //SHIRT
	set_article_color_slot( 3, 74, 78, 130 ); //COAT
	set_article_color_slot( 4, 74, 78, 130 ); //FUR
	set_article_color_slot( 5, 255, 224, 197 ); //BANDAGES
	set_article_color_slot( 6, 118, 0, 204 ); //HIGHLIGHTS
	set_article_color_slot( 7, 118, 0, 204 ); //BLOOD
		break;
		case 2:
	//Clumsy Elemental
	set_character_color_slot( 0, 253, 245, 234 ); //SKIN
	set_character_color_slot( 1, 20, 187, 255 ); //HAIR
	set_character_color_slot( 2, 0, 171, 244 ); //SHIRT
	set_character_color_slot( 3, 93, 127, 198 ); //COAT
	set_character_color_slot( 4, 210, 228, 242 ); //FUR
	set_character_color_slot( 5, 253, 237, 17 ); //BANDAGES
	set_character_color_slot( 6, 253, 237, 17 ); //HIGHLIGHTS
	set_character_color_slot( 7, 116, 184, 229 ); //BLOOD
	
	set_article_color_slot( 0, 253, 245, 234 ); //SKIN
	set_article_color_slot( 1, 20, 187, 255 ); //HAIR
	set_article_color_slot( 2, 0, 171, 244 ); //SHIRT
	set_article_color_slot( 3, 93, 127, 198 ); //COAT
	set_article_color_slot( 4, 210, 228, 242 ); //FUR
	set_article_color_slot( 5, 253, 237, 17 ); //BANDAGES
	set_article_color_slot( 6, 253, 237, 17 ); //HIGHLIGHTS
	set_article_color_slot( 7, 116, 184, 229 ); //BLOOD
		break;
		case 3:
	//Sacred Sniper
	set_character_color_slot( 0, 238, 206, 193 ); //SKIN
	set_character_color_slot( 1, 109, 140, 161 ); //HAIR
	set_character_color_slot( 2, 255, 238, 230 ); //SHIRT
	set_character_color_slot( 3, 116, 184, 229 ); //COAT
	set_character_color_slot( 4, 255, 254, 255 ); //FUR
	set_character_color_slot( 5, 206, 180, 167 ); //BANDAGES
	set_character_color_slot( 6, 143, 220, 166 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 255, 255 ); //BLOOD
	
	set_article_color_slot( 0, 238, 206, 193 ); //SKIN
	set_article_color_slot( 1, 109, 140, 161 ); //HAIR
	set_article_color_slot( 2, 255, 238, 230 ); //SHIRT
	set_article_color_slot( 3, 116, 184, 229 ); //COAT
	set_article_color_slot( 4, 255, 254, 255 ); //FUR
	set_article_color_slot( 5, 206, 180, 167 ); //BANDAGES
	set_article_color_slot( 6, 143, 220, 166 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 255, 255 ); //BLOOD
		break;
		case 4:
	//Steamy Tutor
	set_character_color_slot( 0, 231, 84, 84 ); //SKIN
	set_character_color_slot( 1, 242, 249, 251 ); //HAIR
	set_character_color_slot( 2, 139, 79, 40 ); //SHIRT
	set_character_color_slot( 3, 242, 249, 251 ); //COAT
	set_character_color_slot( 4, 64, 64, 255 ); //FUR
	set_character_color_slot( 5, 64, 64, 255 ); //BANDAGES
	set_character_color_slot( 6, 255, 255, 128 ); //HIGHLIGHTS
	set_character_color_slot( 7, 242, 249, 251 ); //BLOOD
	
	set_article_color_slot( 0, 231, 84, 84 ); //SKIN
	set_article_color_slot( 1, 242, 249, 251 ); //HAIR
	set_article_color_slot( 2, 139, 79, 40 ); //SHIRT
	set_article_color_slot( 3, 242, 249, 251 ); //COAT
	set_article_color_slot( 4, 64, 64, 255 ); //FUR
	set_article_color_slot( 5, 64, 64, 255 ); //BANDAGES
	set_article_color_slot( 6, 255, 255, 128 ); //HIGHLIGHTS
	set_article_color_slot( 7, 242, 249, 251 ); //BLOOD
		break;
		case 5:
	//Starry Artist
	set_character_color_slot( 0, 160, 115, 67 ); //SKIN
	set_character_color_slot( 1, 60, 57, 58 ); //HAIR
	set_character_color_slot( 2, 60, 57, 58 ); //SHIRT
	set_character_color_slot( 3, 189, 18, 62 ); //COAT
	set_character_color_slot( 4, 189, 18, 62 ); //FUR
	set_character_color_slot( 5, 246, 247, 246 ); //BANDAGES
	set_character_color_slot( 6, 160, 115, 67 ); //HIGHLIGHTS
	set_character_color_slot( 7, 136, 255, 0 ); //BLOOD
	
	set_article_color_slot( 0, 160, 115, 67 ); //SKIN
	set_article_color_slot( 1, 60, 57, 58 ); //HAIR
	set_article_color_slot( 2, 60, 57, 58 ); //SHIRT
	set_article_color_slot( 3, 189, 18, 62 ); //COAT
	set_article_color_slot( 4, 189, 18, 62 ); //FUR
	set_article_color_slot( 5, 246, 247, 246 ); //BANDAGES
	set_article_color_slot( 6, 160, 115, 67 ); //HIGHLIGHTS
	set_article_color_slot( 7, 136, 255, 0 ); //BLOOD
		break;
	}
	switch (Explosive_Rebel){ // Color Alt 11 Secret Colors
		case 1:
	//Falling Spores
	set_character_color_slot( 0, 255, 240, 214 ); //SKIN
	set_character_color_slot( 1, 51, 81, 36 ); //HAIR
	set_character_color_slot( 2, 255, 240, 214 ); //SHIRT
	set_character_color_slot( 3, 185, 206, 173 ); //COAT
	set_character_color_slot( 4, 96, 137, 72 ); //FUR
	set_character_color_slot( 5, 185, 206, 173 ); //BANDAGES
	set_character_color_slot( 6, 168, 255, 208 ); //HIGHLIGHTS
	set_character_color_slot( 7, 168, 255, 208 ); //BLOOD
	
	set_article_color_slot( 0, 255, 240, 214 ); //SKIN
	set_article_color_slot( 1, 51, 81, 36 ); //HAIR
	set_article_color_slot( 2, 255, 240, 214 ); //SHIRT
	set_article_color_slot( 3, 185, 206, 173 ); //COAT
	set_article_color_slot( 4, 96, 137, 72 ); //FUR
	set_article_color_slot( 5, 185, 206, 173 ); //BANDAGES
	set_article_color_slot( 6, 168, 255, 208 ); //HIGHLIGHTS
	set_article_color_slot( 7, 168, 255, 208 ); //BLOOD
		break;
		case 2:
	//Gun Slinger
	set_character_color_slot( 0, 230, 99, 40 ); //SKIN
	set_character_color_slot( 1, 220, 203, 105 ); //HAIR
	set_character_color_slot( 2, 99, 155, 255 ); //SHIRT
	set_character_color_slot( 3, 67, 68, 87 ); //COAT
	set_character_color_slot( 4, 220, 203, 105 ); //FUR
	set_character_color_slot( 5, 230, 99, 40 ); //BANDAGES
	set_character_color_slot( 6, 87, 200, 166 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 89, 0 ); //BLOOD
	
	set_article_color_slot( 0, 230, 99, 40 ); //SKIN
	set_article_color_slot( 1, 220, 203, 105 ); //HAIR
	set_article_color_slot( 2, 99, 155, 255 ); //SHIRT
	set_article_color_slot( 3, 67, 68, 87 ); //COAT
	set_article_color_slot( 4, 220, 203, 105 ); //FUR
	set_article_color_slot( 5, 230, 99, 40 ); //BANDAGES
	set_article_color_slot( 6, 87, 200, 166 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 89, 0 ); //BLOOD
		break;
		case 3:
	//Inertial Monster
	set_character_color_slot( 0, 211, 187, 107 ); //SKIN
	set_character_color_slot( 1, 122, 107, 50 ); //HAIR
	set_character_color_slot( 2, 211, 187, 107 ); //SHIRT
	set_character_color_slot( 3, 75, 102, 188 ); //COAT
	set_character_color_slot( 4, 174, 172, 189 ); //FUR
	set_character_color_slot( 5, 174, 172, 189 ); //BANDAGES
	set_character_color_slot( 6, 196, 180, 169 ); //HIGHLIGHTS
	set_character_color_slot( 7, 213, 199, 239 ); //BLOOD
	
	set_article_color_slot( 0, 211, 187, 107 ); //SKIN
	set_article_color_slot( 1, 122, 107, 50 ); //HAIR
	set_article_color_slot( 2, 211, 187, 107 ); //SHIRT
	set_article_color_slot( 3, 75, 102, 188 ); //COAT
	set_article_color_slot( 4, 174, 172, 189 ); //FUR
	set_article_color_slot( 5, 174, 172, 189 ); //BANDAGES
	set_article_color_slot( 6, 196, 180, 169 ); //HIGHLIGHTS
	set_article_color_slot( 7, 213, 199, 239 ); //BLOOD
		break;
		case 4:
	//Pie Flavored
	set_character_color_slot( 0, 232, 201, 153 ); //SKIN
	set_character_color_slot( 1, 57, 127, 19 ); //HAIR
	set_character_color_slot( 2, 173, 5, 5 ); //SHIRT
	set_character_color_slot( 3, 211, 154, 84 ); //COAT
	set_character_color_slot( 4, 57, 127, 19 ); //FUR
	set_character_color_slot( 5, 150, 90, 18 ); //BANDAGES
	set_character_color_slot( 6, 173, 5, 5 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 255, 255 ); //BLOOD
	
	set_article_color_slot( 0, 232, 201, 153 ); //SKIN
	set_article_color_slot( 1, 57, 127, 19 ); //HAIR
	set_article_color_slot( 2, 173, 5, 5 ); //SHIRT
	set_article_color_slot( 3, 211, 154, 84 ); //COAT
	set_article_color_slot( 4, 57, 127, 19 ); //FUR
	set_article_color_slot( 5, 150, 90, 18 ); //BANDAGES
	set_article_color_slot( 6, 173, 5, 5 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 255, 255 ); //BLOOD
		break;
		case 5:
	//Creator of Giik
	set_character_color_slot( 0, 99, 63, 63 ); //SKIN
	set_character_color_slot( 1, 255, 250, 239 ); //HAIR
	set_character_color_slot( 2, 255, 250, 239 ); //SHIRT
	set_character_color_slot( 3, 99, 63, 63 ); //COAT
	set_character_color_slot( 4, 56, 112, 153 ); //FUR
	set_character_color_slot( 5, 255, 250, 239 ); //BANDAGES
	set_character_color_slot( 6, 255, 255, 58 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 255, 58 ); //BLOOD
	
	set_article_color_slot( 0, 99, 63, 63 ); //SKIN
	set_article_color_slot( 1, 255, 250, 239 ); //HAIR
	set_article_color_slot( 2, 255, 250, 239 ); //SHIRT
	set_article_color_slot( 3, 99, 63, 63 ); //COAT
	set_article_color_slot( 4, 56, 112, 153 ); //FUR
	set_article_color_slot( 5, 255, 250, 239 ); //BANDAGES
	set_article_color_slot( 6, 255, 255, 58 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 255, 58 ); //BLOOD
		break;
	}
	switch (Poisonous_Roar){ // Color Alt 12 Secret Colors
		case 1:
    //Astral Medium
	set_character_color_slot( 0, 252, 244, 198 ); //SKIN
	set_character_color_slot( 1, 100, 100, 139 ); //HAIR
	set_character_color_slot( 2, 213, 199, 242 ); //SHIRT
	set_character_color_slot( 3, 175, 207, 249 ); //COAT
	set_character_color_slot( 4, 127, 148, 217 ); //FUR
	set_character_color_slot( 5, 255, 233, 107 ); //BANDAGES
	set_character_color_slot( 6, 255, 233, 107 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 233, 107 ); //BLOOD
	
	set_article_color_slot( 0, 252, 244, 198 ); //SKIN
	set_article_color_slot( 1, 100, 100, 139 ); //HAIR
	set_article_color_slot( 2, 213, 199, 242 ); //SHIRT
	set_article_color_slot( 3, 175, 207, 249 ); //COAT
	set_article_color_slot( 4, 127, 148, 217 ); //FUR
	set_article_color_slot( 5, 255, 233, 107 ); //BANDAGES
	set_article_color_slot( 6, 255, 233, 107 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 233, 107 ); //BLOOD
		break;
		case 2:
	//Ace of Spades
	set_character_color_slot( 0, 245, 230, 188 ); //SKIN
	set_character_color_slot( 1, 245, 230, 188 ); //HAIR
	set_character_color_slot( 2, 255, 255, 255 ); //SHIRT
	set_character_color_slot( 3, 67, 58, 54 ); //COAT
	set_character_color_slot( 4, 95, 20, 45 ); //FUR
	set_character_color_slot( 5, 67, 58, 54 ); //BANDAGES
	set_character_color_slot( 6, 58, 171, 116 ); //HIGHLIGHTS
	set_character_color_slot( 7, 95, 20, 45 ); //BLOOD
	
	set_article_color_slot( 0, 245, 230, 188 ); //SKIN
	set_article_color_slot( 1, 245, 230, 188 ); //HAIR
	set_article_color_slot( 2, 255, 255, 255 ); //SHIRT
	set_article_color_slot( 3, 67, 58, 54 ); //COAT
	set_article_color_slot( 4, 95, 20, 45 ); //FUR
	set_article_color_slot( 5, 67, 58, 54 ); //BANDAGES
	set_article_color_slot( 6, 58, 171, 116 ); //HIGHLIGHTS
	set_article_color_slot( 7, 95, 20, 45 ); //BLOOD
		break;
		case 3:
	//Thunder Struck
	set_character_color_slot( 0, 253, 253, 253 ); //SKIN
	set_character_color_slot( 1, 132, 215, 255 ); //HAIR
	set_character_color_slot( 2, 255, 233, 0 ); //SHIRT
	set_character_color_slot( 3, 74, 55, 121 ); //COAT
	set_character_color_slot( 4, 119, 94, 182 ); //FUR
	set_character_color_slot( 5, 119, 94, 182 ); //BANDAGES
	set_character_color_slot( 6, 255, 233, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 152, 255, 255 ); //BLOOD
	
	set_article_color_slot( 0, 253, 253, 253 ); //SKIN
	set_article_color_slot( 1, 132, 215, 255 ); //HAIR
	set_article_color_slot( 2, 255, 233, 0 ); //SHIRT
	set_article_color_slot( 3, 74, 55, 121 ); //COAT
	set_article_color_slot( 4, 119, 94, 182 ); //FUR
	set_article_color_slot( 5, 119, 94, 182 ); //BANDAGES
	set_article_color_slot( 6, 255, 233, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 152, 255, 255 ); //BLOOD
		break;
		case 4:
	//Techno Rat
	set_character_color_slot( 0, 137, 115, 104 ); //SKIN
	set_character_color_slot( 1, 67, 50, 43 ); //HAIR
	set_character_color_slot( 2, 155, 57, 95 ); //SHIRT
	set_character_color_slot( 3, 0, 19, 97 ); //COAT
	set_character_color_slot( 4, 67, 50, 43 ); //FUR
	set_character_color_slot( 5, 215, 193, 179 ); //BANDAGES
	set_character_color_slot( 6, 47, 0, 255 ); //HIGHLIGHTS
	set_character_color_slot( 7, 4, 0, 255 ); //BLOOD
	
	set_article_color_slot( 0, 137, 115, 104 ); //SKIN
	set_article_color_slot( 1, 67, 50, 43 ); //HAIR
	set_article_color_slot( 2, 155, 57, 95 ); //SHIRT
	set_article_color_slot( 3, 0, 19, 97 ); //COAT
	set_article_color_slot( 4, 67, 50, 43 ); //FUR
	set_article_color_slot( 5, 215, 193, 179 ); //BANDAGES
	set_article_color_slot( 6, 47, 0, 255 ); //HIGHLIGHTS
	set_article_color_slot( 7, 4, 0, 255 ); //BLOOD
		break;
		case 5:
	//Wind Burst
	set_character_color_slot( 0, 250, 236, 193 ); //SKIN
	set_character_color_slot( 1, 242, 212, 134 ); //HAIR
	set_character_color_slot( 2, 212, 116, 91 ); //SHIRT
	set_character_color_slot( 3, 92, 122, 175 ); //COAT
	set_character_color_slot( 4, 255, 255, 255 ); //FUR
	set_character_color_slot( 5, 255, 255, 255 ); //BANDAGES
	set_character_color_slot( 6, 212, 116, 91 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 255, 255 ); //BLOOD
	
	set_article_color_slot( 0, 250, 236, 193 ); //SKIN
	set_article_color_slot( 1, 242, 212, 134 ); //HAIR
	set_article_color_slot( 2, 212, 116, 91 ); //SHIRT
	set_article_color_slot( 3, 92, 122, 175 ); //COAT
	set_article_color_slot( 4, 255, 255, 255 ); //FUR
	set_article_color_slot( 5, 255, 255, 255 ); //BANDAGES
	set_article_color_slot( 6, 212, 116, 91 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 255, 255 ); //BLOOD
		break;
	}
	switch (Attuned_Traveler){ // Color Alt 13 Secret Colors
		case 1:
	//Metal Ally
	set_character_color_slot( 0, 128, 128, 128 ); //SKIN
	set_character_color_slot( 1, 255, 0, 0 ); //HAIR
	set_character_color_slot( 2, 128, 128, 128 ); //SHIRT
	set_character_color_slot( 3, 20, 89, 173 ); //COAT
	set_character_color_slot( 4, 185, 188, 197 ); //FUR
	set_character_color_slot( 5, 66, 66, 66 ); //BANDAGES
	set_character_color_slot( 6, 255, 213, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 158, 158, 158 ); //BLOOD
	
	set_article_color_slot( 0, 128, 128, 128 ); //SKIN
	set_article_color_slot( 1, 255, 0, 0 ); //HAIR
	set_article_color_slot( 2, 128, 128, 128 ); //SHIRT
	set_article_color_slot( 3, 20, 89, 173 ); //COAT
	set_article_color_slot( 4, 185, 188, 197 ); //FUR
	set_article_color_slot( 5, 66, 66, 66 ); //BANDAGES
	set_article_color_slot( 6, 255, 213, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 158, 158, 158 ); //BLOOD
		break;
		case 2:
	//Sandy Artillery
	set_character_color_slot( 0, 246, 224, 189 ); //SKIN
	set_character_color_slot( 1, 225, 103, 53 ); //HAIR
	set_character_color_slot( 2, 255, 148, 104 ); //SHIRT
	set_character_color_slot( 3, 29, 96, 43 ); //COAT
	set_character_color_slot( 4, 19, 91, 67 ); //FUR
	set_character_color_slot( 5, 135, 154, 172 ); //BANDAGES
	set_character_color_slot( 6, 255, 255, 255 ); //HIGHLIGHTS
	set_character_color_slot( 7, 243, 244, 2 ); //BLOOD
	
	set_article_color_slot( 0, 246, 224, 189 ); //SKIN
	set_article_color_slot( 1, 225, 103, 53 ); //HAIR
	set_article_color_slot( 2, 255, 148, 104 ); //SHIRT
	set_article_color_slot( 3, 29, 96, 43 ); //COAT
	set_article_color_slot( 4, 19, 91, 67 ); //FUR
	set_article_color_slot( 5, 135, 154, 172 ); //BANDAGES
	set_article_color_slot( 6, 255, 255, 255 ); //HIGHLIGHTS
	set_article_color_slot( 7, 243, 244, 2 ); //BLOOD
		break;
		case 3:
	//Ominous Maw
	set_character_color_slot( 0, 139, 142, 165 ); //SKIN
	set_character_color_slot( 1, 62, 69, 83 ); //HAIR
	set_character_color_slot( 2, 151, 155, 147 ); //SHIRT
	set_character_color_slot( 3, 96, 95, 67 ); //COAT
	set_character_color_slot( 4, 151, 155, 147 ); //FUR
	set_character_color_slot( 5, 62, 69, 83 ); //BANDAGES
	set_character_color_slot( 6, 71, 255, 158 ); //HIGHLIGHTS
	set_character_color_slot( 7, 71, 255, 158 ); //BLOOD
	
	set_article_color_slot( 0, 139, 142, 165 ); //SKIN
	set_article_color_slot( 1, 62, 69, 83 ); //HAIR
	set_article_color_slot( 2, 151, 155, 147 ); //SHIRT
	set_article_color_slot( 3, 96, 95, 67 ); //COAT
	set_article_color_slot( 4, 151, 155, 147 ); //FUR
	set_article_color_slot( 5, 62, 69, 83 ); //BANDAGES
	set_article_color_slot( 6, 71, 255, 158 ); //HIGHLIGHTS
	set_article_color_slot( 7, 71, 255, 158 ); //BLOOD
		break;
		case 4:
	//Purity Sage
	set_character_color_slot( 0, 164, 150, 148 ); //SKIN
	set_character_color_slot( 1, 125, 105, 103 ); //HAIR
	set_character_color_slot( 2, 125, 105, 103 ); //SHIRT
	set_character_color_slot( 3, 213, 160, 33 ); //COAT
	set_character_color_slot( 4, 75, 66, 55 ); //FUR
	set_character_color_slot( 5, 32, 214, 199 ); //BANDAGES
	set_character_color_slot( 6, 32, 214, 199 ); //HIGHLIGHTS
	set_character_color_slot( 7, 32, 214, 199 ); //BLOOD
	
	set_article_color_slot( 0, 164, 150, 148 ); //SKIN
	set_article_color_slot( 1, 125, 105, 103 ); //HAIR
	set_article_color_slot( 2, 125, 105, 103 ); //SHIRT
	set_article_color_slot( 3, 213, 160, 33 ); //COAT
	set_article_color_slot( 4, 75, 66, 55 ); //FUR
	set_article_color_slot( 5, 32, 214, 199 ); //BANDAGES
	set_article_color_slot( 6, 32, 214, 199 ); //HIGHLIGHTS
	set_article_color_slot( 7, 32, 214, 199 ); //BLOOD
		break;
		case 5:
	//Sea Scoundrel
	set_character_color_slot( 0, 237, 240, 240 ); //SKIN
	set_character_color_slot( 1, 107, 126, 146 ); //HAIR
	set_character_color_slot( 2, 130, 56, 64 ); //SHIRT
	set_character_color_slot( 3, 39, 92, 171 ); //COAT
	set_character_color_slot( 4, 237, 240, 240 ); //FUR
	set_character_color_slot( 5, 107, 126, 146 ); //BANDAGES
	set_character_color_slot( 6, 220, 203, 105 ); //HIGHLIGHTS
	set_character_color_slot( 7, 91, 112, 103 ); //BLOOD
	
	set_article_color_slot( 0, 237, 240, 240 ); //SKIN
	set_article_color_slot( 1, 107, 126, 146 ); //HAIR
	set_article_color_slot( 2, 130, 56, 64 ); //SHIRT
	set_article_color_slot( 3, 39, 92, 171 ); //COAT
	set_article_color_slot( 4, 237, 240, 240 ); //FUR
	set_article_color_slot( 5, 107, 126, 146 ); //BANDAGES
	set_article_color_slot( 6, 220, 203, 105 ); //HIGHLIGHTS
	set_article_color_slot( 7, 91, 112, 103 ); //BLOOD
		break;
	}
	switch (Hardened_Veteran){ // Color Alt 14 Secret Colors
		case 1:
	//Old Ghost
	set_character_color_slot( 0, 255, 255, 255 ); //SKIN
	set_character_color_slot( 1, 255, 255, 255 ); //HAIR
	set_character_color_slot( 2, 84, 100, 13 ); //SHIRT
	set_character_color_slot( 3, 35, 36, 29 ); //COAT
	set_character_color_slot( 4, 50, 55, 29 ); //FUR
	set_character_color_slot( 5, 50, 55, 29 ); //BANDAGES
	set_character_color_slot( 6, 207, 255, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 207, 255, 0 ); //BLOOD
	
	set_article_color_slot( 0, 255, 255, 255 ); //SKIN
	set_article_color_slot( 1, 255, 255, 255 ); //HAIR
	set_article_color_slot( 2, 84, 100, 13 ); //SHIRT
	set_article_color_slot( 3, 35, 36, 29 ); //COAT
	set_article_color_slot( 4, 50, 55, 29 ); //FUR
	set_article_color_slot( 5, 50, 55, 29 ); //BANDAGES
	set_article_color_slot( 6, 207, 255, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 207, 255, 0 ); //BLOOD
		break;
		case 2:
	//King of Frost
	set_character_color_slot( 0, 255, 255, 255 ); //SKIN
	set_character_color_slot( 1, 255, 82, 193 ); //HAIR
	set_character_color_slot( 2, 0, 0, 0 ); //SHIRT
	set_character_color_slot( 3, 191, 54, 93 ); //COAT
	set_character_color_slot( 4, 180, 165, 182 ); //FUR
	set_character_color_slot( 5, 231, 199, 237 ); //BANDAGES
	set_character_color_slot( 6, 242, 9, 145 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 82, 193 ); //BLOOD
	
	set_article_color_slot( 0, 255, 255, 255 ); //SKIN
	set_article_color_slot( 1, 255, 82, 193 ); //HAIR
	set_article_color_slot( 2, 0, 0, 0 ); //SHIRT
	set_article_color_slot( 3, 191, 54, 93 ); //COAT
	set_article_color_slot( 4, 180, 165, 182 ); //FUR
	set_article_color_slot( 5, 231, 199, 237 ); //BANDAGES
	set_article_color_slot( 6, 242, 9, 145 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 82, 193 ); //BLOOD
		break;
		case 3:
	//Chaloric Destroyer
	set_character_color_slot( 0, 255, 255, 255 ); //SKIN
	set_character_color_slot( 1, 255, 0, 0 ); //HAIR
	set_character_color_slot( 2, 255, 0, 0 ); //SHIRT
	set_character_color_slot( 3, 255, 213, 0 ); //COAT
	set_character_color_slot( 4, 255, 0, 0 ); //FUR
	set_character_color_slot( 5, 255, 213, 0 ); //BANDAGES
	set_character_color_slot( 6, 255, 0, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 213, 0 ); //BLOOD
	
	set_article_color_slot( 0, 255, 255, 255 ); //SKIN
	set_article_color_slot( 1, 255, 0, 0 ); //HAIR
	set_article_color_slot( 2, 255, 0, 0 ); //SHIRT
	set_article_color_slot( 3, 255, 213, 0 ); //COAT
	set_article_color_slot( 4, 255, 0, 0 ); //FUR
	set_article_color_slot( 5, 255, 213, 0 ); //BANDAGES
	set_article_color_slot( 6, 255, 0, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 213, 0 ); //BLOOD
		break;
		case 4:
	//Burning Enforcer
	set_character_color_slot( 0, 255, 255, 255 ); //SKIN
	set_character_color_slot( 1, 197, 20, 36 ); //HAIR
	set_character_color_slot( 2, 255, 255, 255 ); //SHIRT
	set_character_color_slot( 3, 216, 0, 17 ); //COAT
	set_character_color_slot( 4, 255, 255, 255 ); //FUR
	set_character_color_slot( 5, 29, 29, 29 ); //BANDAGES
	set_character_color_slot( 6, 158, 10, 255 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 1, 1 ); //BLOOD
	
	set_article_color_slot( 0, 255, 255, 255 ); //SKIN
	set_article_color_slot( 1, 197, 20, 36 ); //HAIR
	set_article_color_slot( 2, 255, 255, 255 ); //SHIRT
	set_article_color_slot( 3, 216, 0, 17 ); //COAT
	set_article_color_slot( 4, 255, 255, 255 ); //FUR
	set_article_color_slot( 5, 29, 29, 29 ); //BANDAGES
	set_article_color_slot( 6, 158, 10, 255 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 1, 1 ); //BLOOD
		break;
		case 5:
	//Karmic Justice
	set_character_color_slot( 0, 82, 76, 82 ); //SKIN
	set_character_color_slot( 1, 36, 34, 36 ); //HAIR
	set_character_color_slot( 2, 82, 39, 60 ); //SHIRT
	set_character_color_slot( 3, 82, 76, 82 ); //COAT
	set_character_color_slot( 4, 255, 255, 255 ); //FUR
	set_character_color_slot( 5, 255, 255, 255 ); //BANDAGES
	set_character_color_slot( 6, 209, 0, 57 ); //HIGHLIGHTS
	set_character_color_slot( 7, 0, 0, 0 ); //BLOOD
	
	set_article_color_slot( 0, 82, 76, 82 ); //SKIN
	set_article_color_slot( 1, 36, 34, 36 ); //HAIR
	set_article_color_slot( 2, 82, 39, 60 ); //SHIRT
	set_article_color_slot( 3, 82, 76, 82 ); //COAT
	set_article_color_slot( 4, 255, 255, 255 ); //FUR
	set_article_color_slot( 5, 255, 255, 255 ); //BANDAGES
	set_article_color_slot( 6, 209, 0, 57 ); //HIGHLIGHTS
	set_article_color_slot( 7, 0, 0, 0 ); //BLOOD
		break;
	}
	switch (Sanguine_Lightning){ // Color Alt 15 Secret Colors
		case 1:
	//Error
	set_character_color_slot( 0, 204, 0, 3 ); //SKIN
	set_character_color_slot( 1, 128, 0, 0 ); //HAIR
	set_character_color_slot( 2, 132, 126, 135 ); //SHIRT
	set_character_color_slot( 3, 132, 126, 135 ); //COAT
	set_character_color_slot( 4, 135, 126, 126 ); //FUR
	set_character_color_slot( 5, 132, 126, 135 ); //BANDAGES
	set_character_color_slot( 6, 242, 242, 242 ); //HIGHLIGHTS
	set_character_color_slot( 7, 132, 126, 135 ); //BLOOD
	
	set_article_color_slot( 0, 204, 0, 3 ); //SKIN
	set_article_color_slot( 1, 128, 0, 0 ); //HAIR
	set_article_color_slot( 2, 132, 126, 135 ); //SHIRT
	set_article_color_slot( 3, 132, 126, 135 ); //COAT
	set_article_color_slot( 4, 135, 126, 126 ); //FUR
	set_article_color_slot( 5, 132, 126, 135 ); //BANDAGES
	set_article_color_slot( 6, 242, 242, 242 ); //HIGHLIGHTS
	set_article_color_slot( 7, 132, 126, 135 ); //BLOOD
		break;
		case 2:
	//Fog Wanderer
	set_character_color_slot( 0, 255, 255, 255 ); //SKIN
	set_character_color_slot( 1, 255, 255, 255 ); //HAIR
	set_character_color_slot( 2, 255, 255, 255); //SHIRT
	set_character_color_slot( 3, 61, 57, 89 ); //COAT
	set_character_color_slot( 4, 255, 255, 0 ); //FUR
	set_character_color_slot( 5, 64, 34, 0 ); //BANDAGES
	set_character_color_slot( 6, 121, 255, 248 ); //HIGHLIGHTS
	set_character_color_slot( 7, 61, 57, 89 ); //BLOOD
	
	set_article_color_slot( 0, 255, 255, 255 ); //SKIN
	set_article_color_slot( 1, 255, 255, 255 ); //HAIR
	set_article_color_slot( 2, 255, 255, 255); //SHIRT
	set_article_color_slot( 3, 61, 57, 89 ); //COAT
	set_article_color_slot( 4, 255, 255, 0 ); //FUR
	set_article_color_slot( 5, 64, 34, 0 ); //BANDAGES
	set_article_color_slot( 6, 121, 255, 248 ); //HIGHLIGHTS
	set_article_color_slot( 7, 61, 57, 89 ); //BLOOD
		break;
		case 3:
	//Corrupted Hunter
	set_character_color_slot( 0, 0, 0, 0 ); //SKIN
	set_character_color_slot( 1, 127, 74, 40 ); //HAIR
	set_character_color_slot( 2, 127, 74, 40 ); //SHIRT
	set_character_color_slot( 3, 127, 74, 40 ); //COAT
	set_character_color_slot( 4, 127, 74, 40 ); //FUR
	set_character_color_slot( 5, 234, 134, 36 ); //BANDAGES
	set_character_color_slot( 6, 177, 0, 163 ); //HIGHLIGHTS
	set_character_color_slot( 7, 127, 74, 40 ); //BLOOD
	
	set_article_color_slot( 0, 0, 0, 0 ); //SKIN
	set_article_color_slot( 1, 127, 74, 40 ); //HAIR
	set_article_color_slot( 2, 127, 74, 40 ); //SHIRT
	set_article_color_slot( 3, 127, 74, 40 ); //COAT
	set_article_color_slot( 4, 127, 74, 40 ); //FUR
	set_article_color_slot( 5, 234, 134, 36 ); //BANDAGES
	set_article_color_slot( 6, 177, 0, 163 ); //HIGHLIGHTS
	set_article_color_slot( 7, 127, 74, 40 ); //BLOOD
		break;
		case 4:
	//Shifting Abyss
	set_character_color_slot( 0, 211, 31, 81 ); //SKIN
	set_character_color_slot( 1, 141, 72, 82 ); //HAIR
	set_character_color_slot( 2, 211, 31, 81 ); //SHIRT
	set_character_color_slot( 3, 55, 57, 94 ); //COAT
	set_character_color_slot( 4, 44, 92, 205 ); //FUR
	set_character_color_slot( 5, 173, 88, 205 ); //BANDAGES
	set_character_color_slot( 6, 255, 255, 255 ); //HIGHLIGHTS
	set_character_color_slot( 7, 211, 31, 81 ); //BLOOD
	
	set_article_color_slot( 0, 211, 31, 81 ); //SKIN
	set_article_color_slot( 1, 141, 72, 82 ); //HAIR
	set_article_color_slot( 2, 211, 31, 81 ); //SHIRT
	set_article_color_slot( 3, 55, 57, 94 ); //COAT
	set_article_color_slot( 4, 44, 92, 205 ); //FUR
	set_article_color_slot( 5, 173, 88, 205 ); //BANDAGES
	set_article_color_slot( 6, 255, 255, 255 ); //HIGHLIGHTS
	set_article_color_slot( 7, 211, 31, 81 ); //BLOOD
		break;
		case 5:
	//Infinite Space
	set_character_color_slot( 0, 168, 8, 8 ); //SKIN
	set_character_color_slot( 1, 249, 24, 24 ); //HAIR
	set_character_color_slot( 2, 119, 11, 8 ); //SHIRT
	set_character_color_slot( 3, 168, 8, 8 ); //COAT
	set_character_color_slot( 4, 168, 8, 8 ); //FUR
	set_character_color_slot( 5, 120, 121, 161 ); //BANDAGES
	set_character_color_slot( 6, 119, 11, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 221, 10, 244 ); //BLOOD
	
	set_article_color_slot( 0, 168, 8, 8 ); //SKIN
	set_article_color_slot( 1, 249, 24, 24 ); //HAIR
	set_article_color_slot( 2, 119, 11, 8 ); //SHIRT
	set_article_color_slot( 3, 168, 8, 8 ); //COAT
	set_article_color_slot( 4, 168, 8, 8 ); //FUR
	set_article_color_slot( 5, 120, 121, 161 ); //BANDAGES
	set_article_color_slot( 6, 119, 11, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 221, 10, 244 ); //BLOOD
		break;
	}
}