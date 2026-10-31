//article_projectile init
sprite_index = sprite_get("carpet_shrink");
mask_index = sprite_get("carpet_small");
image_xscale = 2*spr_dir;
image_yscale = 2;

player_id = 0;

state = 1;
state_timer = 0;
can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
free = true;

return_speed_max = 4;
platform_type = -1;