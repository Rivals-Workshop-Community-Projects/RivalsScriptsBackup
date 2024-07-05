
//Fancy CSS template by Muno
//Put in css_draw.gml
 
var temp_x = x + 12;
var temp_y = y + 12;
 
var num_alts = 29;
var alt_cur = get_player_color(player);
 
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Sakuya";
alt_name[1]  = "Rumia";
alt_name[2]  = "Cirno";
alt_name[3]  = "Meiling";
alt_name[4]  = "Patchouli";
alt_name[5]  = "Remilia";
alt_name[6]  = "Flandre";
alt_name[7]  = "Youmu";
alt_name[8]  = "Reisen";
alt_name[9]  = "Komachi";
alt_name[10] = "Sanae";
alt_name[11] = "Rin";
alt_name[12] = "Kasen";
alt_name[13] = "Koumajou Densetsu";
alt_name[14] = "Melty Blood";
alt_name[15] = "Time Lord";
alt_name[16] = "The World";
alt_name[17] = "Yumeko";
 
//Patch
 
draw_set_halign(fa_left);
 
/*/Butonn
if ((get_instance_x(cursor_id) >= x + 136 && get_instance_x(cursor_id) <= x + 136 + 30) && (get_instance_y(cursor_id) >= y + 36 && get_instance_y(cursor_id) <= y + 36 + 26)) {
	suppress_cursor = true;
	if (mode_draw mod 2 = 0)
	draw_sprite_ext(sprite_get("css_stopwatch"), 1, x + 136, y + 36, 1, 1, 0, c_white, 1);
	else
	draw_sprite_ext(sprite_get("css_stopwatch"), 3, x + 136, y + 36, 1, 1, 0, c_white, 1);
} else {
    if (mode_draw mod 2 = 0)
	draw_sprite_ext(sprite_get("css_stopwatch"), 0, x + 136, y + 36, 1, 1, 0, c_white, 1);
	else
	draw_sprite_ext(sprite_get("css_stopwatch"), 2, x + 136, y + 36, 1, 1, 0, c_white, 1);
}
if ((get_instance_x(cursor_id) >= x + 170 && get_instance_x(cursor_id) <= x + 170 + 30) && (get_instance_y(cursor_id) >= y + 36 && get_instance_y(cursor_id) <= y + 36 + 26)) {
    suppress_cursor = true;
    if (bair_mode_draw mod 2 = 0)
    draw_sprite_ext(sprite_get("css_knife"), 1, x + 170, y + 36, 1, 1, 0, c_white, 1);
    else
    draw_sprite_ext(sprite_get("css_knife"), 3, x + 170, y + 36, 1, 1, 0, c_white, 1);
} else {
    if (bair_mode_draw mod 2 = 0)
    draw_sprite_ext(sprite_get("css_knife"), 0, x + 170, y + 36, 1, 1, 0, c_white, 1);
    else
    draw_sprite_ext(sprite_get("css_knife"), 2, x + 170, y + 36, 1, 1, 0, c_white, 1);
}
*/

 
 
//Alt
 
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, alt_name[alt_cur]);
 
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