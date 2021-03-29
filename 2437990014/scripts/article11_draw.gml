//airship_silhouettes
draw_debug_text(345, 180 - 15, "fx_index: " + string(fx_index));
draw_debug_text(345, 180, "fx_start_index: " + string(fx_start_index));
draw_debug_text(345, 180 + 15, "fx x: " + string(fx_pos_x));
draw_debug_text(345, 180 + 30, "fx y: " + string(fx_pos_y));
draw_debug_text(345, 180 + 45, "air x: " + string(x));
draw_debug_text(345, 180 + 60, "temp_x: " + string(temp_x));

draw_sprite_ext(sprite_get("distant_exp_fx"), fx_index, fx_pos_x + temp_x - 500, fx_pos_y + temp_y - 100, 2, 2, 0, c_white, 1);
