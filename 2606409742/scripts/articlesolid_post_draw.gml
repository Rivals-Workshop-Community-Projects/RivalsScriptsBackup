with player_id shader_start();

var idx = cracked;

var dx = x;
var dy = y;

if cracked dx += sin(get_gameplay_time() * 4) * (lerp(2, 3, cracked_timer / cracked_timer_max) + 3 * (hitstop > 0));

draw_sprite(sprite_get("cryonis_pillar"), 0, dx, dy);
if white_opac > 0.01{
	draw_sprite_ext(sprite_get("cryonis_pillar"), 1, dx, dy, 1, 1, 0, c_white, white_opac);
	draw_sprite_ext(sprite_get("cryonis_spawn"), 11 - floor(white_opac * 4), x, 0, 1, room_height, 0, c_white, white_opac);
}
draw_sprite(sprite_get("cryonis_cracks"), idx, dx, dy);

with player_id shader_end();