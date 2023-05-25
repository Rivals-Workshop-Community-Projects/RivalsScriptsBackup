//article1 init

init = 0;
sprite_index = sprite_get("mirage");
image_index = 1;

depth = 1;

state = 0;
state_timer = 0;
state_end = 0;

free = true;
can_be_grounded = false;
ignores_walls = false;
uses_shader = true;

blades = false;
follow_hb = -4;

usp_mode = false;