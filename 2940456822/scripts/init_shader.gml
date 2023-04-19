switch(get_player_color(player)) { 
	case 0:
		set_character_color_slot(0, 64, 51, 83 ); //Hair L
		set_character_color_slot(1, 64, 51, 83 ); //Hair R
		set_character_color_slot(2, 36, 159, 222 ); //Shell
		set_character_color_slot(3, 255, 213, 65 ); //Shirt L
		set_character_color_slot(4, 249, 163, 27 ); //Shirt D
		set_character_color_slot(5, 250, 106, 10 ); //Shirt H
		set_character_color_slot(6, 255, 213, 65 ); //Pant L
		set_character_color_slot(7, 249, 163, 27 ); //Pant D
	break;
	default:
	break;
}


//Stuff
if ("spr_dir" in self) {
	if (spr_dir == 1) {
		set_character_color_slot(0, clam_hair_colors[0, 0], clam_hair_colors[0, 1], clam_hair_colors[0, 2]); //Hair L
		set_character_color_slot(1, clam_hair_colors[1, 0], clam_hair_colors[1, 1], clam_hair_colors[1, 2]); //Hair R
	} else {
		set_character_color_slot(0, clam_hair_colors[1, 0], clam_hair_colors[1, 1], clam_hair_colors[1, 2]); //Hair R
		set_character_color_slot(1, clam_hair_colors[0, 0], clam_hair_colors[0, 1], clam_hair_colors[0, 2]); //Hair L
	}
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