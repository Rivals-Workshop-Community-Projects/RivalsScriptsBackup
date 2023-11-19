
color = get_player_color(player);

//Timer for Fading out text

CSS_image_alpha = max(CSS_image_alpha - 0.1, 0);
CSS_image_speed = 0;

display_alpha = CSS_image_alpha * 10;

// Updating CSS_image_alpha when a new color is selected
if (color != CSS_color_check){ 
	CSS_image_alpha = 1; //Set to 3 to make it take a long time for the text to fade
	sound_stop(sound_get("CSS_select"));
	sound_play(sound_get("CSS_select"));
}

CSS_color_check = color;

// Determines CSS icon colors
if (color == 0 || color == alts - 1 || color == alts){
	if (color == 0){
		ColorPrev = make_color_rgb(get_color_profile_slot_r(alts, 1 ), get_color_profile_slot_g(alts, 1 ), get_color_profile_slot_b(alts, 1 ));
		ColorNext = make_color_rgb(get_color_profile_slot_r(color + 1, 1 ), get_color_profile_slot_g(color + 1, 1 ), get_color_profile_slot_b(color + 1, 1 ));
		ColorNextNext = make_color_rgb(get_color_profile_slot_r(color + 2, 1 ), get_color_profile_slot_g(color + 2, 1 ), get_color_profile_slot_b(color + 2, 1 ));
	}
	if (color == alts - 1){
		ColorPrev = make_color_rgb(get_color_profile_slot_r(color - 1, 1 ), get_color_profile_slot_g(color - 1, 1 ), get_color_profile_slot_b(color - 1, 1 ));
		ColorNext = make_color_rgb(get_color_profile_slot_r(color + 1, 1 ), get_color_profile_slot_g(color + 1, 1 ), get_color_profile_slot_b(color + 1, 1 ));
		ColorNextNext = make_color_rgb(get_color_profile_slot_r(0, 1 ), get_color_profile_slot_g(0, 1 ), get_color_profile_slot_b(0, 1 ));
	}
	if (color == alts){
		ColorPrev = make_color_rgb(get_color_profile_slot_r(color - 1, 1 ), get_color_profile_slot_g(color - 1, 1 ), get_color_profile_slot_b(color - 1, 1 ));
		ColorNext = make_color_rgb(get_color_profile_slot_r(0, 1 ), get_color_profile_slot_g(0, 1 ), get_color_profile_slot_b(0, 1 ));
		ColorNextNext = make_color_rgb(get_color_profile_slot_r(1, 1 ), get_color_profile_slot_g(1, 1 ), get_color_profile_slot_b(0, 1 ));
	}
}
else {
	ColorPrev = make_color_rgb(get_color_profile_slot_r(color - 1, 1 ), get_color_profile_slot_g(color - 1, 1 ), get_color_profile_slot_b(color - 1, 1 ));
	ColorNext = make_color_rgb(get_color_profile_slot_r(color + 1, 1 ), get_color_profile_slot_g(color + 1, 1 ), get_color_profile_slot_b(color + 1, 1 ));
	ColorNextNext = make_color_rgb(get_color_profile_slot_r(color + 2, 1 ), get_color_profile_slot_g(color + 2, 1 ), get_color_profile_slot_b(color + 2, 1 ));
}

// Color name Display
switch(color) {
		case 0:
	name = " 1: Mimikyu"; 
	position = 0;
	set_character_color_slot(2, 226, 217, 175 ); //Belly (ColorMap)
	set_character_color_slot(3, 42, 41, 39 ); //Ears (ColorMap)
		break;
	
		case 1: 
	name = " 2: Pika"; 
	position = 1;
		break;
	
		case 2: 
	name = " 3: Raichu"; 
	position = 2;
		break;
	
		case 3: 
	name = " 4: Alolan Raichu"; 
	position = 3;
		break;
		
		case 4: 
	name = " 5: Pichu"; 
	position = 4;
		break;
	
		case 5: 
	name = " 6: Plusle"; 
	position = 5;
		break;
	
		case 6: 
	name = " 7: Minun"; 
	position = 6;
		break;
	
		case 7:
	name = " 8: Pachirisu"; 	
	position = 7;
		break;
	
		case 8: 
	name = " 9: Emolga"; 
	position = 8;
		break;
	
		case 9: 
	name = " 10: Dedenne"; 
	position = 9;
		break;
	
		case 10: 
	name = " 11: Togedemaru"; 
	position = 10;
		break;	
	
		case 11: 
	name = " 12: Morpeko"; 
	position = 11;
		break;
	
		case 12: 
	name = " 13: Pawmi"; 
	position = 12;
		break;	
		
		case 13: 
	name = " 14: Pikablu"; 
	position = 13;
		break;	
	
		case 14: 
	name = " 15: Gengar"; 
	position = 14;
		break;	
		
		case 15: 
	name = " 16: Banette"; 
	position = 15;
		break;
		
		case 16: 
	name = " 17: Rotom"; 
	position = 16;
		break;	
	
		case 17: 
	name = " 18: Cofagrigus"; 
	position = 17;
		break;	
		
		case 18: 
	name = " 19: Shiny"; 
	position = 18;
		break;	
		
		case 19: 
	name = " 20: Chandelure";
	position = 19;
		break;	
		
		case 20: 
	name = " 21: Minior"; 
	position = 20;
		break;	
		
		case 21: 
	name = " 22: Marshadow"; 
	position = 21;
		break;	
		
		case 22: 
	name = " 23: BLW"; 
	position = 22;
		break;	
		
		case 23: 
	name = " 24: Grass/Steel"; 
	position = 23;
		break;	
		
		case 24: 
	name = " 25: Ghost/Water"; 
	position = 24;
		break;	
}
