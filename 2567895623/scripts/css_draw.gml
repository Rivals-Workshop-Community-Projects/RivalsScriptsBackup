patch_ver = "1.30";

// Checks if the seventh slot of the first skins blue shade is 255 (it is),
// then plays the noise and sets the colour to 256. 256 rounds down to 255
// in game automatically so there is no penalty to alts for using this method.
if (get_color_profile_slot_r(0, 2) == 211) {
sound_play(sound_get("comeon"));
set_color_profile_slot(0, 2, get_color_profile_slot_r(0, 2)+1, get_color_profile_slot_g(0, 2), get_color_profile_slot_b(0, 2));
}

var temp_x = x + 8;
var temp_y = y + 9;



var num_alts = 23;
var alt_cur = get_player_color(player);

alt_name[0]  = "Classic";
alt_name[1]  = "Sapphire";
alt_name[2]  = "Ruby";
alt_name[3]  = "Emerald";
alt_name[4]  = "Winter";
alt_name[5]  = "Amethyst";
alt_name[6]  = "Panther";
alt_name[7]  = "Tiger";
alt_name[8]  = "Leopard";
alt_name[9]  = "Bengal";
alt_name[10]  = "Beastly";
alt_name[11]  = "Wrath";
alt_name[12]  = "Botan";
alt_name[13]  = "Zetterburn";
alt_name[14]  = "Scar";
alt_name[15]  = "Lion-O";
alt_name[16]  = "Gado";
alt_name[17]  = "Hobidon";
alt_name[18]  = "Akuma";
alt_name[19]  = "Luxray";
alt_name[20]  = "Exetior";
alt_name[21]  = "Jank Nation";
alt_name[22]  = "King Lion";


//Patch
draw_set_halign(fa_left);
textDraw(temp_x + 2, temp_y + 32, "fName", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);

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