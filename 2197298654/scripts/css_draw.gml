
if !("hue" in self) hue = 0 
if get_player_color(player) = 15 {
//remember rivals starts with 0
	hue+=1 
	if hue>255 hue-=255;
	//make hue shift every step + loop around
 
	color_rgb=make_color_rgb(167, 186, 74);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(15, 0 ,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color

	color_rgb=make_color_rgb(83, 122, 62);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(15, 1 ,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color

	color_rgb=make_color_rgb(78, 86, 48);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(15, 2 ,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color

	color_rgb=make_color_rgb(187, 168, 224);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(15, 3 ,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color

	color_rgb=make_color_rgb(148, 121, 183);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(15, 4 ,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	}
init_shader();

//cool things

// css+ by muno

var temp_x = x + 8;
var temp_y = y + 9;


patch_ver = "1.2";
patch_day = "15";
patch_month = "August";
 
var num_alts = 16;
var alt_cur = get_player_color(player);
 
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0] = "Default";
alt_name[1] = "Magnolia";
alt_name[2] = "Bunpop";
alt_name[3] = "Moldby";
alt_name[4] = "Broken Glass Man";
alt_name[5] = "Ranndall";
alt_name[6] = "Abyss";
alt_name[7] = "Early Access";
alt_name[8] = "Carl's Keyboard";
alt_name[9] = "Beecember";
alt_name[10] = "Nené";
alt_name[11] = "Anastasia";
alt_name[12] = "Poppy";
alt_name[13] = "Pluto";
alt_name[14] = "Picu";
alt_name[15] = "Pride";
 
 
 
//Patch
 
draw_set_halign(fa_left);

textDraw(temp_x + 2, temp_y + 34, "fName", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
 
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

switch(get_player_color(player)){
case 0:
draw_sprite( sprite_get("default"), 0, x + 162, y + 94 );
break;
case 1:
draw_sprite( sprite_get("magnolia"), 0, x + 164, y + 90 );
break;
case 2:
draw_sprite( sprite_get("bunpop"), 0, x + 166, y + 90 );
break;
case 3:
draw_sprite( sprite_get("moldby"), 0, x + 166, y + 90 );
break;
case 4:
draw_sprite( sprite_get("brokenglassman"), 0, x + 174, y + 100 );
break;
case 5:
draw_sprite( sprite_get("ranndall"), 0, x + 168, y + 98 );
break;
case 6:
draw_sprite( sprite_get("abyss"), 0, x + 174, y + 102 );
break;
case 7:
draw_sprite( sprite_get("earlyaccess"), 0, x + 176, y + 102 );
break;
case 8:
draw_sprite( sprite_get("carl"), 0, x + 166, y + 74 );
break;
case 9:
draw_sprite( sprite_get("beecember"), 0, x + 166, y + 90 );
break;
case 10:
draw_sprite( sprite_get("nene"), 0, x + 164, y + 90 );
break;
case 11:
draw_sprite( sprite_get("anastasia"), 0, x + 156, y + 74 );
break;
case 12:
draw_sprite( sprite_get("poppy"), 0, x + 154, y + 74 );
break;
case 13:
draw_sprite( sprite_get("pluto"), 0, x + 152, y + 70 );
break;
case 14:
draw_sprite( sprite_get("picu"), 0, x + 154, y + 72 );
break;
case 15:
draw_sprite( sprite_get("pride"), 0, x + 152, y + 72 );
break;
}