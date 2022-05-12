// css_draw
shader_end();
// Checks if the seventh slot of the first skins blue shade is 255 (it is),
// then plays the noise and sets the colour to 256. 256 rounds down to 255
// in game automatically so there is no penalty to alts for using this method.
if (get_color_profile_slot_r(1, 0) == 0 ) {
	falconsfx = random_func( 0, 2, true );
	if falconsfx == 1{
		sound_play(sound_get("uspecial"));
        set_color_profile_slot( 1, 0, 1, 173, 0 );
	}
    else{
    	sound_play(sound_get("Final taunt"));
        set_color_profile_slot( 1, 0, 1, 173, 0 );
    }
}


//Fancy CSS template by Muno
//Put in css_draw.gml
 
var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "1.3";
patch_day = "6";
patch_month = "March";
 
var num_alts = 32;
var alt_cur = get_player_color(player);
 
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Garnet";
alt_name[1]  = "Amethyst";
alt_name[2]  = "And Pearl";
alt_name[3]  = "And Steven!";
alt_name[4]  = "First Form";
alt_name[5]  = "Jail Break";
alt_name[6]  = "Change Your Mind";
alt_name[7]  = "Gem Glow";
alt_name[8]  = "Future";
alt_name[9]  = "Pilot";
alt_name[10] = "Wedding";
alt_name[11] = "Beach Party";
alt_name[12] = "Garnet's Universe";
alt_name[13] = "Ruby";
alt_name[14] = "Sapphire";
alt_name[15] = "Sugilite";
alt_name[16] = "Sardonyx";
alt_name[17] = "SunStone";
alt_name[18] = "Alexandrite";
alt_name[19] = "Obsidian";
alt_name[20] = "Cat Steven";
alt_name[21] = "Water Garnet";
alt_name[22] = "ITS ABOUT BEING RANDOM!";
alt_name[23] = "Troubled Waters";
alt_name[24] = "Forceful Step";
alt_name[25] = "Burly Heart";
alt_name[26] = "Rick";
alt_name[27] = "Succ";
alt_name[28] = "Zard";
alt_name[29] = "Vapor";
alt_name[30] = "BLM";
alt_name[31] = "POWERMINERS";
 
//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
 
textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 
 
 
//Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
var draw_y = -1;
for(i = 0; i < num_alts; i++){
	var draw_x = temp_x + 2 + 10 * i;
	if(i < 16){
		draw_y = 4;
	} else {
		draw_x -= temp_x * 7 + 6;
		draw_y = -1;
	}
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    
    rectDraw(draw_x, temp_y + 137+draw_y, draw_x + 7, temp_y + 140+draw_y, draw_color);
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