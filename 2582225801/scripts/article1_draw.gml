var col = $281a76

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//draw_text_ext_transformed_color(x, y - 5, obj_stage_main.movie_title, 16, 300, 1, 1, 0, col, col, col, col, 1);
drawText(x, y - 13, "fName", col, 0, 300, fa_center, 1, 0, 1, obj_stage_main.movie_title);

#define drawText(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline{
    for (var i = -1; i < 2; i++){
        for (var j = -1; j < 2; j++){
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];