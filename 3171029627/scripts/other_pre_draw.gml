var sprite_spear = noone;
var state_draw = 0;

with (other_player_id) {
	sprite_spear = sprite_get("torment_spears");
}

//char_height
if (instance_exists(other_player_id.torment) && other_player_id.torment.state_draw >= 0 && other_player_id.torment_opponent == id){
	with (other_player_id) {
		shader_start();
	}
	state_draw = other_player_id.torment.state_draw;
	draw_sprite_ext(sprite_spear, state_draw, x-50*spr_dir, y-char_height/2, spr_dir, 1, 0, c_white, 1);
	with (other_player_id) {
		shader_end();
	}
}