//article1_init

init = 0;
sprite_index = sprite_get("lightsentry");


state = 0;
state_timer = 0;
idle_cycle = 0;

free = true;

can_be_grounded = false;
ignores_walls = false;
uses_shader = true;

store_special = false;
store_up = false;
store_down = false;

no_speed = false;