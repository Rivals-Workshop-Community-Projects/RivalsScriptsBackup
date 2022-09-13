if("suitcaseLevel" in self){
	var lvXPos;
	draw_set_halign(fa_left);
	if(suitcaseLevel <= 9){
		textDraw(temp_x + 160, temp_y + 9, "fName", c_aqua, 0, 1000, 1, true, 1, "Lv." + string(suitcaseLevel));
	} else {
		textDraw(temp_x + 154, temp_y + 9, "fName", c_aqua, 0, 1000, 1, true, 1, "Lv." + string(suitcaseLevel));
	}
}

//var draw_opac = 1;
//if (get_gameplay_time() < 10) draw_opac = ease_linear(0, 1, get_gameplay_time(), 10);

var chat_width = 360;
var chat_y = 16;
var chat_tmr_max = 300;


if(sayonara == 1){
	suppress_stage_music(0.1, 0.04);
	textDraw(6, chat_y + 2, "medFont", c_white, 14, chat_width - 12, 1, true, 1, "An exception has occured.");
	textDraw(6, chat_y + 24, "fName", c_silver, 14, chat_width - 12, 1, true, 1, "File scripts/death.gml, line 11" + chr(10) + "See gamelog.txt for details.");
	draw_sprite(sprite_get("hud2"), 1, temp_x + 30, temp_y + 8);
	
	if(get_gameplay_time() >= 150 + sayoTimer){
		sayonara = 0;
	} else if(get_gameplay_time() == 5 + sayoTimer){
		sound_play(asset_get("sfx_syl_promo1"), false, -1, 0.75, 2);
	}
	print_debug(sayoTimer);
}

//grad icon
if(GAUGE_EXP_CURRENT < 50){
	draw_sprite(sprite_get("gauge"), GAUGE_EXP_CURRENT, temp_x + 28, temp_y + 22);
} else {
	draw_sprite(sprite_get("gauge"), 50, temp_x + 28, temp_y + 22);
	draw_sprite(sprite_get("gaugegrad"), GAUGE_EXP_CURRENT - 50, temp_x + 28, temp_y + 22);
}
/*
if(item[8,3] == 1){
	draw_sprite(item[8,4], 1, temp_x + 40, temp_y + 48);
}
*/

if(newItemHUDRefresh){
	//var randRuneIndex, runeChosen, canBuyBlink;
	canBuyBlink = -1;
	for(d = 0; d < displaySlot; d++){
		if (d < 10){
			if(item[itemsDisplayed[d], 3] == 2){
				draw_sprite_ext( item[itemsDisplayed[d], 4], 1, temp_x + (210 - (22 * d)), temp_y + 4, 1, 1, 1, c_red, 0.8);
			} else {
				draw_sprite( item[itemsDisplayed[d], 4], 1, temp_x + (210 - (22 * d)), temp_y + 4);
			}
		} else if (d >= 10 && d < 20){
			if(item[itemsDisplayed[d], 3] == 2){
				draw_sprite_ext( item[itemsDisplayed[d], 4], 1, temp_x + (420 - (22 * d)), temp_y - 12, 1, 1, 1, c_red, 0.8);
			} else {
				draw_sprite( item[itemsDisplayed[d], 4], 1, temp_x + (420 - (22 * d)), temp_y - 12);
			}
		} else {
			if(item[itemsDisplayed[d], 3] == 2){
				draw_sprite_ext( item[itemsDisplayed[d], 4], 1, temp_x + (650 - (22 * d)), temp_y - 28, 1, 1, 1, c_red, 0.8);
			} else {
				draw_sprite( item[itemsDisplayed[d], 4], 1, temp_x + (650 - (22 * d)), temp_y - 28);
			}
		}
	}
	if(IDLockedIn && item[ID_chosen, 4] != false){
		if(get_gameplay_time() mod 20 <= 9){
			canBuyBlink *= -1;
		}
		if (displaySlot < 10){
			draw_sprite_ext( item[ID_chosen, 4], 1, temp_x + (210 - (22 * displaySlot)), temp_y + 4, 1, 1, 1, (itemCredits >= 1 && canBuyBlink < 0) ? $ffddf6 : $996b8d, 0.5);
		} else if (displaySlot >= 10 && displaySlot < 20) {
			draw_sprite_ext( item[ID_chosen, 4], 1, temp_x + (420 - (22 * displaySlot)), temp_y - 12, 1, 1, 1, (itemCredits >= 1 && canBuyBlink < 0) ? $ffddf6 : $996b8d, 0.5 );
		} else {
			draw_sprite_ext( item[ID_chosen, 4], 1, temp_x + (650 - (22 * displaySlot)), temp_y - 28, 1, 1, 1, (itemCredits >= 1 && canBuyBlink < 0) ? $ffddf6 : $996b8d, 0.5 );
		}
	}
	
	// if(itemCredits > 0){
	//	randRuneIndex = random_func(0, 8, true);
	//	for(e = 0; e < itemCredits; e++){
	//		runeChosen = randRuneIndex;
	//		if (e < 10){
	//			draw_sprite(sprite_get("mini_rune"), randRuneIndex, temp_x + (210 - (22 * (displaySlot + e))), temp_y + 4);
	//		} else {
	//			draw_sprite(sprite_get("mini_rune"), randRuneIndex, temp_x + (420 - (22 * (displaySlot + e))), temp_y - 12);
	//		}
	//	}
	// }
}

if(practice && player == 1){
    draw_debug_text( temp_x - 170, temp_y + 5,("Press Taunt + Parry"));
    draw_debug_text( temp_x - 170, temp_y + 25,("to toggle max XP"));
}

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if (argument[7]){
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);