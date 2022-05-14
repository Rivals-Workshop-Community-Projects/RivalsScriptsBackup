//muno_event_type = 6;
//user_event(14);

//Fancy CSS template by Muno
//32 Alt code stolen from Kris, if you steal this keep the chain going :)
 
if (get_color_profile_slot_r(0, 1) == 32) {
    sound_play(sound_get("cry"), false, 0);
    set_color_profile_slot(0, 1, get_color_profile_slot_r(0, 1)+1, get_color_profile_slot_g(0, 1), get_color_profile_slot_b(0, 1));
}
 
var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "";
patch_day = "";
patch_month = "";
 
var num_alts = 32;
var alt_cur = get_player_color(player);
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Cofagrigus";
alt_name[1]  = "Shiny";
alt_name[2]  = "Runerigus";
alt_name[3]  = "Delta Variant";
alt_name[4]  = "Pyukumuku";
alt_name[5]  = "Aegislash";
alt_name[6]  = "Distorted";
alt_name[7]  = "Genwunner";
alt_name[8]  = "Desecrated";
alt_name[9]  = "Metagross";
alt_name[10]  = "Machamp";
alt_name[11] = "Galvantula";
alt_name[12] = "Yveltal";
alt_name[13] = "Golurk";
alt_name[14] = "Wambu";
alt_name[15] = "CRUSTLE GAMING";
alt_name[16] = "Hydreigon";
alt_name[17] = "Quaggy";
alt_name[18] = "Treasure";
alt_name[19] = "Reuniclus";
alt_name[20] = "Mimikyu";
alt_name[21] = "Interior Krookodile";
alt_name[22] = "Trevanent";
alt_name[23] = "Dhelmise";
alt_name[24] = "Mycolich";
alt_name[25] = "Plant Gang";
alt_name[26] = "Grab Range";
alt_name[27] = "Rainbow Sand";
alt_name[28] = "Transgengar";
alt_name[29] = "hands like these?";
alt_name[30] = "Undiscovered Group";
alt_name[31] = "Comfy As It Looks";
 
if !("startle" in self) startle = 0

if startle = 0{
sound_play(sound_get("cry"));
startle = 1;
}
 
//rainbow
//stolen from Chuckya which stole it from ASDF Guy which stole it from Kirby, if you steal this keep the chain going
if !("hue" in self) hue = 0
if get_player_color(player) = 27 {
	hue+=.5 
	if hue>255 hue-=255;
	//make hue shift every step + loop around

    color_rgb=make_color_rgb(253, 84, 255);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(27,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color

	color_rgb=make_color_rgb(235, 244, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(27,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(32, 149, 188);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(27,2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(27, 85, 150);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(27,3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(42, 42, 42);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(27,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(125, 203, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(27,5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(254, 199, 255);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(27,6,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
		color_rgb=make_color_rgb(133, 39, 196);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(27,7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
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
 
 if get_player_color(player) == 29{
textDraw(temp_x + 28, temp_y + 103, "fName", c_white, 0, 1000, 1, true, 1, "Who needs gender with" );
}
 
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
