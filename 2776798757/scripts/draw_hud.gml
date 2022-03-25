//draw_hud - the x position of your HUD element is 48*(i-1)

var temp_color = c_white;
if (move_cooldown[AT_FSPECIAL] > 0) temp_color = c_gray;

if (current_weapon == 0)
{
draw_sprite_ext(sprite_get("x_hud_1"), 0, temp_x+-3, temp_y-42, 1, 1, 0, temp_color, 1);
}

if (current_weapon == 1)
{
draw_sprite_ext(sprite_get("x_hud_2"), 0, temp_x+-3, temp_y-42, 1, 1, 0, temp_color, 1);
}

if (current_weapon == 2)
{
draw_sprite_ext(sprite_get("x_hud_3"), 0, temp_x+-3, temp_y-42, 1, 1, 0, temp_color, 1);
}

if (current_weapon == 3)
{
draw_sprite_ext(sprite_get("x_hud_4"), 0, temp_x+-3, temp_y-42, 1, 1, 0, temp_color, 1);
}

if (current_weapon == 4)
{
draw_sprite_ext(sprite_get("x_hud_5"), 0, temp_x+-3, temp_y-42, 1, 1, 0, temp_color, 1);
}

if (current_weapon == 5)
{
draw_sprite_ext(sprite_get("x_hud_6"), 0, temp_x+-3, temp_y-42, 1, 1, 0, temp_color, 1);
}

if (current_weapon == 6)
{
draw_sprite_ext(sprite_get("x_hud_7"), 0, temp_x+-3, temp_y-42, 1, 1, 0, temp_color, 1);
}

if (current_weapon == 7)
{
draw_sprite_ext(sprite_get("x_hud_8"), 0, temp_x+-3, temp_y-42, 1, 1, 0, temp_color, 1);
}
