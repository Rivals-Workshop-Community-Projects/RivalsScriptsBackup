var temp_x = x + 8;
var temp_y = y + 9;
 

patch_ver = " ";
patch_day = " ";
patch_month = " ";
 
var num_alts = 19;
var alt_cur = get_player_color(player);
 
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Mafia";
alt_name[2]  = "Mustache Girl";
alt_name[3]  = "Bow Kid";
alt_name[4]  = "Rumbi";
alt_name[5]  = "The Snatcher";
alt_name[6]  = "Captain of the Sea";
alt_name[7]  = "The Conductor";
alt_name[8]  = "DJ Grooves";
alt_name[9]  = "The Princess";
alt_name[10] = "The Prince";
alt_name[11] = "Gameboy";
alt_name[12] = "Retro";
alt_name[13] = "Climber";
alt_name[14] = "Rainbow";
alt_name[15] = "Detective";
alt_name[16] = "AR";
alt_name[17] = "Bluey";
alt_name[18] = "Genesis";
 
 
 
//thanks kirby
if !("hue" in self) hue = 0
if get_player_color(player) = 14 {
	hue+=1;
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb( 255, 0, 0 );
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
    set_color_profile_slot( 14, 1, color_get_red(color_hsv),color_get_green(color_hsv), color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    set_color_profile_slot( 14, 2, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
	//set the new color using rgb values from the gamemaker color
}
init_shader();

 
 
//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 
 
 
//Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = temp_x + 2 + 10 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
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