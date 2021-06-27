

shader_start()

if "blink_countdown" in self {
if (self != other ) {
var temp_color = c_white;
if (blink_countdown > 0) { temp_color = c_gray; }
draw_sprite_ext(sprite_get("nspecial_cooldown_icon"), 0, temp_x+178, temp_y-24, 2, 2, 0, temp_color, 1);
}
shader_end()
}
user_event(11);
