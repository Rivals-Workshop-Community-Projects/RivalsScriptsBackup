if "alt" not in self exit;

switch alt {
    case 1:
	    set_ui_element( UI_CHARSELECT, sprite_get( "_css_chill" ));
	    set_ui_element( UI_WIN_PORTRAIT, sprite_get( "_portrait_chill" ));
		set_ui_element( UI_WIN_SIDEBAR, sprite_get( "_results_chill" ));
	    set_ui_element( UI_HUD_ICON, sprite_get( "_hud_chill" ));
	    set_ui_element( UI_HUDHURT_ICON, sprite_get( "_hud_hurt_chill" ));
		set_ui_element( UI_OFFSCREEN, sprite_get( "_offscreen_chill" ));
	break;
    case 2:
	    set_ui_element( UI_CHARSELECT, sprite_get( "_css_scuttle" ));
	    set_ui_element( UI_WIN_PORTRAIT, sprite_get( "_portrait_scuttle" ));
		set_ui_element( UI_WIN_SIDEBAR, sprite_get( "_results_scuttle" ));
	    set_ui_element( UI_HUD_ICON, sprite_get( "_hud_scuttle" ));
	    set_ui_element( UI_HUDHURT_ICON, sprite_get( "_hud_hurt_scuttle" ));
		set_ui_element( UI_OFFSCREEN, sprite_get( "_offscreen_scuttle" ));
	break;
	case 3:
	    set_ui_element( UI_CHARSELECT, sprite_get( "_css_galoomber" ));
	    set_ui_element( UI_WIN_PORTRAIT, sprite_get( "_portrait_galoomber" ));
		set_ui_element( UI_WIN_SIDEBAR, sprite_get( "_results" ));
	    set_ui_element( UI_HUD_ICON, sprite_get( "_hud_galoomber" ));
	    set_ui_element( UI_HUDHURT_ICON, sprite_get( "_hud_hurt_galoomber" ));
		set_ui_element( UI_OFFSCREEN, sprite_get( "_offscreen_galoomber" ));
	break;
    case 12:
	    set_ui_element( UI_CHARSELECT, sprite_get( "_css_bandage" ));
	    set_ui_element( UI_WIN_PORTRAIT, sprite_get( "_portrait_bandage" ));
		set_ui_element( UI_WIN_SIDEBAR, sprite_get( "_results_bandage" ));
	    set_ui_element( UI_HUD_ICON, sprite_get( "_hud_bandage" ));
	    set_ui_element( UI_HUDHURT_ICON, sprite_get( "_hud_hurt_bandage" ));
		set_ui_element( UI_OFFSCREEN, sprite_get( "_offscreen_bandage" ));
	break;
	case 13:
	    set_ui_element( UI_CHARSELECT, sprite_get( "_css_puffer" ));
	    set_ui_element( UI_WIN_PORTRAIT, sprite_get( "_portrait_puffer" ));
		set_ui_element( UI_WIN_SIDEBAR, sprite_get( "_results_puffer" ));
	    set_ui_element( UI_HUD_ICON, sprite_get( "_hud_puffer" ));
	    set_ui_element( UI_HUDHURT_ICON, sprite_get( "_hud_hurt_puffer" ));
		set_ui_element( UI_OFFSCREEN, sprite_get( "_offscreen_puffer" ));
	break;
	case 14:
	default:
	    set_ui_element( UI_CHARSELECT, sprite_get( "_css" ));
	    set_ui_element( UI_WIN_PORTRAIT, sprite_get( "_portrait" ));
	    set_ui_element( UI_WIN_SIDEBAR, sprite_get( "_results" ));
	    set_ui_element( UI_HUD_ICON, sprite_get( "_hud" ));
		set_ui_element( UI_HUDHURT_ICON, sprite_get( "_hud_hurt" ));
		set_ui_element( UI_OFFSCREEN, sprite_get( "_offscreen" ));
	break;
	
}