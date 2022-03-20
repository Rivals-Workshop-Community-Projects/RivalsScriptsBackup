var temp_x = x + 8;
var temp_y = y + 9;
 
 
var num_alts = 32;
var alt_cur = get_player_color(player);
 
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Ganon";
alt_name[1]  = "Alt-1";
alt_name[2]  = "Alt-2";
alt_name[3]  = "Alt-3";
alt_name[4]  = "Alt-4";
alt_name[5]  = "Alt-5";
alt_name[6]  = "Tp-Ganon";
alt_name[7]  = "Warriors";
alt_name[8]  = "Link";
alt_name[9]  = "Botw-Link";
alt_name[10] = "Zelda";
alt_name[11] = "Shiek";
alt_name[12] = "Tetra";
alt_name[13] = "Impa";
alt_name[14] = "Midna";
alt_name[15] = "Urbosa";
alt_name[16] = "Daruk";
alt_name[17] = "Fi";
alt_name[18] = "Groose";
alt_name[19] = "Aganhim";
alt_name[20] = "Zant";
alt_name[21] = "Ghirahim";
alt_name[22] = "Demise";
alt_name[23] = "Vaati";
alt_name[24] = "Yuga";
alt_name[25] = "Cia";
alt_name[26] = "Phantom";
alt_name[27] = "Bowser";
alt_name[28] = "Eggman";
alt_name[29] = "Sephiroth";
alt_name[30] = "Dracula";
alt_name[31] = "Falcon";
 
 
 
//Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(var i = 0; i < ceil(array_length(alt_name)/16); i++){
    for(var j = 0; j < min(array_length(alt_name)-i*16, 16); j++){
        var draw_color = (j+16*i == alt_cur) ? c_white : c_gray;
        var draw_x = temp_x + 2 + 10 * j;
        rectDraw(draw_x, temp_y + 137 - 5*i, draw_x + 7, temp_y + 140 - 5*i, draw_color);
    }
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "" : "") + string(alt_cur+1) + ": " + alt_name[alt_cur]);


 
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