// Bomb Init

if (player_id.alt == 0) {
	sprite_index = sprite_get("bomb");
} else if (player_id.alt == 15) {
	sprite_index = sprite_get("bomb_gb");
} else {
	sprite_index = sprite_get("bomb_alt");
}
mask_index = sprite_get("bomb_mask");
image_index = 1;

can_be_grounded = false;
ignores_walls = true;
//uses_shader = false;
is_hittable = true;

bopped = false;
parent = noone;
