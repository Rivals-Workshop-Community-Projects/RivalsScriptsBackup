if (get_color_profile_slot_r(1, 0) == 255) {
    sound_play(sound_get("dusterbass_1-1"), false, 0, 2.5);
    set_color_profile_slot( 1, 0, 256, 186, 140 );
}

var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "1.14";
patch_day = "5";
patch_month = "JUL";
 
var num_alts = 25;
var alt_cur = get_player_color(player);
 
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Thief of Tazmily"; 
alt_name[1]  = "Orange"; 
alt_name[2]  = "Purple"; 
alt_name[3]  = "Blue"; 
alt_name[4]  = "Boy from Nowhere"; 
alt_name[5]  = "Princess of Osohe"; 
alt_name[6]  = "Broken Man"; 
alt_name[7]  = "Master Thief"; 
alt_name[8]  = "Tonda Gossa!"; 
alt_name[9]  = "Heartless Figure"; 
alt_name[10]  = "Piggy Guy"; 
alt_name[11]  = "Earthbound 64"; 
alt_name[12]  = "B.B. Leader"; 
alt_name[13]  = "Retro"; 
alt_name[14]  = "Darkness"; 
alt_name[15]  = "Green-Stache"; 
alt_name[16]  = "Mother Gear Solid"; 
alt_name[17]  = "Drip-ster"; 
alt_name[18]  = "Mr. Fils-Aime"; 
alt_name[19]  = "Notorious"; 
alt_name[20]  = "Inner Power"; 
alt_name[21]  = "FTL Win!"; 
alt_name[22]  = "I'm in your walls, BK."; 
alt_name[23]  = "Pastel Pride"; 
alt_name[24]  = "Maestro"; 
 
//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 134, temp_y + -12, "fName", c_white, 0, 1000, 1, true, 1, "VER");
textDraw(temp_x + 2, temp_y + 32, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
draw_sprite(sprite_get("stockicon"),0,x+172,y+34);

//GB Icon
if (get_player_color(player)==13){
        draw_sprite(sprite_get("special_icon"),1,x+10,y+56);
    }
//Abyss Icon
if (get_player_color(player)==14){
        draw_sprite(sprite_get("special_icon"),0,x+10,y+56);
    }
//Special Icon
if (get_player_color(player)== 19){
        draw_sprite(sprite_get("special_icon"),2,x+10,y+56);
    }
 
 
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
textDraw(temp_x + 2, temp_y + 124 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "" : "") + string(alt_cur+1) + ": " + alt_name[alt_cur]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));

muno_event_type = 6;
user_event(14);
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