if ("voice_toggle" not in self) exit;

//Butonn via dinobros
if (voice_toggle == 0){
if ((get_instance_x(cursor_id) >= x + button_cord[0] && get_instance_x(cursor_id) <= x + button_cord[0] + 30) && (get_instance_y(cursor_id) >= y + button_cord[1] && get_instance_y(cursor_id) <= y + button_cord[1] + 26)) {
	suppress_cursor = true;
	draw_sprite_ext(sprite_get("voiceoff"), 1, x + button_cord[0], y + button_cord[1], 1, 1, 0, c_white, 1);
} else {
	draw_sprite_ext(sprite_get("voiceoff"), 0, x + button_cord[0], y + button_cord[1], 1, 1, 0, c_white, 1);
}
}

if (voice_toggle == 1){
if ((get_instance_x(cursor_id) >= x + button_cord[0] && get_instance_x(cursor_id) <= x + button_cord[0] + 30) && (get_instance_y(cursor_id) >= y + button_cord[1] && get_instance_y(cursor_id) <= y + button_cord[1] + 26)) {
	suppress_cursor = true;
	draw_sprite_ext(sprite_get("voiceon"), 1, x + button_cord[0], y + button_cord[1], 1, 1, 0, c_white, 1);
} else {
	draw_sprite_ext(sprite_get("voiceon"), 0, x + button_cord[0], y + button_cord[1], 1, 1, 0, c_white, 1);
}
}

var temp_x = x + 8;
var temp_y = y + 9;

var num_alts = 32;
var alt_cur = get_player_color(player);

// Intro Sound
//sound_play(sound_get("oh"));
//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Blue (Default)";
alt_name[1]  = "Green";
alt_name[2]  = "Red";
alt_name[3]  = "Yellow";
alt_name[4]  = "Purple";
alt_name[5]  = "Gray";
alt_name[6]  = "Juicy";
alt_name[7]  = "Ring Fit Trainer";
alt_name[8]  = "Rosalina";
alt_name[9]  = "Daisy";
alt_name[10]  = "Samus";
alt_name[11]  = "Sami";
alt_name[12]  = "Min Min";
alt_name[13]  = "Sarah Bryant";
alt_name[14]  = "Jacky Bryant";
alt_name[15]  = "Trish (DMC)";
alt_name[16]  = "Jack'O Valentine";
alt_name[17]  = "Chell";
alt_name[18]  = "Shantae";
alt_name[19]  = "Rottytops";
alt_name[20]  = "Risky Boots";
alt_name[21]  = "Risky Boots (GBC)";
alt_name[22]  = "Undyne";
alt_name[23]  = "Wii Fit Nami";
alt_name[24]  = "Ranma (Female)";
alt_name[25]  = "Trish (JJBA)";
alt_name[26]  = "F.F";
alt_name[27]  = "Black Justice";
alt_name[28]  = "Cotton Candy";
alt_name[29]  = "Abyss";
alt_name[30]  = "NES";
alt_name[31]  = "GB";

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
textDraw(temp_x + 8, temp_y + 128, "fName", c_white, 0, 1000, 1, true, 1, (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);

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