user_event(12);
var temp_x = x + 8;
var temp_y = y + 9;
var alt_cur = get_player_color(player);
var alt_red = get_color_profile_slot_r(alt_cur, 0);
var alt_gre = get_color_profile_slot_g(alt_cur, 0);
var alt_blu = get_color_profile_slot_b(alt_cur, 0);
var alt_col = make_color_rgb(alt_red, alt_gre, alt_blu);
var num_alts = 16;



//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default";
alt_name[1]  = "Toy Slinger";
alt_name[2]  = "Dying Pan";
alt_name[3]  = "Heir to the Chosen";
alt_name[4]  = "Undead Trickster";
alt_name[5]  = "Suspicious Spaceman";
alt_name[6]  = "Abyss";
alt_name[7]  = "Smiling Stick";
alt_name[8]  = "Zombie Tuber";
alt_name[9]  = "Blue Blur";
alt_name[10]  = "Hopping Hero";
alt_name[11]  = "Cosmic Entity";
alt_name[12]  = "Pink Demon";
alt_name[13]  = "Rivaled Companion";
alt_name[14]  = "Smiley Trashbag";
alt_name[15]  = "Winning the Freedom";

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);

for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 10 * i;
	rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}


draw_set_halign(fa_left);
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, alt_name[alt_cur]);

user_event(12);

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