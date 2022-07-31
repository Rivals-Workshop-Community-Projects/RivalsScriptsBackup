if (get_color_profile_slot_r(1, 0) == 255) {
    sound_play(sound_get("ready"));
    set_color_profile_slot(1, 0, 256, 255, 255);
}

var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "";patch_date = "1.3";
var num_alts = 8;
var alt_cur = get_player_color(player);



//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "RED";
alt_name[1]  = "BLU";
alt_name[2]  = "Black Mesa";
alt_name[3]  = "Aperture";
alt_name[4]  = "Counter Terrorism";
alt_name[5]  = "Ricochet";
alt_name[6]  = "Alyx";
alt_name[7]  = "Day of Defeat";
alt_name[8]  = "Early Access";

//Patch
draw_set_halign(fa_left);


//Alt
textDraw(temp_x + 4, temp_y + 130, "fName", c_white, 0, 1000, 1, true, 1, alt_name[alt_cur]);

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