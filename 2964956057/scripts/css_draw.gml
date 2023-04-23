var temp_x = x;
var temp_y = y;

var num_alts = 32;
var alt_cur = get_player_color(("alt_fix" in self? alt_fix: player));
var runes_mode = get_match_setting(SET_RUNES) == true? -16:0;
if "prev_alt" not in self {
    prev_alt = 0;  
}

//alt names

alt_name = [
'Flowey the Flower',
'True Form',
'Flower Time',
'Hyperdeath',
'Trans-Floral',
'Best Friend',
'First Friend',
'Smiley Trashbag',
'Forgettable',
'Determined to the End',
'Annoying Celebrity',
'Brother…?',
'Rowdy Blockhead',
'Fools Before a False God',
'Outdated',
'Dark Form',
'The Failed Salesman',
'Worthless Metal',
'What an Accomplishment',
'The Jester who Knew' + chr(10) + 'true LOVE',
'VAE',
'BLW'
];

draw_set_halign(fa_left);

if "alpher" not in self {
    alpher = 1;
}

if "alpher_alt" not in self {
    alpher_alt = 2;
}

if(alpher > 0){
    alpher -= 0.05;
}

if(alpher_alt > 0){
    alpher_alt -= 0.025;
}

if(alt_cur != prev_alt){
    alpher_alt = 2;
}

prev_alt = alt_cur;

//extra icons
if(alt_cur == 4){
    draw_sprite_ext(sprite_get("ccs_icons"), 10, temp_x + 180, temp_y + 102 + runes_mode, 1, 1, 0, c_white, 1);
}else if(alt_cur == 13){
    draw_sprite_ext(sprite_get("ccs_icons"), 2, temp_x + 180, temp_y + 102 + runes_mode, 1, 1, 0, c_white, 1);
}else if(alt_cur == 14){
    draw_sprite_ext(sprite_get("ccs_icons"), 3, temp_x + 180, temp_y + 102 + runes_mode, 1, 1, 0, c_white, 1);
}else if(alt_cur == 18){
    draw_sprite_ext(sprite_get("ccs_icons"), 7, temp_x + 180, temp_y + 102 + runes_mode, 1, 1, 0, c_white, 1);
}else if(alt_cur == 20){
    draw_sprite_ext(sprite_get("ccs_icons"), 9, temp_x + 180, temp_y + 102 + runes_mode, 1, 1, 0, c_white, 1);
}

//alt name
var color = make_color_rgb(get_color_profile_slot_r(alt_cur, 1), get_color_profile_slot_g(alt_cur, 1), get_color_profile_slot_b(alt_cur, 1));
textDraw(temp_x + 12, temp_y + 125 + runes_mode, "fName", color, 14, 200, 1, 1, alpher_alt, alt_name[alt_cur], c_black);
textDraw(temp_x + 104, temp_y + 36, "fName", color, 14, 120, 1, 1, alpher_alt, "Press Playtest for changelogs", c_black);

init_shader();

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string, outline_c)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol //now it does, you're welcome
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1] + argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] + argument[6]*2, argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0], argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1] - argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0] - argument[6]*2, argument[1] + argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
    draw_text_ext_transformed_color(argument[0], argument[1] +  argument[6]*2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[10], argument[10], argument[10],argument[10], argument[8]);
}
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);