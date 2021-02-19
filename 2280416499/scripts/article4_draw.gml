draw_set_valign(fa_top);
textDraw(x, y, "medFont", make_color_hsv(target.training_town_color, (target.training_town_combo - 1) * 30, 255), 50, 1000, fa_center, 1 + 0.15 * target.training_town_combo, true, 1, string(target.training_town_combo) + " HIT" + ((target.training_town_combo > 1) ? "S" : ""), false);
draw_set_valign(fa_top);
textDraw(x, y - 20, "fName", make_color_hsv(target.training_town_color, (target.training_town_combo - 1) * 30, 255), 20, 1000, fa_center, 1, true, 1, string(get_player_damage(target.player) - target.training_town_base_damage) + " DAMAGE", false);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;