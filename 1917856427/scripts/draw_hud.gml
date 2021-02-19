//draw_hud - the x position of your HUD element is 48*(i-1)

var temp_color = c_white;
if (move_cooldown[AT_USPECIAL] > 0) temp_color = c_gray;


draw_sprite(sprite_get("scale"), floor(MUS_NOTE), temp_x - 8, temp_y - 56);

