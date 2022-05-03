//css_draw

// Alert Sound
if (get_color_profile_slot_b(0, 7) == 233) {
    sound_play(sound_get("ui_alert"), false, 0);                                // Play Snake's CSS sound effect.
    set_color_profile_slot(0, 7, get_color_profile_slot_r(0, 7), get_color_profile_slot_g(0, 7), get_color_profile_slot_b(0, 7) + 1);
}

var temp_x = x + 10;
var temp_y = y + 10;

// Alt Costume Portraits
switch(get_player_color( player )) {											// Get the current palette

    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
        draw_sprite_ext(sprite_get("charselect_alt"),0,temp_x-2,temp_y-2,2,2,0,-1,1); // Pliskin Portrait
    break;
    
    default:
    	draw_sprite_ext(sprite_get("charselect"),0,temp_x-2,temp_y-2,2,2,0,-1,1); // Default Portrait
    break;
    
}

// Custom Text
var is_online = get_player_hud_color(player) == $64e542;
textDraw(x + 10, y + 127 - is_online * 12, "fName", c_white, 1000, 200, fa_left, 1, true, 1, "Loadout:", false);


//------------------------------------------------------
// Muno phone stuff (??order??)
//------------------------------------------------------
muno_event_type = 6;
user_event(14);

#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, get_size)

x1 = round(x1);
y1 = round(y1);

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
	for (i = -1; i < 2; i++) {
		for (j = -1; j < 2; j++) {
			draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
		}
	}
}

if alpha > 0.01 draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if get_size phone.last_text_size = [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
