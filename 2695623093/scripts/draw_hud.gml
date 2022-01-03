var temp_color_nspecial = c_white;
if (move_cooldown[AT_NSPECIAL] > 0) temp_color_nspecial = c_gray;
draw_sprite_ext(sprite_get("nspecialhud"), 0, temp_x+176, temp_y-26, 2, 2, 0, temp_color_nspecial, 1);