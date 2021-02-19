//post-draw
with other_player_id shader_start();
if sealmark = 2 {
	draw_sprite(other_player_id.deathmark, 0, x-48+(get_gameplay_time() mod 38.4)*2.5, y-char_height*.5);
}
with other_player_id shader_end();