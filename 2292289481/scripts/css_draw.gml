//css-draw
if !(variable_instance_exists(id, "cssTimer")) {
    cssTimer = 0;
}

cssTimer++;
//print_debug(string(cssTimer));
var alt_cur = get_player_color(player);

var temp_x = x + 8;
var temp_y = y + 9;
 
var num_alts = 25;
num_colors = 25;
patch_ver = "2.2"; 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Blue";
alt_name[2]  = "Red";
alt_name[3]  = "Green";
alt_name[4]  = "Yellow";
alt_name[5]  = "Pink";
alt_name[6]  = "Orange";
alt_name[7]  = "Poison";
alt_name[8]  = "Widow";
alt_name[9]  = "White";
alt_name[10]  = "Purple";
alt_name[11]  = "Lava";
alt_name[12]  = "Teal";
alt_name[13]  = "Giant Enemy Spider";
alt_name[14]  = "Saturated";
alt_name[15]  = "True Green";
alt_name[16]  = "True Yellow";
alt_name[17]  = "True Pink";
alt_name[18]  = "True Orange";
alt_name[19]  = "Elder";
alt_name[20]  = "Blood";
alt_name[21]  = "Muffet";
alt_name[22]  = "Divine Force";
alt_name[23]  = "Trans Rights";
alt_name[24]  = "Abyss";
 
//Patch
 
draw_set_halign(fa_left);
 /*
textDraw(temp_x + 2, temp_y + 33, "fName", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver); 
*/
//Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
//Draw rectangles based on number of colors
draw_rectangle_color(x + 10, (y + 143), x + 209, (y + 151), c_black, c_black, c_black, c_black, false);

rect_x = x + 9;
rect_width = floor(180 / num_colors) - 3;
rect_color = c_yellow;
for (i = 0; i < num_colors; ++i) {
    if (i == get_player_color(player)) rect_color = c_white;
    else rect_color = c_gray;
    draw_rectangle_color(rect_x, (y + 145), rect_x + rect_width, (y + 149), rect_color, rect_color, rect_color, rect_color, false);
    rect_x += rect_width + 3;
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 123, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 123, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
 
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