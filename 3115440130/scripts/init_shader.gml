//init-shader

var alt_cur = get_player_color(player);

//colour shading
switch alt_cur {
	
	case 13:
	//EA and NES
	for(var i = 0; i < 8; i++){
		set_character_color_shading(i, 0);
	}
	break;
	
}