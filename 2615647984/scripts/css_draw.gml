var temp_x = x + 8;
var temp_y = y + 9;

var num_alts = 32;
var alt_cur = get_player_color(player);

// Intro Sound
//sound_play(sound_get("oh"));
//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default";
alt_name[1]  = "Blue";
alt_name[2]  = "Red";
alt_name[3]  = "Green";
alt_name[4]  = "Black & White";
alt_name[5]  = "Purple";
alt_name[6]  = "Dark";
alt_name[7]  = "Star Warrior";
alt_name[8]  = "Abyss";
alt_name[9]  = "Infamous";
alt_name[10]  = "Pretty in Pink";
alt_name[11]  = "Yellow";
alt_name[12]  = "Lime";
alt_name[13]  = "Cyan";
alt_name[14]  = "Man's of Teal";
alt_name[15]  = "Edge Red";
alt_name[16]  = "Edge Blue";
alt_name[17]  = "Bronze";
alt_name[18]  = "Silver";
alt_name[19]  = "Gold";
alt_name[20]  = "Coal";
alt_name[21]  = "Primary";
alt_name[22]  = "Secondary";
alt_name[23]  = "Cold";
alt_name[24]  = "Hot";
alt_name[25]  = "Monstrous";
alt_name[26]  = "Superb";
alt_name[27]  = "Pocket";
alt_name[28]  = "Inverted";
alt_name[29]  = "Trans Rights";
alt_name[30]  = "BLM";
alt_name[31]  = "#SoRetro";




//Alt


draw_set_halign(fa_left);
//Alt


rectDraw(x+10, temp_y +125, x + 210, temp_y +142, c_black);
for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	if i > 15 {
		var draw_x = temp_x + 4 + 11 * (i - 16);
		rectDraw(draw_x, temp_y +140, draw_x + 8, temp_y +134, draw_color);
	} else {
		var draw_x = temp_x + 4 + 11 * i;
		rectDraw(draw_x, temp_y +133, draw_x + 8, temp_y +127, draw_color);
	}
}

draw_set_halign(fa_left);

//include alt. name
textDraw(temp_x + 2, temp_y + 112, "fName", c_white, 0, 1000, 1, true, 1, "#" + string(alt_cur+1) + ": " + alt_name[alt_cur]);
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 112, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));



#define draw_button(_x, _y, _width, _height, _image, _use_player_color) {
    if ((get_instance_x(cursor_id) >= x + _x && get_instance_x(cursor_id) <= x + _x + _width) && (get_instance_y(cursor_id) >= y + _y && get_instance_y(cursor_id) <= y + _y + _height)) {
        suppress_cursor = true;
        draw_sprite_ext(_image, 1, x + _x, y + _y, 1, 1, 0, _use_player_color ? get_player_hud_color(player) : c_white , 1);
        return true;
    } else {
        draw_sprite_ext(_image, 0, x + _x, y + _y, 1, 1, 0, _use_player_color ? get_player_hud_color(player) : c_white, 1);
        return false;
    }
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



#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);



