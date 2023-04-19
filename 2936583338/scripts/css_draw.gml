var temp_x = x + 8;
var temp_y = y + 9;

var num_alts = 25;
var alt_cur = get_player_color(player);

// Intro Sound
//sound_play(sound_get("oh"));
//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default";
alt_name[1]  = "Player 2";
alt_name[2]  = "Flame";
alt_name[3]  = "Flame 2";
alt_name[4]  = "Tiger";
alt_name[5]  = "Tiger 2";
alt_name[6]  = "Neo";
alt_name[7]  = "Neo 2";
alt_name[8]  = "Senju";
alt_name[9]  = "Senju 2";
alt_name[10]  = "Sasuke";
alt_name[11]  = "Sasuke 2";
alt_name[12]  = "Eye";
alt_name[13]  = "Eye 2";
alt_name[14]  = "Giant";
alt_name[15]  = "Giant 2";
alt_name[16]  = "Mario";
alt_name[17]  = "Luigi";
alt_name[18]  = "Gold";
alt_name[19]  = "Blueberry";
alt_name[20]  = "Cherry";
alt_name[21]  = "Lime";
alt_name[22]  = "Blackberry";
alt_name[23]  = "Plok";
alt_name[24]  = "Rayman";
alt_name[25]  = "Ed";
alt_name[26]  = "Vectorman";

//Alt


for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	if i > 15 {
		var draw_x = temp_x + 2 + 10 * (i - 16);
		rectDraw(draw_x, temp_y - 16, draw_x + 7, temp_y - 13, draw_color);
	} else {
		var draw_x = temp_x + 2 + 10 * i;
		rectDraw(draw_x, temp_y - 22, draw_x + 7, temp_y - 19, draw_color);
	}
}

draw_set_halign(fa_left);

//include alt. name
textDraw(temp_x + 4, temp_y + 128, "fName", c_white, 0, 1000, 1, true, 1, alt_name[alt_cur]);

//exclude alt. name
//textDraw(temp_x + 4, temp_y + 128, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));



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



