var temp_x = x + 8;
var temp_y = y + 9;
shader_end();

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);

for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 6 * i;
	rectDraw(draw_x, temp_y + 137, draw_x + 3, temp_y + 140, draw_color);
}

draw_set_halign(fa_left);

//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);

//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));



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



// Checks if the seventh slot of the first skins yellow shade is 255 (it is),
// then plays the noise and sets the colour to 256. 256 rounds down to 255
// in game automatically so there is no penalty to alts for using this method.
if (get_color_profile_slot_b(9, 0) == 255) {
    sound_play(sound_get("pill_hit"));
    set_color_profile_slot(9, 0, get_color_profile_slot_r(9, 0), get_color_profile_slot_g(9, 0), get_color_profile_slot_b(9, 0) + 1);
}


//CSS Indicators

if get_player_color(player) ==11 || get_player_color(player) ==12 {
	draw_sprite( sprite_get("sound_toggle"), voice_button, x + 18, y+74);
}

draw_sprite( sprite_get("pill_select"), pill_button, x + 14, y+48);

  
