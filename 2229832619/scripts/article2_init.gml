//article2_init - void

init = 0;
sprite_index = sprite_get("sweetspot_circle");
image_xscale = 1*0.2
image_yscale = 1*0.40
image_alpha = 0;

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
slash_immune = false;