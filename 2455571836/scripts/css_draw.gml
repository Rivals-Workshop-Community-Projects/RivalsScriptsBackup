//Fancy CSS template by Muno
//Put in css_draw.gml
 
var temp_x = x + 8;
var temp_y = y + 9;
 
var num_alts = 32;
var alt_cur = get_player_color(player);
draw_sprite_ext(sprite_get("css_icons"), alt_cur, temp_x + 12, temp_y + 40, 1, 1, 0, c_white, 1);
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Red";
alt_name[2]  = "Green";
alt_name[3]  = "Yellow";
alt_name[4]  = "Gray";
alt_name[5]  = "Diamond";
alt_name[6]  = "Gold";
alt_name[7]  = "Handheld";
alt_name[8]  = "Esper";
alt_name[9]  = "Buzzbuzz";
alt_name[10] = "Breeze";
alt_name[11] = "Maiden";
alt_name[12] = "Sleepy";
alt_name[13] = "Mythos";
alt_name[14] = "Earth";
alt_name[15] = "Rocket";
alt_name[16] = "Strumm";
alt_name[17] = "Undead";
alt_name[18] = "Angel";
alt_name[19] = "Tanuki";
alt_name[20] = "Kitsune";
alt_name[21] = "Double";
alt_name[22] = "Chaos";
alt_name[23] = "Speedy";
alt_name[24] = "Festive";
alt_name[25] = "Forest";
alt_name[26] = "Aqua";
alt_name[27] = "Magical";
alt_name[28] = "Abyss";
alt_name[29] = "Burning";
alt_name[30] = "Melon";
alt_name[31] = "Lovely";
 
 
//Patch
 
draw_set_halign(fa_left); 
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 8, temp_y + 128, "fName", c_white, 0, 1000, 1, true, 1, "Color " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + "/32: " + alt_name[alt_cur]);
 
 
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