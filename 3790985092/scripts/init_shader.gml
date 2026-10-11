//init_shader

switch(get_player_color( player )) {		
	case 0:
		set_character_color_slot(0, 255, 255, 255, 1); //White
		set_character_color_slot(1, 139, 155, 180, 1); //Shirt
		set_character_color_slot(2, 139, 155, 180, 1); //Shoes
		set_character_color_slot(3, 254, 174, 52, 1); //Eyes
		set_character_color_slot(4, 239, 174, 61, 1); //Ink
		set_character_color_slot(5, 38, 43, 68, 1); //Black
		set_character_color_slot(6, 139, 155, 180, 1); //Grey
		set_character_color_slot(7, 194, 133, 105, 1); //Skin

		set_article_color_slot( 5, 87, 114, 119, 1 ); //shoe shine
		set_article_color_slot( 6, 0, 0, 0, 1 ); //black
	break;
}