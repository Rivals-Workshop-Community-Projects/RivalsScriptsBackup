//article1 init

init = 0;
sprite_index = sprite_get("door");
mask_index = sprite_get("door_hb"); //hopefully this works

is_hittable = false;//will be at state 1

image_xscale = 1;
image_yscale = 1;
image_alpha = 0; //will be set to 1 later

state = 0;
state_timer = 0;
state_end = 0;

damaged = false;//unused now, replaced with doorhealth
doorhealth = 2;//break at 0. 3 hits to destroy now. set default health here.
replaced = false;
knocked = false;

idle_cycle = 0;
idle_cycle_max = 3;

free = false;
can_be_grounded = true;
ignores_walls = false;
uses_shader = false;

door_kind = 0;
shadowtier = 0;

image_index = door_kind*4;
knock_image_index = -1;

knock_phase = 0;
knock_level = 0;

hit_lockout_duration = 0;
hit_lockout_duration_set = 6;