with (other_player_id) {
	shader_start();
	if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FTHROW) {
		draw_sprite_ext(sprite_get("fthrow_back"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
	}
	if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DTHROW) {
		draw_sprite_ext(sprite_get("dthrow"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
	}
	shader_end();
}