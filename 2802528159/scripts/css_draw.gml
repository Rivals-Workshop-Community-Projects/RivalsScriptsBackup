var temp_x = x;
var temp_y = y;

var num_alts = 27;
var alt_cur = get_player_color(player);
if "prev_alt" not in self {
       prev_alt = 0;  
}

//alt names
alt_name = [
"E.M.M.I.-02SM",
"E.M.M.I.-01P",
"E.M.M.I.-03MB",
"E.M.M.I.-04SB",
"E.M.M.I.-05IM",
"E.M.M.I.-06WB",
"E.M.M.I.-07PB",
"E.M.M.I.-08PS",
"E.M.M.I.-09VS",
"E.M.M.I.-10GS",
"E.M.M.I.-11KR",
"E.M.M.I.-12RL",
"E.M.M.I.-13RB",
"E.M.M.I.-01EVA",
"E.M.M.I.-00EVA",
"E.M.M.I.-02EVA",
"E.M.M.I.-14IV",
"E.M.M.I.-15SL",
"E.M.M.I.-163PO",
"E.M.M.I.-16FS",
"E.M.M.I.-17FV",
"E.M.M.I.-18FG",
"E.M.M.I.-19SAX",
"E.M.M.I.-20HB",
"E.M.M.I.-21EA",
"E.M.M.I.-22AB",
"E.M.M.I.-23GL",
"E.M.M.I.-24VAE"
]

alt_name_desc = [
"Spider Magnet",
"Prototype",
"Morph Ball",
"Speed Booster",
"Ice Missiles",
"Wave Beam",
"Power Bomb",
"Power Suit",
"Varia Suit",
"Gravity Suit",
"Kraid",
"Ridley",
"Raven Beak",
"EVA UNIT 01",
"EVA UNIT 00",
"EVA UNIT 02",
"Inverted",
"Sentinel",
"C-3P0",
"Fusion Suit",
"Fusion Varia",
"Fusion Gravity",
"SA-X",
"hyper beam",
"Early Access",
"Abyss",
"Galaxy",
"Villains Of Aether"
];

draw_set_halign(fa_left);

if "alpher_alt" not in self {
       alpher_alt = 0;
}

if(alpher_alt > 0){
    alpher_alt -= 0.05;
}

if(alt_cur != prev_alt){
    alpher_alt = alt_cur = 23? 6: 3
}

draw_set_font(asset_get("fName"));

prev_alt = alt_cur;

//extra icons
if(alt_cur == 24){
    draw_sprite_ext(sprite_get("ccs_icons"), 3, temp_x + 178, temp_y + 108, 1, 1, 0, c_white, 1);
}else if(alt_cur == 25){
    draw_sprite_ext(sprite_get("ccs_icons"), 2, temp_x + 178, temp_y + 108, 1, 1, 0, c_white, 1);
}else if(alt_cur == 26){
    draw_sprite_ext(sprite_get("ccs_icons"), 1, temp_x + 178, temp_y + 108, 1, 1, 0, c_white, 1);
}else if(alt_cur == 27){
    draw_sprite_ext(sprite_get("ccs_icons"), 9, temp_x + 178, temp_y + 108, 1, 1, 0, c_white, 1);
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
textDraw(temp_x + 58, temp_y + 139, "fName", make_color_rgb(get_color_profile_slot_r(alt_cur, (alt_cur = 23 || alt_cur = 26 ? 6: 0)), get_color_profile_slot_g(alt_cur, (alt_cur = 23 || alt_cur = 26 ? 6: 0)), get_color_profile_slot_b(alt_cur, (alt_cur = 23 || alt_cur = 26 ? 6: 0))), 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);

textDraw(temp_x + 60, temp_y + 124, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);
textDraw(temp_x + 60, temp_y + 122, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);
textDraw(temp_x + 60, temp_y + 120, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);
textDraw(temp_x + 56, temp_y + 124, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);
textDraw(temp_x + 56, temp_y + 122, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);
textDraw(temp_x + 56, temp_y + 120, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);
textDraw(temp_x + 58, temp_y + 124, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);
textDraw(temp_x + 58, temp_y + 120, "fName", c_black, 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);
textDraw(temp_x + 58, temp_y + 122, "fName", make_color_rgb(get_color_profile_slot_r(alt_cur, (alt_cur = 23 || alt_cur = 26 ? 6: 0)), get_color_profile_slot_g(alt_cur, (alt_cur = 23 || alt_cur = 26 ? 6: 0)), get_color_profile_slot_b(alt_cur, (alt_cur = 23 || alt_cur = 26 ? 6: 0))), 0, 100000, 1, false, alpher_alt, alt_name_desc[alt_cur]);

if get_player_color(player) == 23 init_shader();

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

