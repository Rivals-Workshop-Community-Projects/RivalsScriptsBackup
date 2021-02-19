var temp_x = x + 8;
var temp_y = y + 9;

//Also patch in init

var alt_cur = get_player_color(player);
var alt_red = get_color_profile_slot_r(alt_cur, 0);
var alt_gre = get_color_profile_slot_g(alt_cur, 0);
var alt_blu = get_color_profile_slot_b(alt_cur, 0);
var alt_col = make_color_rgb(alt_red, alt_gre, alt_blu);

var num_alts = 16;

//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default";
alt_name[1]  = "Sonic";
alt_name[2]  = "Civic";
alt_name[3]  = "Lode";
alt_name[4]  = "Black";
alt_name[5]  = "Purple";
alt_name[6]  = "Abyss";
alt_name[7]  = "Gameboy";
alt_name[8]  = "Gold";
alt_name[9]  = "Cheeto";
alt_name[10] = "Edgy";
alt_name[11] = "Rainbow";
alt_name[12] = "Pink";
alt_name[13] = "Grass";
alt_name[14] = "Blue";
alt_name[15] = "Purple 2";


//Patch

draw_set_halign(fa_left);


//css rainbow stuff, thanks kirby
if !("hue" in self) hue = 0
if get_player_color(player) = 11 {
	hue+=.5 
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb( 84, 72, 207 ); 
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	
	color_rgb_2=make_color_rgb( 74, 39, 163 ); 
	//make a gamemaker color variable using kirby's default color (body)
	hue2_2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	
	color_hsv_2=make_color_hsv(hue2_2,color_get_saturation(color_rgb_2),color_get_value(color_rgb_2)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(11,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	set_color_profile_slot(11,1,color_get_red(color_hsv_2),color_get_green(color_hsv_2),color_get_blue(color_hsv_2));
}
init_shader();


//Alt

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);

for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 10 * i;
	rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}

rectDraw(temp_x, temp_y + 123, temp_x + 47, temp_y + 134, c_black);

draw_set_halign(fa_left);
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);



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