// pre-draw //css_draw.gml
var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "1.02";
patch_day = "26";
patch_month = "MAY";
 
var num_alts = 25;
var alt_cur = get_player_color(player);

alt_name[0] = "Reuniclus"
alt_name[1] = "Shiny"
alt_name[2] = "Weezing"
alt_name[3] = "Forretress"
alt_name[4] = "Jirachi"
alt_name[5] = "Spiritomb"
alt_name[6] = "Gothitelle"
alt_name[7] = "Espurr"
alt_name[8] = "Popplio"
alt_name[9] = "Duraludon"
alt_name[10] = "Vice-Versa"
alt_name[11] = "Waldstein"
alt_name[12] = "Astral Birth"
alt_name[13] = "Dreamscape"
alt_name[14] = "Azimuth"
alt_name[15] = "Ouroboros"
alt_name[16] = "Space Invader"
alt_name[17] = "Beach Bash"
alt_name[18] = "Molten Metal"
alt_name[19] = "BLW"
alt_name[20] = "Transcendence"
alt_name[21] = "Girl Power"
alt_name[22] = "Ace Trainer"
alt_name[23] = "Bicycle"
alt_name[24] = "Panoramic"

//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
 
textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 
//Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 8 * i;
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
