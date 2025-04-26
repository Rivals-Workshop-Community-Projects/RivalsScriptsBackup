var temp_x = x;
var temp_y = y;

var num_alts = 33;
var real_player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : player;
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
'BLW',
'Genesis',
'Champions',
'"Make It Yourself"'
'Ghostride'
];
champ_name = [
'Seesaw/Undertale 2',
'Tenchu/Monika',
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

if(get_player_color(real_player) != prev_alt) || champ_cur != prev_champ{
    alpher_alt = 3;
}

prev_alt = get_player_color(real_player);
prev_champ = champ_cur;

//extra icons
switch get_player_color(real_player){
    case 4:
        draw_sprite_ext(sprite_get("css_icons"), 10, temp_x + 180, temp_y + 102 + runes_mode, 1, 1, 0, c_white, 1);
    break;
    case 13:
        draw_sprite_ext(sprite_get("css_icons"), 2, temp_x + 180, temp_y + 102 + runes_mode, 1, 1, 0, c_white, 1);
    break;
    case 14:
        draw_sprite_ext(sprite_get("css_icons"), 3, temp_x + 180, temp_y + 102 + runes_mode, 1, 1, 0, c_white, 1);
    break;
    case 18:
        draw_sprite_ext(sprite_get("css_icons"), 7, temp_x + 180, temp_y + 102 + runes_mode, 1, 1, 0, c_white, 1);
    break;
    case 20:
        draw_sprite_ext(sprite_get("css_icons"), 9, temp_x + 180, temp_y + 102 + runes_mode, 1, 1, 0, c_white, 1);
    break;
    case 22:
        draw_sprite_ext(sprite_get("css_icons"), 12, temp_x + 180, temp_y + 102 + runes_mode, 1, 1, 0, c_white, 1);
    break;
    case 23:
        draw_sprite_ext(sprite_get("css_champ"), 0, temp_x + 180, temp_y + 102 + runes_mode, 1, 1, 0, c_white, 1);
        if hovering == 40{
            draw_sprite_ext(sprite_get("css_champ_flash"), 0, temp_x + 180, temp_y + 102 + runes_mode, 1, 1, 0, c_white, 0.8 + (sin(hovering_timer / 20) * -0.8));
        }
    break;
    case 24:
        draw_sprite_ext(sprite_get("css_customizer"), 0, temp_x + 180, temp_y + 102 + runes_mode, 1, 1, 0, c_white, 1 - (customizer_timer / 20));
        if hovering == 40{
            draw_sprite_ext(sprite_get("css_customizer_flash"), 0, temp_x + 180, temp_y + 102 + runes_mode, 1, 1, 0, c_white, 0.8 + (sin(hovering_timer / 20) * -0.8));
        }
        if customizer_active{
            draw_sprite_ext(sprite_get("css_background"), 0, x + 8, y + 8, 1, 1, 0, c_white, (customizer_timer / 20));
            draw_sprite_ext(previews[preview_animation][0], preview_frame, temp_x + 60, temp_y + 110 + runes_mode, 2, 2, 0, c_white, -1 + (customizer_timer / 20));
            for (var i = 1; i < 4; i++;){
                draw_sprite_ext(sprite_get("css_customizer"), i, temp_x + 4 + ((i - 1) * 30), temp_y + 116 + (runes_mode * 1.5), 1, 1, 0, c_lime, -1 + (customizer_timer / 20));
                if hovering == 40 + i{
                    draw_sprite_ext(sprite_get("css_customizer_flash"), i, temp_x + 4 + ((i - 1) * 30), temp_y + 116 + (runes_mode * 1.5), 1, 1, 0, c_white, 0.8 + (sin(hovering_timer / 20) * -0.8));
                }
            }
            if selected_slot != -1{
                for (var i = 0; i < (selected_slot <= 1? 30:10); i++;){
                    draw_sprite_ext(sprite_get("css_customizer"), 4, x + 118 + (18 * (i % 5)), y - 10 + (18 * (1 + round(((i + 3) / 5)))), 1, 1, 0, i == 0? make_color_hsv(hue2, color_get_saturation(color_rgb), color_get_value(color_rgb)):make_color_rgb(custom_color_array[i][0][0], custom_color_array[i][0][1], custom_color_array[i][0][2]), -1 + (customizer_timer / 20));
                    if hovering == i{
                        draw_sprite_ext(sprite_get("css_customizer_flash"), 4, x + 118 + (18 * (i % 5)), y - 10 + (18 * (1 + round(((i + 3) / 5)))), 1, 1, 0, c_white, 0.8 + (sin(hovering_timer / 20) * -0.8));
                    }
                }
            }
            else{
                for (var i = 0; i < 8; i++;){
                    draw_sprite_ext(sprite_get("css_customizer"), 5 + i, x + 86 + (30 * (i % 4)), y - 10 + (30 * (1 + round(((i + 2.5) / 4)))) + (runes_mode * 1.5), 1, 1, 0, c_white, -1 + (customizer_timer / 20));
                    if hovering == 50 + i{
                        draw_sprite_ext(sprite_get("css_customizer_flash"), 5 + i, x + 86 + (30 * (i % 4)), y - 10 + (30 * (1 + round(((i + 2.5) / 4)))) + (runes_mode * 1.5), 1, 1, 0, c_white, 0.8 + (sin(hovering_timer / 20) * -0.8));
                    }
                }
            }
        }
    break;
}

// genesis css glitch
if(get_player_color(player) == 22){
    if random_func_2(69, 2, 1) == 0 {
        var fs = random_func(0, sprite_height -1, 1);
        draw_sprite_part_ext(sprite_get("charselect"),0,0,fs, abs(sprite_width), random_func(25, 60, 1)+1, (x+(random_func(2, 3, 1))*7), y+fs*2 - sprite_get_yoffset(sprite_index)*2, 2, 2, image_blend, 1);
    }
}


//alt name
var color = get_player_color(real_player) >= 23? color_hsv:make_color_rgb(get_color_profile_slot_r(get_player_color(real_player), 0), get_color_profile_slot_g(get_player_color(real_player), 0), get_color_profile_slot_b(get_player_color(real_player), 0));
var colorgroup = get_player_color(real_player) >= 23? color_hsv:make_color_rgb(get_color_profile_slot_r(get_player_color(real_player), 0), get_color_profile_slot_g(get_player_color(real_player), 0), get_color_profile_slot_b(get_player_color(real_player), 0));
textDraw(temp_x + 12, temp_y + 125 + runes_mode, "fName", color, 14, 200, 1, 1, alpher_alt, alt_name[get_player_color(real_player)], c_black);
if get_player_color(real_player) == 23{
    textDraw(temp_x + 12, temp_y + 112 + runes_mode, "fName", color, 14, 200, 1, 1, alpher_alt, champ_name[champ_cur], c_black);
    textDraw(temp_x + 118, temp_y + 36, "fName", colorgroup, 14, 120, 1, 1, alpher_alt, "Press A/B on icon to swap", c_black);
}
else if get_player_color(real_player) == 24{
    textDraw(temp_x + 100, temp_y + 36, "fName", colorgroup, 14, 120, 1, 1, alpher_alt, "Press A on icon to customize", c_black);
}

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