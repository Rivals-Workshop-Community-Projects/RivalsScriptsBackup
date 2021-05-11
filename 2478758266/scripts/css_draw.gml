// css_draw

//play sound. credit to RadRobbie
if (get_color_profile_slot_r(1, 0) == 248) {
    sound_play(sound_get("selected"));
    set_color_profile_slot(1, 0, 247, 248, 160);
}

//Fancy CSS template by Muno
//Put in css_draw.gml
 
var temp_x = x + 8;
var temp_y = y + 9;
 
var num_alts = 16;
var alt_cur = get_player_color(player);
 
 
alt_name[0]  = "Kumatora";
alt_name[1]  = "Lucas";
alt_name[2]  = "Duster";
alt_name[3]  = "Claus";
alt_name[4]  = "EARTHBOUND 64";
alt_name[5]  = "Ness";
alt_name[6]  = "Ultimate Chimera";
alt_name[7]  = "Masked Man";
alt_name[8]  = "Porky";
alt_name[9]  = "Plain";
alt_name[10] = "Mint";
alt_name[11] = "Strawberry";
alt_name[12] = "Banana";
alt_name[13] = "Peanut";
alt_name[14] = "Grape";
alt_name[15] = "Melon";

///Alt
 
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
textDraw(temp_x + 2, temp_y + 124 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "0" : "") + string(alt_cur+1) + ": " + alt_name[alt_cur]);

if ((alt_cur) > 15 && player == 0) { //draw a warning that extra skins won't work online
  textDraw(temp_x + 2, temp_y + 110 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "WILL NOT WORK ONLINE");
}
 
 
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
 
 //deez nuts
 