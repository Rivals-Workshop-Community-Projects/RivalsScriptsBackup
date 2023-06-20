var sprite_trident = noone;

with (other_player_id) {
	sprite_trident = sprite_get("trident_mark");
}

//char_height
if (trident_stuck == true){
	with (other_player_id) {
		shader_start();
	}
	draw_sprite_ext(sprite_trident, 0, x+4*spr_dir, y-30, -2*spr_dir, 2, 0, c_white, 1);
	with (other_player_id) {
		shader_end();
	}
}