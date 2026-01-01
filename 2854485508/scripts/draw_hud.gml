if ("char_height" not in self) exit;
shader_start();
draw_sprite_ext(sprite_get("hud_leaf"), fspecial_cooldown <= 0 ? 0 : 1, temp_x + 176, temp_y - 28, 2, 2, 0, c_white, 1);
shader_end();