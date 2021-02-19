//article2_init

init = 0;
sprite_index = sprite_get("dream_mist_layer2");

goal_x = x;
goal_y = y;

moving_x = true;
moving_y = true;

state = 0;
state_timer = 0;
timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = true;
destroy = false;
destroy_delay = 0;
destroy_particle = 0;