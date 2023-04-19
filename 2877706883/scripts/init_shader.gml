switch(get_player_color(player)) { 
	case 0:
		set_character_color_slot(0, 255, 216, 79 ); //Yellow1
		set_character_color_slot(1, 220, 179, 35 ); //Yellow2
		set_character_color_slot(2, 66, 66, 66 ); //Green1
		set_character_color_slot(3, 42, 46, 42 ); //Green2
		set_character_color_slot(4, 222, 103, 27 ); //Purple1
		set_character_color_slot(5, 188, 57, 9 ); //Purple2
		set_character_color_slot(6, 239, 228, 175 ); //Scarf
		set_character_color_slot(7, 212, 198, 131 ); //Scraf2
	break;
	default:
	break;
}


//Dino Cool Alt Pack

#define blastAlt(profileNum)  
	set_character_color_slot( argument[0], (round((abs((room_width / 2) - x) % 1027) / 4)), (196 - round((abs((room_width / 2) - x) % 1027) / 4)), 0 ); 

#define healthAlt(profileNum)  
	var formula = clamp((130 - get_player_damage(player)) * (256/360), 0, 130)
	var temp_color = make_color_hsv(formula, 255, 255)
	set_character_color_slot( argument[0], color_get_red(temp_color), color_get_green(temp_color), color_get_blue(temp_color)); 

#define rainbowAlt(profileNum)
	set_character_color_slot( argument[0], color_r, color_g, color_b); 
	
#define susAlt(color_r, color_g, color_b) {
	set_character_color_slot( 0, color_r, color_g, color_b); 
	set_character_color_slot( 2, color_r, color_g, color_b); 
	set_character_color_slot( 5, color_r, color_g, color_b); 
	var temp_color = make_colour_rgb(color_r, color_g, color_b);
	var _hue = colour_get_hue(temp_color);
	var _sat = color_get_saturation(temp_color);
	var _val = color_get_value(temp_color);
	var _col = make_colour_hsv(_hue, ((_sat - 30) % 255), ((_val - 70) % 255));
	
	set_character_color_slot( 3, colour_get_red(_col), colour_get_green(_col), colour_get_blue(_col)); 
}

#define playerAlt(profileNum) {
	var _col = get_player_hud_color(player);
	print(_col)
	set_character_color_slot( profileNum, colour_get_red(_col), colour_get_green(_col), colour_get_blue(_col)); 
}