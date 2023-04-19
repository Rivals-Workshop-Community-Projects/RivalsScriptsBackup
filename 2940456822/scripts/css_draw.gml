var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "V1.2.2";
patch_day = "4";
patch_month = "MAR";

var num_alts = 24;
var alt_cur = get_player_color(player);

//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default" //Earl
alt_name[1]  = "Blue"
alt_name[2]  = "Red"
alt_name[3]  = "Green"
alt_name[4]  = "White"
alt_name[5]  = "Purple" //
alt_name[6]  = "Miror B." //
alt_name[7]  = "BLM" //
alt_name[8]  = "Cotton Candy" //
alt_name[9]  = "Pink"
alt_name[10]  = "Pink 2"
alt_name[11]  = "Orange"
alt_name[12]  = "Dark"
alt_name[13]  = "Minty Fresh"
alt_name[14]  = "Alear"
alt_name[15]  = "Steven Universe"

alt_name[16]  = "SU Future"
alt_name[17]  = "Brook"
alt_name[18]  = "Cirno"
alt_name[19]  = "Bob Ross"
alt_name[20]  = "Golden"
alt_name[21]  = "Jimmy T"
alt_name[22]  = "Jimmy P"
alt_name[23]  = "Outrageous"
alt_name[24] = ""
alt_name[25] = ""
alt_name[26] = ""
alt_name[27] = ""
alt_name[28] = ""
alt_name[29] = ""
alt_name[30] = ""
alt_name[31] = ""


//Patch
	//sprite_change_offset("taunt_dance", 162, 192);
	//draw_sprite_ext(sprite_get("taunt_dance"), alt_cur, x + 192, y, 1, 1, 0, c_white, 1);
//if !game_show {
	draw_set_halign(fa_left);

	textDraw(temp_x + 6, temp_y + 35, "fName", c_white, 0, 1000, 1, true, 1, patch_ver);

	textDraw(temp_x + 6, temp_y + 51, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
//}


//Alt
for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	if i > 15 {
		var draw_x = temp_x + 2 + 10 * (i - 16);
		rectDraw(draw_x, temp_y - 16, draw_x + 7, temp_y - 13, draw_color);
	} else {
		var draw_x = temp_x + 2 + 10 * i;
		rectDraw(draw_x, temp_y - 22, draw_x + 7, temp_y - 19, draw_color);
	}
}


draw_set_halign(fa_left);

//include alt. name
//if !game_show {
	textDraw(temp_x + 6, temp_y + 67, "fName", c_white, 0, 1000, 1, true, 1, alt_name[alt_cur]);
//}

//exclude alt. name
//textDraw(temp_x + 6, temp_y + 82, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));


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
