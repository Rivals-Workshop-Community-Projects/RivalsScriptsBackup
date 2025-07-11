// Barrel Init

sprite_index = asset_get("empty_sprite");
if (get_player_color(player) == 0) {
	bar_sprite = sprite_get("barrel");
} else if (get_player_color(player) == 15) {
	bar_sprite = sprite_get("barrel_gb");
} else {
	bar_sprite = sprite_get("barrel_alt");
}
bar_image = 0;
mask_index = sprite_get("barrel_mask");

can_be_grounded = false;
ignores_walls = true;
//uses_shader = false;

grav = 0;
state = 0;
eye_timer = -1;

moving = true;
despawning = false;
yOff = 0;
dropped = false;
can_collide = false;
landed = false;

barreled_id = noone;
struggle_x = 0;
struggle_resist = 0;
struggle_ai_timer = 0;
struggle_ai_timer_max = 0;

hp = 12;
hit_cooldown = 0;
hit_cooldown_max = 30;
die_timer = 0;
destroy = false;
