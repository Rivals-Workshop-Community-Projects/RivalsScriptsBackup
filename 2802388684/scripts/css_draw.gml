muno_event_type = 6;
user_event(14);


var alt_cur = get_player_color(player);
var draw_index;


if (alt_cur <= 10) draw_index = 0;
else if (alt_cur <= 20) draw_index = 1;
else draw_index = 2;
draw_sprite(sprite_get("css_voice"), draw_index, x + 78, y + 16);