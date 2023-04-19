
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
		ColorPrev = make_color_rgb(get_color_profile_slot_r(alts, 0 ), get_color_profile_slot_g(alts, 0 ), get_color_profile_slot_b(alts, 0 ));
		ColorNext = make_color_rgb(get_color_profile_slot_r(color + 1, 0 ), get_color_profile_slot_g(color + 1, 0 ), get_color_profile_slot_b(color + 1, 0 ));
		ColorNextNext = make_color_rgb(get_color_profile_slot_r(color + 2, 0 ), get_color_profile_slot_g(color + 2, 0 ), get_color_profile_slot_b(color + 2, 0 ));
	}
	if (color == alts - 1){
		ColorPrev = make_color_rgb(get_color_profile_slot_r(color - 1, 0 ), get_color_profile_slot_g(color - 1, 0 ), get_color_profile_slot_b(color - 1, 0 ));
		ColorNext = make_color_rgb(get_color_profile_slot_r(color + 1, 0 ), get_color_profile_slot_g(color + 1, 0 ), get_color_profile_slot_b(color + 1, 0 ));
		ColorNextNext = make_color_rgb(get_color_profile_slot_r(0, 0 ), get_color_profile_slot_g(0, 0 ), get_color_profile_slot_b(0, 0 ));
	}
	if (color == alts){
		ColorPrev = make_color_rgb(get_color_profile_slot_r(color - 1, 0 ), get_color_profile_slot_g(color - 1, 0 ), get_color_profile_slot_b(color - 1, 0 ));
		ColorNext = make_color_rgb(get_color_profile_slot_r(0, 0 ), get_color_profile_slot_g(0, 0 ), get_color_profile_slot_b(0, 0 ));
		ColorNextNext = make_color_rgb(get_color_profile_slot_r(1, 0 ), get_color_profile_slot_g(1, 0 ), get_color_profile_slot_b(0, 0 ));
	}
}
else {
	ColorPrev = make_color_rgb(get_color_profile_slot_r(color - 1, 0 ), get_color_profile_slot_g(color - 1, 0 ), get_color_profile_slot_b(color - 1, 0 ));
	ColorNext = make_color_rgb(get_color_profile_slot_r(color + 1, 0 ), get_color_profile_slot_g(color + 1, 0 ), get_color_profile_slot_b(color + 1, 0 ));
	ColorNextNext = make_color_rgb(get_color_profile_slot_r(color + 2, 0 ), get_color_profile_slot_g(color + 2, 0 ), get_color_profile_slot_b(color + 2, 0 ));
}

// Color name Display
switch(color) {
		case 0:
	name = " 1: Tomo"; 
	position = 0;
		break;
	
		case 1: 
	name = " 2: Blueberry"; 
	position = 1;
		break;
	
		case 2: 
	name = " 3: Pomegranate"; 
	position = 2;
		break;
	
		case 3: 
	name = " 4: Melon"; 
	position = 3;
		break;
		
		case 4: 
	name = " 5: Blackberry"; 
	position = 4;
		break;
	
		case 5: 
	name = " 6: Eggplant"; 
	position = 5;
		break;
	
		case 6: 
	name = " 7: Abyssmato"; 
	position = 6;
		break;
	
		case 7:
	name = " 8: Retromato"; 	
	if (get_player_color(player) == 7){
		for(i = 0; i < 8; i++){
			set_character_color_shading(i, 0);
		}
	}
	position = 7;
		break;
	
		case 8: 
	name = " 9: Pumpkin"; 
	position = 8;
		break;
	
		case 9: 
	name = " 10: Lemon"; 
	position = 9;
		break;
	
		case 10: 
	name = " 11: Cotton Candy"; 
	position = 10;
		break;	
	
		case 11: 
	name = " 12: Pogg"; 
	position = 11;
		break;
	
		case 12: 
	name = " 13: Puff"; 
	position = 12;
		break;	
		
		case 13: 
	name = " 14: Datemato"; 
	position = 13;
		break;	
	
		case 14: 
	name = " 15: Event"; 
	position = 14;
	draw_sprite_ext( sprite_get("css_cal_icon"), 0, x + 176, y + 108, 1, 1, 0, c_white, 1);
		break;	
		
		case 15: 
	name = " 16: Vapor"; 
	position = 15;
		break;	
}

// Version Display // -------------------------------------------------------------------------------------
