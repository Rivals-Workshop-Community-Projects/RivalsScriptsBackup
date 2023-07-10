//const
can_be_grounded = 1;
ignores_walls = 0;
uses_shader = true;
mask_index = sprite_get("leg_coll");

max_dist = 180;
grav = 0.5;
max_height = max_dist/2;
segments_num = 4;

parallel_leg = noone;
step_area = 30;

//draw vars
origp = [0, 0];
old_origp = [0, 0];
kneep = [0, 0];
orig_dist = 0;
leg_angle = 90;
leg_dir = 0;
foot_sprite = 0;
foot_angle = 0;
wall_grab_cool = 0;
force_vsp = noone;
prev_free = free;

//vars
yspeed = 0;
should_step = 0;
step_x = 0;
start_hsp = 0;

state = 0;
timer = 0;
attack = 0;





/*

//constants
leg_maxfall = 10;               //max fall speed of the legs
leg_grav = 0.5;                 //gravity speed of legs
leg_area = 30;                  //leg walk area
jumph = 4;                      //jump speed