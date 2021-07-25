var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "v1.0";
patch_day = "23";
patch_month = "Jul";

var num_alts = 23;
var alt_cur = get_player_color(player);




// Intro Sound
//sound_play(sound_get("oh"));






//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default";
alt_name[1]  = "Blue";
alt_name[2]  = "Red";
alt_name[3]  = "Green";
alt_name[4]  = "White";
alt_name[5]  = "Purple";
alt_name[6]  = "Conehead Zombie";
alt_name[7]  = "Disco Zombie";
alt_name[8]  = "Back Up Dancer";
alt_name[9]  = "Imp";
alt_name[10]  = "Dr. Zomboss";
alt_name[11] = "Yeti Zombie";
alt_name[12] = "Super Brainz";
alt_name[13] = "Electric Boogaloo";
alt_name[14] = "Rustbolt";
alt_name[15] = "The Smash";
alt_name[16] = "Immorticia";
alt_name[17]  = "Professor Brainstorm";
alt_name[18]  = "Green Shadow";
alt_name[19]  = "Nightcap";
alt_name[20]  = "Evil Dave";
alt_name[21]  = "Blast Zones";
alt_name[22]  = "May";
alt_name[23]  = "-";
alt_name[24]  = "-";
alt_name[25]  = "-";
alt_name[26] = "-";
alt_name[27] = "-";
alt_name[28] = "-";
alt_name[29] = "-";
alt_name[30] = "-";
alt_name[31] = "-";



//Patch

draw_set_halign(fa_left);

textDraw(temp_x + 2, temp_y + 95, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);

textDraw(temp_x + 2, temp_y + 118, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);



//Alt


for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 6 * i;
	rectDraw(draw_x, temp_y - 16, draw_x + 3, temp_y - 13, draw_color);
}

draw_set_halign(fa_left);

//include alt. name
textDraw(temp_x + 2, temp_y + 132, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);

//exclude alt. name
//textDraw(temp_x + 2, temp_y + 132, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));



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



