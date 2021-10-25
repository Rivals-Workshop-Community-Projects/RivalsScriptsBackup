

//Fancy CSS template by Muno
//32 Alt code stolen from Chuckya, which was stolen from Kris. If you steal this keep the chain going :)
 
var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "1.2                  JUN 8th";
patch_day = "";
patch_month = "";
 
var num_alts = 18;
var alt_cur = get_player_color(player);
 
 
 
//Alt name init. var doesn't work with arrays lol
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Blake";
alt_name[2]  = "Tager";
alt_name[3]  = "Drosera";
alt_name[4]  = "Bane";
alt_name[5]  = "Sentinel";
alt_name[6]  = "Robo Fortune";
alt_name[7]  = "Wall-E";
alt_name[8]  = "Nitori";
alt_name[9]  = "Guadua";
alt_name[10] = "Synne";
alt_name[11] = "Otto";
alt_name[12] = "Epinel";
alt_name[13] = "Kaboom";
alt_name[14] = "Hosha";
alt_name[15] = "Inner's Favorite";
alt_name[16] = "Quagsire";
alt_name[17] = "Techno and Tenor";
alt_name[18] = "Riptide";
alt_name[19] = "Champion";

 
//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 2, temp_y + 32, "fName", c_white, 0, 1000, 1, true, 1, "" + patch_ver);
 
textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);

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