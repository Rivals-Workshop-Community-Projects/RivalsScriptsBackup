var temp_x = x;
var temp_y = y;

var alt_cur = get_player_color(player);
if "prev_alt" not in self {
       prev_alt = 0;  
}

if "sound_played" not in self {
       sound_played = 0;  
}

// Intro Sound
if (get_color_profile_slot_b(0, 7) == 121) {
    sound_play(sound_get("css_sound"), false, false, 1.5);                                // Play Snake's CSS sound effect.
    set_color_profile_slot(0, 7, get_color_profile_slot_r(0, 7), get_color_profile_slot_g(0, 7), get_color_profile_slot_b(0, 7) + 1);
}

//alt names
alt_name[0] = "Power Suit";
alt_name[1] = "Varia Suit";
alt_name[2] = "Gravity Suit";
alt_name[3] = "Super Power Suit";
alt_name[4] = "Super Varia Suit";
alt_name[5] = "Super Gravity Suit";
alt_name[6] = "Fusion Power Suit";
alt_name[7] = "Fusion Varia Suit";
alt_name[8] = "Fusion Gravity Suit";
alt_name[9] = "White EMMI";
alt_name[10] = "Yellow EMMI";
alt_name[11] = "Blue EMMI";
alt_name[12] = "Green EMMI";
alt_name[13] = "Red EMMI";
alt_name[14] = "Cyan EMMI";
alt_name[15] = "Ridley";
alt_name[16] = "SA-X";
alt_name[17] = "Dark Samus";
alt_name[18] = "Justin Bailey";
alt_name[19] = "Zero Suit";
alt_name[20] = "Metroid Suit";
alt_name[21] = "Sketch Suit";
alt_name[22] = "Phazon Suit";
alt_name[23] = "Dark Suit";
alt_name[24] = "PED Suit";
alt_name[25] = "The Mandalorian";
alt_name[26] = "Hyper beam";
alt_name[27] = "NES";
alt_name[28] = "Metroid II";
alt_name[29] = "Galaxy";
alt_name[30] = "Abyss";
alt_name[31] = "Villains Of Aether";

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
    alpher_alt = 3;
}

prev_alt = alt_cur;

//extra icons
if(alt_cur == 30){
    draw_sprite_ext(sprite_get("ccs_icons"), 2, temp_x + 174, temp_y + 108, 1, 1, 0, c_white, 1);
}else if(alt_cur == 31){
    draw_sprite_ext(sprite_get("ccs_icons"), 9, temp_x + 174, temp_y + 108, 1, 1, 0, c_white, 1);
}else if(alt_cur == 21){
    draw_sprite_ext(sprite_get("ccs_icons"), 1, temp_x + 174, temp_y + 108, 1, 1, 0, c_white, 1);
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
textDraw(temp_x + 48, temp_y + 139, "fName", make_color_rgb(get_color_profile_slot_r(alt_cur, (alt_cur = 29? 5: 1)), get_color_profile_slot_g(alt_cur, (alt_cur = 29? 5: 1)), get_color_profile_slot_b(alt_cur, (alt_cur = 29? 5: 1))), 0, 100000, 1, false, alpher_alt, alt_name[alt_cur]);

init_shader();

//hud button
draw_sprite_ext(sprite_get("menu_" + string(menu_css_version)), button_state, temp_x + (player == 0? 12: (get_player_hud_color(player) == 8421504? 58: 74)), temp_y + (player == 0? 44: 178), 2, 2, 0, c_white, 1);

//template
cpu_hover_draw(); 
// you can put this anywhere above your #defines.
// i would recommend ending the shader first (shader_end();)

//as always, #defines go at the bottom of the script.
#define cpu_hover_draw()
if (cpu_hover_time > 0) {
    var prog = min(cpu_hover_time/10, 1);
    var colprog = min(cpu_color_swap_time/5, 1);
    var col = merge_color(cpuh_prev_color, cpuh_new_color, colprog);
    draw_sprite_ext(cpu_hover_sprite, 0, x - 4, y - 6, 2, 2, 0, col, prog);
    draw_set_alpha(prog);
    draw_debug_text(plate_bounds[2]-17, plate_bounds[3]+1, `P${cpu_hovering_player}`);
    draw_set_alpha(1);
}

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



