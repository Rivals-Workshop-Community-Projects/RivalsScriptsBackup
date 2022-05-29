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
	rainbowAlt(0);
	rainbowAlt(1);
	rainbowAlt(4);
	rainbowAlt(6);
break;
default:
break;
}

//Dino Cool Alt Pack

#define blastAlt(profileNum)  
	set_character_color_slot( argument[0], (round((abs((room_width / 2) - x) % 1027) / 4)), (196 - round((abs((room_width / 2) - x) % 1027) / 4)), 0 ); 

#define healthAlt(profileNum)  
	set_character_color_slot( argument[0], (get_player_damage(player)), (196 - get_player_damage(player)), 0 ); 

#define rainbowAlt(profileNum)
	set_character_color_slot( argument[0], color_r, color_g, color_b); 