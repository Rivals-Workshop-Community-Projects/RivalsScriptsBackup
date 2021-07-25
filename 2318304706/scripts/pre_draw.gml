if (state == PS_RESPAWN || (state == PS_ATTACK_GROUND && free && attack == AT_TAUNT)) {
	draw_sprite(sprite_get("plat_bg"), 0, x, y); 
}