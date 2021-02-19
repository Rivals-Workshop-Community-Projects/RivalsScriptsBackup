//draw_hud.gml

if (!abyssEnabled) {
	if (easter_egg_timer <= 90 && !falco && balanced_fox) {
		draw_debug_text(temp_x, temp_y - 16, "Press special for Falco mode");
		draw_debug_text(temp_x, temp_y - 34, "Press dodge for melee mode");
	}
	if (!balanced_fox && !falco) {
		if (easter_egg_timer <= 90) {
		draw_debug_text(temp_x, temp_y - 34, "Press special for Falco mode")
		draw_debug_text(temp_x, temp_y - 16, "Press attack to cancel");
		}
		draw_sprite(sprite_get("melee_fox"), 1, temp_x + 182, temp_y - 26);
	}
	if (falco) {
		if (easter_egg_timer <= 90) {
		draw_debug_text(temp_x, temp_y - 16, "Press attack to cancel")
		draw_debug_text(temp_x, temp_y - 34, "Press dodge for melee mode");
		}
		draw_sprite(sprite_get("falco"), 1, temp_x + 182, temp_y - 26);
	}
	var fox = self;
    var fox_url = url;
	var melee_timer = easter_egg_timer;
	with (oPlayer) {
		if (self != fox) {
			if ("temp_x" in self) {
				if ((url == fox_url || url == 2006251771) && melee_timer <= 90) {
					draw_debug_text(temp_x, temp_y - 52, "Press attack to disable modes")
				}
				else if (melee_timer <= 90) {
					draw_debug_text(temp_x, temp_y - 16, "Press attack to disable modes");
				}
			}
		}
	}
	
	if ("is_ai" not in self) {
		if (!experimental_music && music_text) {
			draw_debug_text(temp_x, temp_y - 72, "Press jump to enable music");
		} else if (experimental_music && music_text) {
			draw_debug_text(temp_x, temp_y - 72, "Press jump to disable music");
		}
	} else {
		with (oPlayer) if (self != fox) {
			if ("temp_x" in self) {
				if (!other.experimental_music && other.music_text) {
					draw_debug_text(temp_x, temp_y - 72, "Press jump to enable music");
				} else if (other.experimental_music && other.music_text) {
					draw_debug_text(temp_x, temp_y - 72, "Press jump to disable music");
				}
			}
		}
	}
} else {
	falco = false;
	balanced_fox = true;
	easter_egg_timer = 91;
}

if (sunglasses) {
	if ((state_cat == SC_HITSTUN && state != PS_HITSTUN_LAND) || activated_kill_effect || state == PS_DEAD) {
		draw_sprite(sprite_get("sg_hurt"), 0, temp_x + 6, temp_y + 8);
	} else {
		draw_sprite(sprite_get("sg_idle"), 0, temp_x + 2, temp_y + 4);
	}
}

//abyss gui code
ab_hud_x = temp_x;
ab_hud_y = temp_y;
//this is for the outdated warning message
if ("depNotice" not in self) depNotice = 0;
if ("abyssEnabled" in self && abyssEnabled && (menuActive || timerActive)) abyssDraw();
#define abyssDraw 
/// abyssDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_drawArray" in self && ds_list_valid(abyss_drawArray))  {
    if (ds_list_size(abyss_drawArray) > 0) {
        for (var _i = 0; _i < ds_list_size(abyss_drawArray);_i++) {
            var _text = abyss_drawArray[| _i];
            if draw_get_halign() != _text[6] {
                draw_set_halign(_text[6]);
            }
            switch (_text[0]) {
                case 0:
                    draw_debug_text(floor(_text[1]),floor(_text[2]),string(_text[3]));
                    break;
                case 1:
                    draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
                    break;
                case 2:
                    draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
                    break;
                case 3:
                    if draw_get_font() != 1 draw_set_font(1);
            			draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
                    break;
                default:
                break;
            }
        }
    }
    //finished drawing, so clear the table for the next frame.
    ds_list_clear(abyss_drawArray);
}
//return draw_calls;
#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.
if draw_get_font() != argument[3] {
    draw_set_font(argument[3]);
}
draw_text_color(argument[0]+2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1],argument[2],argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,1);