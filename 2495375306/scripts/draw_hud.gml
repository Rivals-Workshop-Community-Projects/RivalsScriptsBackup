//draw_debug_text(temp_x+60, temp_y-28, string(x) + string(", ") + string(y));
//draw_debug_text(temp_x+60, temp_y-14, string(room_width) + string(", ") + string(room_height));''
user_event(11);
draw_sprite_ext(sprite_get("diamond_hud"), diamond_hits, temp_x + 170, temp_y - 40, 1, 1, 0, c_white, 1);

if (!instance_exists(diamond) && move_cooldown[AT_DSPECIAL] > 0){
    draw_sprite_ext(sprite_get("diamond_hud_cooldown"), diamond_hits, temp_x + 170, temp_y - 40, 1, 1, 0, c_white, 1);
}


draw_sprite_ext(sprite_get("fail"), 0, temp_x + 60, temp_y - 98, 1, 1, 4, c_white, fail_alpha);
textDraw(temp_x+64, temp_y-40, "fName", c_white, 15, 200, fa_center, 1, true, fail_alpha, string(fail_text), false);
/*draw_set_halign(fa_center);
draw_set_font(asset_get("fName"));
draw_text_ext_transformed_colour(temp_x+64, temp_y-40, string(fail_text), 15, 200, 1, 1, 0, c_white, c_white, c_red, c_red, fail_alpha);*/

//draw_debug_text(temp_x+60, temp_y-14, string(diamond.lockout));

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
