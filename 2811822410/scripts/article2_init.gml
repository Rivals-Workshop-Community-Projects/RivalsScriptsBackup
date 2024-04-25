//
sprite_index = sprite_get("fstrong_proj"); 
mask_index = sprite_get("fstrong_mask");

depth = 0
free = true
can_be_grounded = false;
ignores_walls = true;

state = 0;
state_timer = 0;

start_y = 0;
max_y = 32;
y_direction = 1;