if "phone" not in self exit; // dont give the funny error message (this line is god tier)

// Muno meme
user_event(11);

// Moved this here for jank reduction (or maybe it's more jank idk)
if phone.hint_opac > 0 && phone_practice{
	var height = temp_y - 11 + ease_backOut(100, 0, round(phone.hint_opac * 10), 20, 2);
	textDraw(temp_x + 42 + phone.taunt_hint_x, height, "fName", c_white, 100, 100, fa_right, 1, true, 1, "Up + Taunt!", false);
	draw_sprite_ext(phone.spr_pho_compatibility_badges, 0, temp_x + 40 + phone.taunt_hint_x, height - 7, 1, 1, 0, c_white, 1);
}

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