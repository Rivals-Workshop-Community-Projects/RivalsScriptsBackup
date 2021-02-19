//article1_init - bubble

init = 0;
sprite_index = sprite_get("na_bubble");

state = 0;
state_timer = 0;
state_end = 0;
idle_cycle = 0;
tier = 1;
mode = 0;
modebuffer = 0;
elec_timer = 0;
cooldown = 0;

hbox_got_hit = -4;

void_range = 0;
disable_range = 0;

free = false;
can_be_grounded = false;
ignores_walls = false;
uses_shader = false;

track_num = 0;
track_num_max = 2;//2

