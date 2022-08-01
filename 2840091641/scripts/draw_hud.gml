//drawhud
draw_sprite_ext (sprite_get("hud_back"), get_player_color(player), temp_x + 174, temp_y - 28, 1, 1, 0, -1, .7)
draw_sprite_ext (sprite_get("hud_ammo"), ammo, temp_x + 180, temp_y - 38, 1, 1, 0, 0, .5)
draw_sprite_ext (sprite_get("hud_ammo"), ammo, temp_x + 178, temp_y - 40, 1, 1, 0, -1, 1)

//muno
muno_event_type = 5; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
user_event(14);