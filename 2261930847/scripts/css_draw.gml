
var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "1.3";
patch_day = "29";
patch_month = "DEC";
 
var num_alts = 16;
var alt_cur = get_player_color(player);
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Shiny";
alt_name[2]  = "Mudkip";
alt_name[3]  = "Pyukumuku";
alt_name[4]  = "Golisopod";
alt_name[5]  = "Gastrodon";
alt_name[6]  = "N/A";
alt_name[7]  = "Goomy";
alt_name[8]  = "Pikachu";
alt_name[9]  = "Axolotl";
alt_name[10] = "Military";
alt_name[11] = "Mewtwo";
alt_name[12] = "Shadow Mewtwo";
alt_name[13] = "Handy";
alt_name[14] = "Snom";
alt_name[15] = "Dunsparce";
 
 
//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
 
textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 
 
 
//Alt

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
switch (i) {
	case 1: // Blue Robe
	robe_color = make_color_rgb(238, 156, 246);
	break;
	case 2: // Yellow Robe
	robe_color = make_color_rgb(0, 169, 235);
	break;
	case 3: // Green Robe
	robe_color = make_color_rgb(102, 97, 96);
	break;
	case 4: // Black Robe
	robe_color = make_color_rgb(212, 224, 215);
	break;
	case 5: // Pink Robe
	robe_color = make_color_rgb(240, 156, 180);
	break;
	case 6: // Purple Robe
	robe_color = make_color_rgb(77, 119, 195);
	break;
	case 7: // Gameboy Robe
	robe_color = make_color_rgb(175, 148, 189);
	break;
	case 8: // Brown Robe
	robe_color = make_color_rgb(221, 241, 96);
	break;
	case 9: // Gray Robe
	robe_color = make_color_rgb(255, 203, 228);
	break;
	case 10: // White Robe
	robe_color = make_color_rgb(66, 84, 69);
	break;
	case 11: // Cyan Robe
	robe_color = make_color_rgb(116, 54, 159);
	break;
	case 12: // Orange Robe
	robe_color = make_color_rgb(255, 147, 45);
	break;
	case 13: // Light Green Robe
	robe_color = make_color_rgb(97, 165, 219);
	break;
	case 14: // Dark Blue Robe
	robe_color = make_color_rgb(77, 255, 255);
	break;
	case 15: // Dark Red Robe
	robe_color = make_color_rgb(251, 233, 139);
	break;
	default:
	robe_color = make_color_rgb(111, 200, 219);
	break;
}
alt_color[i] = robe_color;
}
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : alt_color[i];
    var draw_x = temp_x + 2 + 10 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}

 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
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

