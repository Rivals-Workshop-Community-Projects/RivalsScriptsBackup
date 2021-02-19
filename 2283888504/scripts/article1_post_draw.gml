if player_id.phone_ditto && !following{
	draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x - 7, y - 48, 1, 1, 0, get_player_hud_color(player), 1);
}