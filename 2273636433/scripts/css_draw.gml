var temp_x = x + 8;
var temp_y = y + 9;
shader_end();

var alt_cur = get_player_color(player);
 
alt_name[0]  = "Default";
alt_name[1]  = "Dr. Pink";
alt_name[2]  = "Dr. Red";
alt_name[3]  = "Dr. Green";
alt_name[4]  = "Dr. Light Blue";
alt_name[5]  = "Dr. Dark";
alt_name[6]  = "Dr. Gold";
alt_name[7]  = "Dr. Purple";
alt_name[8]  = "Dr. Bluey";
alt_name[9]  = "Dr. Yuuto";
alt_name[10] = "Dr. Peace";
alt_name[11] = "The Medic (Red)";
alt_name[12] = "The Medic (Blu)";
alt_name[13] = "Mario";
alt_name[14] = "Luigi";
alt_name[15] = "Dr. Wily";
alt_name[16] = "Dr. Piccolo";
alt_name[17] = "Dr. Strange";
alt_name[18] = "Gold + Silver";
alt_name[19] = "Abyss";
alt_name[20] = "Gameboy";
alt_name[21] = "NES";
alt_name[22] = "BLMario";
alt_name[23] = "Vaporwave";

draw_set_halign(fa_left);

textDraw(temp_x + 2, temp_y + 132, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);

user_event(12); 



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