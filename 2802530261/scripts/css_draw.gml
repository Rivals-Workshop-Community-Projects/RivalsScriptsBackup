var temp_x = x;
var temp_y = y;

var num_alts = 27;
var alt_cur = get_player_color(player);
if "prev_alt" not in self {
       prev_alt = 0;  
}

if "sound_played" not in self {
       sound_played = 0;  
}

// Intro Sound
if(sound_played == 0){
    sound_play(sound_get("css_sound"), false, false, 1.5);
    sound_played = 1;
}

//alt names
alt_name[0] = "Power Suit";
alt_name[1] = "Varia Suit";
alt_name[2] = "Gravity Suit";
alt_name[3] = "SM Power Suit";
alt_name[4] = "SM Varia Suit";
alt_name[5] = "SM Gravity Suit";
alt_name[6] = "Fusion Power Suit";
alt_name[7] = "Fusion Varia Suit";
alt_name[8] = "Fusion Gravity Suit";
alt_name[9] = "White E.M.M.I.";
alt_name[10] = "Yellow E.M.M.I.";
alt_name[11] = "Blue E.M.M.I.";
alt_name[12] = "Green E.M.M.I.";
alt_name[13] = "Red E.M.M.I.";
alt_name[14] = "Cyan E.M.M.I.";
alt_name[15] = "The Mandalorian";
alt_name[16] = "Phazon Suit";
alt_name[17] = "Ridley";
alt_name[18] = "Dark Samus";
alt_name[19] = "Metroid Suit";
alt_name[20] = "NES";
alt_name[21] = "Metroid II";
alt_name[22] = "Early Access";
alt_name[23] = "Abyss";

draw_set_halign(fa_left);

if "alpher" not in self {
       alpher = 1;
}

if "alpher_alt" not in self {
       alpher_alt = 0;
}

if(alpher > 0){
    alpher -= 0.05;
}

if(alpher_alt > 0){
    alpher_alt -= 0.05;
}

if(alt_cur != prev_alt){
    alpher_alt = 2
}

prev_alt = alt_cur;

//extra icons
if(alt_cur == 22){
    draw_sprite_ext(sprite_get("ccs_icons"), 3, temp_x + 180, temp_y + 102, 1, 1, 0, c_white, 1);
}else if(alt_cur == 23){
    draw_sprite_ext(sprite_get("ccs_icons"), 1, temp_x + 180, temp_y + 102, 1, 1, 0, c_white, 1);
}

//alt name
textDraw(temp_x + 50, temp_y + 141, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);
textDraw(temp_x + 50, temp_y + 139, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);
textDraw(temp_x + 50, temp_y + 137, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);
textDraw(temp_x + 46, temp_y + 141, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);
textDraw(temp_x + 46, temp_y + 139, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);
textDraw(temp_x + 46, temp_y + 137, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);
textDraw(temp_x + 48, temp_y + 141, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);
textDraw(temp_x + 48, temp_y + 137, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);
textDraw(temp_x + 48, temp_y + 139, "fName", c_white, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);

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



#define rectDraw(x1, y1, x2, y2, color, outline)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], argument[5]);



