//hud draw
shader_start()
var temp_color = c_white;
if (move_cooldown[AT_FSPECIAL] > 0) temp_color = c_gray;
draw_sprite_ext(sprite_get("fspecial_cooldown_icon"), 0, temp_x+190, temp_y-12, 2, 2, 0, temp_color, 1);
shader_end()