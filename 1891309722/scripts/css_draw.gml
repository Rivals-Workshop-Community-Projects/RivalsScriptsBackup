var temp_x = x + 8;
var temp_y = y + 9;
if (!"css_hue" in self) {
	css_hue = 0;
}

patch_ver = "1.63";
patch_day = "JUL";
patch_month = "7";

var num_alts = 16;
var alt_cur = get_player_color(player);



//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default";
alt_name[1]  = "Color Picker";
alt_name[2]  = "G7";
alt_name[3]  = "Christmas";
alt_name[4]  = "T. Chosen One";
alt_name[5]  = "Pink/Yellow";
alt_name[6]  = "Purple/White";
alt_name[7]  = "Orange/Magenta";
alt_name[8]  = "Umbrella";
alt_name[9]  = "FLLFFL";
alt_name[10] = "Nhazul";
alt_name[11] = "Tentionmaru";
alt_name[12] = "One";
alt_name[13] = "Gildedguy";
alt_name[14] = "Y.U.P.I.A.";
alt_name[15] = "Hyun";


css_hue+=4;
if (css_hue>255) {
	css_hue-=255; 
}
color_rgb=make_color_rgb( 255, 0, 255 ); 
hue2=(color_get_hue(color_rgb)+css_hue) mod 255;
color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
init_shader();
if (alt_cur == 15) {
	draw_sprite_ext(sprite_get("eyes"), 1, temp_x, temp_y-1, 1, 1, 0, color_hsv, 1 );
}

//Patch

draw_set_halign(fa_left);

textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);

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

if (alt_cur == 15) {
	draw_sprite_ext(sprite_get("star"), 1, temp_x+92, temp_y+124, 1, 1, 0, c_white, 1 );
} else if (alt_cur == 1) {
	draw_sprite_ext(sprite_get("star"), 1, temp_x+146, temp_y+124, 1, 1, 0, c_white, 1 );
} else if (alt_cur == 2) {
	draw_sprite_ext(sprite_get("star"), 1, temp_x+76, temp_y+124, 1, 1, 0, c_white, 1 );
} else if (alt_cur == 3) {
	draw_sprite_ext(sprite_get("star"), 1, temp_x+132, temp_y+124, 1, 1, 0, c_white, 1 );
} else if (alt_cur == 4) {
	draw_sprite_ext(sprite_get("star"), 1, temp_x+156, temp_y+124, 1, 1, 0, c_white, 1 );
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
