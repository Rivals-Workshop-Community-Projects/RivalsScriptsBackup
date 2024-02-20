// muno_event_type = 6;
// user_event(14);

var alt_cur = get_player_color(player);

if alt_cur == 8{//peppino's goggles and pants
    set_color_profile_slot( 0, 2, 141, 76, 69 );
    set_color_profile_slot_range( 2, 1, 1, 1 );
    set_color_profile_slot( 0, 1, 221, 42, 56 );
    set_color_profile_slot_range( 1, 23, 35, 62 );
} else{
    set_color_profile_slot( 0, 2, 66, 35, 49 );
    set_color_profile_slot_range( 2, 34, 6, 30 );
    set_color_profile_slot( 0, 1, 221, 42, 56 );
    set_color_profile_slot_range( 1, 12, 34, 38 );
}

var temp_x = x + 8;
var temp_y = y + 9;
shader_end();


//dispenser displayer
draw_sprite_ext(sprite_get("dispenser_gallery"), alt_cur, x + 4, y+35, 1, 1, 0, c_white, 1);

//changing alt sounds/notes
if change_alt_flag != alt_cur{
    if alt_cur = 0 or alt_cur = 7 or alt_cur = 8 or alt_cur = 15 or alt_cur = 16{
        sound_play(sound_get("alt_note1"), false, noone, 1.1);
    }
    if alt_cur = 1 or alt_cur = 6 or alt_cur = 9 or alt_cur = 14 or alt_cur = 17{
        sound_play(sound_get("alt_note2"), false, noone, 1.1);
    }
    if alt_cur = 2 or alt_cur = 5 or alt_cur = 10 or alt_cur = 13 or alt_cur = 18 or alt_cur = 21{
        sound_play(sound_get("alt_note3"), false, noone, 1.1);
    }
    if alt_cur = 3 or alt_cur = 4 or alt_cur = 11 or alt_cur = 12 or alt_cur = 19 or alt_cur = 20{
        sound_play(sound_get("alt_note4"), false, noone, 1.1);
    }
    if alt_cur == 7{
    	if get_synced_var (player) != 0{
			set_synced_var (player, 2);
			sound_play(sound_get("cd_sun"), false, noone, 0.8);
		}
	}
	if alt_cur == 8{
		if get_synced_var (player) != 0{
			set_synced_var (player, 3);
			sound_play(sound_get("pizza_parry"), false, noone, 0.7);
		}
	}
	if alt_cur < 7 or alt_cur > 8{
		if get_synced_var (player) > 1{
			set_synced_var (player, 1);
			sound_play(asset_get("mfx_option"))
			snd_rng = random_func(0, 4, true);
			if (snd_rng == 0) {
				sound_play(sound_get("v_yes1"));
			}else if (snd_rng == 1) {
				sound_play(sound_get("v_yes2"));
			}else if (snd_rng == 2) {
				sound_play(sound_get("v_yes3"));
			}else if (snd_rng == 3) {
				sound_play(sound_get("v_texasstyle"));
			}
		}
	}
    change_alt_flag = alt_cur;
}

//rectangles
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);

for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 8 * i;
	rectDraw(draw_x, temp_y + 137, draw_x + 4, temp_y + 140, draw_color);
}

draw_set_halign(fa_left);

//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);

//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));

//RGB/engineer gaming alt code
//rainbow 
if !("hue" in self) hue = 0
if get_player_color(player) = 21 {
//remember rivals starts with 0
	hue+=1 
	if hue>255 hue-=255;
	//make hue shift every step + loop around
 
	color_rgb=make_color_rgb(0, 255, 0);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(21, 1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	// set_color_profile_slot(24, 4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));



	//set the new color using rgb values from the gamemaker color
 
 
	color_rgb=make_color_rgb(0, 255, 0);
	//make a gamemaker color variable using kirby's default color (feet)
	//hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//kirby's feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(21, 1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	// set_color_profile_slot(21, 4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	}
//Keep repeating for every slot
init_shader();


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



#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);



// // Checks if the seventh slot of the first skins yellow shade is 255 (it is),
// // then plays the noise and sets the colour to 256. 256 rounds down to 255
// // in game automatically so there is no penalty to alts for using this method.
// if (get_color_profile_slot_b(9, 0) == 255) {
//     sound_play(sound_get("pill_hit"));
//     set_color_profile_slot(9, 0, get_color_profile_slot_r(9, 0), get_color_profile_slot_g(9, 0), get_color_profile_slot_b(9, 0) + 1);
// }

//CSS Button Stuff
// print(get_synced_var(player));
draw_sprite( sprite_get("sound_toggle"), get_synced_var(player), x + 178, y+32);

	

