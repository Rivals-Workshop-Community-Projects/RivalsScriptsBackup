//css_draw

//css_draw
if ("css_mode" not in self) {
    css_mode = 0;
}


if (css_mode == 0) {

//css template by Muno

var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "1.0";
patch_day = "04";
patch_month = "MAR";
 
var num_alts = 16;
var alt_cur = get_player_color(player);
 
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Princess of Destiny";
alt_name[1]  = "Starlight";
alt_name[2]  = "Seismic";
alt_name[3]  = "Large Friend";
alt_name[4]  = "Ember's Might";
alt_name[5]  = "ARKS Defender";
alt_name[6]  = "Dive n Shoot";
alt_name[7]  = "Cool Hat";
alt_name[8]  = "An old friend";
alt_name[9]  = "Bird Up";
alt_name[10] = "Superstar Songstress";
alt_name[11] = "Timid Elf";
alt_name[12] = "Ranger of Azure";
alt_name[13] = "Purest Darkness";
alt_name[14] = "Anime Swordfighter";
alt_name[15] = "Otherworldly Prince";
alt_name[16]  = "Loggers";
alt_name[17]  = "The Pack Leader";
alt_name[18]  = "Key of Destiny";
alt_name[19]  = "Keyblade Master";
alt_name[20]  = "Tethe'alla's Chosen";
alt_name[21]  = "Ice Queen";
alt_name[22]  = "Doting Sister";
alt_name[23]  = "Future Defender";
alt_name[24]  = "Angel of Death";
alt_name[25] = "PHOTON EDGE";
alt_name[26] = "Grayskull's Honor";
alt_name[27] = "Oh Canada";
alt_name[28] = "Stay winnin'";
alt_name[29] = "Oh she GAY gay";
alt_name[30] = "Cotton Candy";
alt_name[31] = "Destined Power";
 
 
 
//Patch
 
draw_set_halign(fa_left);
 
//textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, patch_ver);
 
//textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 
 
 
//Alt
/*
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = temp_x + 2 + 10 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);*/
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
}
else {
    
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