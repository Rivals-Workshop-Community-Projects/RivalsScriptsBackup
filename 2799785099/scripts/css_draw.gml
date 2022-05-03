//css_draw

var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "2.749";
patch_day = "31";
patch_month = "FEB";
 
var num_alts = 9;
var alt_cur = get_player_color(player);

if (get_color_profile_slot_r(0, 7) == 255) {
    sound_play(sound_get("mario-itsme"));
	set_color_profile_slot(0, 7, get_color_profile_slot_r(0, 7) + 1, get_color_profile_slot_g(0, 7), get_color_profile_slot_b(0, 7));
}
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Super Star Blue";
alt_name[2]  = "Kibble Blade 2.0";
alt_name[3]  = "Helper to Hero";
alt_name[4]  = "Kibble Blade";
alt_name[5]  = "Super Star Pink";
alt_name[6]  = "Frost Kibble Blade";
alt_name[7]  = "Blue(y)";
alt_name[8]  = "Super Star Green";
alt_name[9]  = "Plugg";
 
 
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