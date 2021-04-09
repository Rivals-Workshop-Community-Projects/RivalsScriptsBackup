//article1_init

init = 0;
sprite_index = sprite_get("blue_proj_grounded");
mask_index = sprite_get("article_collision_mask");

state = 0;
state_timer = 0;
idle_cycle = 0;
use_left = 1;

free = false;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;