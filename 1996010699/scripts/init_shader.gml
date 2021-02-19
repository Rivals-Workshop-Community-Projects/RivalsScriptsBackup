//champSlot = 1;

switch(get_player_color(player)){
	case 6:
		if("champSlot" in self && champSlot == -1){
			set_character_color_slot(0, 175, 189, 200, 0.69); //CASE
			set_color_profile_slot(6, 1, 90, 90, 90); //WHEELS
			set_character_color_slot(3, 58, 210, 228, 0.5); //CRYSTAL
			set_article_color_slot(3, 58, 210, 228, 0.5); //CRYSTAL PROJ & SHARDS
		} else {
			set_color_profile_slot(6, 0, 90, 90, 90); //CASE
			set_character_color_slot(1, 175, 189, 200, 0.69); //WHEELS
			set_character_color_slot(3, 58, 210, 228, 0.5); //CRYSTAL
			set_article_color_slot(3, 58, 210, 228, 0.5); //CRYSTAL PROJ & SHARDS
		}
		break;
	case 8:
		for(i = 0; i < 6; i++) {
			set_character_color_shading(i, 0);
		}
		break;
	case 14:
		for(i = 0; i < 6; i++) {
			set_character_color_shading(i, 0);
		}
		break;
	case 15:
		outline_color = [ 76, 53, 0 ];
		break;
}