//Article post drawing

if (player_id.emerald_platform == true){
	if (player_id.state_timer <= 41){
	draw_sprite_ext(sprite_get("plat"), 0, player_id.x, player_id.y-235 + (player_id.state_timer * 6), 1 * spr_dir, 1, 0, c_white, 1);
	}
	if (player_id.state_timer > 41){
	draw_sprite_ext(sprite_get("plat"), 0, player_id.x, player_id.y, 1 * spr_dir, 1, 0, c_white, 1);
	}
}