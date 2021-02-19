//article2_init - void

init = 0;
sprite_index = asset_get("empty_sprite");

state = 0;
state_timer = 0;
state_end = 0;

loop_count = 0;
loop_max = 16; //10

void_speed = 3;

tmpdir = 1;

free = true;
can_be_grounded = false;
ignores_walls = true;
uses_shader = false;

parried_player = -4;