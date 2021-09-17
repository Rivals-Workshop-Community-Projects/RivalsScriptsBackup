//css-draw
if !(variable_instance_exists(id, "cssTimer")) {
    cssTimer = 0;
}

cssTimer++;
//print_debug(string(cssTimer));
var alt_cur = get_player_color(player);

if (alt_cur == 7) {
    for(i = 0; i < 6; i++){
		set_character_color_shading(i, 0);
	}
}

//RAINBOWS
if !("hue" in self) hue = 0
if get_player_color(player) = 12 {
	hue+=.5 
	if hue>255 hue-=255;
	//make hue shift every step + loop around
	var color_rgb1=make_color_rgb(255, 0, 0);
	//make a gamemaker color variable using chosen color
	var hue1=(color_get_hue(color_rgb1)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	var color_hsv1=make_color_hsv(hue1,color_get_saturation(color_rgb1),color_get_value(color_rgb1)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(get_player_color(player),4,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	//set the new color using rgb values from the gamemaker color
}
init_shader()


var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "1.21";
patch_day = "2";
patch_month = "APR";
 
var num_alts = 25;
var alt_cur = get_player_color(player);
 
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Barr";
alt_name[1]  = "Yoyo";
alt_name[2]  = "Fry";
alt_name[3]  = "Onibi";
alt_name[4]  = "Umbrella";
alt_name[5]  = "Nhazul";
alt_name[6]  = "Oxob";
alt_name[7]  = "Andre";
alt_name[8]  = "FLFFL";
alt_name[9]  = "Chuck";
alt_name[10] = "Exodus";
alt_name[11] = "The Second Coming";
alt_name[12] = "Rainbow";
alt_name[13] = "Abyss";
alt_name[14] = "Early Access";
alt_name[15] = "Mr Red";
alt_name[16] = "Henry Stickmin";
alt_name[17] = "The Chosen One";
alt_name[18] = "Gold";
alt_name[19] = "Green";
alt_name[20] = "Brown";
alt_name[21] = "Yellow";
alt_name[22] = "Pink";
alt_name[23] = "Clairen";
alt_name[24] = "Seasonal";
 
 
 
//Patch
 
draw_set_halign(fa_left);
 
//textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
 
//textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 
 
 
//Alt

/* 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = temp_x + 2 + 10 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
*/
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 130, "fName", c_white, 0, 1000, 1, true, 1, (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
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
 
 
 
#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);