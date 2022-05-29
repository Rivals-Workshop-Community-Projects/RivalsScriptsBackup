///Fancy CSS template by Muno
//Put in css_draw.gml
 
var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "1.0";
patch_day = "04";
patch_month = "MAR";
 
var num_alts = 32;
var alt_cur = get_player_color(player);
 
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Wally"
alt_name[1]  = "Red"
alt_name[2]  = "Green"
alt_name[3]  = "Grey"
alt_name[4]  = "Blue"
alt_name[5]  = "Salmon"
alt_name[6]  = "Killer Whale"
alt_name[7]  = "Green Meany"
alt_name[8]  = "Abyss"
alt_name[9]  = "EA"
alt_name[10] = "Hugs & Kisses"
alt_name[11] = "Snowman"
alt_name[12] = "Hazardous Waste"
alt_name[13] = "Lake Dunkalot"
alt_name[14] = "Borealis"
alt_name[15] = "Brasil"
alt_name[16] = "TGP"
alt_name[17] = "Beluga"
alt_name[18] = "Gold"
alt_name[19] = "Crimson Gear"
alt_name[20] = "Potemkin"
alt_name[21] = "King of Magnets"
alt_name[22] = "Collosus"
alt_name[23] = "Victor"
alt_name[24] = "K.Wally"
alt_name[25] = "Peat"
alt_name[26] = "Car Ant"
alt_name[27] = "Cola"
alt_name[28] = "Diet"
alt_name[29] = "Neo"
alt_name[30] = "BLM"
alt_name[31] = "Miss Z"
 
 
//Patch
 
draw_set_halign(fa_left);
 
// textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
 
// textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 
 
 
//Alt
 
// rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
// for(i = 0; i < num_alts; i++){
// 	var draw_color = (i == alt_cur) ? c_white : c_gray;
// 	var draw_x = temp_x + 2 + 10 * i;
// 	rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
// }
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 130, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 10 ? "0" : "") + string(alt_cur) + ": " + alt_name[alt_cur]);
 
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