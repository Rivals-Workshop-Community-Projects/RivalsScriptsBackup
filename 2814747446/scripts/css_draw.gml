//Fancy CSS template by Muno
//Put in css_draw.gml
 
var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "1.17";
patch_day = "19";
patch_month = "July";
 
var num_alts = 16;
var alt_cur = get_player_color(player);
 
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Peat";
alt_name[1]  = "Gravel";
alt_name[2]  = "Mulch";
alt_name[3]  = "Moss";
alt_name[4]  = "Sand";
alt_name[5]  = "Snowman";
alt_name[6]  = "Brut";
alt_name[7]  = "Neo";
alt_name[8]  = "Abyss";
alt_name[9]  = "EA";
alt_name[10] = "Wally";
alt_name[11] = "Bozo";
alt_name[12] = "Hugo";
alt_name[13] = "Abigail";
alt_name[14] = "Raiden";
alt_name[15] = "16";
alt_name[16]  = "Monty";
alt_name[17]  = "Fortisimole";
alt_name[18]  = "Gold Rank";
alt_name[19]  = "Hulk";
alt_name[20]  = "Juggernaut";
alt_name[21]  = "Eggman";
alt_name[22]  = "Wario";
alt_name[23]  = "King K.Rool";
alt_name[24]  = "Bowser";
alt_name[25] = "King Hippo";
alt_name[26] = "Excadrill";
alt_name[27] = "Snorlax";
alt_name[28] = "Monaco";
alt_name[29] = "Mole Knight";
alt_name[30] = "Trans Rights";
alt_name[31] = "VAE";
 
 
//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
 
textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 
 
 
//Alt
 
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