//draw_hud - the x position of your HUD element is 48*(i-1)

var temp_color = c_white;
if (move_cooldown[AT_FSPECIAL] > 0) temp_color = c_gray;
draw_sprite_ext(sprite_get("wand_cooldown"), 0, temp_x+161, temp_y-12, 2, 2, 0, temp_color, 1);
if (move_cooldown[AT_FSPECIAL] > 0) draw_sprite_ext(sprite_get("wand_disabled"), 0, temp_x+161, temp_y-12, 2, 2, 0, c_white, 1);

temp_color = c_white;
if (move_cooldown[AT_NSPECIAL] > 0) temp_color = c_gray;
// draw_sprite_ext(sprite_get("nspecial_cooldown"), grov_current_nspecial, temp_x+161, temp_y-12, 2, 2, 0, temp_color, 1);
draw_sprite_ext(sprite_get("nspecial_cooldown"), grov_current_nspecial, temp_x+186, temp_y-12, 2, 2, 0, temp_color, 1);
// if (move_cooldown[AT_NSPECIAL] > 0) draw_sprite_ext(sprite_get("wand_disabled"), 0, temp_x+159, temp_y-12, 2, 2, 0, c_white, 1);
if (move_cooldown[AT_NSPECIAL] > 0) draw_sprite_ext(sprite_get("wand_disabled"), 0, temp_x+184, temp_y-12, 2, 2, 0, c_white, 1);