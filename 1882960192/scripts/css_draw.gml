//css_draw

var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "2.749";
patch_day = "31";
patch_month = "FEB";
 
var num_alts = 16;
var alt_cur = get_player_color(player);
 
if (get_player_color(player) == 11) {
	outline_color = [50, 50, 255];
}
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "BBot";
alt_name[2]  = "Cinna";
alt_name[3]  = "Cyan(y)";
alt_name[4]  = "Crispy";
alt_name[5]  = "Purple(y)";
alt_name[6]  = "Matrix?";
alt_name[7]  = "BLM";
alt_name[8]  = "Snow";
alt_name[9]  = "Wild Hats";
alt_name[10] = "Plumber Gentleman";
alt_name[11] = "Orange";
alt_name[12] = "Inverted Colors";
alt_name[13] = "Green(y)";
alt_name[14] = "Brazil";
alt_name[15] = "Retro";
alt_name[16] = "Riptide";
 
 
 
//Alt
  
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 130, "fName", c_white, 0, 1000, 1, true, 1, (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 130, "fName", c_white, 0, 1000, 1, true, 1, (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
 
 
user_event(12); 

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