init_shader();

var num_alts = 15- (alt_cur > 14) * 2;
var alt_cur = get_player_color(player);
var default_alt = 0;
var offset = 0;
if alt_cur > 14 offset += 15;
var temp_x = x + 8;
var temp_y = y + 9;

//Alt name init. var doesn't work with arrays lol
alt_name[0]  = "Red Scarf";
alt_name[1]  = "Yellow Scarf";
alt_name[2]  = "Pink Scarf";
alt_name[3]  = "Blue Scarf";
alt_name[4]  = "White Scarf";
alt_name[5]  = "Corazon";
alt_name[6]  = "Lilac";
alt_name[7]  = "Milla";
alt_name[8]  = "Mayor Zhao";
alt_name[9]  = "Garfield";
alt_name[10]  = "Litten";
alt_name[11] = "Sprigatito";
alt_name[12]  = "Big";
alt_name[13] = "Ratchet";
alt_name[14] = "Rivet";

alt_name[15]  = "Red Scarf";
alt_name[16]  = "Yellow Scarf";
alt_name[17]  = "Pink Scarf";
alt_name[18]  = "Blue Scarf";
alt_name[19]  = "White Scarf";
alt_name[20]  = "Corazon";
alt_name[21]  = "Lilac";
alt_name[22]  = "Milla";
alt_name[23]  = "Mayor Zhao";
alt_name[24]  = "Garfield";
alt_name[25]  = "Litten";
alt_name[26] = "Sprigatito";
alt_name[27]  = "Big";
alt_name[28] = "Ratchet";
alt_name[29] = "Rivet";

draw_sprite(sprite_get("css_voice"), (alt_cur > 13) , x + 78, y + 16);

//Play sound effect upon load or upon switching to a non voiced alt
if (alt_cur == 0 && get_color_profile_slot_r(0, 0) == 64)
{
    sound_stop(sound_get("motorbike_extra"));
    sound_play(sound_get("motorbike_extra"));
	set_color_profile_slot(0, 0, 65, 124, 48);
	set_color_profile_slot(14, 0, 159, 160, 160);
	set_color_profile_slot(15, 0, 64, 124, 48);
	set_color_profile_slot(29, 0, 160, 160, 160);
}
if (alt_cur == 14 && get_color_profile_slot_r(14, 0) == 160)
{
    sound_stop(sound_get("motorbike_extra"));
    sound_play(sound_get("motorbike_extra"));
	set_color_profile_slot(0, 0, 65, 124, 48);
	set_color_profile_slot(14, 0, 159, 160, 160);
	set_color_profile_slot(15, 0, 64, 124, 48);
	set_color_profile_slot(29, 0, 160, 160, 160);
}

//Play voice to let the player know that there will be a voice with this range of alts
if (alt_cur == 15 && get_color_profile_slot_r(15, 0) == 64)
{
    sound_stop(sound_get("intro"));
    sound_play(sound_get("intro"));
    set_color_profile_slot(0, 0, 64, 124, 48);
	set_color_profile_slot(14, 0, 160, 160, 160);
	set_color_profile_slot(15, 0, 65, 124, 48);
	set_color_profile_slot(29, 0, 159, 160, 160);
}

if (alt_cur == 29 && get_color_profile_slot_r(29, 0) == 160)
{
    sound_stop(sound_get("intro"));
    sound_play(sound_get("intro"));
    set_color_profile_slot(0, 0, 64, 124, 48);
	set_color_profile_slot(14, 0, 160, 160, 160);
	set_color_profile_slot(15, 0, 65, 124, 48);
	set_color_profile_slot(29, 0, 159, 160, 160);
}

//Patch

draw_set_halign(fa_left);

//Alt

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);

for(i = 0; i < (num_alts); i++){
	var draw_color = (i = alt_cur - offset) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 10 * i;
	rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, (draw_color));
}

draw_set_halign(fa_left);
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, alt_name[alt_cur]);
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);



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

#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);


