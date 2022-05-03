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
    sound_play(sound_get("beep"), false, false, 1.5);
    sound_played = 1;
}


//alt names
alt_name[0] = "E.M.M.I.-02SM";
alt_name[1] = "E.M.M.I.-01P";
alt_name[2] = "E.M.M.I.-03MB";
alt_name[3] = "E.M.M.I.-04SB";
alt_name[4] = "E.M.M.I.-05IM";
alt_name[5] = "E.M.M.I.-06WB";
alt_name[6] = "E.M.M.I.-07PB";
alt_name[7] = "E.M.M.I.-08PS";
alt_name[8] = "E.M.M.I.-09VS";
alt_name[9] = "E.M.M.I.-10GS";
alt_name[10] = "E.M.M.I.-11KR";
alt_name[11] = "E.M.M.I.-12RL";
alt_name[12] = "E.M.M.I.-13RB";
alt_name[13] = "E.M.M.I.-01EVA";
alt_name[14] = "E.M.M.I.-00EVA";
alt_name[15] = "E.M.M.I.-02EVA";
alt_name[16] = "E.M.M.I.-14IV";
alt_name[17] = "E.M.M.I.-15SL";
alt_name[18] = "E.M.M.I.-16MG";
alt_name[19] = "E.M.M.I.-17WM";
alt_name[20] = "E.M.M.I.-18FS";
alt_name[21] = "E.M.M.I.-19FV";
alt_name[22] = "E.M.M.I.-20FG";
alt_name[23] = "E.M.M.I.-21ΩS";
alt_name[24] = "E.M.M.I.-22EA";
alt_name[25] = "E.M.M.I.-23AB";
alt_name[26] = "E.M.M.I.-24SN";

alt_name_desc[0] = "Spider Magnet";
alt_name_desc[1] = "Prototype";
alt_name_desc[2] = "Morph Ball";
alt_name_desc[3] = "Speed Booster";
alt_name_desc[4] = "Ice Missiles";
alt_name_desc[5] = "Wave Beam";
alt_name_desc[6] = "Power Bomb";
alt_name_desc[7] = "Power Suit";
alt_name_desc[8] = "Varia Suit";
alt_name_desc[9] = "Gravity Suit";
alt_name_desc[10] = "Kraid";
alt_name_desc[11] = "Ridley";
alt_name_desc[12] = "Raven Beak";
alt_name_desc[13] = "EVA UNIT 01";
alt_name_desc[14] = "EVA UNIT 00";
alt_name_desc[15] = "EVA UNIT 02";
alt_name_desc[16] = "Inverted";
alt_name_desc[17] = "Sentinel";
alt_name_desc[18] = "Mango";
alt_name_desc[19] = "Watermelon";
alt_name_desc[20] = "Fusion Suit";
alt_name_desc[21] = "Fusion Varia";
alt_name_desc[22] = "Fusion Gravity";
alt_name_desc[23] = "Omega Suit";
alt_name_desc[24] = "Early Access";
alt_name_desc[25] = "Abyss";
alt_name_desc[26] = "Seasonal";

draw_set_halign(fa_left);

//sound stuff
sound_set[0] = "sound ON";
sound_set[1] = "turret ON";
sound_set[2] = "sound OFF";

if "alpher" not in self {
       alpher = 1;
}

if "alpher_alt" not in self {
       alpher_alt = 0;
}

if "sound" not in self {
       sound = 0;
}

if(alpher > 0){
    alpher -= 0.05;
}

if(alpher_alt > 0){
    alpher_alt -= 0.05;
}

if(alt_cur == 0 && prev_alt == 26){
    alpher = 2;
    if(sound < 2){
        sound++;
    }else{
        sound = 0;
    }
}else if(alt_cur == 26 && prev_alt == 0){
    alpher = 2;
    if(sound > 0){
        sound--;
    }else{
        sound = 2;
    }
}

if(alt_cur != prev_alt){
    alpher_alt = 2
}

set_color_profile_slot(27, 0, sound, 0, 0);

draw_sprite_ext(sprite_get("sound"), sound, temp_x + 12, temp_y + 42, 2, 2, 0, c_white, alpher);
draw_set_font(asset_get("fName"));
draw_text_ext_color(temp_x + 42, temp_y + 46, sound_set[sound], 1, 100000000000, c_black, c_black, c_black, c_black, alpher);
draw_text_ext_color(temp_x + 38, temp_y + 46, sound_set[sound], 1, 100000000000, c_black, c_black, c_black, c_black, alpher);
draw_text_ext_color(temp_x + 40, temp_y + 48, sound_set[sound], 1, 100000000000, c_black, c_black, c_black, c_black, alpher);
draw_text_ext_color(temp_x + 40, temp_y + 44, sound_set[sound], 1, 100000000000, c_black, c_black, c_black, c_black, alpher);
draw_text_ext_color(temp_x + 40, temp_y + 46, sound_set[sound], 1, 100000000000, c_white, c_white, c_white, c_white, alpher);

prev_alt = alt_cur;

//extra icons
if(alt_cur == 24){
    draw_sprite_ext(sprite_get("ccs_icons"), 3, temp_x + 180, temp_y + 102, 1, 1, 0, c_white, 1);
}else if(alt_cur == 25){
    draw_sprite_ext(sprite_get("ccs_icons"), 1, temp_x + 180, temp_y + 102, 1, 1, 0, c_white, 1);
}else if(alt_cur == 26){
    draw_sprite_ext(sprite_get("ccs_icons"), 2, temp_x + 180, temp_y + 102, 1, 1, 0, c_white, 1);
}

//alt name
textDraw(temp_x + 60, temp_y + 141, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);
textDraw(temp_x + 60, temp_y + 139, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);
textDraw(temp_x + 60, temp_y + 137, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);
textDraw(temp_x + 56, temp_y + 141, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);
textDraw(temp_x + 56, temp_y + 139, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);
textDraw(temp_x + 56, temp_y + 137, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);
textDraw(temp_x + 58, temp_y + 141, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);
textDraw(temp_x + 58, temp_y + 137, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);
textDraw(temp_x + 58, temp_y + 139, "fName", c_white, 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);

textDraw(temp_x + 60, temp_y + 126, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);
textDraw(temp_x + 60, temp_y + 124, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);
textDraw(temp_x + 60, temp_y + 122, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);
textDraw(temp_x + 56, temp_y + 126, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);
textDraw(temp_x + 56, temp_y + 124, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);
textDraw(temp_x + 56, temp_y + 122, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);
textDraw(temp_x + 58, temp_y + 126, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);
textDraw(temp_x + 58, temp_y + 122, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);
textDraw(temp_x + 58, temp_y + 124, "fName", c_white, 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);

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



