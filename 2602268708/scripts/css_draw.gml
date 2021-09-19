user_event(12);

//Fancy CSS template by Muno
//32 Alt code stolen from Kris, if you steal this keep the chain going :)
 
var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "";
patch_day = "";
patch_month = "";
 
var num_alts = 32;
var alt_cur = get_player_color(player);
 
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Chill Skeeter";
alt_name[2]  = "Scuttlebandy";
alt_name[3]  = "Chargin' Chuckya";
alt_name[4]  = "Blaster Master";
alt_name[5]  = "Bombette Buddy";
alt_name[6]  = "Seasonal";
alt_name[7]  = "Abyss";
alt_name[8]  = "Gameboy";
alt_name[9]  = "Wick";
alt_name[10] = "Overclocked";
alt_name[11] = "Prince Bully";
alt_name[12] = "Chuckyaster";
alt_name[13] = "Ghost House";
alt_name[14] = "Pooh-bah Goomba";
alt_name[15] = "Grindels and Spindels";
alt_name[16] = "Fawful Bomb";
alt_name[17] = "O'Chucks";
alt_name[18] = "Golden Piss";
alt_name[19] = "Octoomba";
alt_name[20] = "Porcupuffer";
alt_name[21] = "Topman Tribe";
alt_name[22] = "Clobberable";
alt_name[23] = "Gaybow Road";
alt_name[24] = "Numerous Bees";
alt_name[25] = "Trans Rights";
alt_name[26] = "Shifting Sans Land";
alt_name[27] = "Classic";
alt_name[28] = "Game Of The Year";
alt_name[29] = "3 & Knuckles";
alt_name[30] = "Ultimate Classic System";
alt_name[31] = "Original";
 
//stolen from ASDF Guy which stole it from Kirby, if you steal this keep the chain going
if !("hue" in self) hue = 0
if get_player_color(player) = 23 {
	hue+=.5 
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(192, 33, 255);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(23,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	
		color_rgb=make_color_rgb(255, 155, 217);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(164, 161, 173);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(255, 231, 0);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(213, 7, 7);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(255, 124, 10);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(173, 173, 209);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,6,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(250, 255, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(23,7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
}
init_shader();
 
//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 2, temp_y + 32, "fName", c_white, 0, 1000, 1, true, 1, "" + patch_ver);
 
textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);

//Alt

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(var i = 0; i < ceil(array_length(alt_name)/16); i++){
    for(var j = 0; j < min(array_length(alt_name)-i*16, 16); j++){
        var draw_color = (j+16*i == alt_cur) ? c_white : c_gray;
        var draw_x = temp_x + 2 + 10 * j;
        rectDraw(draw_x, temp_y + 137 - 5*i, draw_x + 7, temp_y + 140 - 5*i, draw_color);
    }
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 119, "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
 
 
 
user_event(12);
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work lol
    for (var i = -1; i < 2; i++){
        for (var j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 
 
 
#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);