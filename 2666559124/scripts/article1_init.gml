//article1_init

if (get_player_color(player) == 11) {
	sprite_index = sprite_get("bomb_gb")
} else {
	sprite_index = sprite_get("bomb")
}
mask_index = sprite_get("bomb_hurt")

can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
hp = 1;
