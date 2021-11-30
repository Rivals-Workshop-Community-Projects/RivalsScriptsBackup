if get_player_color(player) == 8
draw_sprite_ext(sprite_get("classic_outline"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);

if get_player_color(player) == 9
draw_sprite_ext(sprite_get("gba_outline"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);

if get_player_color(player) == 10
draw_sprite_ext(sprite_get("gnw_outline"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);

muno_event_type = 6;
user_event(14);

