//css_draw.gml

//based on the CSS template by Muno (twitter.com/by_muno) 


if (player == 0) online_css = true;


if ("css_mode" not in self) {
    css_mode = 0;
}


if (css_mode == 0) {



var temp_x = x + 8;
var temp_y = y + 9;

 
var num_alts = 26;
var alt_cur = get_player_color(player);
 


//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Plusle & Minun";
alt_name[1]  = "Shiny & Shiny";
alt_name[2]  = "Sleplu & Nunmi";
alt_name[3]  = "Groudon & Kyogre";
alt_name[4]  = "Scorbunny / Buneary";
alt_name[5]  = "Latias & Latios";
alt_name[6]  = "Emolga & Pachirisu";
alt_name[7]  = "Reshiram & Zekrom";
alt_name[8]  = "Palkia & Dialga";
alt_name[9]  = "Throh & Sawk";
alt_name[10] = "Volbeat & Illumise";
alt_name[11] = "Espeon & Umbreon";
alt_name[12] = "Kragg & Rock";
alt_name[13] = "Ori & Sein";
alt_name[14] = "Base & Cast";
alt_name[15] = "Bird Guy & Egg";
alt_name[16] = "Lode & Puul";
alt_name[17] = "Tomo & Box";
alt_name[18] = "Gold & Silver";
alt_name[19] = "Mario & Luigi";
alt_name[20] = "Neon 1";
alt_name[21] = "Neon 2";
alt_name[22] = "Ying & Yang";
alt_name[23] = "Void Bunnies";
alt_name[24] = "Mawile & Sableye";
alt_name[25] = "Hot Stuff";
alt_name[26] = "Sweet Stuff";
alt_name[27] = "Nana & Popo";
alt_name[28] = "Alto & Trummel";
alt_name[29] = "MO & Astray";
alt_name[30] = "woag";
alt_name[31] = "woag";
 
 

 
draw_set_halign(fa_left);
//color boxes
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = temp_x + 2 + 10 * (i mod 16);
    var draw_y = temp_y + 140 - (i >= 16) * 4
    rectDraw(draw_x, draw_y, draw_x + 7, draw_y + 1, draw_color);
}
 
draw_set_halign(fa_left);

//timed mode warning
var match_timer = get_match_setting(SET_TIMER);
var match_stocks = get_match_setting(SET_STOCKS);
var match_practice = get_match_setting(SET_PRACTICE);
if ((get_match_setting(SET_STOCKS) <= 0 && get_match_setting(SET_TIMER) > 0 && get_match_setting(SET_PRACTICE) == 0)) {
    draw_set_alpha(0.7);
    rectDraw(temp_x + 8, temp_y + 40, temp_x + 192, temp_y + 112, c_black);
    draw_set_alpha(1);
    textDraw(temp_x + 10, temp_y + 48, "fName", c_white, 0, 1000, 1, true, 1, "* This mod is not");
    textDraw(temp_x + 10, temp_y + 64, "fName", c_white, 0, 1000, 1, true, 1, "  compatible with");
    textDraw(temp_x + 10, temp_y + 80, "fName", c_white, 0, 1000, 1, true, 1, "  Timed Mode. Play at");
    textDraw(temp_x + 10, temp_y + 96, "fName", c_white, 0, 1000, 1, true, 1, "  your own risk!");
}

//include alt. name
textDraw(temp_x + 2, temp_y + 116, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
}


 
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