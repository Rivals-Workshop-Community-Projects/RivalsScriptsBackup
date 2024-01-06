//init_shader.gml

var alt_cur = get_player_color(player);


//colour shading
switch alt_cur {
	default:
	break;
	
	//dark
	case 6:
	set_character_color_shading(0, 0.5);
	set_character_color_shading(7, 0.5);
	break;
	
	case 8:
	//EA
	for(var i = 0; i < 8; i++){
		set_character_color_shading(i, 0);
	}
	break;
	
	
}
