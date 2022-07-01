//draw_hud - the x position of your HUD element is 48*(i-1)

var temp_color = c_white;
if (move_cooldown[AT_NSPECIAL] > 0) temp_color = c_gray;
draw_sprite_ext(sprite_get("hud_nspecial"), 0, temp_x+142, temp_y+32, 2, 2, 0, temp_color, 1);

var temp_color = c_white;
if (move_cooldown[AT_FSPECIAL] > 0) temp_color = c_gray;
draw_sprite_ext(sprite_get("hud_fspecial"), 0, temp_x+160, temp_y+32, 2, 2, 0, temp_color, 1);

var temp_color = c_white;
if (move_cooldown[AT_DSPECIAL] > 0) temp_color = c_gray;
draw_sprite_ext(sprite_get("hud_dspecial"), 0, temp_x+178, temp_y+32, 2, 2, 0, temp_color, 1);
