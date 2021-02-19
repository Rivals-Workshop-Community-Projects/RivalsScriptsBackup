//article2_init

_init = 0;

sprite_index = sprite_get("boolet");
//hurtbox_spr = asset_get("empty_sprite");

state = 0;
state_timer = 0;
full_timer = 0;
stay_timer = 0;
can_be_grounded = false;
ignores_walls = true;
free = true;
uses_shader = true;
//image_xscale = .1;

//Custom Vars
anim_speed = .2;

h_box = noone;

vel_max = 80;
vel_dir = 0;

sprite_size_time = 5;

stay_time = 60;

collis_obj = noone;

//Proj Vars
hitSpeed = 5;
hitAngle = 60;
hit_box = 0;
has_bhit = 0;
gunmade = 0;
gun = noone;