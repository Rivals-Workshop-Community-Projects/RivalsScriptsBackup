var temp_color = c_white;

if (move_cooldown[AT_JAB] == 0)
{
draw_sprite_ext(sprite_get("ring_hud"), 0, temp_x+160, temp_y-42, 2, 2, 0, temp_color, 1);
}

if (!move_cooldown[AT_JAB] == 0)
{
draw_sprite_ext(sprite_get("ring_hud"), 1, temp_x+160, temp_y-42, 2, 2, 0, temp_color, 1);
}