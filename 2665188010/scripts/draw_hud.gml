//draw_hud - the x position of your HUD element is 48*(i-1)

var temp_color = c_white;
if (move_cooldown[AT_DSPECIAL] > 0) temp_color = c_gray;
draw_sprite_ext(sprite_get("future_cooldown"), 2, temp_x+186, temp_y-12, 2, 2, 0, temp_color, 1);