//article3_init - slash

init = 0;
sprite_index = sprite_get("na_slash");
image_alpha = 0;
image_xscale = 15;

state = 0;
state_timer = 0;
state_end = 0;

alp2 = 6;
tmp_x_str = 0;
tmp_y_str = 0;
tmpdir = 1;

quicker = false;

//length_scale = 15;

free = true;
can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

afterimage_mode = false;
ai_angle_pass = 0;
backward = false;