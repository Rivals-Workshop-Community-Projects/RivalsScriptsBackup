shader_start();
draw_sprite_ext(sprite_get("heart_gui"), ceil(move_cooldown[AT_NSPECIAL] / 801), temp_x+172, temp_y-50, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("ammometer"), ammo, temp_x+124, temp_y-12, 1, 1, 0, c_white, 1);
shader_end();