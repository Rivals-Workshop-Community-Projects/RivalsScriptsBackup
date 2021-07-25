switch(get_player_color(player)) { 
case 0:
set_character_color_slot( 0, 141, 150, 153 ); //Pot
set_character_color_slot( 1, 175, 97, 1 ); //Hair
set_character_color_slot( 2, 255, 191, 191 ); //Nose
set_character_color_slot( 3, 255, 233, 209 ); //Skin
set_character_color_slot( 4, 235, 250, 255 ); //Shirt
set_character_color_slot( 5, 50, 102, 150 ); //Pants
set_character_color_slot( 6, 185, 152, 129 ); //Shoe1

break;
case 20:
blastAlt(4)
//healthAlt(4)
break;
default:
break;

}


/*
if (get_player_color(player) == 7){
		for(i = 0; i < 4; i++){
		if i != 2 {
			set_character_color_shading(i, 0);
		}
	}
}
*/





//Dino Cool Alt Pack


#define blastAlt(profileNum)  
set_character_color_slot( argument[0], (round((abs((room_width / 2) - x) % 1027) / 4)), (196 - round((abs((room_width / 2) - x) % 1027) / 4)), 0 ); //Pant

#define healthAlt(profileNum)  
set_character_color_slot( argument[0], (get_player_damage(player)), (196 - get_player_damage(player)), 0 ); //Pant