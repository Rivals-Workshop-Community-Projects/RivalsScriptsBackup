var temp_x = x + 8;
var temp_y = y + 9;
shader_end();

var alt_cur = get_player_color(player);
 
patch_ver = "3.1";
patch_day = "24";
patch_month = "JUN";
 
var alt_cur = get_player_color(player);
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Shiny";
alt_name[2]  = "Mudkip";
alt_name[3]  = "Pyukumuku";
alt_name[4]  = "Golisopod";
alt_name[5]  = "Gastrodon (W)";
alt_name[6]  = "Gastrodon (E)";
alt_name[7]  = "N/A";
alt_name[8]  = "Goomy";
alt_name[9]  = "Pikachu";
alt_name[10]  = "Axolotl";
alt_name[11] = "Military";
alt_name[12] = "Mewtwo";
alt_name[13] = "Shadow Mewtwo";
alt_name[14] = "Handy";
alt_name[15] = "Snom";
alt_name[16] = "Dunsparce";
alt_name[17] = "Emboar";
alt_name[18] = "Swalot";
alt_name[19] = "Sableye";
alt_name[20] = "Machamp";
alt_name[21] = "Haxorous";
alt_name[22] = "Venusaur";
alt_name[23] = "Charmeleon";
alt_name[24] = "Gigalith";
alt_name[25] = "Solgaleo";
alt_name[26] = "Lunala";
alt_name[27] = "Emolga";
alt_name[28] = "Drizzile";
alt_name[29] = "Coalossal";
alt_name[30] = "Inverted";
alt_name[31] = "Peabody";



//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
 
textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);

///Alt
 
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
textDraw(temp_x + 2, temp_y + 119, "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
 
 
 
user_event(12);
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work lol
    for (var i = -1; i < 2; i++){
        for (var j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 
 
 
#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);