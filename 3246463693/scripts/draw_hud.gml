if ("wft_dscharge" not in self) exit;

var temp_color = c_white;

if (get_match_setting(SET_PRACTICE)){
draw_debug_text(temp_x+5, temp_y-15, "Taunt for Deep Breath");
}

if (wft_dscharge == 0)
{
draw_sprite_ext(sprite_get("dspecial_hud"), 0, temp_x+170, temp_y-30, 2, 2, 0, temp_color, 1);
}

if (wft_dscharge == 1)
{
draw_sprite_ext(sprite_get("dspecial_hud"), 1, temp_x+170, temp_y-30, 2, 2, 0, temp_color, 1);
}

if (move_cooldown[AT_DSPECIAL])
{
draw_sprite_ext(sprite_get("dspecial_hud"), 2, temp_x+170, temp_y-30, 2, 2, 0, temp_color, 1);
}