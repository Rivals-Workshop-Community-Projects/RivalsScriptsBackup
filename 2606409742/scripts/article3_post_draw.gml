draw_set_valign(fa_top);
var draw_y = y - 72;
if state == 0 draw_y += round(sin(state_timer) * 4);
drawTooltip(x, draw_y, false, "Your " + player_id.spears[spear_num].name + (message_type ? " broke!" : " is badly damaged."), draw_alpha);



#define drawTooltip(drawn_x, drawn_y, gray, text, alpha)

var txt = textDraw(drawn_x + 16, drawn_y + 15, "fName", gray ? c_gray : c_white, 20, 2000, fa_left, 1, false, 0, text);

drawn_x -= txt[0] * 0.5 + 12;

var orig = draw_get_alpha();
draw_set_alpha(alpha);

for (var i = 0; i < 12; i++){
	rectDraw(drawn_x + 14 + 24 - i * 4, drawn_y + 12, txt[0] + 1 - 48 + i * 8, txt[1] - 2, c_black);
	draw_set_alpha(alpha * 0.25);
}

// draw_set_alpha(alpha);
// rectDraw(drawn_x + 12, drawn_y + 14, txt[0] + 5, txt[1] - 4, c_black);
// rectDraw(drawn_x + 14, drawn_y + 12, txt[0] + 1, txt[1], c_black);
draw_set_alpha(orig);
textDraw(drawn_x + 16, drawn_y + 15, "fName", gray ? c_gray : c_white, 20, 2000, fa_left, 1, false, alpha, text);



#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline{
    for (var i = -1; i < 2; i++){
        for (var j = -1; j < 2; j++){
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];