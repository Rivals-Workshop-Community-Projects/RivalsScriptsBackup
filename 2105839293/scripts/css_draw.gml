//Fancy CSS template by Muno
//Put in css_draw.gml

onlineCSS = player == 0;

draw_sprite_ext(sprite_get("charselect2"),0,x+8,y+8,2,2,0,-1,1);

shader_end();

draw_sprite_ext(sprite_get("charselect_highlightfix"),0,x+8,y+8,2,2,0,-1,1);
var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "0.55";
patch_day = "15";
patch_month = "MAR";

var num_alts = 16;
var alt_cur = get_player_color(player);



//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default";
alt_name[1]  = "Super Ledgehop";
alt_name[2]  = "Hazuki Dies";
alt_name[3]  = "Makes Friends";
alt_name[4]  = "Storybook";
alt_name[5]  = "Patchy";
alt_name[6]  = "Grand 7";
alt_name[7]  = "Blachuu";
alt_name[8]  = "Thug Queen";
alt_name[9]  = "Quarter";
alt_name[10] = "Justice";
alt_name[11] = "Manager";
alt_name[12] = "Kosh";
alt_name[13] = "Petal";
alt_name[14] = "Imouto";
alt_name[15] = "Benched";



//Patch

draw_set_halign(fa_left);

//textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);

//textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);



//Alt

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);

for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 10 * i;
	rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}

draw_set_halign(fa_left);

//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Col. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);

//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Col. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));



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