//draw_hud.gml
if(TCG_Kirby_Copy != -1){
draw_sprite_ext(sprite_get("hud_abilities"), TCG_Kirby_Copy, temp_x - 4, temp_y - 40, 2, 2, 0,c_white, 1);
} else {
draw_sprite_ext(sprite_get("hud_abilities"), 16, temp_x - 4, temp_y - 40, 2, 2, 0,c_white, 1);
}
draw_sprite_ext(sprite_get("hud_abilities_overlay"), 0, temp_x - 4, temp_y - 40, 2, 2, 0,get_player_hud_color(player), 1);


if (TCG_Kirby_Copy > 0){

	var copyAbilityNameAlphaThing = 0;
	if (copyAbilityActuallyHasTimer <= 10){//>
		copyAbilityNameAlphaThing = (copyAbilityActuallyHasTimer / 10);
	} else if (copyAbilityActuallyHasTimer > (60 * 3) && copyAbilityActuallyHasTimer < ((60 * 3) + 10)){//>
		copyAbilityNameAlphaThing = ((copyAbilityActuallyHasTimer - (60 * 3)) / 10);
	} else if (copyAbilityActuallyHasTimer > 10 && copyAbilityActuallyHasTimer <= (60 * 3)){//>
		copyAbilityNameAlphaThing = 1;
	} else {
		copyAbilityNameAlphaThing = 0;
	}

	//draw_debug_text(temp_x+4,temp_y-52,copyAbilityNames[TCG_Kirby_Copy]);
	
	if (copyAbilityNameAlphaThing > 0){
		textDraw(temp_x + 46, temp_y - 52, "fName", c_white, 0, 1000, 1, true, copyAbilityNameAlphaThing, string(copyAbilityNames[TCG_Kirby_Copy]));
	}
	/*
	textDraw(temp_x + 2 + ((player==0)?32:0),
	temp_y + 130,
	"fName",
	c_white,
	0,
	1000,
	1,
	true,
	1,
	"" + (alt_cur < 9 ? "" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
	*/
}

if (TCG_Kirby_Copy == 11){
	if (mike_level == 1){
		draw_debug_text(temp_x+4,temp_y-32,"3")
	} else if (mike_level == 2){
		draw_debug_text(temp_x+4,temp_y-32,"2")
	} else if (mike_level == 3){
		draw_debug_text(temp_x+4,temp_y-32,"1")
	}
}

if (get_match_setting(SET_PRACTICE)){
	draw_debug_text(temp_x+70,temp_y-32," Hold Up + Taunt to")
	draw_debug_text(temp_x+70,temp_y-16,"select a Copy Ability!")
}

/*
draw_debug_text(temp_x,temp_y,"these numbers are for debugging.")
draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp))
draw_debug_text(temp_x, temp_y-80,"Free: " + string(free) + "    spr_dir: " + string(spr_dir))
*/

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);