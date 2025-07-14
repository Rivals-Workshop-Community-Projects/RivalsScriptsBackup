// Pedestal Init

if (player_id.alt == 0) {
	sprite_index = sprite_get("bomb");
} else if (player_id.alt == 15) {
	sprite_index = sprite_get("bomb_gb");
} else {
	sprite_index = sprite_get("bomb_alt");
}
mask_index = sprite_get("bomb_p_mask")

can_be_grounded = true;
ignores_walls = false;
//uses_shader = false;

grav = 8;
destroy = false;

// Create Bomb
var bomb = instance_create(x, y, "obj_article2");
bomb.parent = self;
