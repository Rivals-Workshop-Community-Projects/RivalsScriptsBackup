//init_shader.gml:
switch(get_player_color(player)) {
  case 0:
    set_character_color_slot(6,255, 162, 29);
    set_article_color_slot(6,255, 162, 29); //set this with the same exact contents as the above function
  break;
}
// Checks if Player has selected a color
if ("ColorLocked" in self && ColorLocked){
	switch (Default){ // Color Alt 0 Secret Colors
			case 1:
		//Golden Blues (0 Up)
		set_character_color_slot( 0, 255, 241, 206 ); //SKIN
		set_character_color_slot( 1, 71, 73, 105 ); //HAIR
		set_character_color_slot( 2, 235, 235, 235 ); //SHIRT
		set_character_color_slot( 3, 69, 69, 89 ); //COAT
		set_character_color_slot( 4, 218, 251, 255 ); //FUR
		set_character_color_slot( 5, 193, 193, 157 ); //BANDAGES
		set_character_color_slot( 6, 68, 0, 255 ); //HIGHLIGHTS
		set_character_color_slot( 7, 255, 162, 29 ); //BLOOD
		
		set_article_color_slot( 0, 255, 241, 206 ); //SKIN
		set_article_color_slot( 1, 71, 73, 105 ); //HAIR
		set_article_color_slot( 2, 235, 235, 235 ); //SHIRT
		set_article_color_slot( 3, 69, 69, 89 ); //COAT
		set_article_color_slot( 4, 218, 251, 255 ); //FUR
		set_article_color_slot( 5, 193, 193, 157 ); //BANDAGES
		set_article_color_slot( 6, 68, 0, 255 ); //HIGHLIGHTS
		set_article_color_slot( 7, 255, 162, 29 ); //BLOOD
			break;
			case 2:
		// Sketchy Origins (0 Down)
		set_character_color_slot( 0, 255, 255, 255 ); //SKIN
		set_character_color_slot( 1, 69, 69, 69 ); //HAIR
		set_character_color_slot( 2, 255, 255, 255 ); //SHIRT
		set_character_color_slot( 3, 69, 69, 69 ); //COAT
		set_character_color_slot( 4, 255, 255, 252 ); //FUR
		set_character_color_slot( 5, 255, 255, 255 ); //BANDAGES
		set_character_color_slot( 6, 255, 162, 29 ); //HIGHLIGHTS
		set_character_color_slot( 7, 255, 162, 29 ); //BLOOD
		
		set_article_color_slot( 0, 255, 255, 255 ); //SKIN
		set_article_color_slot( 1, 69, 69, 69 ); //HAIR
		set_article_color_slot( 2, 255, 255, 255 ); //SHIRT
		set_article_color_slot( 3, 69, 69, 69 ); //COAT
		set_article_color_slot( 4, 255, 255, 252 ); //FUR
		set_article_color_slot( 5, 255, 255, 255 ); //BANDAGES
		set_article_color_slot( 6, 255, 162, 29 ); //HIGHLIGHTS
		set_article_color_slot( 7, 255, 162, 29 ); //BLOOD
			break;
			case 3:
		// Voidborn (0 Attack)
		set_character_color_slot( 0, 255, 226, 207 ); //SKIN
		set_character_color_slot( 1, 35, 34, 34 ); //HAIR
		set_character_color_slot( 2, 234, 234, 234 ); //SHIRT
		set_character_color_slot( 3, 59, 59, 59 ); //COAT
		set_character_color_slot( 4, 59, 59, 59 ); //FUR
		set_character_color_slot( 5, 98, 55, 78 ); //BANDAGES
		set_character_color_slot( 6, 113, 28, 214 ); //HIGHLIGHTS
		set_character_color_slot( 7, 113, 28, 214 ); //BLOOD
		
		set_article_color_slot( 0, 255, 226, 207 ); //SKIN
		set_article_color_slot( 1, 35, 34, 34 ); //HAIR
		set_article_color_slot( 2, 234, 234, 234 ); //SHIRT
		set_article_color_slot( 3, 59, 59, 59 ); //COAT
		set_article_color_slot( 4, 59, 59, 59 ); //FUR
		set_article_color_slot( 5, 98, 55, 78 ); //BANDAGES
		set_article_color_slot( 6, 113, 28, 214 ); //HIGHLIGHTS
		set_article_color_slot( 7, 113, 28, 214 ); //BLOOD
			break;
			case 4:
		// Artist of Seer (0 Taunt)
		set_character_color_slot( 0, 244, 208, 182 ); //SKIN
		set_character_color_slot( 1, 79, 56, 56 ); //HAIR
		set_character_color_slot( 2, 149, 201, 197 ); //SHIRT
		set_character_color_slot( 3, 71, 71, 71 ); //COAT
		set_character_color_slot( 4, 218, 251, 255 ); //FUR
		set_character_color_slot( 5, 244, 208, 182 ); //BANDAGES
		set_character_color_slot( 6, 72, 0, 255 ); //HIGHLIGHTS
		set_character_color_slot( 7, 163, 163, 163 ); //BLOOD
		
		set_article_color_slot( 0, 244, 208, 182 ); //SKIN
		set_article_color_slot( 1, 79, 56, 56 ); //HAIR
		set_article_color_slot( 2, 149, 201, 197 ); //SHIRT
		set_article_color_slot( 3, 71, 71, 71 ); //COAT
		set_article_color_slot( 4, 218, 251, 255 ); //FUR
		set_article_color_slot( 5, 244, 208, 182 ); //BANDAGES
		set_article_color_slot( 6, 72, 0, 255 ); //HIGHLIGHTS
		set_article_color_slot( 7, 163, 163, 163 ); //BLOOD
		break;
	}
	
	switch (Rune_Maker){ // Color Alt 1 Secret Colors
		case 1:
	//Mad Dog (1 Up)
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
	// Neo Samurai (1 Down)
	set_character_color_slot( 0, 255, 201, 14 ); //SKIN
	set_character_color_slot( 1, 185, 122, 87 ); //HAIR
	set_character_color_slot( 2, 112, 146, 190 ); //SHIRT
	set_character_color_slot( 3, 209, 48, 72 ); //COAT
	set_character_color_slot( 4, 112, 146, 190 ); //FUR
	set_character_color_slot( 5, 209, 48, 72 ); //BANDAGES
	set_character_color_slot( 6, 209, 48, 72 ); //HIGHLIGHTS
	set_character_color_slot( 7, 200, 191, 231 ); //BLOOD
	
	set_article_color_slot( 0, 255, 201, 14 ); //SKIN
	set_article_color_slot( 1, 185, 122, 87 ); //HAIR
	set_article_color_slot( 2, 112, 146, 190 ); //SHIRT
	set_article_color_slot( 3, 209, 48, 72 ); //COAT
	set_article_color_slot( 4, 112, 146, 190 ); //FUR
	set_article_color_slot( 5, 209, 48, 72 ); //BANDAGES
	set_article_color_slot( 6, 209, 48, 72 ); //HIGHLIGHTS
	set_article_color_slot( 7, 200, 191, 231 ); //BLOOD
		break;
		case 3:
	// Particle Agitator (1 Attack)
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
		case 4:
	// Amethyst Adventurer (1 Taunt)
	set_character_color_slot( 0, 247, 183, 147 ); //SKIN
	set_character_color_slot( 1, 71, 38, 24 ); //HAIR
	set_character_color_slot( 2, 84, 171, 247 ); //SHIRT
	set_character_color_slot( 3, 34, 8, 163 ); //COAT
	set_character_color_slot( 4, 84, 171, 247 ); //FUR
	set_character_color_slot( 5, 130, 5, 255 ); //BANDAGES
	set_character_color_slot( 6, 33, 66, 101 ); //HIGHLIGHTS
	set_character_color_slot( 7, 130, 5, 255 ); //BLOOD
	
	set_article_color_slot( 0, 247, 183, 147 ); //SKIN
	set_article_color_slot( 1, 71, 38, 24 ); //HAIR
	set_article_color_slot( 2, 84, 171, 247 ); //SHIRT
	set_article_color_slot( 3, 34, 8, 163 ); //COAT
	set_article_color_slot( 4, 84, 171, 247 ); //FUR
	set_article_color_slot( 5, 130, 5, 255 ); //BANDAGES
	set_article_color_slot( 6, 33, 66, 101 ); //HIGHLIGHTS
	set_article_color_slot( 7, 130, 5, 255 ); //BLOOD
		break;
	}
	switch (Crayfish){ // Color Alt 2 Secret Colors
		case 1:
    // Metal Vampir (2 Up)
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
		case 2:
	//Death Perception (2 Down)
	set_character_color_slot( 0, 255, 233, 210 ); //SKIN
	set_character_color_slot( 1, 77, 73, 72 ); //HAIR
	set_character_color_slot( 2, 93, 104, 158 ); //SHIRT
	set_character_color_slot( 3, 206, 25, 43 ); //COAT
	set_character_color_slot( 4, 252, 255, 255 ); //FUR
	set_character_color_slot( 5, 252, 255, 255 ); //BANDAGES
	set_character_color_slot( 6, 65, 72, 79 ); //HIGHLIGHTS
	set_character_color_slot( 7, 0, 231, 254 ); //BLOOD
	
	set_article_color_slot( 0, 255, 233, 210 ); //SKIN
	set_article_color_slot( 1, 77, 73, 72 ); //HAIR
	set_article_color_slot( 2, 93, 104, 158 ); //SHIRT
	set_article_color_slot( 3, 206, 25, 43 ); //COAT
	set_article_color_slot( 4, 252, 255, 255 ); //FUR
	set_article_color_slot( 5, 252, 255, 255 ); //BANDAGES
	set_article_color_slot( 6, 65, 72, 79 ); //HIGHLIGHTS
	set_article_color_slot( 7, 0, 231, 254 ); //BLOOD
		break;
		case 3:
	//Hatred Install (2 Attack)
	set_character_color_slot( 0, 243, 218, 204 ); //SKIN
	set_character_color_slot( 1, 66, 45, 46 ); //HAIR
	set_character_color_slot( 2, 239, 225, 191 ); //SHIRT
	set_character_color_slot( 3, 210, 200, 178 ); //COAT
	set_character_color_slot( 4, 73, 60, 86 ); //FUR
	set_character_color_slot( 5, 73, 60, 86 ); //BANDAGES
	set_character_color_slot( 6, 255, 0, 10 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 0, 47 ); //BLOOD
	
	set_article_color_slot( 0, 243, 218, 204 ); //SKIN
	set_article_color_slot( 1, 66, 45, 46 ); //HAIR
	set_article_color_slot( 2, 239, 225, 191 ); //SHIRT
	set_article_color_slot( 3, 210, 200, 178 ); //COAT
	set_article_color_slot( 4, 73, 60, 86 ); //FUR
	set_article_color_slot( 5, 73, 60, 86 ); //BANDAGES
	set_article_color_slot( 6, 255, 0, 10 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 0, 47 ); //BLOOD
		break;
		case 4:
	// Shocking Rodent (2 Taunt)
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
	//Average Schmuck (3 Up)
	set_character_color_slot( 0, 241, 241, 241 ); //SKIN
	set_character_color_slot( 1, 241, 241, 241 ); //HAIR
	set_character_color_slot( 2, 255, 173, 0 ); //SHIRT
	set_character_color_slot( 3, 108, 154, 220 ); //COAT
	set_character_color_slot( 4, 255, 173, 0 ); //FUR
	set_character_color_slot( 5, 164, 164, 164 ); //BANDAGES
	set_character_color_slot( 6, 34, 166, 22 ); //HIGHLIGHTS
	set_character_color_slot( 7, 246, 214, 165 ); //BLOOD
	
	set_article_color_slot( 0, 241, 241, 241 ); //SKIN
	set_article_color_slot( 1, 241, 241, 241 ); //HAIR
	set_article_color_slot( 2, 255, 173, 0 ); //SHIRT
	set_article_color_slot( 3, 108, 154, 220 ); //COAT
	set_article_color_slot( 4, 255, 173, 0 ); //FUR
	set_article_color_slot( 5, 164, 164, 164 ); //BANDAGES
	set_article_color_slot( 6, 34, 166, 22 ); //HIGHLIGHTS
	set_article_color_slot( 7, 108, 154, 220 ); //BLOOD
		break;
		case 2:
	//Golden Wind (3 Down)
	set_character_color_slot( 0, 248, 201, 181 ); //SKIN
	set_character_color_slot( 1, 247, 215, 116 ); //HAIR
	set_character_color_slot( 2, 254, 212, 188 ); //SHIRT
	set_character_color_slot( 3, 210, 118, 201 ); //COAT
	set_character_color_slot( 4, 247, 175, 77 ); //FUR
	set_character_color_slot( 5, 247, 175, 77 ); //BANDAGES
	set_character_color_slot( 6, 97, 158, 225 ); //HIGHLIGHTS
	set_character_color_slot( 7, 247, 175, 77 ); //BLOOD
	
	set_article_color_slot( 0, 248, 201, 181 ); //SKIN
	set_article_color_slot( 1, 247, 215, 116 ); //HAIR
	set_article_color_slot( 2, 254, 212, 188 ); //SHIRT
	set_article_color_slot( 3, 210, 118, 201 ); //COAT
	set_article_color_slot( 4, 247, 175, 77 ); //FUR
	set_article_color_slot( 5, 247, 175, 77 ); //BANDAGES
	set_article_color_slot( 6, 97, 158, 225 ); //HIGHLIGHTS
	set_article_color_slot( 7, 247, 175, 77 ); //BLOOD
		break;
		case 3:
	//Stardust Crusader (3 Attack)
	set_character_color_slot( 0, 232, 168, 88 ); //SKIN
	set_character_color_slot( 1, 46, 37, 89 ); //HAIR
	set_character_color_slot( 2, 224, 88, 184 ); //SHIRT
	set_character_color_slot( 3, 64, 40, 176 ); //COAT
	set_character_color_slot( 4, 215, 224, 223 ); //FUR
	set_character_color_slot( 5, 248, 184, 24 ); //BANDAGES
	set_character_color_slot( 6, 64, 40, 176 ); //HIGHLIGHTS
	set_character_color_slot( 7, 241, 51, 255 ); //BLOOD
	
	set_article_color_slot( 0, 232, 168, 88 ); //SKIN
	set_article_color_slot( 1, 46, 37, 89 ); //HAIR
	set_article_color_slot( 2, 224, 88, 184 ); //SHIRT
	set_article_color_slot( 3, 64, 40, 176 ); //COAT
	set_article_color_slot( 4, 215, 224, 223 ); //FUR
	set_article_color_slot( 5, 248, 184, 24 ); //BANDAGES
	set_article_color_slot( 6, 64, 40, 176 ); //HIGHLIGHTS
	set_article_color_slot( 7, 241, 51, 255 ); //BLOOD
		break;
		case 4:
	//Heaven Chaser (3 Taunt)
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
	}
	switch (Black_Blank){ // Color Alt 4 Secret Colors
	
		case 1:
	//Void Sacrifice (4 Up)
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
		case 2:
	//Prideful Lion (4 Down)
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
		case 3:
	//Highwind Blade (4 Attack)
	set_character_color_slot( 0, 250, 236, 193 ); //SKIN
	set_character_color_slot( 1, 158, 129, 49 ); //HAIR
	set_character_color_slot( 2, 250, 236, 193 ); //SHIRT
	set_character_color_slot( 3, 192, 206, 216 ); //COAT
	set_character_color_slot( 4, 192, 206, 216 ); //FUR
	set_character_color_slot( 5, 192, 206, 216 ); //BANDAGES
	set_character_color_slot( 6, 155, 173, 199 ); //HIGHLIGHTS
	set_character_color_slot( 7, 233, 235, 237 ); //BLOOD
	
	set_article_color_slot( 0, 250, 236, 193 ); //SKIN
	set_article_color_slot( 1, 158, 129, 49 ); //HAIR
	set_article_color_slot( 2, 250, 236, 193 ); //SHIRT
	set_article_color_slot( 3, 192, 206, 216 ); //COAT
	set_article_color_slot( 4, 192, 206, 216 ); //FUR
	set_article_color_slot( 5, 192, 206, 216 ); //BANDAGES
	set_article_color_slot( 6, 155, 173, 199 ); //HIGHLIGHTS
	set_article_color_slot( 7, 233, 235, 237 ); //BLOOD
		break;
		case 4:
	//Dragon Install (4 Taunt)
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
	//Call Shot (5 Up)
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
	//Gun Slinger (5 Down)
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
	//Fire Starter (5 Attack)
	set_character_color_slot( 0, 254, 211, 166 ); //SKIN
	set_character_color_slot( 1, 246, 189, 34 ); //HAIR
	set_character_color_slot( 2, 166, 14, 14 ); //SHIRT
	set_character_color_slot( 3, 27, 52, 116 ); //COAT
	set_character_color_slot( 4, 0, 141, 255 ); //FUR
	set_character_color_slot( 5, 80, 49, 167 ); //BANDAGES
	set_character_color_slot( 6, 0, 216, 255 ); //HIGHLIGHTS
	set_character_color_slot( 7, 0, 216, 255 ); //BLOOD
	
	set_article_color_slot( 0, 254, 211, 166 ); //SKIN
	set_article_color_slot( 1, 246, 189, 34 ); //HAIR
	set_article_color_slot( 2, 166, 14, 14 ); //SHIRT
	set_article_color_slot( 3, 27, 52, 116 ); //COAT
	set_article_color_slot( 4, 0, 141, 255 ); //FUR
	set_article_color_slot( 5, 80, 49, 167 ); //BANDAGES
	set_article_color_slot( 6, 0, 216, 255 ); //HIGHLIGHTS
	set_article_color_slot( 7, 0, 216, 255 ); //BLOOD
		break;
		case 4:
	//Infernal Punk (5 Taunt)
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
	}
	switch (Crimson_Scourge){ // Color Alt 6 Secret Colors
		case 1:
	//Morion Black (6 Up)
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
		case 2:
	//Hunter's Eyes (6 Down)
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
	//Slapstick Comedy (6 Attack)
	set_character_color_slot( 0, 241, 218, 176 ); //SKIN
	set_character_color_slot( 1, 24, 58, 50 ); //HAIR
	set_character_color_slot( 2, 45, 49, 72 ); //SHIRT
	set_character_color_slot( 3, 13, 33, 28 ); //COAT
	set_character_color_slot( 4, 22, 135, 111 ); //FUR
	set_character_color_slot( 5, 241, 218, 176 ); //BANDAGES
	set_character_color_slot( 6, 22, 135, 111 ); //HIGHLIGHTS
	set_character_color_slot( 7, 22, 135, 111 ); //BLOOD
	
	set_article_color_slot( 0, 241, 218, 176 ); //SKIN
	set_article_color_slot( 1, 24, 58, 50 ); //HAIR
	set_article_color_slot( 2, 45, 49, 72 ); //SHIRT
	set_article_color_slot( 3, 13, 33, 28 ); //COAT
	set_article_color_slot( 4, 22, 135, 111 ); //FUR
	set_article_color_slot( 5, 241, 218, 176 ); //BANDAGES
	set_article_color_slot( 6, 22, 135, 111 ); //HIGHLIGHTS
	set_article_color_slot( 7, 22, 135, 111 ); //BLOOD
		break;
		case 4:
	//Cheery Secretary (6 Taunt)
	set_character_color_slot( 0, 254, 248, 158  ); //SKIN
	set_character_color_slot( 1, 253, 207, 91 ); //HAIR
	set_character_color_slot( 2, 246, 243, 236 ); //SHIRT
	set_character_color_slot( 3, 161, 190, 97 ); //COAT
	set_character_color_slot( 4, 74, 94, 104 ); //FUR
	set_character_color_slot( 5, 255, 250, 210 ); //BANDAGES
	set_character_color_slot( 6, 49, 40, 30 ); //HIGHLIGHTS
	set_character_color_slot( 7, 253, 207, 91 ); //BLOOD
	
	set_article_color_slot( 0, 254, 248, 158  ); //SKIN
	set_article_color_slot( 1, 253, 207, 91 ); //HAIR
	set_article_color_slot( 2, 246, 243, 236 ); //SHIRT
	set_article_color_slot( 3, 161, 190, 97 ); //COAT
	set_article_color_slot( 4, 74, 94, 104 ); //FUR
	set_article_color_slot( 5, 255, 250, 210 ); //BANDAGES
	set_article_color_slot( 6, 49, 40, 30 ); //HIGHLIGHTS
	set_article_color_slot( 7, 253, 207, 91 ); //BLOOD
		break;
	}
	switch (King_of_Kings){ // Color Alt 7 Secret Colors
		case 1:
	//Chosen One (7 Up)
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
		case 2:
	//Beserker (7 Down)
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
		case 3:
	//Dark Heart (7 Attack)
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
		case 4:
	//Metamorphosis (7 Taunt)
	set_character_color_slot( 0, 166, 189, 208 ); //SKIN
	set_character_color_slot( 1, 24, 43, 59 ); //HAIR
	set_character_color_slot( 2, 109, 109, 192 ); //SHIRT
	set_character_color_slot( 3, 24, 43, 59 ); //COAT
	set_character_color_slot( 4, 255, 242, 0 ); //FUR
	set_character_color_slot( 5, 109, 109, 192 ); //BANDAGES
	set_character_color_slot( 6, 255, 242, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 242, 0 ); //BLOOD
	
	set_article_color_slot( 0, 166, 189, 208 ); //SKIN
	set_article_color_slot( 1, 24, 43, 59 ); //HAIR
	set_article_color_slot( 2, 109, 109, 192 ); //SHIRT
	set_article_color_slot( 3, 24, 43, 59 ); //COAT
	set_article_color_slot( 4, 255, 242, 0 ); //FUR
	set_article_color_slot( 5, 109, 109, 192 ); //BANDAGES
	set_article_color_slot( 6, 255, 242, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 242, 0 ); //BLOOD
		break;
	}
	switch (Blazing_Devil){ // Color Alt 8 Secret Colors
		case 1:
	//Flaming Sentry (8 Up)
	set_character_color_slot( 0, 143, 149, 141 ); //SKIN
	set_character_color_slot( 1, 196, 44, 69  ); //HAIR
	set_character_color_slot( 2, 143, 149, 141 ); //SHIRT
	set_character_color_slot( 3, 145, 86, 70 ); //COAT
	set_character_color_slot( 4, 255, 124, 0 ); //FUR
	set_character_color_slot( 5, 145, 86, 70 ); //BANDAGES
	set_character_color_slot( 6, 255, 124, 0  ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 124, 0 ); //BLOOD
	
	set_article_color_slot( 0, 143, 149, 141 ); //SKIN
	set_article_color_slot( 1, 196, 44, 69 ); //HAIR
	set_article_color_slot( 2, 143, 149, 141 ); //SHIRT
	set_article_color_slot( 3, 145, 86, 70 ); //COAT
	set_article_color_slot( 4, 255, 124, 0 ); //FUR
	set_article_color_slot( 5, 145, 86, 70); //BANDAGES
	set_article_color_slot( 6, 255, 124, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 124, 0 ); //BLOOD
		break;
		case 2:
	//Future Mercenary (8 Down)
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
		case 3:
	//Quirky Delivery (8 Attack)
	set_character_color_slot( 0, 62, 61, 92 ); //SKIN
	set_character_color_slot( 1, 140, 132, 148 ); //HAIR
	set_character_color_slot( 2, 140, 132, 148 ); //SHIRT
	set_character_color_slot( 3, 81, 76, 103 ); //COAT
	set_character_color_slot( 4, 254, 255, 0 ); //FUR
	set_character_color_slot( 5, 140, 132, 148 ); //BANDAGES
	set_character_color_slot( 6, 254, 255, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 254, 255, 0 ); //BLOOD
	
	set_article_color_slot( 0, 62, 61, 92 ); //SKIN
	set_article_color_slot( 1, 140, 132, 148 ); //HAIR
	set_article_color_slot( 2, 140, 132, 148 ); //SHIRT
	set_article_color_slot( 3, 81, 76, 103 ); //COAT
	set_article_color_slot( 4, 254, 255, 0 ); //FUR
	set_article_color_slot( 5, 140, 132, 148 ); //BANDAGES
	set_article_color_slot( 6, 254, 255, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 254, 255, 0 ); //BLOOD
		break;
		case 4:
	//Fire Savior (8 Taunt)
	set_character_color_slot( 0, 65, 54, 80 ); //SKIN
	set_character_color_slot( 1, 65, 54, 80 ); //HAIR
	set_character_color_slot( 2, 69, 69, 89 ); //SHIRT
	set_character_color_slot( 3, 170, 34, 74 ); //COAT
	set_character_color_slot( 4, 69, 69, 89 ); //FUR
	set_character_color_slot( 5, 181, 181, 181 ); //BANDAGES
	set_character_color_slot( 6, 0, 255, 247 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 13, 106 ); //BLOOD
	
	set_article_color_slot( 0, 65, 54, 80 ); //SKIN
	set_article_color_slot( 1, 65, 54, 80 ); //HAIR
	set_article_color_slot( 2, 69, 69, 89 ); //SHIRT
	set_article_color_slot( 3, 170, 34, 74 ); //COAT
	set_article_color_slot( 4, 69, 69, 89 ); //FUR
	set_article_color_slot( 5, 181, 181, 181 ); //BANDAGES
	set_article_color_slot( 6, 0, 255, 247 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 13, 106 ); //BLOOD
		break;
	}
	switch (Cruel_Comedian){ // Color Alt 9 Secret Colors
		case 1:
	//Puzzling Fiend (9 Up)
	set_character_color_slot( 0, 255, 255, 255 ); //SKIN
	set_character_color_slot( 1, 255, 255, 255 ); //HAIR
	set_character_color_slot( 2, 48, 48, 48 ); //SHIRT
	set_character_color_slot( 3, 255, 255, 255 ); //COAT
	set_character_color_slot( 4, 219, 56, 8 ); //FUR
	set_character_color_slot( 5, 219, 56, 8 ); //BANDAGES
	set_character_color_slot( 6, 255, 228, 103 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 255, 255 ); //BLOOD
	
	set_article_color_slot( 0, 255, 255, 255 ); //SKIN
	set_article_color_slot( 1, 255, 255, 255 ); //HAIR
	set_article_color_slot( 2, 48, 48, 48 ); //SHIRT
	set_article_color_slot( 3, 255, 255, 255 ); //COAT
	set_article_color_slot( 4, 219, 56, 8 ); //FUR
	set_article_color_slot( 5, 219, 56, 8 ); //BANDAGES
	set_article_color_slot( 6, 255, 228, 103 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 255, 255 ); //BLOOD
		break;
		case 2:
	//Fallen Child (9 Down)
	set_character_color_slot( 0, 252, 188, 86 ); //SKIN
	set_character_color_slot( 1, 114, 59, 41 ); //HAIR
	set_character_color_slot( 2, 255, 51, 144 ); //SHIRT
	set_character_color_slot( 3, 86, 49, 219 ); //COAT
	set_character_color_slot( 4, 34, 139, 245 ); //FUR
	set_character_color_slot( 5, 86, 49, 219 ); //BANDAGES
	set_character_color_slot( 6, 114, 59, 41 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 0, 0 ); //BLOOD
	
	set_article_color_slot( 0, 252, 188, 86 ); //SKIN
	set_article_color_slot( 1, 114, 59, 41 ); //HAIR
	set_article_color_slot( 2, 255, 51, 144 ); //SHIRT
	set_article_color_slot( 3, 86, 49, 219 ); //COAT
	set_article_color_slot( 4, 34, 139, 245 ); //FUR
	set_article_color_slot( 5, 86, 49, 219 ); //BANDAGES
	set_article_color_slot( 6, 114, 59, 41 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 0, 0 ); //BLOOD
		break;
		case 3:
	//Genocide (9 Attack)
	set_character_color_slot( 0, 255, 239, 189 ); //SKIN
	set_character_color_slot( 1, 115, 29, 2 ); //HAIR
	set_character_color_slot( 2, 244, 255, 129 ); //SHIRT
	set_character_color_slot( 3, 105, 255, 115 ); //COAT
	set_character_color_slot( 4, 105, 255, 115 ); //FUR
	set_character_color_slot( 5, 115, 29, 2 ); //BANDAGES
	set_character_color_slot( 6, 255, 0, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 0, 0 ); //BLOOD
	
	set_article_color_slot( 0, 255, 239, 189 ); //SKIN
	set_article_color_slot( 1, 115, 29, 2 ); //HAIR
	set_article_color_slot( 2, 244, 255, 129 ); //SHIRT
	set_article_color_slot( 3, 105, 255, 115 ); //COAT
	set_article_color_slot( 4, 105, 255, 115 ); //FUR
	set_article_color_slot( 5, 115, 29, 2 ); //BANDAGES
	set_article_color_slot( 6, 255, 0, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 0, 0 ); //BLOOD
		break;
		case 4:
	//Vapor Grid (9 Taunt)
	set_character_color_slot( 0, 254, 146, 82 ); //SKIN
	set_character_color_slot( 1, 255, 55, 147 ); //HAIR
	set_character_color_slot( 2, 13, 85, 206 ); //SHIRT
	set_character_color_slot( 3, 38, 17, 86 ); //COAT
	set_character_color_slot( 4, 255, 55, 147 ); //FUR
	set_character_color_slot( 5, 195, 155, 252 ); //BANDAGES
	set_character_color_slot( 6, 85, 154, 255 ); //HIGHLIGHTS
	set_character_color_slot( 7, 85, 179, 255 ); //BLOOD
	
	set_article_color_slot( 0, 254, 146, 82 ); //SKIN
	set_article_color_slot( 1, 255, 55, 147 ); //HAIR
	set_article_color_slot( 2, 13, 85, 206 ); //SHIRT
	set_article_color_slot( 3, 38, 17, 86 ); //COAT
	set_article_color_slot( 4, 255, 55, 147 ); //FUR
	set_article_color_slot( 5, 195, 155, 252 ); //BANDAGES
	set_article_color_slot( 6, 85, 154, 255 ); //HIGHLIGHTS
	set_article_color_slot( 7, 85, 179, 255 ); //BLOOD
		break;
	}
	switch (Immortal_Stranger){ // Color Alt 10 Secret Colors
		case 1:
	//Kamui (10 Up)
	set_character_color_slot( 0, 197, 143, 109 ); //SKIN
	set_character_color_slot( 1, 189, 80, 85 ); //HAIR
	set_character_color_slot( 2, 241, 235, 221 ); //SHIRT
	set_character_color_slot( 3, 70, 75, 78 ); //COAT
	set_character_color_slot( 4, 241, 235, 221 ); //FUR
	set_character_color_slot( 5, 140, 99, 77 ); //BANDAGES
	set_character_color_slot( 6, 96, 121, 143 ); //HIGHLIGHTS
	set_character_color_slot( 7, 78, 197, 143 ); //BLOOD
	
	set_article_color_slot( 0, 197, 143, 109 ); //SKIN
	set_article_color_slot( 1, 189, 80, 85 ); //HAIR
	set_article_color_slot( 2, 241, 235, 221 ); //SHIRT
	set_article_color_slot( 3, 70, 75, 78 ); //COAT
	set_article_color_slot( 4, 241, 235, 221 ); //FUR
	set_article_color_slot( 5, 140, 99, 77 ); //BANDAGES
	set_article_color_slot( 6, 96, 121, 143 ); //HIGHLIGHTS
	set_article_color_slot( 7, 78, 197, 143 ); //BLOOD
		break;
		case 2:
	//Bloody Ronin (10 Down)
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
		case 3:
	//P O W E R (10 Attack)
	set_character_color_slot( 0, 228, 194, 192 ); //SKIN
	set_character_color_slot( 1, 221, 228, 231 ); //HAIR
	set_character_color_slot( 2, 42, 71, 86 ); //SHIRT
	set_character_color_slot( 3, 37, 49, 65 ); //COAT
	set_character_color_slot( 4, 242, 254, 255 ); //FUR
	set_character_color_slot( 5, 25, 33, 36 ); //BANDAGES
	set_character_color_slot( 6, 0, 208, 255 ); //HIGHLIGHTS
	set_character_color_slot( 7, 0, 208, 255 ); //BLOOD

	set_article_color_slot( 0, 228, 194, 192 ); //SKIN
	set_article_color_slot( 1, 221, 228, 231 ); //HAIR
	set_article_color_slot( 2, 42, 71, 86 ); //SHIRT
	set_article_color_slot( 3, 37, 49, 65 ); //COAT
	set_article_color_slot( 4, 242, 254, 255 ); //FUR
	set_article_color_slot( 5, 25, 33, 36 ); //BANDAGES
	set_article_color_slot( 6, 0, 208, 255 ); //HIGHLIGHTS
	set_article_color_slot( 7, 0, 208, 255 ); //BLOOD
		break;
		case 4:
	//Misty Swordmaster (10 Taunt)
	set_character_color_slot( 0, 249, 248, 240 ); //SKIN
	set_character_color_slot( 1, 249, 248, 240 ); //HAIR
	set_character_color_slot( 2, 51, 48, 45 ); //SHIRT
	set_character_color_slot( 3, 51, 48, 45 ); //COAT
	set_character_color_slot( 4, 51, 48, 45 ); //FUR
	set_character_color_slot( 5, 231, 212, 161 ); //BANDAGES
	set_character_color_slot( 6, 60, 255, 228 ); //HIGHLIGHTS
	set_character_color_slot( 7, 236, 240, 255 ); //BLOOD
	
	set_article_color_slot( 0, 249, 248, 240 ); //SKIN
	set_article_color_slot( 1, 249, 248, 240 ); //HAIR
	set_article_color_slot( 2, 51, 48, 45 ); //SHIRT
	set_article_color_slot( 3, 51, 48, 45 ); //COAT
	set_article_color_slot( 4, 51, 48, 45 ); //FUR
	set_article_color_slot( 5, 231, 212, 161 ); //BANDAGES
	set_article_color_slot( 6, 60, 255, 228 ); //HIGHLIGHTS
	set_article_color_slot( 7, 236, 240, 255 ); //BLOOD
		break;
	}
	switch (Demon_Gangster){ // Color Alt 11 Secret Colors
		case 1:
    //Unbridled Instinct (11 Up)
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
	//Joker (11 Down)
	set_character_color_slot( 0, 198, 106, 32 ); //SKIN
	set_character_color_slot( 1, 247, 239, 198 ); //HAIR
	set_character_color_slot( 2, 190, 8, 8 ); //SHIRT
	set_character_color_slot( 3, 74, 82, 57 ); //COAT
	set_character_color_slot( 4, 206, 140, 0 ); //FUR
	set_character_color_slot( 5, 206, 140, 0 ); //BANDAGES
	set_character_color_slot( 6, 190, 8, 8 ); //HIGHLIGHTS
	set_character_color_slot( 7, 247, 239, 198 ); //BLOOD
	
	set_article_color_slot( 0, 198, 106, 32 ); //SKIN
	set_article_color_slot( 1, 247, 239, 198 ); //HAIR
	set_article_color_slot( 2, 190, 8, 8 ); //SHIRT
	set_article_color_slot( 3, 74, 82, 57 ); //COAT
	set_article_color_slot( 4, 206, 140, 0 ); //FUR
	set_article_color_slot( 5, 206, 140, 0 ); //BANDAGES
	set_article_color_slot( 6, 190, 8, 8 ); //HIGHLIGHTS
	set_article_color_slot( 7, 247, 239, 198 ); //BLOOD
		break;
		case 3:
	//Pumped Up (11 Attack)
	set_character_color_slot( 0, 240, 128, 64 ); //SKIN
	set_character_color_slot( 1, 248, 224, 128 ); //HAIR
	set_character_color_slot( 2, 240, 128, 64 ); //SHIRT
	set_character_color_slot( 3, 120, 32, 64 ); //COAT
	set_character_color_slot( 4, 240, 216, 120 ); //FUR
	set_character_color_slot( 5, 80, 72, 80 ); //BANDAGES
	set_character_color_slot( 6, 104, 96, 64 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 140, 0 ); //BLOOD

	set_article_color_slot( 0, 240, 128, 64 ); //SKIN
	set_article_color_slot( 1, 248, 224, 128 ); //HAIR
	set_article_color_slot( 2, 240, 128, 64 ); //SHIRT
	set_article_color_slot( 3, 120, 32, 64 ); //COAT
	set_article_color_slot( 4, 240, 216, 120 ); //FUR
	set_article_color_slot( 5, 80, 72, 80 ); //BANDAGES
	set_article_color_slot( 6, 104, 96, 64 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 140, 0 ); //BLOOD
		break;
		case 4:
	//Mark of the Wolf (11 Taunt)
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
	switch (Schwarzschild){ // Color Alt 12 Secret Colors
		case 1:
	//Clumsy Elemental (12 Up)
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
		case 2:
	//Astral Medium (12 Down)
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
		case 3:
	//Licht (12 Attack)
	set_character_color_slot( 0, 236, 215, 194 ); //SKIN
	set_character_color_slot( 1, 137, 159, 170 ); //HAIR
	set_character_color_slot( 2, 233, 227, 196 ); //SHIRT
	set_character_color_slot( 3, 61, 77, 129 ); //COAT
	set_character_color_slot( 4, 50, 52, 48 ); //FUR
	set_character_color_slot( 5, 50, 52, 48 ); //BANDAGES
	set_character_color_slot( 6, 219, 135, 46 ); //HIGHLIGHTS
	set_character_color_slot( 7, 183, 247, 255 ); //BLOOD

	set_article_color_slot( 0, 236, 215, 194 ); //SKIN
	set_article_color_slot( 1, 137, 159, 170 ); //HAIR
	set_article_color_slot( 2, 233, 227, 196 ); //SHIRT
	set_article_color_slot( 3, 61, 77, 129 ); //COAT
	set_article_color_slot( 4, 50, 52, 48 ); //FUR
	set_article_color_slot( 5, 50, 52, 48 ); //BANDAGES
	set_article_color_slot( 6, 219, 135, 46 ); //HIGHLIGHTS
	set_article_color_slot( 7, 183, 247, 255 ); //BLOOD

		break;
		case 4:
	//Bone Dry (12 Taunt)
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
	}
	switch (Sin_of_Greed){ // Color Alt 13 Secret Colors
		case 1:
	//Kind Illusionist (13 Up)
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
		case 2:
	//Sacred Sniper (13 (Down)
	set_character_color_slot( 0, 238, 206, 193 ); //SKIN
	set_character_color_slot( 1, 109, 140, 161 ); //HAIR
	set_character_color_slot( 2, 255, 238, 230 ); //SHIRT
	set_character_color_slot( 3, 116, 184, 229 ); //COAT
	set_character_color_slot( 4, 255, 254, 255 ); //FUR
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
		case 3:
	//Undying Fox (13 Attack)
	set_character_color_slot( 0, 248, 216, 186 ); //SKIN
	set_character_color_slot( 1, 197, 230, 231 ); //HAIR
	set_character_color_slot( 2, 248, 216, 186 ); //SHIRT
	set_character_color_slot( 3, 163, 47, 67 ); //COAT
	set_character_color_slot( 4, 177, 185, 192 ); //FUR
	set_character_color_slot( 5, 163, 47, 67 ); //BANDAGES
	set_character_color_slot( 6, 163, 47, 67 ); //HIGHLIGHTS
	set_character_color_slot( 7, 166, 0, 255 ); //BLOOD
	
	set_article_color_slot( 0, 248, 216, 186 ); //SKIN
	set_article_color_slot( 1, 197, 230, 231 ); //HAIR
	set_article_color_slot( 2, 248, 216, 186 ); //SHIRT
	set_article_color_slot( 3, 163, 47, 67 ); //COAT
	set_article_color_slot( 4, 177, 185, 192 ); //FUR
	set_article_color_slot( 5, 163, 47, 67 ); //BANDAGES
	set_article_color_slot( 6, 163, 47, 67 ); //HIGHLIGHTS
	set_article_color_slot( 7, 166, 0, 255 ); //BLOOD
		break;
		case 4:
	//Fullmetal (13 Taunt)
	set_character_color_slot( 0, 233, 188, 155 ); //SKIN
	set_character_color_slot( 1, 234, 192, 84 ); //HAIR
	set_character_color_slot( 2, 58, 61, 54 ); //SHIRT
	set_character_color_slot( 3, 179, 60, 64 ); //COAT
	set_character_color_slot( 4, 240, 237, 232 ); //FUR
	set_character_color_slot( 5, 154, 163, 173 ); //BANDAGES
	set_character_color_slot( 6, 255, 233, 107 ); //HIGHLIGHTS
	set_character_color_slot( 7, 122, 207, 249 ); //BLOOD
	
	set_article_color_slot( 0, 233, 188, 155 ); //SKIN
	set_article_color_slot( 1, 234, 192, 84 ); //HAIR
	set_article_color_slot( 2, 58, 61, 54 ); //SHIRT
	set_article_color_slot( 3, 179, 60, 64 ); //COAT
	set_article_color_slot( 4, 240, 237, 232 ); //FUR
	set_article_color_slot( 5, 154, 163, 173 ); //BANDAGES
	set_article_color_slot( 6, 255, 233, 107 ); //HIGHLIGHTS
	set_article_color_slot( 7, 122, 207, 249 ); //BLOOD
		break;
	}
	switch (Storm_God){ // Color Alt 14 Secret Colors
		case 1:
	//Fool or Clown (14 Up)
	set_character_color_slot( 0, 251, 218, 192 ); //SKIN
	set_character_color_slot( 1, 101, 94, 90 ); //HAIR
	set_character_color_slot( 2, 246, 246, 248 ); //SHIRT
	set_character_color_slot( 3, 60, 80, 87 ); //COAT
	set_character_color_slot( 4, 60, 80, 87 ); //FUR
	set_character_color_slot( 5, 202, 59, 71 ); //BANDAGES
	set_character_color_slot( 6, 181, 176, 179 ); //HIGHLIGHTS
	set_character_color_slot( 7, 179, 34, 7 ); //BLOOD
	
	set_article_color_slot( 0, 251, 218, 192 ); //SKIN
	set_article_color_slot( 1, 101, 94, 90 ); //HAIR
	set_article_color_slot( 2, 246, 246, 248 ); //SHIRT
	set_article_color_slot( 3, 60, 80, 87 ); //COAT
	set_article_color_slot( 4, 60, 80, 87 ); //FUR
	set_article_color_slot( 5, 202, 59, 71 ); //BANDAGES
	set_article_color_slot( 6, 181, 176, 179 ); //HIGHLIGHTS
	set_article_color_slot( 7, 179, 34, 7 ); //BLOOD
		break;
		case 2:
	//// Who is SG? (14 Down)
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
		case 3:
	//Maddened Combatant (14 Attack)
	set_character_color_slot( 0, 48, 138, 78 ); //SKIN
	set_character_color_slot( 1, 201, 53, 26 ); //HAIR
	set_character_color_slot( 2, 144, 144, 144 ); //SHIRT
	set_character_color_slot( 3, 70, 72, 110 ); //COAT
	set_character_color_slot( 4, 175, 203, 212 ); //FUR
	set_character_color_slot( 5, 102, 102, 102 ); //BANDAGES
	set_character_color_slot( 6, 255, 0, 38 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 0, 38 ); //BLOOD
	
	set_article_color_slot( 0, 48, 138, 78 ); //SKIN
	set_article_color_slot( 1, 201, 53, 26 ); //HAIR
	set_article_color_slot( 2, 144, 144, 144 ); //SHIRT
	set_article_color_slot( 3, 70, 72, 110 ); //COAT
	set_article_color_slot( 4, 175, 203, 212 ); //FUR
	set_article_color_slot( 5, 102, 102, 102 ); //BANDAGES
	set_article_color_slot( 6, 255, 0, 38 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 0, 38 ); //BLOOD
		break;
		case 4:
	//Cunning Snake (14 Taunt)
	set_character_color_slot( 0, 255, 202, 176 ); //SKIN
	set_character_color_slot( 1, 109, 195, 71 ); //HAIR
	set_character_color_slot( 2, 245, 255, 252 ); //SHIRT
	set_character_color_slot( 3, 81, 81, 81 ); //COAT
	set_character_color_slot( 4, 81, 81, 81 ); //FUR
	set_character_color_slot( 5, 63, 40, 33 ); //BANDAGES
	set_character_color_slot( 6, 255, 128, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 49, 254, 104 ); //BLOOD
	
	set_article_color_slot( 0, 255, 202, 176 ); //SKIN
	set_article_color_slot( 1, 109, 195, 71 ); //HAIR
	set_article_color_slot( 2, 245, 255, 252 ); //SHIRT
	set_article_color_slot( 3, 81, 81, 81 ); //COAT
	set_article_color_slot( 4, 81, 81, 81 ); //FUR
	set_article_color_slot( 5, 63, 40, 33 ); //BANDAGES
	set_article_color_slot( 6, 255, 128, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 49, 254, 104 ); //BLOOD
		break;
	}
	switch (Vampire_Savior){ // Color Alt 15 Secret Colors
		case 1:
	//CROWNED (15 Up)
	set_character_color_slot( 0, 49, 16, 0 ); //SKIN
	set_character_color_slot( 1, 87, 47, 243 ); //HAIR
	set_character_color_slot( 2, 235, 0, 39 ); //SHIRT
	set_character_color_slot( 3, 0, 0, 114 ); //COAT
	set_character_color_slot( 4, 244, 249, 253 ); //FUR
	set_character_color_slot( 5, 255, 255, 0 ); //BANDAGES
	set_character_color_slot( 6, 255, 87, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 114, 252 ); //BLOOD

	
	set_article_color_slot( 0, 49, 16, 0 ); //SKIN
	set_article_color_slot( 1, 87, 47, 243 ); //HAIR
	set_article_color_slot( 2, 235, 0, 39 ); //SHIRT
	set_article_color_slot( 3, 0, 0, 114 ); //COAT
	set_article_color_slot( 4, 244, 249, 253 ); //FUR
	set_article_color_slot( 5, 255, 255, 0 ); //BANDAGES
	set_article_color_slot( 6, 255, 87, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 114, 252 ); //BLOOD

		break;
		case 2:
	//Drumming Frenzy (15 Down)
	set_character_color_slot( 0, 248, 72, 40 ); //SKIN
	set_character_color_slot( 1, 248, 240, 224 ); //HAIR
	set_character_color_slot( 2, 248, 240, 224 ); //SHIRT
	set_character_color_slot( 3, 104, 192, 192 ); //COAT
	set_character_color_slot( 4, 248, 240, 224 ); //FUR
	set_character_color_slot( 5, 104, 192, 192 ); //BANDAGES
	set_character_color_slot( 6, 48, 48, 48 ); //HIGHLIGHTS
	set_character_color_slot( 7, 248, 72, 40 ); //BLOOD
	
	set_article_color_slot( 0, 248, 72, 40 ); //SKIN
	set_article_color_slot( 1, 248, 240, 224 ); //HAIR
	set_article_color_slot( 2, 248, 240, 224 ); //SHIRT
	set_article_color_slot( 3, 104, 192, 192 ); //COAT
	set_article_color_slot( 4, 248, 240, 224 ); //FUR
	set_article_color_slot( 5, 104, 192, 192 ); //BANDAGES
	set_article_color_slot( 6, 48, 48, 48 ); //HIGHLIGHTS
	set_article_color_slot( 7, 248, 72, 40 ); //BLOOD
		break;
		case 3:
	//King of Evil (15 Attack)
	set_character_color_slot( 0, 149, 138, 48 ); //SKIN
	set_character_color_slot( 1, 140, 21, 26 ); //HAIR
	set_character_color_slot( 2, 130, 89, 53 ); //SHIRT
	set_character_color_slot( 3, 61, 51, 41 ); //COAT
	set_character_color_slot( 4, 62, 62, 79 ); //FUR
	set_character_color_slot( 5, 204, 202, 192 ); //BANDAGES
	set_character_color_slot( 6, 254, 218, 9 ); //HIGHLIGHTS
	set_character_color_slot( 7, 153, 31, 184 ); //BLOOD
	
	set_article_color_slot( 0, 149, 138, 48 ); //SKIN
	set_article_color_slot( 1, 140, 21, 26 ); //HAIR
	set_article_color_slot( 2, 130, 89, 53 ); //SHIRT
	set_article_color_slot( 3, 61, 51, 41 ); //COAT
	set_article_color_slot( 4, 62, 62, 79 ); //FUR
	set_article_color_slot( 5, 204, 202, 192 ); //BANDAGES
	set_article_color_slot( 6, 254, 218, 9 ); //HIGHLIGHTS
	set_article_color_slot( 7, 153, 31, 184 ); //BLOOD
		break;
		case 4:
	//Degraded Mentor (15 Taunt)
	set_character_color_slot( 0, 255, 241, 206 ); //SKIN
	set_character_color_slot( 1, 255, 255, 255 ); //HAIR
	set_character_color_slot( 2, 173, 47, 47 ); //SHIRT
	set_character_color_slot( 3, 207, 176, 176 ); //COAT
	set_character_color_slot( 4, 173, 47, 47 ); //FUR
	set_character_color_slot( 5, 255, 0, 0 ); //BANDAGES
	set_character_color_slot( 6, 173, 47, 47 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 0, 0 ); //BLOOD
	
	set_article_color_slot( 0, 255, 241, 206 ); //SKIN
	set_article_color_slot( 1, 255, 255, 255 ); //HAIR
	set_article_color_slot( 2, 173, 47, 47 ); //SHIRT
	set_article_color_slot( 3, 207, 176, 176 ); //COAT
	set_article_color_slot( 4, 173, 47, 47 ); //FUR
	set_article_color_slot( 5, 255, 0, 0 ); //BANDAGES
	set_article_color_slot( 6, 173, 47, 47 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 0, 0 ); //BLOOD
		break;
	}
		switch (Empty_Flame){ // Color Alt 16 Secret Colors
		case 1:
	//Eldrich Dancer (16 Up)
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
		case 2:
	// Reflective Ocean (16 Down)
	set_character_color_slot( 0, 115, 207, 250 ); //SKIN
	set_character_color_slot( 1, 42, 92, 217 ); //HAIR
	set_character_color_slot( 2, 67, 110, 224 ); //SHIRT
	set_character_color_slot( 3, 34, 57, 141 ); //COAT
	set_character_color_slot( 4, 212, 176, 86 ); //FUR
	set_character_color_slot( 5, 212, 176, 86 ); //BANDAGES
	set_character_color_slot( 6, 7, 25, 135 ); //HIGHLIGHTS
	set_character_color_slot( 7, 177, 248, 245 ); //BLOOD
	
	set_article_color_slot( 0, 115, 207, 250 ); //SKIN
	set_article_color_slot( 1, 42, 92, 217 ); //HAIR
	set_article_color_slot( 2, 67, 110, 224 ); //SHIRT
	set_article_color_slot( 3, 34, 57, 141 ); //COAT
	set_article_color_slot( 4, 212, 176, 86 ); //FUR
	set_article_color_slot( 5, 212, 176, 86 ); //BANDAGES
	set_article_color_slot( 6, 7, 25, 135 ); //HIGHLIGHTS
	set_article_color_slot( 7, 177, 248, 245 ); //BLOOD
		break;
		case 3:
	// Time Traveler (16 Attack)
	set_character_color_slot( 0, 213, 128, 87 ); //SKIN
	set_character_color_slot( 1, 103, 54, 56 ); //HAIR
	set_character_color_slot( 2, 211, 201, 188 ); //SHIRT
	set_character_color_slot( 3, 62, 90, 133 ); //COAT
	set_character_color_slot( 4, 30, 44, 87 ); //FUR
	set_character_color_slot( 5, 62, 36, 41 ); //BANDAGES
	set_character_color_slot( 6, 1, 198, 98 ); //HIGHLIGHTS
	set_character_color_slot( 7, 1, 198, 98 ); //BLOOD
	
	set_article_color_slot( 0, 213, 128, 87 ); //SKIN
	set_article_color_slot( 1, 103, 54, 56 ); //HAIR
	set_article_color_slot( 2, 211, 201, 188 ); //SHIRT
	set_article_color_slot( 3, 62, 90, 133 ); //COAT
	set_article_color_slot( 4, 30, 44, 87 ); //FUR
	set_article_color_slot( 5, 62, 36, 41 ); //BANDAGES
	set_article_color_slot( 6, 1, 198, 98 ); //HIGHLIGHTS
	set_article_color_slot( 7, 1, 198, 98 ); //BLOOD
		break;
		case 4:
	// Dynamic Double (16 Taunt)
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
	}
	switch (Humble_Melody){ // Color Alt 17 Secret Colors
		case 1:
    // Galaxy Buster (17 Up)
	set_character_color_slot( 0, 103, 143, 155 ); //SKIN
	set_character_color_slot( 1, 103, 143, 155 ); //HAIR
	set_character_color_slot( 2, 103, 143, 155 ); //SHIRT
	set_character_color_slot( 3, 255, 182, 62 ); //COAT
	set_character_color_slot( 4, 223, 99, 109 ); //FUR
	set_character_color_slot( 5, 89, 248, 119 ); //BANDAGES
	set_character_color_slot( 6, 89, 248, 119 ); //HIGHLIGHTS
	set_character_color_slot( 7, 89, 248, 119 ); //BLOOD
	
	set_article_color_slot( 0, 103, 143, 155 ); //SKIN
	set_article_color_slot( 1, 103, 143, 155 ); //HAIR
	set_article_color_slot( 2, 103, 143, 155 ); //SHIRT
	set_article_color_slot( 3, 255, 182, 62 ); //COAT
	set_article_color_slot( 4, 223, 99, 109 ); //FUR
	set_article_color_slot( 5, 89, 248, 119 ); //BANDAGES
	set_article_color_slot( 6, 89, 248, 119 ); //HIGHLIGHTS
	set_article_color_slot( 7, 89, 248, 119 ); //BLOOD
		break;
		case 2:
	//Groovy Teacher (17 Down)
	set_character_color_slot( 0, 246, 188, 147 ); //SKIN
	set_character_color_slot( 1, 255, 42, 65 ); //HAIR
	set_character_color_slot( 2, 255, 158, 25 ); //SHIRT
	set_character_color_slot( 3, 0, 0, 0 ); //COAT
	set_character_color_slot( 4, 255, 42, 65 ); //FUR
	set_character_color_slot( 5, 246, 188, 147 ); //BANDAGES
	set_character_color_slot( 6, 255, 158, 25 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 42, 65 ); //BLOOD

	set_article_color_slot( 0, 246, 188, 147 ); //SKIN
	set_article_color_slot( 1, 255, 42, 65 ); //HAIR
	set_article_color_slot( 2, 255, 158, 25 ); //SHIRT
	set_article_color_slot( 3, 0, 0, 0 ); //COAT
	set_article_color_slot( 4, 255, 42, 65 ); //FUR
	set_article_color_slot( 5, 246, 188, 147 ); //BANDAGES
	set_article_color_slot( 6, 255, 158, 25 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 42, 65 ); //BLOOD
		break;
		case 3:
	// Dusty Sonata (17 Attack)
	set_character_color_slot( 0, 208, 182, 117 ); //SKIN
	set_character_color_slot( 1, 80, 111, 145 ); //HAIR
	set_character_color_slot( 2, 192, 181, 154 ); //SHIRT
	set_character_color_slot( 3, 39, 37, 65 ); //COAT
	set_character_color_slot( 4, 192, 181, 154 ); //FUR
	set_character_color_slot( 5, 164, 139, 23 ); //BANDAGES
	set_character_color_slot( 6, 164, 139, 23 ); //HIGHLIGHTS
	set_character_color_slot( 7, 192, 181, 154 ); //BLOOD	
	
	set_article_color_slot( 0, 208, 182, 117 ); //SKIN
	set_article_color_slot( 1, 80, 111, 145 ); //HAIR
	set_article_color_slot( 2, 192, 181, 154 ); //SHIRT
	set_article_color_slot( 3, 39, 37, 65 ); //COAT
	set_article_color_slot( 4, 192, 181, 154 ); //FUR
	set_article_color_slot( 5, 164, 139, 23 ); //BANDAGES
	set_article_color_slot( 6, 164, 139, 23 ); //HIGHLIGHTS
	set_article_color_slot( 7, 192, 181, 154 ); //BLOOD	
		break;
		case 4:
	// Pruding Songsmith (17 Taunt)
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
	}
	switch (Metal_Ally){ // Color Alt 18 Secret Colors
		case 1:
	//Ominous Maw (18 Up)
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
		case 2:
	//Dune Song (18 Down)
	set_character_color_slot( 0, 208, 182, 117 ); //SKIN
	set_character_color_slot( 1, 172, 71, 76 ); //HAIR
	set_character_color_slot( 2, 192, 181, 154 ); //SHIRT
	set_character_color_slot( 3, 39, 37, 65 ); //COAT
	set_character_color_slot( 4, 192, 181, 154 ); //FUR
	set_character_color_slot( 5, 19, 132, 93 ); //BANDAGES
	set_character_color_slot( 6, 19, 132, 93 ); //HIGHLIGHTS
	set_character_color_slot( 7, 192, 181, 154 ); //BLOOD
	
	set_article_color_slot( 0, 208, 182, 117 ); //SKIN
	set_article_color_slot( 1, 172, 71, 76 ); //HAIR
	set_article_color_slot( 2, 192, 181, 154 ); //SHIRT
	set_article_color_slot( 3, 39, 37, 65 ); //COAT
	set_article_color_slot( 4, 192, 181, 154 ); //FUR
	set_article_color_slot( 5, 19, 132, 93 ); //BANDAGES
	set_article_color_slot( 6, 19, 132, 93 ); //HIGHLIGHTS
	set_article_color_slot( 7, 192, 181, 154 ); //BLOOD
		break;
		case 3:
	//Magnetic Puul (18 Attack)
	set_character_color_slot( 0, 86, 144, 61 ); //SKIN
	set_character_color_slot( 1, 192, 192, 192 ); //HAIR
	set_character_color_slot( 2, 192, 192, 192 ); //SHIRT
	set_character_color_slot( 3, 69, 69, 89 ); //COAT
	set_character_color_slot( 4, 226, 226, 245 ); //FUR
	set_character_color_slot( 5, 86, 144, 61 ); //BANDAGES
	set_character_color_slot( 6, 44, 92, 205 ); //HIGHLIGHTS
	set_character_color_slot( 7, 69, 69, 89 ); //BLOOD

	set_article_color_slot( 0, 86, 144, 61 ); //SKIN
	set_article_color_slot( 1, 192, 192, 192 ); //HAIR
	set_article_color_slot( 2, 192, 192, 192 ); //SHIRT
	set_article_color_slot( 3, 69, 69, 89 ); //COAT
	set_article_color_slot( 4, 226, 226, 245 ); //FUR
	set_article_color_slot( 5, 86, 144, 61 ); //BANDAGES
	set_article_color_slot( 6, 44, 92, 205 ); //HIGHLIGHTS
	set_article_color_slot( 7, 69, 69, 89 ); //BLOOD
		break;
		case 4:
	//ERROR (18 Taunt)
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
	}
	switch (Global_Warming){ // Color Alt 19 Secret Colors
		case 1:
	//Light Bringer (19 Up)
	set_character_color_slot( 0, 255, 234, 214 ); //SKIN
	set_character_color_slot( 1, 255, 122, 0 ); //HAIR
	set_character_color_slot( 2, 33, 70, 164 ); //SHIRT
	set_character_color_slot( 3, 33, 70, 164 ); //COAT
	set_character_color_slot( 4, 255, 214, 0 ); //FUR
	set_character_color_slot( 5, 255, 214, 0 ); //BANDAGES
	set_character_color_slot( 6, 255, 214, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 214, 0 ); //BLOOD
	
	set_article_color_slot( 0, 255, 234, 214 ); //SKIN
	set_article_color_slot( 1, 255, 122, 0 ); //HAIR
	set_article_color_slot( 2, 33, 70, 164 ); //SHIRT
	set_article_color_slot( 3, 33, 70, 164 ); //COAT
	set_article_color_slot( 4, 255, 214, 0 ); //FUR
	set_article_color_slot( 5, 255, 214, 0 ); //BANDAGES
	set_article_color_slot( 6, 255, 214, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 214, 0 ); //BLOOD
		break;
		case 2:
	//Crow Bar (19 Down)
	set_character_color_slot( 0, 255, 217, 176 ); //SKIN
	set_character_color_slot( 1, 75, 71, 98 ); //HAIR
	set_character_color_slot( 2, 255, 255, 198 ); //SHIRT
	set_character_color_slot( 3, 78, 89, 117 ); //COAT
	set_character_color_slot( 4, 255, 202, 202 ); //FUR
	set_character_color_slot( 5, 255, 202, 202 ); //BANDAGES
	set_character_color_slot( 6, 101, 91, 181 ); //HIGHLIGHTS
	set_character_color_slot( 7, 206, 60, 75 ); //BLOOD
	
	set_article_color_slot( 0, 255, 217, 176 ); //SKIN
	set_article_color_slot( 1, 75, 71, 98 ); //HAIR
	set_article_color_slot( 2, 255, 255, 198 ); //SHIRT
	set_article_color_slot( 3, 78, 89, 117 ); //COAT
	set_article_color_slot( 4, 255, 202, 202 ); //FUR
	set_article_color_slot( 5, 255, 202, 202 ); //BANDAGES
	set_article_color_slot( 6, 101, 91, 181 ); //HIGHLIGHTS
	set_article_color_slot( 7, 206, 60, 75 ); //BLOOD
		break;
		case 3:
	//Angelic Child (19 Attack)
	set_character_color_slot( 0, 248, 234, 194 ); //SKIN
	set_character_color_slot( 1, 37, 39, 52 ); //HAIR
	set_character_color_slot( 2, 255, 255, 255 ); //SHIRT
	set_character_color_slot( 3, 37, 77, 143 ); //COAT
	set_character_color_slot( 4, 188, 51, 44 ); //FUR
	set_character_color_slot( 5, 37, 39, 52 ); //BANDAGES
	set_character_color_slot( 6, 231, 147, 29 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 255, 255 ); //BLOOD
	
	set_article_color_slot( 0, 248, 234, 194 ); //SKIN
	set_article_color_slot( 1, 37, 39, 52 ); //HAIR
	set_article_color_slot( 2, 255, 255, 255 ); //SHIRT
	set_article_color_slot( 3, 37, 77, 143 ); //COAT
	set_article_color_slot( 4, 188, 51, 44 ); //FUR
	set_article_color_slot( 5, 37, 39, 52 ); //BANDAGES
	set_article_color_slot( 6, 231, 147, 29 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 255, 255 ); //BLOOD	
		break;
		case 4:
	//Moonlit Lily (19 Taunt)
	set_character_color_slot( 0, 55, 121, 96 ); //SKIN
	set_character_color_slot( 1, 255, 194, 79 ); //HAIR
	set_character_color_slot( 2, 53, 149, 242 ); //SHIRT
	set_character_color_slot( 3, 10, 43, 112 ); //COAT
	set_character_color_slot( 4, 70, 98, 168 ); //FUR
	set_character_color_slot( 5, 55, 121, 96 ); //BANDAGES
	set_character_color_slot( 6, 255, 194, 79 ); //HIGHLIGHTS
	set_character_color_slot( 7, 53, 149, 242 ); //BLOOD
	
	set_article_color_slot( 0, 55, 121, 96 ); //SKIN
	set_article_color_slot( 1, 255, 194, 79 ); //HAIR
	set_article_color_slot( 2, 53, 149, 242 ); //SHIRT
	set_article_color_slot( 3, 10, 43, 112 ); //COAT
	set_article_color_slot( 4, 70, 98, 168 ); //FUR
	set_article_color_slot( 5, 55, 121, 96 ); //BANDAGES
	set_article_color_slot( 6, 255, 194, 79 ); //HIGHLIGHTS
	set_article_color_slot( 7, 53, 149, 242 ); //BLOOD	
		break;
	}
	switch (Crystalline_Growth){ // Color Alt 20 Secret Colors
		case 1:
	//Inertal Monster (20 Up)
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
		case 2:
	//Wind Burst (20 Down)
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
		case 3:
	//Smoky Berserker (20 Attack)
	set_character_color_slot( 0, 114, 105, 86 ); //SKIN
	set_character_color_slot( 1, 128, 96, 28 ); //HAIR
	set_character_color_slot( 2, 114, 105, 86 ); //SHIRT
	set_character_color_slot( 3, 122, 25, 14 ); //COAT
	set_character_color_slot( 4, 255, 124, 0 ); //FUR
	set_character_color_slot( 5, 88, 55, 17 ); //BANDAGES
	set_character_color_slot( 6, 255, 228, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 80, 87, 92 ); //BLOOD

	set_article_color_slot( 0, 114, 105, 86 ); //SKIN
	set_article_color_slot( 1, 128, 96, 28 ); //HAIR
	set_article_color_slot( 2, 114, 105, 86 ); //SHIRT
	set_article_color_slot( 3, 122, 25, 14 ); //COAT
	set_article_color_slot( 4, 255, 124, 0 ); //FUR
	set_article_color_slot( 5, 88, 55, 17 ); //BANDAGES
	set_article_color_slot( 6, 255, 228, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 80, 87, 92 ); //BLOOD
		break;
		case 4:
	//Starry Artist (20 Taunt)
	set_character_color_slot( 0, 160, 115, 67 ); //SKIN
	set_character_color_slot( 1, 60, 57, 58 ); //HAIR
	set_character_color_slot( 2, 60, 57, 58 ); //SHIRT
	set_character_color_slot( 3, 189, 18, 62 ); //COAT
	set_character_color_slot( 4, 189, 18, 62 ); //FUR
	set_character_color_slot( 5, 246, 247, 246 ); //BANDAGES
	set_character_color_slot( 6, 110, 0, 204 ); //HIGHLIGHTS
	set_character_color_slot( 7, 136, 255, 0 ); //BLOOD
	
	set_article_color_slot( 0, 160, 115, 67 ); //SKIN
	set_article_color_slot( 1, 60, 57, 58 ); //HAIR
	set_article_color_slot( 2, 60, 57, 58 ); //SHIRT
	set_article_color_slot( 3, 189, 18, 62 ); //COAT
	set_article_color_slot( 4, 189, 18, 62 ); //FUR
	set_article_color_slot( 5, 246, 247, 246 ); //BANDAGES
	set_article_color_slot( 6, 110, 0, 204 ); //HIGHLIGHTS
	set_article_color_slot( 7, 136, 255, 0 ); //BLOOD
		break;
	}
	switch (Dangerous_Date){ // Color Alt 21 Secret Colors
		case 1:
	//Essence Weaver (21 Up)
	set_character_color_slot( 0, 255, 224, 197 ); //SKIN
	set_character_color_slot( 1, 252, 228, 60 ); //HAIR
	set_character_color_slot( 2, 241, 37, 30 ); //SHIRT
	set_character_color_slot( 3, 69, 58, 104 ); //COAT
	set_character_color_slot( 4, 241, 37, 30 ); //FUR
	set_character_color_slot( 5, 81, 26, 39 ); //BANDAGES
	set_character_color_slot( 6, 118, 0, 204 ); //HIGHLIGHTS
	set_character_color_slot( 7, 118, 0, 204 ); //BLOOD	
	
	set_article_color_slot( 0, 255, 224, 197 ); //SKIN
	set_article_color_slot( 1, 252, 228, 60 ); //HAIR
	set_article_color_slot( 2, 241, 37, 30 ); //SHIRT
	set_article_color_slot( 3, 69, 58, 104 ); //COAT
	set_article_color_slot( 4, 241, 37, 30 ); //FUR
	set_article_color_slot( 5, 81, 26, 39 ); //BANDAGES
	set_article_color_slot( 6, 118, 0, 204 ); //HIGHLIGHTS
	set_article_color_slot( 7, 118, 0, 204 ); //BLOOD	
		break;
		case 2:
	//Loving Athlete (21 Down)
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
		case 3:
	//Pins and Needles (21 Attack)
	set_character_color_slot( 0, 255, 103, 112 ); //SKIN
	set_character_color_slot( 1, 88, 252, 104 ); //HAIR
	set_character_color_slot( 2, 255, 103, 112 ); //SHIRT
	set_character_color_slot( 3, 212, 51, 78 ); //COAT
	set_character_color_slot( 4, 88, 252, 104 ); //FUR
	set_character_color_slot( 5, 225, 233, 246 ); //BANDAGES
	set_character_color_slot( 6, 0, 0, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 225, 233, 246 ); //BLOOD
	
	set_article_color_slot( 0, 255, 103, 112 ); //SKIN
	set_article_color_slot( 1, 88, 252, 104 ); //HAIR
	set_article_color_slot( 2, 255, 103, 112 ); //SHIRT
	set_article_color_slot( 3, 212, 51, 78 ); //COAT
	set_article_color_slot( 4, 88, 252, 104 ); //FUR
	set_article_color_slot( 5, 225, 233, 246 ); //BANDAGES
	set_article_color_slot( 6, 0, 0, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 225, 233, 246 ); //BLOOD
		break;
		case 4:
	//Heart Breaker (21 Taunt)
	set_character_color_slot( 0, 162, 139, 82 ); //SKIN
	set_character_color_slot( 1, 167, 104, 191 ); //HAIR
	set_character_color_slot( 2, 63, 63, 116 ); //SHIRT
	set_character_color_slot( 3, 235, 228, 83 ); //COAT
	set_character_color_slot( 4, 63, 63, 116 ); //FUR
	set_character_color_slot( 5, 235, 228, 83 ); //BANDAGES
	set_character_color_slot( 6, 255, 177, 238 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 177, 238 ); //BLOOD
	
	set_article_color_slot( 0, 162, 139, 82 ); //SKIN
	set_article_color_slot( 1, 167, 104, 191 ); //HAIR
	set_article_color_slot( 2, 63, 63, 116 ); //SHIRT
	set_article_color_slot( 3, 235, 228, 83 ); //COAT
	set_article_color_slot( 4, 63, 63, 116 ); //FUR
	set_article_color_slot( 5, 235, 228, 83 ); //BANDAGES
	set_article_color_slot( 6, 255, 177, 238 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 177, 238 ); //BLOOD
		break;
	}
	switch (Blue_Sightseer){ // Color Alt 22 Secret Colors
		case 1:
	//Ace of Spades (22 Up)
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
		case 2:
	//Thunderstruck (22 Down)
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
		case 3:
	//Techno Rat (22 Attack)
	set_character_color_slot( 0, 137, 115, 104 ); //SKIN
	set_character_color_slot( 1, 67, 50, 43 ); //HAIR
	set_character_color_slot( 2, 155, 57, 95 ); //SHIRT
	set_character_color_slot( 3, 0, 19, 97 ); //COAT
	set_character_color_slot( 4, 67, 50, 43 ); //FUR
	set_character_color_slot( 5, 215, 193, 179 ); //BANDAGES
	set_character_color_slot( 6, 64, 0, 255 ); //HIGHLIGHTS
	set_character_color_slot( 7, 64, 0, 255 ); //BLOOD

	
	set_article_color_slot( 0, 137, 115, 104 ); //SKIN
	set_article_color_slot( 1, 67, 50, 43 ); //HAIR
	set_article_color_slot( 2, 155, 57, 95 ); //SHIRT
	set_article_color_slot( 3, 0, 19, 97 ); //COAT
	set_article_color_slot( 4, 67, 50, 43 ); //FUR
	set_article_color_slot( 5, 215, 193, 179 ); //BANDAGES
	set_article_color_slot( 6, 64, 0, 255 ); //HIGHLIGHTS
	set_article_color_slot( 7, 64, 0, 255 ); //BLOOD
		break;
		case 4:
	//Spirit Jester (22 Taunt)
	set_character_color_slot( 0, 187, 117, 71 ); //SKIN
	set_character_color_slot( 1, 211, 31, 81 ); //HAIR
	set_character_color_slot( 2, 240, 242, 244 ); //SHIRT
	set_character_color_slot( 3, 199, 0, 18 ); //COAT
	set_character_color_slot( 4, 50, 51, 62 ); //FUR
	set_character_color_slot( 5, 113, 65, 59 ); //BANDAGES
	set_character_color_slot( 6, 26, 122, 62 ); //HIGHLIGHTS
	set_character_color_slot( 7, 57, 50, 149 ); //BLOOD

	set_article_color_slot( 0, 187, 117, 71 ); //SKIN
	set_article_color_slot( 1, 211, 31, 81 ); //HAIR
	set_article_color_slot( 2, 240, 242, 244 ); //SHIRT
	set_article_color_slot( 3, 199, 0, 18 ); //COAT
	set_article_color_slot( 4, 50, 51, 62 ); //FUR
	set_article_color_slot( 5, 113, 65, 59 ); //BANDAGES
	set_article_color_slot( 6, 26, 122, 62 ); //HIGHLIGHTS
	set_article_color_slot( 7, 57, 50, 149 ); //BLOOD
		break;
	}
	switch (Flaming_Gorilla){ // Color Alt 23 Secret Colors
		case 1:
	//Monarch Wings (23 Up)
	set_character_color_slot( 0, 248, 245, 252 ); //SKIN
	set_character_color_slot( 1, 55, 57, 94 ); //HAIR
	set_character_color_slot( 2, 55, 57, 94 ); //SHIRT
	set_character_color_slot( 3, 196, 44, 69 ); //COAT
	set_character_color_slot( 4, 102, 41, 184 ); //FUR
	set_character_color_slot( 5, 21, 243, 255 ); //BANDAGES
	set_character_color_slot( 6, 21, 243, 255 ); //HIGHLIGHTS
	set_character_color_slot( 7, 21, 243, 255 ); //BLOOD

	
	set_article_color_slot( 0, 248, 245, 252 ); //SKIN
	set_article_color_slot( 1, 55, 57, 94 ); //HAIR
	set_article_color_slot( 2, 55, 57, 94 ); //SHIRT
	set_article_color_slot( 3, 196, 44, 69 ); //COAT
	set_article_color_slot( 4, 102, 41, 184 ); //FUR
	set_article_color_slot( 5, 21, 243, 255 ); //BANDAGES
	set_article_color_slot( 6, 21, 243, 255 ); //HIGHLIGHTS
	set_article_color_slot( 7, 21, 243, 255 ); //BLOOD
		break;
		case 2:
	//Steamy Tutor (23 Down)
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
		case 3:
	//Rocking Shadow (23 Attack)
	set_character_color_slot( 0, 0, 0, 0 ); //SKIN
	set_character_color_slot( 1, 61, 37, 34 ); //HAIR
	set_character_color_slot( 2, 126, 51, 128 ); //SHIRT
	set_character_color_slot( 3, 61, 37, 34 ); //COAT
	set_character_color_slot( 4, 255, 255, 255 ); //FUR
	set_character_color_slot( 5, 61, 37, 34 ); //BANDAGES
	set_character_color_slot( 6, 255, 255, 255 ); //HIGHLIGHTS
	set_character_color_slot( 7, 211, 30, 57 ); //BLOOD
	
	set_article_color_slot( 0, 0, 0, 0 ); //SKIN
	set_article_color_slot( 1, 61, 37, 34 ); //HAIR
	set_article_color_slot( 2, 126, 51, 128 ); //SHIRT
	set_article_color_slot( 3, 61, 37, 34 ); //COAT
	set_article_color_slot( 4, 255, 255, 255 ); //FUR
	set_article_color_slot( 5, 61, 37, 34 ); //BANDAGES
	set_article_color_slot( 6, 255, 255, 255 ); //HIGHLIGHTS
	set_article_color_slot( 7, 211, 30, 57 ); //BLOOD
		break;
		case 4:
	//Phantom Ranger (23 Taunt)
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
	}
	switch (Explosive_Rebel){ // Color Alt 24 Secret Colors
		case 1:
	//Falling Spores (24 Up)
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
	//Pie Flavored (24 Down)
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
		case 3:
	//Unknown Omen (24 Attack)
	set_character_color_slot( 0, 126, 107, 138 ); //SKIN
	set_character_color_slot( 1, 25, 36, 86 ); //HAIR
	set_character_color_slot( 2, 44, 51, 84 ); //SHIRT
	set_character_color_slot( 3, 93, 72, 107 ); //COAT
	set_character_color_slot( 4, 255, 234, 147 ); //FUR
	set_character_color_slot( 5, 255, 234, 147 ); //BANDAGES
	set_character_color_slot( 6, 255, 234, 147 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 234, 147 ); //BLOOD

	set_article_color_slot( 0, 126, 107, 138 ); //SKIN
	set_article_color_slot( 1, 25, 36, 86 ); //HAIR
	set_article_color_slot( 2, 44, 51, 84 ); //SHIRT
	set_article_color_slot( 3, 93, 72, 107 ); //COAT
	set_article_color_slot( 4, 255, 234, 147 ); //FUR
	set_article_color_slot( 5, 255, 234, 147 ); //BANDAGES
	set_article_color_slot( 6, 255, 234, 147 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 234, 147 ); //BLOOD
		break;
		case 4:
	//Creator of Giik (24 Taunt)
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
	switch (Poisonous_Roar){ // Color Alt 25 Secret Colors
		case 1:
	//Fog Wanderer (25 Up)
	set_character_color_slot( 0, 255, 217, 145 ); //SKIN
	set_character_color_slot( 1, 217, 156, 102 ); //HAIR
	set_character_color_slot( 2, 242, 248, 255 ); //SHIRT
	set_character_color_slot( 3, 102, 51, 83 ); //COAT
	set_character_color_slot( 4, 133, 238, 255 ); //FUR
	set_character_color_slot( 5, 242, 248, 255 ); //BANDAGES
	set_character_color_slot( 6, 133, 238, 255 ); //HIGHLIGHTS
	set_character_color_slot( 7, 242, 248, 255 ); //BLOOD
	
	set_article_color_slot( 0, 255, 217, 145 ); //SKIN
	set_article_color_slot( 1, 217, 156, 102 ); //HAIR
	set_article_color_slot( 2, 242, 248, 255 ); //SHIRT
	set_article_color_slot( 3, 102, 51, 83 ); //COAT
	set_article_color_slot( 4, 133, 238, 255 ); //FUR
	set_article_color_slot( 5, 242, 248, 255 ); //BANDAGES
	set_article_color_slot( 6, 133, 238, 255 ); //HIGHLIGHTS
	set_article_color_slot( 7, 242, 248, 255 ); //BLOOD
		break;
		case 2:
	//Scarlet Detective (25 Down)
	set_character_color_slot( 0, 241, 238, 246 ); //SKIN
	set_character_color_slot( 1, 213, 28, 82 ); //HAIR
	set_character_color_slot( 2, 246, 246, 238 ); //SHIRT
	set_character_color_slot( 3, 49, 24, 24 ); //COAT
	set_character_color_slot( 4, 82, 36, 16 ); //FUR
	set_character_color_slot( 5, 213, 28, 82 ); //BANDAGES
	set_character_color_slot( 6, 213, 28, 82 ); //HIGHLIGHTS
	set_character_color_slot( 7, 213, 28, 82 ); //BLOOD
	
	set_article_color_slot( 0, 241, 238, 246 ); //SKIN
	set_article_color_slot( 1, 213, 28, 82 ); //HAIR
	set_article_color_slot( 2, 246, 246, 238 ); //SHIRT
	set_article_color_slot( 3, 49, 24, 24 ); //COAT
	set_article_color_slot( 4, 82, 36, 16 ); //FUR
	set_article_color_slot( 5, 213, 28, 82 ); //BANDAGES
	set_article_color_slot( 6, 213, 28, 82 ); //HIGHLIGHTS
	set_article_color_slot( 7, 213, 28, 82 ); //BLOOD
		break;
		case 3:
	//Gas Passer (25 Attack)
	set_character_color_slot( 0, 71, 71, 71 ); //SKIN
	set_character_color_slot( 1, 255, 255, 255 ); //HAIR
	set_character_color_slot( 2, 71, 71, 71 ); //SHIRT
	set_character_color_slot( 3, 138, 221, 78 ); //COAT
	set_character_color_slot( 4, 82, 149, 31 ); //FUR
	set_character_color_slot( 5, 55, 200, 102 ); //BANDAGES
	set_character_color_slot( 6, 255, 213, 115 ); //HIGHLIGHTS
	set_character_color_slot( 7, 138, 221, 78 ); //BLOOD

	set_article_color_slot( 0, 71, 71, 71 ); //SKIN
	set_article_color_slot( 1, 255, 255, 255 ); //HAIR
	set_article_color_slot( 2, 71, 71, 71 ); //SHIRT
	set_article_color_slot( 3, 138, 221, 78 ); //COAT
	set_article_color_slot( 4, 82, 149, 31 ); //FUR
	set_article_color_slot( 5, 55, 200, 102 ); //BANDAGES
	set_article_color_slot( 6, 255, 213, 115 ); //HIGHLIGHTS
	set_article_color_slot( 7, 138, 221, 78 ); //BLOOD
		break;
		case 4:
	//Sandy Artillery (25 Taunt)
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
	}
	switch (Attuned_Traveler){ // Color Alt 26 Secret Colors
		case 1:
    //Cloud Dandy (26 Up)
	set_character_color_slot( 0, 208, 183, 119 ); //SKIN
	set_character_color_slot( 1, 66, 70, 80 ); //HAIR
	set_character_color_slot( 2, 51, 87, 166 ); //SHIRT
	set_character_color_slot( 3, 66, 70, 80 ); //COAT
	set_character_color_slot( 4, 226, 231, 242 ); //FUR
	set_character_color_slot( 5, 208, 183, 119 ); //BANDAGES
	set_character_color_slot( 6, 226, 231, 242 ); //HIGHLIGHTS
	set_character_color_slot( 7, 51, 87, 166 ); //BLOOD

	set_article_color_slot( 0, 208, 183, 119 ); //SKIN
	set_article_color_slot( 1, 66, 70, 80 ); //HAIR
	set_article_color_slot( 2, 51, 87, 166 ); //SHIRT
	set_article_color_slot( 3, 66, 70, 80 ); //COAT
	set_article_color_slot( 4, 226, 231, 242 ); //FUR
	set_article_color_slot( 5, 208, 183, 119 ); //BANDAGES
	set_article_color_slot( 6, 226, 231, 242 ); //HIGHLIGHTS
	set_article_color_slot( 7, 51, 87, 166 ); //BLOOD
		break;
		case 2:
	//Purity Sage (26 Down)
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
		case 3:
	//Large Medium (26 Attack)
	set_character_color_slot( 0, 213, 209, 217 ); //SKIN
	set_character_color_slot( 1, 169, 154, 190 ); //HAIR
	set_character_color_slot( 2, 213, 209, 217 ); //SHIRT
	set_character_color_slot( 3, 169, 154, 190 ); //COAT
	set_character_color_slot( 4, 181, 87, 121 ); //FUR
	set_character_color_slot( 5, 120, 180, 134 ); //BANDAGES
	set_character_color_slot( 6, 181, 87, 121 ); //HIGHLIGHTS
	set_character_color_slot( 7, 120, 180, 134 ); //BLOOD

	set_article_color_slot( 0, 213, 209, 217 ); //SKIN
	set_article_color_slot( 1, 169, 154, 190 ); //HAIR
	set_article_color_slot( 2, 213, 209, 217 ); //SHIRT
	set_article_color_slot( 3, 169, 154, 190 ); //COAT
	set_article_color_slot( 4, 181, 87, 121 ); //FUR
	set_article_color_slot( 5, 120, 180, 134 ); //BANDAGES
	set_article_color_slot( 6, 181, 87, 121 ); //HIGHLIGHTS
	set_article_color_slot( 7, 120, 180, 134 ); //BLOOD
		break;
		case 4:
	//Sea Scoundrel (26 Taunt)
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
	switch (Null){ // Color Alt 27 Secret Colors
		case 1:
	//Corrupted Hunter (27 Up)
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
		case 2:
	//Infinite Space (27 Down)
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
		case 3:
	//STATIC (27 Attack)
	set_character_color_slot( 0, 50, 111, 36 ); //SKIN
	set_character_color_slot( 1, 37, 79, 27 ); //HAIR
	set_character_color_slot( 2, 132, 126, 135 ); //SHIRT
	set_character_color_slot( 3, 132, 126, 135 ); //COAT
	set_character_color_slot( 4, 126, 135, 128 ); //FUR
	set_character_color_slot( 5, 132, 126, 135 ); //BANDAGES
	set_character_color_slot( 6, 213, 207, 207 ); //HIGHLIGHTS
	set_character_color_slot( 7, 213, 207, 207 ); //BLOOD
	
	set_article_color_slot( 0, 50, 111, 36 ); //SKIN
	set_article_color_slot( 1, 37, 79, 27 ); //HAIR
	set_article_color_slot( 2, 132, 126, 135 ); //SHIRT
	set_article_color_slot( 3, 132, 126, 135 ); //COAT
	set_article_color_slot( 4, 126, 135, 128 ); //FUR
	set_article_color_slot( 5, 132, 126, 135 ); //BANDAGES
	set_article_color_slot( 6, 213, 207, 207 ); //HIGHLIGHTS
	set_article_color_slot( 7, 213, 207, 207 ); //BLOOD
		break;
		case 4:
	//Shifting Abyss (27 Taunt)
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
	}
	switch (Hardened_Veteran){ // Color Alt 28 Secret Colors
		case 1:
	//King of Frost (28 Up)
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
		case 2:
	//Burning Enforcer (28 Down)
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
		case 3:
	//Night Walker (28 Attack)
	set_character_color_slot( 0, 90, 78, 96 ); //SKIN
	set_character_color_slot( 1, 49, 37, 56 ); //HAIR
	set_character_color_slot( 2, 54, 44, 71 ); //SHIRT
	set_character_color_slot( 3, 64, 47, 61 ); //COAT
	set_character_color_slot( 4, 179, 11, 255 ); //FUR
	set_character_color_slot( 5, 64, 47, 61 ); //BANDAGES
	set_character_color_slot( 6, 94, 94, 94 ); //HIGHLIGHTS
	set_character_color_slot( 7, 179, 11, 255 ); //BLOOD
	
	set_article_color_slot( 0, 90, 78, 96 ); //SKIN
	set_article_color_slot( 1, 49, 37, 56 ); //HAIR
	set_article_color_slot( 2, 54, 44, 71 ); //SHIRT
	set_article_color_slot( 3, 64, 47, 61 ); //COAT
	set_article_color_slot( 4, 179, 11, 255 ); //FUR
	set_article_color_slot( 5, 64, 47, 61 ); //BANDAGES
	set_article_color_slot( 6, 94, 94, 94 ); //HIGHLIGHTS
	set_article_color_slot( 7, 179, 11, 255 ); //BLOOD
		break;
		case 4:
	//Karmic Justice (28 Taunt)
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
	switch (Old_Ghost){ // Color Alt 29 Secret Colors
		case 1:
	//Soul Flame (29 Up)
	set_character_color_slot( 0, 247, 255, 247 ); //SKIN
	set_character_color_slot( 1, 40, 40, 40 ); //HAIR
	set_character_color_slot( 2, 42, 57, 42 ); //SHIRT
	set_character_color_slot( 3, 33, 30, 33 ); //COAT
	set_character_color_slot( 4, 51, 106, 62 ); //FUR
	set_character_color_slot( 5, 33, 30, 33 ); //BANDAGES
	set_character_color_slot( 6, 0, 160, 70 ); //HIGHLIGHTS
	set_character_color_slot( 7, 0, 255, 172 ); //BLOOD
	
	set_article_color_slot( 0, 247, 255, 247 ); //SKIN
	set_article_color_slot( 1, 40, 40, 40 ); //HAIR
	set_article_color_slot( 2, 42, 57, 42 ); //SHIRT
	set_article_color_slot( 3, 33, 30, 33 ); //COAT
	set_article_color_slot( 4, 51, 106, 62 ); //FUR
	set_article_color_slot( 5, 33, 30, 33 ); //BANDAGES
	set_article_color_slot( 6, 0, 160, 70 ); //HIGHLIGHTS
	set_article_color_slot( 7, 0, 255, 172 ); //BLOOD
		break;
		case 2:
	//Chaloric Destroyer (29 Down)
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
		case 3:
	//Thistle Wind (29 Attack)
	set_character_color_slot( 0, 154, 148, 93 ); //SKIN
	set_character_color_slot( 1, 139, 179, 35 ); //HAIR
	set_character_color_slot( 2, 107, 102, 61 ); //SHIRT
	set_character_color_slot( 3, 33, 62, 2 ); //COAT
	set_character_color_slot( 4, 139, 179, 35 ); //FUR
	set_character_color_slot( 5, 139, 179, 35 ); //BANDAGES
	set_character_color_slot( 6, 193, 226, 71 ); //HIGHLIGHTS
	set_character_color_slot( 7, 177, 255, 28 ); //BLOOD

	set_article_color_slot( 0, 154, 148, 93 ); //SKIN
	set_article_color_slot( 1, 139, 179, 35 ); //HAIR
	set_article_color_slot( 2, 107, 102, 61 ); //SHIRT
	set_article_color_slot( 3, 33, 62, 2 ); //COAT
	set_article_color_slot( 4, 139, 179, 35 ); //FUR
	set_article_color_slot( 5, 139, 179, 35 ); //BANDAGES
	set_article_color_slot( 6, 193, 226, 71 ); //HIGHLIGHTS
	set_article_color_slot( 7, 177, 255, 28 ); //BLOOD
		break;
		case 4:
	//Spirit of Combat (29 Taunt)
	set_character_color_slot( 0, 0, 0, 0 ); //SKIN
	set_character_color_slot( 1, 255, 78, 58 ); //HAIR
	set_character_color_slot( 2, 99, 85, 101 ); //SHIRT
	set_character_color_slot( 3, 38, 38, 38 ); //COAT
	set_character_color_slot( 4, 97, 0, 85 ); //FUR
	set_character_color_slot( 5, 144, 116, 148 ); //BANDAGES
	set_character_color_slot( 6, 97, 0, 85 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 74, 0 ); //BLOOD

	set_article_color_slot( 0, 0, 0, 0 ); //SKIN
	set_article_color_slot( 1, 255, 78, 58 ); //HAIR
	set_article_color_slot( 2, 99, 85, 101 ); //SHIRT
	set_article_color_slot( 3, 38, 38, 38 ); //COAT
	set_article_color_slot( 4, 97, 0, 85 ); //FUR
	set_article_color_slot( 5, 144, 116, 148 ); //BANDAGES
	set_article_color_slot( 6, 97, 0, 85 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 74, 0 ); //BLOOD
		break;
	}
	switch (Sanguine_Lightning){ // Color Alt 30 Secret Colors
		case 1:
	//Wisp Drifter (30 Up)
	set_character_color_slot( 0, 247, 238, 213 ); //SKIN
	set_character_color_slot( 1, 255, 130, 47 ); //HAIR
	set_character_color_slot( 2, 255, 130, 47 ); //SHIRT
	set_character_color_slot( 3, 86, 74, 151 ); //COAT
	set_character_color_slot( 4, 74, 208, 223 ); //FUR
	set_character_color_slot( 5, 74, 208, 223 ); //BANDAGES
	set_character_color_slot( 6, 235, 51, 31 ); //HIGHLIGHTS
	set_character_color_slot( 7, 0, 123, 255 ); //BLOOD

	set_article_color_slot( 0, 247, 238, 213 ); //SKIN
	set_article_color_slot( 1, 255, 130, 47 ); //HAIR
	set_article_color_slot( 2, 255, 130, 47 ); //SHIRT
	set_article_color_slot( 3, 86, 74, 151 ); //COAT
	set_article_color_slot( 4, 74, 208, 223 ); //FUR
	set_article_color_slot( 5, 74, 208, 223 ); //BANDAGES
	set_article_color_slot( 6, 235, 51, 31 ); //HIGHLIGHTS
	set_article_color_slot( 7, 0, 123, 255 ); //BLOOD
		break;
		case 2:
	//Rotting Sanity (30 Down)
	set_character_color_slot( 0, 214, 73, 98 ); //SKIN
	set_character_color_slot( 1, 151, 170, 74 ); //HAIR
	set_character_color_slot( 2, 81, 106, 79 ); //SHIRT
	set_character_color_slot( 3, 141, 72, 82 ); //COAT
	set_character_color_slot( 4, 153, 29, 48 ); //FUR
	set_character_color_slot( 5, 180, 167, 138 ); //BANDAGES
	set_character_color_slot( 6, 255, 255, 255 ); //HIGHLIGHTS
	set_character_color_slot( 7, 151, 170, 74 ); //BLOOD
	
	set_article_color_slot( 0, 214, 73, 98 ); //SKIN
	set_article_color_slot( 1, 151, 170, 74 ); //HAIR
	set_article_color_slot( 2, 81, 106, 79 ); //SHIRT
	set_article_color_slot( 3, 141, 72, 82 ); //COAT
	set_article_color_slot( 4, 153, 29, 48 ); //FUR
	set_article_color_slot( 5, 180, 167, 138 ); //BANDAGES
	set_article_color_slot( 6, 255, 255, 255 ); //HIGHLIGHTS
	set_article_color_slot( 7, 151, 170, 74 ); //BLOOD
		break;
		case 3:
	//Anchored Caster (30 Attack)
	set_character_color_slot( 0, 117, 152, 217 ); //SKIN
	set_character_color_slot( 1, 117, 152, 217 ); //HAIR
	set_character_color_slot( 2, 216, 46, 54 ); //SHIRT
	set_character_color_slot( 3, 72, 63, 186 ); //COAT
	set_character_color_slot( 4, 216, 46, 54 ); //FUR
	set_character_color_slot( 5, 216, 46, 54 ); //BANDAGES
	set_character_color_slot( 6, 216, 46, 54 ); //HIGHLIGHTS
	set_character_color_slot( 7, 218, 190, 176 ); //BLOOD
	
	set_article_color_slot( 0, 117, 152, 217 ); //SKIN
	set_article_color_slot( 1, 117, 152, 217 ); //HAIR
	set_article_color_slot( 2, 216, 46, 54 ); //SHIRT
	set_article_color_slot( 3, 72, 63, 186 ); //COAT
	set_article_color_slot( 4, 216, 46, 54 ); //FUR
	set_article_color_slot( 5, 216, 46, 54 ); //BANDAGES
	set_article_color_slot( 6, 216, 46, 54 ); //HIGHLIGHTS
	set_article_color_slot( 7, 218, 190, 176 ); //BLOOD
		break;
		case 4:
	//Explosive Expert (30 Taunt)
	set_character_color_slot( 0, 247, 248, 250 ); //SKIN
	set_character_color_slot( 1, 64, 55, 74 ); //HAIR
	set_character_color_slot( 2, 247, 248, 250 ); //SHIRT
	set_character_color_slot( 3, 64, 55, 74 ); //COAT
	set_character_color_slot( 4, 44, 92, 205 ); //FUR
	set_character_color_slot( 5, 64, 55, 74 ); //BANDAGES
	set_character_color_slot( 6, 80, 169, 241 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 127, 39 ); //BLOOD
	
	set_article_color_slot( 0, 247, 248, 250 ); //SKIN
	set_article_color_slot( 1, 64, 55, 74 ); //HAIR
	set_article_color_slot( 2, 247, 248, 250 ); //SHIRT
	set_article_color_slot( 3, 64, 55, 74 ); //COAT
	set_article_color_slot( 4, 44, 92, 205 ); //FUR
	set_article_color_slot( 5, 64, 55, 74 ); //BANDAGES
	set_article_color_slot( 6, 80, 169, 241 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 127, 39 ); //BLOOD
		break;
	}
	switch (Cackling_Hyena){ // Color Alt 31 Secret Colors
		case 1:
	//Frozen Heart (31 Up)
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
	//Slipstream (31 Down)
	set_character_color_slot( 0, 255, 231, 185 ); //SKIN
	set_character_color_slot( 1, 204, 107, 229 ); //HAIR
	set_character_color_slot( 2, 255, 231, 185 ); //SHIRT
	set_character_color_slot( 3, 204, 107, 229 ); //COAT
	set_character_color_slot( 4, 160, 250, 250 ); //FUR
	set_character_color_slot( 5, 160, 250, 250 ); //BANDAGES
	set_character_color_slot( 6, 204, 107, 229 ); //HIGHLIGHTS
	set_character_color_slot( 7, 160, 250, 250 ); //BLOOD
	
	set_article_color_slot( 0, 255, 231, 185 ); //SKIN
	set_article_color_slot( 1, 204, 107, 229 ); //HAIR
	set_article_color_slot( 2, 255, 231, 185 ); //SHIRT
	set_article_color_slot( 3, 204, 107, 229 ); //COAT
	set_article_color_slot( 4, 160, 250, 250 ); //FUR
	set_article_color_slot( 5, 160, 250, 250 ); //BANDAGES
	set_article_color_slot( 6, 204, 107, 229 ); //HIGHLIGHTS
	set_article_color_slot( 7, 160, 250, 250 ); //BLOOD
		break;
		case 3:
	//Transition Period (31 Attack)
	set_character_color_slot( 0, 245, 206, 214 ); //SKIN
	set_character_color_slot( 1, 91, 206, 250 ); //HAIR
	set_character_color_slot( 2, 255, 255, 255 ); //SHIRT
	set_character_color_slot( 3, 245, 168, 184 ); //COAT
	set_character_color_slot( 4, 91, 206, 250 ); //FUR
	set_character_color_slot( 5, 91, 206, 250 ); //BANDAGES
	set_character_color_slot( 6, 91, 206, 250 ); //HIGHLIGHTS
	set_character_color_slot( 7, 245, 168, 184 ); //BLOOD

	set_article_color_slot( 0, 245, 206, 214 ); //SKIN
	set_article_color_slot( 1, 91, 206, 250 ); //HAIR
	set_article_color_slot( 2, 255, 255, 255 ); //SHIRT
	set_article_color_slot( 3, 245, 168, 184 ); //COAT
	set_article_color_slot( 4, 91, 206, 250 ); //FUR
	set_article_color_slot( 5, 91, 206, 250 ); //BANDAGES
	set_article_color_slot( 6, 91, 206, 250 ); //HIGHLIGHTS
	set_article_color_slot( 7, 245, 168, 184 ); //BLOOD
		break;
		case 4:
	//Hopeful Night (31 Taunt)
	set_character_color_slot( 0, 143, 99, 65 ); //SKIN
	set_character_color_slot( 1, 41, 42, 51 ); //HAIR
	set_character_color_slot( 2, 250, 255, 255 ); //SHIRT
	set_character_color_slot( 3, 41, 42, 51 ); //COAT
	set_character_color_slot( 4, 255, 200, 0 ); //FUR
	set_character_color_slot( 5, 41, 42, 51 ); //BANDAGES
	set_character_color_slot( 6, 255, 200, 0 ); //HIGHLIGHTS
	set_character_color_slot( 7, 255, 200, 0 ); //BLOOD
	
	set_article_color_slot( 0, 143, 99, 65 ); //SKIN
	set_article_color_slot( 1, 41, 42, 51 ); //HAIR
	set_article_color_slot( 2, 250, 255, 255 ); //SHIRT
	set_article_color_slot( 3, 41, 42, 51 ); //COAT
	set_article_color_slot( 4, 255, 200, 0 ); //FUR
	set_article_color_slot( 5, 41, 42, 51 ); //BANDAGES
	set_article_color_slot( 6, 255, 200, 0 ); //HIGHLIGHTS
	set_article_color_slot( 7, 255, 200, 0 ); //BLOOD
		break;
	}
}