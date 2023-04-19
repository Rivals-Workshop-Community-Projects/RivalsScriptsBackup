var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "v1.0.3";
patch_day = "2";
patch_month = "MAR";

var num_alts = 25;
var alt_cur = get_player_color(player);




// Intro Sound
//sound_play(sound_get("oh"));






//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default";
alt_name[1]  = "Blue"; //
alt_name[2]  = "Red"; //
alt_name[3]  = "Green"; //
alt_name[4]  = "White"; //Greg Heffley
alt_name[5]  = "Purple"; 
alt_name[6]  = "Retro";
alt_name[7]  = "Infamous";
alt_name[8]  = "City"; //Fish Bunjin
alt_name[9]  = "Livin'"; //Larry the Lobster
alt_name[10]  = "Angry"; //The Hulk
alt_name[11] = "OG"; //Old Chad colors
alt_name[12]  = "Yeti"; 
alt_name[13]  = "Million"; //Jordan Alt
alt_name[14]  = "Wally";
alt_name[15]  = "Buster"; //Potemkin
alt_name[16]  = "Manager"; //Nekomaru Nidai
alt_name[17]  = "Sue"; //Persona Spoilers
alt_name[18]  = "Golden"; 
alt_name[19]  = "Fall"; 
alt_name[20]  = "Winter"; 
alt_name[21]  = "Spring"; 
alt_name[22]  = "Summer"; 
alt_name[23]  = "Banana Slamma"; //DK
alt_name[24]  = "King of Evil"; //Ganondorf

//Butonn
if ((get_instance_x(cursor_id) >= x + button_cord[0] && get_instance_x(cursor_id) <= x + button_cord[0] + 30) && (get_instance_y(cursor_id) >= y + button_cord[1] && get_instance_y(cursor_id) <= y + button_cord[1] + 26)) {
	suppress_cursor = true;
	draw_sprite_ext(sprite_get("css_change"), 1, x + button_cord[0], y + button_cord[1], 1, 1, 0, c_white, 1);
} else {
	draw_sprite_ext(sprite_get("css_change"), 0, x + button_cord[0], y + button_cord[1], 1, 1, 0, c_white, 1);
}



//Patch

draw_set_halign(fa_left);

//textDraw(temp_x + 2, temp_y + 95, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);

textDraw(temp_x + 6, temp_y + 36, "fName", c_white, 0, 1000, 1, true, 1, patch_month + " " + patch_day);



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
textDraw(temp_x + 6, temp_y + 52, "fName", c_white, 0, 1000, 1, true, 1, alt_name[alt_cur]);

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



