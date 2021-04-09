if (attack = AT_NSPECIAL || attack = AT_NSPECIAL_2)
{
	if (free)
	destroyed = true;
}

if (hitbox_timer = 1 && sprite_index = sprite_get("star_proj"))
{
	player_id.star_meter -= 1;
}