var temp_x = x + 8;
var temp_y = y + 8;

var current_alt = get_player_color(player);

draw_set_halign(fa_left);
var i = 0
alt_name[i]  = "Master of Dimensions";
i++
alt_name[i]  = "Champion of Destruction";
i++
alt_name[i]  = "Warrior of Chunks";
i++
alt_name[i]  = "Copier of Forms";
i++
alt_name[i]  = "Thunder of Green";
i++
alt_name[i]  = "Doer of Anything";
i++
alt_name[i]  = "Robber of Wishes";
i++
alt_name[i]  = "Skeleton of Puns";
/*
alt_name[11] = "woag";
alt_name[12] = "woag";
alt_name[13] = "woag";
alt_name[14] = "woag";
alt_name[15] = "woag";
*/

//Patch Info - Format borrowed from Hime

patch_ver = "";
patch_day = "";
patch_month = "";
 

if (current_alt != 8) { 
    textDraw(temp_x + 6, temp_y + 129, "fName", c_white, 0, 1000, 1, true, 1, alt_name[current_alt]);
}

if (current_alt == 8) { 
    textDraw(temp_x + 6, temp_y + 129, "fName", c_red, 0, 1000, 1, true, 1, alt_name[current_alt]);
    //suppress_stage_music(0, 1);
}
 
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if (argument[7]){
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 

