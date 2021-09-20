//init-shader

var alt_cur = get_player_color(player);

//colour shading

//slot 6 = tunic
//slot 7 = wings
//slot 1  = hair

switch alt_cur {
	
	//reduced shading values
	
	//both
	case 0: //default
	case 2: //red
	case 7: //medusa
	case 10: //sephiroth
	case 13: //fleet
	set_character_color_shading(6, 0.5);
	set_character_color_shading(7, 0.5);
	break;
	
	//just tunic
	case 1: //blue
	case 5: //yellow
	case 8: //hades
	case 11: //zagreus
	set_character_color_shading(6, 0.5);
	break;
	
	//just wings
	case 4: //purple
	case 9: //pandora
	set_character_color_shading(7, 0.5);
	break;
	
	//no shading
	case 100:
	case 101:
	//EA and NES
	for(i = 0; i < 8; i++){
		set_character_color_shading(i, 0);
	}
	break;
	
	//double shading for hair
	case 7: //medusa
	case 8: //hades
	case 9: //pandora
	set_character_color_shading(1, 2);
	break;
	
	
}

//victory//stage select/css screen draw
if alt_cur == 0 && ((variable_instance_exists(self, "timer") && !(state == PS_PARRY && window == 1)) || object_index == asset_get("stage_HUD") || object_index == asset_get("cs_playerbg_obj") || object_index == asset_get("draw_result_screen") || object_index == asset_get("result_screen_box")) {
    set_character_color_slot(6, 48, 48, 61, 1);
	set_article_color_slot(6, 48, 48, 61, 1);
    set_character_color_slot(7, 48, 48, 61, 1);
    set_article_color_slot(7, 48, 48, 61, 1);
}