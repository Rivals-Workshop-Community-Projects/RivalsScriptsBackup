//Fancy CSS template by Muno
//Put in css_draw.gml
 

// Checks if the seventh slot of the first skins blue shade is 255 (it is),
// then plays the noise and sets the colour to 256. 256 rounds down to 255
// in game automatically so there is no penalty to alts for using this method. 
 
if (get_color_profile_slot_b(1, 6) == 255 ) {
    sound_play(sound_get("CSSannouncer"));
    set_color_profile_slot(1, 6, get_color_profile_slot_r(1, 6), get_color_profile_slot_g(1, 6), get_color_profile_slot_b(1, 6) + 1);
}
 
// var temp_x = x + 8;
// var temp_y = y + 9;
 
// patch_ver = "";
// patch_day = "01";
// patch_month = "April";
 
// var num_alts = 16;
// var alt_cur = get_player_color(player);
 
 
 
// //Alt name init. var doesn't work with arrays lol
 
// alt_name[0]  = "Star Child";
// alt_name[1]  = "Blue";
// alt_name[2]  = "Red";
// alt_name[3]  = "Lime";
// alt_name[4]  = "Gilded Black";
// alt_name[5]  = "White Pop";
// alt_name[6]  = "Sol Badguy";
// alt_name[7]  = "Link";
// alt_name[8]  = "Sailor Moon";
// alt_name[9]  = "Platinum the Trinity";
// alt_name[10] = "Star Butterfly";
// alt_name[11] = "Hatsune Miku";
// alt_name[12] = "Fischl";
// alt_name[13] = "Lulu";
// alt_name[14] = "Big Band";
// alt_name[15] = "Linne";
 
 
 
// //Patch
 
// draw_set_halign(fa_left);
 
// textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "beta " + patch_ver);
 
// textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 
 
 
// //Alt
 
// rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
// for(i = 0; i < num_alts; i++){
// 	var draw_color = (i == alt_cur) ? c_white : c_gray;
// 	var draw_x = temp_x + 2 + 10 * i;
// 	rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
// }
 
// draw_set_halign(fa_left);
 
// //include alt. name
// textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
// //exclude alt. name
// //textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
 
 
 
// #define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
// draw_set_font(asset_get(argument[2]));
 
// if argument[7]{ //outline. doesn't work lol
//     for (i = -1; i < 2; i++){
//         for (j = -1; j < 2; j++){
//             draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
//         }
//     }
// }
 
// draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
// return string_width_ext(argument[9], argument[4], argument[5]);
 
 
 
// #define rectDraw(x1, y1, x2, y2, color)
 
// draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);


user_event(12);