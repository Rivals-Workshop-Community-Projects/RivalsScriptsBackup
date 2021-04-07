var temp_color_flame = c_white;
if (move_cooldown[AT_FSPECIAL] > 0) temp_color_flame = c_gray;
draw_sprite_ext(sprite_get("flame_icon"), 0, temp_x+150, temp_y-17, 2, 2, 0, temp_color_flame, 1);

var temp_color_blackhole = c_white;
if (move_cooldown[AT_DSPECIAL] > 0) temp_color_blackhole = c_gray;
draw_sprite_ext(sprite_get("blackhole_icon"), 0, temp_x+180, temp_y-18, 2, 2, 0, temp_color_blackhole, 1);