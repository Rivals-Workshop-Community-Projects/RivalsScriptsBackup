if "runes" not in self exit;

var dx = temp_x + 24;
var dy = temp_y - 32;

if !phone_cheats[CHEAT_TRAILER]{
	draw_sprite(sprite_get("ui_rune_reminder"), cur_rune, dx, dy);
}



muno_event_type = 5;
user_event(14);