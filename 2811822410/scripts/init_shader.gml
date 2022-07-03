switch(get_player_color(player)) { 
case 0:
	set_character_color_slot( 0, 135, 233, 242 ); //Hair
	set_character_color_slot( 1, 135, 233, 242 ); //Eyes
	set_character_color_slot( 2, 193, 193, 193 ); //Shirt1
	set_character_color_slot( 3, 140, 141, 147 ); //Shirt2
	set_character_color_slot( 4, 135, 233, 242 ); //Tie
	set_character_color_slot( 5, 71, 77, 81 ); //Skirt1
	set_character_color_slot( 6, 88, 170, 188 ); //Skirt2
break;
case 28:
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
		healthAlt(6);
	} else {
		rainbowAlt(0);
		rainbowAlt(1);
		rainbowAlt(4);
		rainbowAlt(6);
	}
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