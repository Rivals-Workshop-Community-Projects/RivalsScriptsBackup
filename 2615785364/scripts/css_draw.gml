var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "";
patch_day = "30";
patch_month = "SEPT";

var num_alts = 25;
var alt_cur = get_player_color(player);

// Intro Sound
//sound_play(sound_get("oh"));
//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default";
alt_name[1]  = "Blue";
alt_name[2]  = "Red";
alt_name[3]  = "Green";
alt_name[4]  = "Yellow";
alt_name[5]  = "Black & White";
alt_name[6]  = "Purple";
alt_name[7]  = "Cyan";
alt_name[8]  = "Pink";
alt_name[9]  = "Lime";
alt_name[10]  = "Teal";
alt_name[11]  = "Hummer";
alt_name[12]  = "Seven";
alt_name[13]  = "Eight";
alt_name[14]  = "Primary";
alt_name[15]  = "Secondary";
alt_name[16]  = "Bronze";
alt_name[17]  = "Silver";
alt_name[18]  = "Gold";
alt_name[19]  = "Master";
alt_name[20]  = "Tiger";
alt_name[21]  = "Doodle";
alt_name[22]  = "Dark";
alt_name[23]  = "Darker";
alt_name[24]  = "Light";










//Patch

draw_set_halign(fa_left);

textDraw(temp_x + 2, temp_y + 75, "medFont", c_white, 0, 1000, 1, true, 1, "" + patch_ver);

textDraw(temp_x + 2, temp_y + 98, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);



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
textDraw(temp_x + 2, temp_y + 112, "fName", c_white, 0, 1000, 1, true, 1, alt_name[alt_cur]);

//exclude alt. name
//textDraw(temp_x + 2, temp_y + 112, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));



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



