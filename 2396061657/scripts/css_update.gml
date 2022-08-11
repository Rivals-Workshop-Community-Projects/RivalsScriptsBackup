
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
	name = " 1: Date Girl"; 
	position = 0;
		break;
	
		case 1: 
	name = " 2: Mermaid"; 
	position = 1;
		break;
	
		case 2: 
	name = " 3: Spice"; 
	position = 2;
		break;
	
		case 3: 
	name = " 4: Druid"; 
	position = 3;
		break;
		
		case 4: 
	name = " 5: Royal"; 
	position = 4;
		break;
	
		case 5: 
	name = " 6: Ghost"; 
	position = 5;
		break;
	
		case 6: 
	name = " 7: Event"; 
	draw_sprite_ext( sprite_get("css_cal_icon"), 0, x + 176, y + 108, 1, 1, 0, c_white, 1);
	position = 6;
		break;
	
		case 7:
	name = " 8: LR 35902"; 	
	if (get_player_color(player) == 7){
		for(i = 0; i < 8; i++){
			set_character_color_shading(i, 0);
		}
	}
	position = 7;
		break;
	
		case 8: 
	name = " 9: Pride"; 
	position = 8;
		break;
	
		case 9: 
	name = " 10: No. 10"; 
	position = 9;
		break;
	
		case 10: 
	name = " 11: Miku CV01"; 
	position = 10;
		break;	
	
		case 11: 
	name = " 12: DateTaker"; 
	position = 11;
		break;
	
		case 12: 
	name = " 13: Digital Girl"; 
	position = 12;
		break;	
		
		case 13: 
	name = " 14: Acidic.of"; 
	position = 13;
	draw_sprite_ext( sprite_get("acidchar"), 0, x + 70, y + 48, 1, 1, 0, c_white, 1);
		break;	
	
		case 14: 
	name = " 15: Syu Madness"; 
	position = 14;
		break;	
		
		case 15: 
	name = " 16: Date_Girl.chr"; 
	position = 15;
		break;
		
		case 16: 
	name = " 17: Date.GIF"; 
	position = 16;
		break;	
	
		case 17: 
	name = " 18: Breaker"; 
	position = 17;
		break;	
		
		case 18: 
	name = " 19: Metallic"; 
	position = 18;
		break;	
		
		case 19:
	name = " 20: Anarchy";
	position = 19;
		break;
		
		case 20: 
	name = " 21: Deputy"; 
	position = 20;
		break;	
		
		case 21: 
	name = " 22: Inked Up"; 
	position = 21;
		break;	
		
		case 22: 
	name = " 23: February"; 
	position = 22;
		break;	
		
		case 23: 
	name = " 24: Osohe"; 
	position = 23;
		break;	
		
		case 24: 
	name = " 25: Apostle"; 
	position = 24;
		break;	
		
		case 25: 
	name = " 26: Everything"; 
	position = 25;
		break;
		
		case 26: 
	name = " 27: Abyss"; 
	position = 26;
		break;
		
		case 27: 
	name = " 28: Virtual"; 
	position = 27;
		break;	
}

// Version Display // -------------------------------------------------------------------------------------
