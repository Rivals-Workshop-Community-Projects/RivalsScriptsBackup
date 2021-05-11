//article1 init

init = 0;
sprite_index = sprite_get("moon");

image_xscale = 2;
image_yscale = 2;
fake_angle = 330

state = 0;
state_timer = 0;
state_end = 0;
idle_cycle = 0;
use_left = 2;

free = false;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

fake_mhID = -4;
fake_hpo = -4;
altmoon = false;

old_vsp = -9;

//!!--!!

r_dur = 50;
r_timer = 0;
alp_start = 0.9//0.7