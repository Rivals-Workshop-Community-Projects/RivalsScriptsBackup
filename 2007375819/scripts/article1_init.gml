//article1_init (BLUEYTANK)
sprite_index = sprite_get("blueytank_idle");
mask_index = sprite_get("blueytank_mask");
spr_dir = player_id.spr_dir;

image_speed = 0;
state = 0;
state_timer = 0;
can_be_grounded = true;
ignores_walls = false;
free = true;
uses_shader = true;
minionHealth = 5;
turnaroundTimer = 0;