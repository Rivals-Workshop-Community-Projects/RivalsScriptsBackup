var temp_x = x + 8;
var temp_y = y + 8;

var current_alt = get_player_color(player);

switch(current_alt) {
    case 9:
        draw_sprite_ext(sprite_get("css_icons"), 0, temp_x + 162, temp_y + 96, 2, 2, 0, c_white, 1);
    break;
    case 10:
        draw_sprite_ext(sprite_get("css_icons"), 2, temp_x + 162, temp_y + 96, 2, 2, 0, c_white, 1);
    break;
    case 11:
        draw_sprite_ext(sprite_get("css_icons"), 1, temp_x + 162, temp_y + 96, 2, 2, 0, c_white, 1);
    break;
}

draw_set_halign(fa_left);

alt_name[0]  = " ";
alt_name[1]  = "cool dude";
alt_name[2]  = "the queen";
alt_name[3]  = "true lab";
alt_name[4]  = "royal guard";
alt_name[5]  = "killer robot";
alt_name[6]  = "the king";
alt_name[7]  = "the fallen child";
alt_name[8]  = "=)";
alt_name[9]  = "seasonal";
alt_name[10] = "÷infamous÷"; // :(
alt_name[11] = "easiest enemy";
alt_name[12] = "hypergoner";
/*
alt_name[11] = "woag";
alt_name[12] = "woag";
alt_name[13] = "woag";
alt_name[14] = "woag";
alt_name[15] = "woag";
*/

//Patch Info - Format borrowed from Hime

patch_day = "3";
patch_month = "sept";
patch_year = "2022"
 
textDraw(temp_x + 3, temp_y + 126, font_get("fnt_sans"), c_white, 0, 1000, 1, true, 1, patch_month + " " + patch_day + ", " + patch_year); 

if (current_alt != 8) { 
    textDraw(temp_x + 3, temp_y + 110, font_get("fnt_sans"), c_white, 0, 1000, 1, true, 1, alt_name[current_alt]);
}

if (current_alt == 8) { 
    textDraw(temp_x + 3, temp_y + 110, font_get("fnt_sans"), c_red, 0, 1000, 1, true, 1, alt_name[current_alt]);
    //suppress_stage_music(0, 1);
}

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(argument[2]);
 
if (argument[7]){
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 

