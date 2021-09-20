//init-shader

var alt_cur = get_player_color(player);
if alt_cur == 0 && variable_instance_exists(self, "timer") && !(state == PS_PARRY && window == 1) {
    set_character_color_slot(6, 255, 255, 255, 1);
    set_character_color_slot(7, 255, 255, 255, 1);
}

//colour shading
switch alt_cur {
	case 0: //default
	set_character_color_shading(6, 1.2);
	set_character_color_shading(7, 1.2);
	break;
	
	case 7: //dpit
	set_character_color_shading(1, 0.5);
	set_character_color_shading(6, 0.5);
	set_character_color_shading(7, 0.5);
	break;
	
	case 5: //black
	set_character_color_shading(1, 0.5);
	set_character_color_shading(6, 0.5);
	set_character_color_shading(7, 1.2);
	break;
	
	case 11:
	case 12:
	//EA and NES
	for(i = 0; i < 8; i++){
		set_character_color_shading(i, 0);
	}
	break;
	
	case 13: //wrastor
	set_character_color_shading(6, 0.5);
	break;
	
	case 14: //mollo
	set_character_color_shading(6, 0.5);
	set_character_color_shading(7, 0.5);
	break;
	
	case 15: //AR
	set_character_color_shading(6, 0.5);
	break;
	
}

//victory/css/stage select screen draw

if object_index == asset_get("stage_HUD") || object_index == asset_get("cs_playerbg_obj") || object_index == asset_get("draw_result_screen") || object_index == asset_get("result_screen_box") {
	if alt_cur == 0 {
		set_character_color_slot(6, 255, 255, 255, 1);
		set_article_color_slot(6, 255, 255, 255, 1);
	    set_character_color_slot(7, 255, 255, 255, 1);
	    set_article_color_slot(7, 255, 255, 255, 1);
	}
}

if alt_cur == 0 {
	set_character_color_slot(6, 255, 255, 255, 1);
	set_article_color_slot(6, 255, 255, 255, 1);
    set_character_color_slot(7, 255, 255, 255, 1);
    set_article_color_slot(7, 255, 255, 255, 1);
}
