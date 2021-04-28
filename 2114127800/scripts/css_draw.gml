var temp_x = x + 8;
var temp_y = y + 9;
var alt_cur = get_player_color(player);
draw_sprite_ext(sprite_get("css_icons"), alt_cur, temp_x + 5, temp_y + 60, 1, 1, 0, c_white, 1); 

if (get_color_profile_slot_r(0, 0) == 143) {
    sound_play(sound_get("css_select"));
    set_color_profile_slot(0, 0, get_color_profile_slot_r(0, 0) + 1, get_color_profile_slot_g(0, 0), get_color_profile_slot_b(0, 0));
}

patch_ver = "4.5";
patch_day = "27";
patch_month = "April";

var num_alts = 16;
var alt_cur = get_player_color(player);

//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Exetior";
alt_name[1]  = "Frost";
alt_name[2]  = "Nature";
alt_name[3]  = "Earth";
alt_name[4]  = "Air";
alt_name[5]  = "Metal";
alt_name[6]  = "Abyss";
alt_name[7]  = "Champion";
alt_name[8]  = "Rykenburn";
alt_name[9]  = "Atticus";
alt_name[10]  = "Iroh";
alt_name[11]  = "Ganondorf";
alt_name[12]  = "Vaporwave";
alt_name[13]  = "Sango";
alt_name[14]  = "Cosmic";
alt_name[15]  = "Genesis 8";

//Patch

draw_set_halign(fa_left);

textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);

textDraw(temp_x + 2, temp_y + 110, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);

//Alt

rectDraw(temp_x, temp_y + 122, temp_x + 161, temp_y + 128, c_black);

for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 10 * i;
	rectDraw(draw_x, temp_y + 123, draw_x + 7, temp_y + 127, draw_color);
}

draw_set_halign(fa_left);

//include alt. name
textDraw(temp_x + 40, temp_y + 130, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);

//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));

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

user_event(12);

#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);