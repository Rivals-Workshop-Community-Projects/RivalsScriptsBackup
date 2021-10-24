//Fancy CSS template by Muno
//Put in css_draw.gml
 
var temp_x = x + 12;
var temp_y = y + 12;
 
var num_alts = 29;
var alt_cur = get_player_color(player);
 
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Blue";
alt_name[2]  = "Red";
alt_name[3]  = "Green";
alt_name[4]  = "Black";
alt_name[5]  = "Purple";
alt_name[6]  = "Abyss";
alt_name[7]  = "Early Access";
alt_name[8]  = "KFP";
alt_name[9]  = "Deadbeats";
alt_name[10] = "Teamates";
alt_name[11] = "Takodachis";
alt_name[12] = "IRyStocrats";
alt_name[13] = "Friends";
alt_name[14] = "Matsurisu";
alt_name[15] = "Koronesuki";
alt_name[16] = "Nousagi"; 
alt_name[17] = "Houshou no Ichimi"; 
alt_name[18] = "Fandead"; 
alt_name[19] = "Tatsunoko"; 
alt_name[20] = "SSRB"; 
alt_name[21] = "Melfriends"; 
alt_name[22] = "Zomrade"; 
alt_name[23] = "Sanallite"; 
alt_name[24] = "Saplings"; 
alt_name[25] = "Kronies"; 
alt_name[26] = "Hoomans"; 
alt_name[27] = "Baerats";
alt_name[28] = "Hoshiyomi";

 
//Patch
 
draw_set_halign(fa_left);
 
 
 
 
//Alt
 
 
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