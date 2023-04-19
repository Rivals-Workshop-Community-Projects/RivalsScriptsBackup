//champSlot = 1;

switch(get_player_color(player)){
	case 2:
		set_character_color_shading(4, 0.5);
		break;
	case 3:
		set_character_color_shading(2, 1.8);
		break;
	case 5:
		set_character_color_shading(2, 2.7);
		break;
	case 9:
		if("champSlot" in self && champSlot == -1){
			set_character_color_slot(0, 175, 189, 200, 0.69); //CASE
			set_character_color_slot(1, 76, 90, 105, 0.69); //CASE
			set_color_profile_slot(9, 2, 90, 90, 90); //WHEELS
			set_character_color_slot(4, 58, 210, 228, 0.69); //CRYSTAL
			set_article_color_slot(4, 58, 210, 228, 0.8); //CRYSTAL PROJ & SHARDS
		} else {
			set_color_profile_slot(9, 0, 90, 90, 90); //CASE
			set_color_profile_slot(9, 1, 24, 24, 31); //SHADOW
			set_character_color_slot(2, 175, 189, 200, 0.69); //WHEELS
			set_character_color_slot(4, 58, 210, 228, 0.69); //CRYSTAL
			set_article_color_slot(4, 58, 210, 228, 0.8); //CRYSTAL PROJ & SHARDS
		}
		break;
	case 14:
		for(i = 0; i < 6; i++) {
			set_character_color_shading(i, 0);
		}
		break;
	case 19:
		set_character_color_shading(0, 0.7);
		break;
	case 6:
		outline_color = [ 96, 37, 0 ];
		break;
	case 11:
		outline_color = [ 76, 53, 0 ];
		break;
	case 18:
		set_character_color_shading(2, 2.5);
		break;
	case 12:
		set_character_color_shading(0, 1.2);
		set_character_color_shading(2, -3);
		set_character_color_shading(4, 0.3);
		break;
	case 15:
		set_character_color_shading(0, 1.1);
		set_character_color_shading(2, -1);
		set_character_color_shading(4, 0);
		break;
}