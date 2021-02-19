switch(get_player_color(player)){
	case 7:
		set_character_color_shading(1, 0);
	case 2:
	case 4:
	case 13:
	case 14:
		set_character_color_shading(0, 0);
		break;
	case 15:
		switch(get_match_setting(SET_SEASON)){
			case 1:
			case 3:
				set_character_color_shading(0, 0);
		}
}