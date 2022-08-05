var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "";
patch_day = "07";
patch_month = "JUNE";

var num_alts = 32;
var alt_cur = get_player_color(player);

// Intro Sound
//sound_play(sound_get("oh"));
//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "pona";
alt_name[1]  = "suno";
alt_name[2]  = "loje";
alt_name[3]  = "kiwen suno tu";
alt_name[4]  = "kiwen laso";
alt_name[5]  = "laso loje";
alt_name[9]  = "soweli Raikou";
alt_name[8]  = "soweli Suicune";
alt_name[7]  = "soweli Entei";
alt_name[6]  = "kon sitelen";
alt_name[10]  = "ma monsuta";
alt_name[11]  = "suli ike";
alt_name[12]  = "suwi";
alt_name[13]  = "jelo";
alt_name[14]  = "laso jelo";
alt_name[15]  = "laso telo nasa";
alt_name[16]  = "kiwen";
alt_name[17]  = "poka loje";
alt_name[18]  = "poka laso";
alt_name[19]  = "poke swui";
alt_name[20]  = "kiwen loje";
alt_name[21]  = "kiwen walo suno";
alt_name[22]  = "kiwen jelo suno";
alt_name[23]  = "kiwen pimeja";
alt_name[24]  = "kule nanpa wan";
alt_name[25]  = "kule nanpa tu";
alt_name[26]  = "kule mute";
alt_name[27]  = "monsuta poki";
alt_name[28]  = "suli";
alt_name[29]  = "poki";
alt_name[30]  = "ante";
alt_name[31]  = "pimeja pona";







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