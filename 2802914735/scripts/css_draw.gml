var temp_x = x + 8;
var temp_y = y + 9;
 
seasonal_override = false;
color_overriden = -1;

patch_ver = " ";
patch_day = " ";
patch_month = " ";
 
var num_alts = 32;
var alt_cur = get_player_color(player);
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Makeru";
alt_name[2]  = "Alter";
alt_name[3]  = "Samurai Woman";
alt_name[4]  = "Blade Beam";
alt_name[5]  = "Miracle Child";
alt_name[6]  = "Dwarven Forge";
alt_name[7]  = "Gunsmith";
alt_name[8]  = "Saving Grace";
alt_name[9]  = "Blue Jay";
alt_name[10] = "Dreamer";
alt_name[11] = "Nature Documentary";
alt_name[12] = "Unrelated";
alt_name[13] = "Arcane Archer";
alt_name[14] = "Luxurious";
alt_name[15] = "Underground";
alt_name[16] = "The Flipside";
alt_name[17] = "Know it All";
alt_name[18] = "Roundhouse";
alt_name[19] = "Lost Library";
alt_name[20] = "Just in Time";
alt_name[21] = "Acidic";
alt_name[22] = "Ambrosia";
alt_name[23] = "With Love";
alt_name[24] = "Pacifist";
alt_name[25] = "Ice Shock";
alt_name[26] = "Noodles";
alt_name[27] = "For The Occasion";
alt_name[28] = "Cryomancy";
alt_name[29] = "Traditional";
alt_name[30] = "BLM";
alt_name[31] = "Unmapped";


//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 
 
 
//Alt

for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    if i > 15 {
        var draw_x = temp_x + 2 + 10 * (i - 16);
        rectDraw(draw_x, temp_y - 16, draw_x + 7, temp_y - 13, draw_color);
    } else {
        var draw_x = temp_x + 2 + 10 * i;
        rectDraw(draw_x, temp_y - 22, draw_x + 7, temp_y - 19, draw_color);
    }
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