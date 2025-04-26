/*draw_debug_text(temp_x, temp_y, string(free));
draw_debug_text(temp_x + 30, temp_y, string(can_bone));*/
shader_start();
draw_sprite_ext(sprite_get("bone_hud"), 0, temp_x, temp_y - 30, 1, 1, 0, hud_col, 1);
shader_end();