var temp_x = x + 8;
var temp_y = y + 9;

//Also patch in init

patch_ver = "";
patch_day = "";
patch_month = "";

var alt_cur = get_player_color(player);
var alt_red = get_color_profile_slot_r(alt_cur, 0);
var alt_gre = get_color_profile_slot_g(alt_cur, 0);
var alt_blu = get_color_profile_slot_b(alt_cur, 0);
var alt_col = make_color_rgb(alt_red, alt_gre, alt_blu);

var num_alts = 32;



//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Giegue";
alt_name[1]  = "Giygas";
alt_name[2]  = "Lamp";
alt_name[3]  = "Baby";
alt_name[4]  = "Fish";
alt_name[5]  = "Dragon";
alt_name[6]  = "Zombie";
alt_name[7]  = "Magicant";
alt_name[8]  = "Dream"
alt_name[9]  = "Plain";
alt_name[10] = "Mint";
alt_name[11] = "Strawberry";
alt_name[12] = "Banana";
alt_name[13] = "Peanut";
alt_name[14] = "Porky";
alt_name[15] = "Jr";
alt_name[16] = "Starman";
alt_name[17] = "Blue";
alt_name[18] = "Last";
alt_name[19] = "Deluxe";
alt_name[20] = "Ghost";
alt_name[21] = "Final";
alt_name[22] = "Belch";
alt_name[23] = "Barf";
alt_name[24] = "Boney"
alt_name[25] = "Pork Trooper";
alt_name[26] = "Navy SQUEAL";
alt_name[27] = "Ultimate Chimera";
alt_name[28] = "Marshmallow";
alt_name[29] = "Rockin";
alt_name[30] = "Flower";
alt_name[31] = "Monster";


//Patch

draw_set_halign(fa_left);



textDraw(temp_x + 2, temp_y + 32, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);



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