var frames = get_color_profile_slot_r(99, 0);
var seconds = get_color_profile_slot_g(99, 0);
set_color_profile_slot(99, 0, ++frames, seconds, 0);
if (frames % 60 == 0) set_color_profile_slot(99, 0, frames, ++seconds, 0);
if (frames == 1) { //countdown CSS sound player by AurumKitsune
sound_play(sound_get("victory_laugh"));
}

patch_ver = "1.0";

/*cutscenetimer += 1;
if(cutscenetimer > 76){
	cutscenetimer = 0;
}
draw_sprite_ext(sprite_get("cutscene"), cutscenetimer,x,y,2,2,0,-1,1);*/

var temp_x = x + 8;
var temp_y = y + 9;

var num_alts = 16;
var alt_cur = get_player_color(player);


alt_name[0]  = "Default";
alt_name[1]  = "Shiny";
alt_name[2]  = "Lileep";
alt_name[3]  = "Anorith";
alt_name[4]  = "Armaldo";
alt_name[5]  = "Zygarde";
alt_name[6]  = "Quercus Alba";
alt_name[7]  = "Audrey II";
alt_name[8]  = "Piranha Plant";
alt_name[9]  = "Oogie";
alt_name[10] = "Lileep-S";
alt_name[11] = "Anorith-S";
alt_name[12] = "Armaldo-S";
alt_name[13] = "Zygarde-S";
alt_name[14] = "Abyss";
alt_name[15] = "Gold";

//Patch
draw_set_halign(fa_left);
textDraw(temp_x + 2, temp_y + 32, "fName", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
//textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);

//alt
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 8 * i;
	rectDraw(draw_x, temp_y + 137, draw_x + 5, temp_y + 140, draw_color);
}
draw_set_halign(fa_left);

//alt name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + string(alt_cur + 1) + ": " + alt_name[alt_cur]);

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //text outline
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