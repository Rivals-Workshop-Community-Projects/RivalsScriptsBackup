shader_start();
draw_sprite_ext(sprite_get("cooldown_gui"), sign(move_cooldown[AT_FSPECIAL]) + 2*sign(move_cooldown[AT_DSPECIAL]), temp_x-8, temp_y-36, 2, 2, 0, c_white, 1);
shader_end();