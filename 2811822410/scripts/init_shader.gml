var is_oc = false;
if (!is_oc) {
	switch(get_player_color(player)) { 
	case 0:
		set_character_color_slot(	0, 135, 233, 242 ); //Hair
		set_character_color_slot(	1, 135, 233, 242 ); //Eyes
		set_character_color_slot(	2, 193, 193, 193 ); //Shirt1
		set_character_color_slot(	3, 140, 141, 147 ); //Shirt2
		set_character_color_slot(	4, 135, 233, 242 ); //Tie
		set_character_color_slot(	5, 71, 77, 81 ); //Skirt1
		set_character_color_slot(	6, 48, 54, 61 ); //Skirt 2
		set_character_color_slot(	7, 88, 170, 188 ); //Skirt 3
	break;
	/*
	case 25:
		switch(get_player_name(player)) {
			case "BLUE":
				susAlt(0, 0, 255);
			break;
			case "GREEN":
				susAlt(5, 137, 0);
			break;
			case "LIME":
				susAlt(0, 255, 0);
			break;
			case "PINK":
				susAlt(255, 135, 231);
			break;
			case "BROWN":
				susAlt(130, 50, 0);
			break;
			case "CYAN":
			case "NOAH":
				susAlt(0, 255, 242);
			break;
		}
	break;
	*/
	case 31: //Rainbow
		if
			(
				(get_player_name(player) == "NOAH") ||
				(get_player_name(player) == "HP") || 
				(get_player_name(player) == "HEALTH")
			)
		{
			healthAlt(0);
			healthAlt(1);
			healthAlt(4);
			healthAlt(7);
		} else {
			rainbowAlt(0);
			rainbowAlt(1);
			rainbowAlt(4);
			rainbowAlt(7);
		}
	break;
	/*
	case 31:
		playerAlt(0);
		playerAlt(1);
		playerAlt(4);
		playerAlt(6);
	break;
	*/
	default:
	break;
	}
} else {
	switch(get_player_color(player)) { 
		case 0:
			set_character_color_slot( 0, 77, 83, 87 ); //Hat
			set_character_color_slot( 1, 143, 79, 11 ); //Hair
			set_character_color_slot( 2, 255, 228, 191 ); //Skin
			set_character_color_slot( 3, 143, 79, 11 ); //Eyes
			set_character_color_slot( 4, 80, 117, 212 ); //Shirt
			set_character_color_slot( 5, 77, 83, 87 ); //Apron
			set_character_color_slot( 6, 212, 64, 64 ); //Meat 1
			set_character_color_slot( 7, 77, 83, 87 ); //Shoes
		break;
		case 10: //Home Depot
		//
		break;
		default:
			set_character_color_shading( 0, 2 );
			set_character_color_shading( 5, 2 );
			set_character_color_shading( 7, 2 );
		break;
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
	//The rainbow alt works dumbass you're just using your name. Don't waste another 15 minutes searching for bugs and start searching for some bitches. BTW it changes color with your %. You made the character I should know I made it.
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
	//print(_col)
	set_character_color_slot( profileNum, colour_get_red(_col), colour_get_green(_col), colour_get_blue(_col)); 
}