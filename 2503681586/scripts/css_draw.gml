var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "V1.6";
patch_day = "21";
patch_month = "JAN";

var num_alts = 32;
var alt_cur = get_player_color(player);

//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Kash & Mone";
alt_name[1]  = "Red & Clay";
alt_name[2]  = "Green & Lime";
alt_name[3]  = "Blue & Berry";
alt_name[4]  = "Purple and Grape";
alt_name[5]  = "Black & White";
alt_name[6]  = "Nana & Popo";
alt_name[7]  = "Black & Winning";
alt_name[8]  = "Snow & Ice";
alt_name[9]  = "Pink & Magenta";
alt_name[10] = "Moss & Brown";
alt_name[11] = "Beach & Coral";
alt_name[12] = "Brick & Mortar";
alt_name[13] = "Infamous & Lust";
alt_name[14] = "Kirb & Soup";
alt_name[15] = "Aei & Ou";
alt_name[16]  = "Ru & Zo";
alt_name[17]  = "Chad & Rat";
alt_name[18]  = "Panzer & Tank";
alt_name[19]  = "Flippy & Gravity";
alt_name[20]  = "Hime & Orochi";
alt_name[21]  = "Spongebob & Patrick";
alt_name[22]  = "Banjo & Kazooie";
alt_name[23]  = "Yooka & Laylee";
alt_name[24]  = "Tangela & Magikarp";
alt_name[25]  = "Lileep & Anorith";
alt_name[26] = "Mareanie & Corsola";
alt_name[27] = "Candy & Cane";
alt_name[28] = "Bee & Hive";
alt_name[29] = "Red & Black";
alt_name[30] = "Blue & Black";
alt_name[31] = "Green & Black";

//Patch

draw_set_halign(fa_left);

//textDraw(temp_x + 2, temp_y + 64, "fName", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);

textDraw(temp_x + 2, temp_y + 32, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);



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
textDraw(temp_x + 2, temp_y + 48, "fName", c_white, 0, 1000, 1, true, 1, alt_name[alt_cur]);

//exclude alt. name
//textDraw(temp_x + 2, temp_y + 56, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));



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



