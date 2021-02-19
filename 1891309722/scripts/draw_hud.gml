//hi
var shouldHideHud = 0;
with (oPlayer) {
	if ("i_am_otto_the_billiard_biker" in self && frame_data_guide_state) {
		shouldHideHud = 1;
	}
}

if (shouldHideHud == 0) {
	if (get_player_color( player ) == 4) {
		if (comboBuffer == 0 && currentCombo == 0) {
			draw_sprite(sprite_get("hud0"), 0, temp_x+90, temp_y - 26);	
		} else if (currentCombo == 0) {
			draw_sprite(sprite_get("hud1chosenone"), comboCounterPlaceholder, temp_x+78, temp_y - 28);	
		} else if (currentCombo == 1) {
			draw_sprite(sprite_get("hud2chosenone"), comboCounterPlaceholder, temp_x+78, temp_y - 26);	
		} else if (currentCombo == 2) {
			draw_sprite(sprite_get("hud3chosenone"), comboCounterPlaceholder, temp_x+78, temp_y - 26);	
		} else if (currentCombo == 3) {
			draw_sprite(sprite_get("hud4chosenone"), comboCounterPlaceholder, temp_x+78, temp_y - 26);	
		} else {
			draw_sprite(sprite_get("hud5chosenone"), comboCounterPlaceholder, temp_x+106, temp_y - 26);	
		}

		draw_sprite(sprite_get("hudcombochosenone"), 0, temp_x+220, temp_y + 28);
	} else if (get_player_color( player ) == 3) {
		if (comboBuffer == 0 && currentCombo == 0) {
			draw_sprite(sprite_get("hud0"), 0, temp_x+90, temp_y - 26);	
		} else if (currentCombo == 0) {
			draw_sprite(sprite_get("hud1xmas"), comboCounterPlaceholder, temp_x+78, temp_y - 28);	
		} else if (currentCombo == 1) {
			draw_sprite(sprite_get("hud2xmas"), comboCounterPlaceholder, temp_x+78, temp_y - 26);	
		} else if (currentCombo == 2) {
			draw_sprite(sprite_get("hud3xmas"), comboCounterPlaceholder, temp_x+78, temp_y - 26);	
		} else if (currentCombo == 3) {
			draw_sprite(sprite_get("hud4xmas"), comboCounterPlaceholder, temp_x+78, temp_y - 26);	
		} else {
			draw_sprite(sprite_get("hud5xmas"), comboCounterPlaceholder, temp_x+106, temp_y - 26);	
		}

		draw_sprite(sprite_get("hudcomboxmas"), 0, temp_x+220, temp_y + 28);
	} else if (get_player_color( player ) == 2) {
		if (comboBuffer == 0 && currentCombo == 0) {
			draw_sprite(sprite_get("hud0"), 0, temp_x+90, temp_y - 26);	
		} else if (currentCombo == 0) {
			draw_sprite(sprite_get("hud1g7"), comboCounterPlaceholder, temp_x+78, temp_y - 28);	
		} else if (currentCombo == 1) {
			draw_sprite(sprite_get("hud2g7"), comboCounterPlaceholder, temp_x+78, temp_y - 26);	
		} else if (currentCombo == 2) {
			draw_sprite(sprite_get("hud3g7"), comboCounterPlaceholder, temp_x+78, temp_y - 26);	
		} else if (currentCombo == 3) {
			draw_sprite(sprite_get("hud4g7"), comboCounterPlaceholder, temp_x+78, temp_y - 26);	
		} else {
			draw_sprite(sprite_get("hud5g7"), comboCounterPlaceholder, temp_x+106, temp_y - 26);	
		}

		draw_sprite(sprite_get("hudcombog7"), 0, temp_x+220, temp_y + 28);
	} else {
		if (comboBuffer == 0 && currentCombo == 0) {
			draw_sprite(sprite_get("hud0"), 0, temp_x+90, temp_y - 26);	
		} else if (currentCombo == 0) {
			draw_sprite(sprite_get("hud1"), comboCounterPlaceholder, temp_x+78, temp_y - 28);	
		} else if (currentCombo == 1) {
			draw_sprite(sprite_get("hud2"), comboCounterPlaceholder, temp_x+78, temp_y - 26);	
		} else if (currentCombo == 2) {
			draw_sprite(sprite_get("hud3"), comboCounterPlaceholder, temp_x+78, temp_y - 26);	
		} else if (currentCombo == 3) {
			draw_sprite(sprite_get("hud4"), comboCounterPlaceholder, temp_x+78, temp_y - 26);	
		} else {
			draw_sprite(sprite_get("hud5"), comboCounterPlaceholder, temp_x+106, temp_y - 26);	
		}

		draw_sprite(sprite_get("hudcombo"), 0, temp_x+220, temp_y + 28);
	}
}

if (currentCombo > 4 || shouldHideHud == 1) {
	if (comboBuffer == 0) {
		draw_debug_text( temp_x+170, temp_y + 28, "0");	
	} else {
		draw_debug_text( temp_x+170, temp_y + 28, string( currentCombo + 1 ));
	}
}


if ("enemykirby" in self && enemykirby != undefined) { //if kirby is in a match & swallowed
	var hudspr = sprite_get("hudcombokirby");
	var hud0 = sprite_get("hud0");
	var hud1 = sprite_get("hud1kirby");
	var hud2 = sprite_get("hud2kirby");
	var hud3 = sprite_get("hud3kirby");
	var hud4 = sprite_get("hud4kirby");
	var hud5 = sprite_get("hud5kirby");
	with oPlayer { //Run through all players
		if (get_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES) == 419 && current_ability == 16) {			
			if (comboBuffer < 0) {
				draw_sprite(hud0, 0, temp_x+90, temp_y - 26);	
			} else if (currentCombo == 0) {
				draw_sprite(hud1, comboCounterPlaceholder, temp_x+78, temp_y - 28);	
			} else if (currentCombo == 1) {
				draw_sprite(hud2, comboCounterPlaceholder, temp_x+78, temp_y - 26);	
			} else if (currentCombo == 2) {
				draw_sprite(hud3, comboCounterPlaceholder, temp_x+78, temp_y - 26);	
			} else if (currentCombo == 3) {
				draw_sprite(hud4, comboCounterPlaceholder, temp_x+78, temp_y - 26);	
			} else {
				draw_sprite(hud5, comboCounterPlaceholder, temp_x+106, temp_y - 26);	
			}
			
			draw_sprite(hudspr, 0, temp_x + 220, temp_y + 28);	
		}
	}
}


/*

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

*/