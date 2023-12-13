var real_player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : player;
var alt_palette = get_player_color( real_player );

switch alt_palette {
    case -1:
	    set_character_color_slot(0, 19, 73, 255, 1);
		set_character_color_slot(1, 7, 31, 109, 1);
	    set_character_color_slot(4, 188, 120, 3, 1);
		set_article_color_slot(0, 19, 73, 255, 1);
		set_article_color_slot(1, 7, 31, 109, 1);
	    set_article_color_slot(4, 188, 120, 3, 1);
	break;
    case 1:
	    if object_index = oPlayer {
	        set_character_color_slot(2, 255, 160, 70, 0);
            set_character_color_slot(3, 88, 80, 252, 0.3);
		}
    case 18:
	case 22:
        set_character_color_shading( 2, 20 );
    break;
    case 2:
	    if object_index = oPlayer {
	        set_character_color_slot(2, 255, 160, 70, 0);
            set_character_color_slot(3, 175, 0, 96, 0.3);
		}
    case 5:
    case 9:
    case 11:
    case 14:
    case 15:
    case 16:
        set_character_color_shading( 2, 8 );
    break;
	case 3:
	    if object_index = oPlayer {
	        set_character_color_slot(2, 255, 160, 70, 0);
	        set_character_color_slot(3, 87, 0, 25, 0.3);
		}
	break;
	case 12:
	    if object_index = oPlayer {
	        set_character_color_slot(2, 255, 160, 70, 0);
	        set_character_color_slot(3, 146, 105, 63, 0.3);
		}
	break;
	case 13:
	    if object_index = oPlayer {
	        set_character_color_slot(2, 255, 160, 70, 0);
	        set_character_color_slot(3, 31, 54, 134, 0.2);
		}
	break;
	case 17:
    case 21:
	    set_character_color_shading( 2, 5 );
	break;
	case 19:
	    set_character_color_shading( 1, 20 );
	    set_character_color_shading( 2, 20 );
	    set_character_color_shading( 4, 0 );
	    set_character_color_shading( 7, 20 );
	break;
	
	case 7:
	case 23:
	case 24:
	case 25:
	    for (var slot_num = 0; slot_num < 8; slot_num++) {
            set_character_color_shading( slot_num, 0 );
        }
	break;
}