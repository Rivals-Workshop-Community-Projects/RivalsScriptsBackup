var temp_x = x + 8;
var temp_y = y + 9;

//Voice Button

var button_subimg = 3+(3*css_voice_on)+css_voice_button_hover+css_voice_button_press;

draw_sprite(sprite_get("css_voice"), button_subimg, voice_button_x, voice_button_y);


//Fancy CSS template by Muno
//Put in css_draw.gml

var num_alts = 20;
var alt_cur = get_player_color(player);

//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default";
alt_name[1]  = "Red";
alt_name[2]  = "Blue";
alt_name[3]  = "Yellow";
alt_name[4]  = "Pink";
alt_name[5]  = "Light Blue";
alt_name[6]  = "Orange";
alt_name[7]  = "Purple";
alt_name[8]  = "Brown";
alt_name[9]  = "Black";
alt_name[10]  = "White";
alt_name[11]  = "Plessie";
alt_name[12]  = "Dorrie";
alt_name[13]  = "Rex";
alt_name[14]  = "Yoob";
alt_name[15]  = "Dinock";
alt_name[16]  = "Canon";
alt_name[17]  = "Abyss";
alt_name[18]  = "Early Access";
alt_name[19]  = "Developer Alt.";

//Alt

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);

for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	var draw_x = temp_x + 2 + 9 * i;
	rectDraw(draw_x, temp_y + 137, draw_x + 6, temp_y + 140, draw_color);
}

draw_set_halign(fa_left);

//include alt. name
textDraw(temp_x + 2, temp_y + 120, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);

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