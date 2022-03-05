var temp_x = x + 8;
var temp_y = y + 9;
shader_end();

var alt_cur = get_player_color(player);
 
alt_name[0]  = "Default";
alt_name[1]  = "Dr. Pink";
alt_name[2]  = "Dr. Red";
alt_name[3]  = "Dr. Green";
alt_name[4]  = "Dr. Light Blue";
alt_name[5]  = "Dr. Dark";
alt_name[6]  = "Dr. Gold";
alt_name[7]  = "Dr. Purple";
alt_name[8]  = "Dr. Bluey";
alt_name[9]  = "Dr. Yuuto";
alt_name[10] = "Dr. Peace";
alt_name[11] = "The Medic (Red)";
alt_name[12] = "The Medic (Blu)";
alt_name[13] = "Mario";
alt_name[14] = "Luigi";
alt_name[15] = "Dr. Wily";
alt_name[16] = "Dr. Piccolo";
alt_name[17] = "Dr. Strange";
alt_name[18] = "Gold + Silver";
alt_name[19] = "Abyss";
alt_name[20] = "Gameboy";
alt_name[21] = "NES";
alt_name[22] = "BLMario";
alt_name[23] = "Vaporwave";
alt_name[24] = "TSMSB"; 
alt_name[25] = "Nauseon Line";

num_alts = 25;
//Alt

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);

for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 8 * i;
	rectDraw(draw_x, temp_y + 137, draw_x + 5, temp_y + 140, draw_color);
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