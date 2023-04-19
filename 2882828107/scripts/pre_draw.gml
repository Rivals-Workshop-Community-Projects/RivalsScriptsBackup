// pre-draw
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if (attack == AT_TAUNT && state_timer <= 48){
		draw_sprite_ext(sprite_get("watering_cannot"), floor(state_timer / 4), x, y, spr_dir, 1, 0, c_white, 1);
	}
}

if ((state == PS_RESPAWN) || (attack == AT_TAUNT && free)) && (sprite_index == sprite_get("idle") || sprite_index == sprite_get("taunt")){
	draw_sprite_ext(sprite_get("plat_back"), 0, x, y, spr_dir, 1, 0, c_white, 1);
}