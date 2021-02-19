/*image_speed = 0;
image_alpha = max(image_alpha-0.01, 0)
//x -= 1
var xx, yy;
xx = x+19*2
yy = y+68*2
var t = get_player_color(player);
if t != image_index image_alpha = 1.5;
 
image_index = t;
 
//Here's where you set the names!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//Just change the text in the quotes to the names you want.
//It's okay if you don't have all 16 palettes enabled. You can just leave those as "Placeholder".
switch(t) {
    default: case 0: t = "Hime"; break;
    case 1: t = "BoTW"; break;
    case 2: t = "Royal"; break;
    case 3: t = "Heroic"; break;
    case 4: t = "Mountaineer"; break;
    case 5: t = "Minty"; break;
    case 6: t = "Penny"; break;
    case 7: t = "Placeholder"; break;
    case 8: t = "Placeholder"; break;
    case 9: t = "Placeholder"; break;
    case 10: t = "Placeholder"; break;
    case 11: t = "Placeholder"; break;
    case 12: t = "Placeholder"; break;
    case 13: t = "Placeholder"; break;
    case 14: t = "Placeholder"; break;
    case 15: t = "Placeholder"; break;
}
if image_alpha > 0 {
draw_set_font(1)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_sprite_ext(sprite_get("paintbrush"), 0, x+12, y+124, 1, 1, 0, c_white, image_alpha)
draw_text_color(xx-2, yy, t, c_black, c_black, c_black, c_black, image_alpha)
draw_text_color(xx+2, yy, t, c_black, c_black, c_black, c_black, image_alpha)
draw_text_color(xx, yy-2, t, c_black, c_black, c_black, c_black, image_alpha)
draw_text_color(xx, yy+2, t, c_black, c_black, c_black, c_black, image_alpha)
draw_text_color(xx+2, yy-2, t, c_black, c_black, c_black, c_black, image_alpha)
draw_text_color(xx+2, yy+2, t, c_black, c_black, c_black, c_black, image_alpha)
draw_text_color(xx-2, yy-2, t, c_black, c_black, c_black, c_black, image_alpha)
draw_text_color(xx-2, yy+2, t, c_black, c_black, c_black, c_black, image_alpha)
draw_text_color(xx, yy, t, c_white, c_white, c_white, c_white, image_alpha)
}
*/
var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "2.6";
patch_day = "28";
patch_month = "NOV";

var num_alts = 16;
var alt_cur = get_player_color(player);



//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default";
alt_name[1]  = "BoTW";
alt_name[2]  = "Royal";
alt_name[3]  = "Heroic";
alt_name[4]  = "Mountaineer";
alt_name[5]  = "Minty";
alt_name[6]  = "Penny";
alt_name[7]  = "Lumi";
alt_name[8]  = "Liz";
alt_name[9]  = "Youmu";
alt_name[10] = "Sakura";
alt_name[11] = "Reila";
alt_name[12] = "Early Access";
alt_name[13] = "Glass";
alt_name[14] = "Metal";
alt_name[15] = "Rainbow";



//Patch

draw_set_halign(fa_left);

textDraw(temp_x + 2, temp_y - 22, "fName", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver + " - " + patch_day + " " + patch_month);

//textDraw(temp_x + 2, temp_y + 44, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);



//Alt

if ("dispAlpha" not in self) {
	dispAlpha = 12;
	dispSkin = get_player_color(player);
} else if (dispSkin != get_player_color(player)) {
	dispSkin = get_player_color(player);
	dispAlpha = 8;
}

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);

for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 10 * i;
	rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}

draw_set_halign(fa_left);
//draw_set_alpha(dispAlpha);
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, dispAlpha, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
//draw_set_alpha(1);
dispAlpha-=0.1;

if (get_player_color(player) == 15) {
	if ("hue" not in self) {
		hue = 0;
		color_hsv = c_purple;
	}
	hue+=1;
	if (hue>255) {hue-=255;}
	
	color_rgb=make_color_rgb(255, 100, 255); 
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	
	init_shader();
}

if (pet_str == "ABYSS RUNE BUDDY") {
	draw_sprite(sprite_get("check"),0,temp_x+150,temp_y+130);
}



#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);



#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);