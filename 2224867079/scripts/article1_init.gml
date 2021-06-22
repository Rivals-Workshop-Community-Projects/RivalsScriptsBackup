//article1_init

init = 0;
sprite_index = sprite_get("_pho_empty");
mask_index = sprite_get("article_collision_mask");

stance = 0;
state = 0;
state_timer = 0;
idle_cycle = 0;
use_left = 1;

free = false;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;