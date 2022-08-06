if (get_player_color(player) == 11)
{
    draw_sprite_ext(sprite_get("charselect_rin"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
}
else if (get_player_color(player) == 10 or get_player_color(player) == 12)
{
    draw_sprite_ext(sprite_get("charselect_white"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
}
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