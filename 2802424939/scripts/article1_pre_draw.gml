if (cooldown == 0)
draw_sprite_ext(sprite_get("stopwatch_field"), image_index, x, y, 1, 1, 0, get_player_hud_color(player), 1);
else if (cooldown == 1)
draw_sprite_ext(sprite_get("stopwatch_field"), image_index, x, y, 1, 1, 0, c_gray, 1);