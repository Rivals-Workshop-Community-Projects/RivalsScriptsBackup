var temp_x = x + 8;
var temp_y = y + 9;

//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default";
alt_name[1]  = "Blue";
alt_name[2]  = "Red";
alt_name[3]  = "Green";
alt_name[4]  = "Black/White";
alt_name[5]  = "Pink";
alt_name[6]  = "Seasonal";
alt_name[7]  = "Abyss";
alt_name[8]  = "Early Access";
alt_name[9]  = "Overworld";
alt_name[10] = "Noelle";
alt_name[11] = "Frisk";
alt_name[12] = "Pride";
alt_name[13] = "Rapetti";
alt_name[14] = "Kaho";
alt_name[15] = "Champion";
alt_name[16] = "Obama";
alt_name[17] = "Our Boy";
alt_name[18] = "Our Boy (Echo)";
alt_name[19] = "Acid Rainbows";
alt_name[20] = "Yare Yare Daze";
alt_name[21] = "Courageous";
alt_name[22] = "Limit [||||||]";
alt_name[23] = "Love The Character";
alt_name[24] = "Fire's Last Hope";
alt_name[25] = "Strider";
alt_name[26] = "What Time Is It?!";
alt_name[27] = "For The Honor";
alt_name[28] = "Yandere";
alt_name[29] = "Strong One";
alt_name[30] = "Undertale Battle";
alt_name[31] = "Black Lives Matter";

alt_cur = get_player_color(player);

// CSS Goodies
// Seasonal
if (alt_cur == 6){
  draw_sprite_ext(sprite_get("cssextras"), 2, temp_x + 3, temp_y + 92, 1, 1, 0, c_white, 1);
}
// Abyss
if (alt_cur == 7){
  draw_sprite_ext(sprite_get("cssextras"), 1, temp_x + 3, temp_y + 92, 1, 1, 0, c_white, 1);
}
// Early Access
if (alt_cur == 8){
  draw_sprite_ext(sprite_get("cssextras"), 3, temp_x + 3, temp_y + 92, 1, 1, 0, c_white, 1);
}
// Little Star
if (alt_cur == 15){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 92, 1, 1, 0, c_white, 1);
}
// Show Nothing
if ((alt_cur != 6 and alt_cur != 7 and alt_cur != 8 and alt_cur != 15) || alt_cur > 15) {
  draw_sprite_ext(sprite_get("cssextras"), 2, temp_x + 3, temp_y + 92, 1, 1, 0, c_white, 0);
}



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
 
 