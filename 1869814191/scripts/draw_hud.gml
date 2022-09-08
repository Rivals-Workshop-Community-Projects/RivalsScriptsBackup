//draw_hud - the x position of your HUD element is 48*(i-1)

var temp_color_bone = c_white;
if (blue_bone == true) temp_color_bone = c_aqua;
draw_sprite_ext(sprite_get("bone_icon"), 0, temp_x+188, temp_y-26, 2, 2, 0, temp_color_bone, 1);

var temp_color_blaster = c_white;
if (move_cooldown[AT_NSPECIAL] > 0) temp_color_blaster = c_gray;
draw_sprite_ext(sprite_get("gaster_blaster_icon"), 0, temp_x+150, temp_y-30, 2, 2, 0, temp_color_blaster, 1);

var temp_color_banana = c_white;
if (move_cooldown[AT_DTILT] > 0) temp_color_banana = c_gray;
draw_sprite_ext(sprite_get("banana_icon"), 0, temp_x+110, temp_y-20, 2, 2, 0, temp_color_banana, 1);