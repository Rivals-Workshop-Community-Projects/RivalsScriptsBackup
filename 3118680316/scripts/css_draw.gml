// css_draw
var num_alts = 25;

// Version

textDraw(x + 220, y + 210, "fName", c_white, 100, 1000, fa_right, 1, false, 0.25, "char ver. " + string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR)));


// Alt costume

var alt_cur = get_player_color(player);

rectDraw(x + 10, y + 10, 201, 5, c_black);
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = x + 78 + 4 * i;
    rectDraw(draw_x, y + 10, 1, 3, draw_color);
}

var txt = "#" + string(alt_cur);

rectDraw(x + 76, y + 15, 41, 20, c_black);

textDraw(x + 82, y + 19, "fName", c_white, 20, 1000, fa_left, 1, false, 1, txt);


#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];