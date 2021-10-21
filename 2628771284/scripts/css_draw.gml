
var temp_x = x + 8;
var temp_y = y + 9;
 
seasonal_override = false;
color_overriden = -1;

patch_ver = " ";
patch_day = " ";
patch_month = " ";
 
var num_alts = 19;
var alt_cur = get_player_color(player);


 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Neco arc";
alt_name[1]  = "Alt 2";
alt_name[2]  = "Alt 3";
alt_name[3]  = "Alt 4";
alt_name[4]  = "Alt 5";
alt_name[5]  = "Alt 6";
alt_name[6]  = "Alt 7";
alt_name[7]  = "Alt 8";
alt_name[8]  = "Alt 9";
alt_name[9]  = "Alt 10";
alt_name[10] = "Alt 11";
alt_name[11] = "Alt 12";
alt_name[12] = "Alt 13";
alt_name[13] = "Alt 14";
alt_name[14] = "Alt 15";
alt_name[15] = "Alt 16";
alt_name[16] = "Alt 17";
alt_name[17] = "Neco arc Chaos";
alt_name[18] = "BUBBLES";


if (alt_cur == 18){
  draw_sprite_ext(sprite_get("charselect_bubbles"), 1, temp_x + 0, temp_y - 1, 2, 2, 0, c_white, 1);
}


//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 
 
 
//Alt
 
shader_end();
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = temp_x + 2 + 10 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
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
 
 
 
#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);