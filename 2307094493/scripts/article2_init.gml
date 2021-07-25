//article2_init
//From Hime
init = 0;

sprite_index = sprite_get("ropeArrow");
mask_index = asset_get("empty_sprite");

state = 0;
state_timer = 0;
full_timer = 0;
stay_timer = 0;
anim_time = .2;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
//free = true;


//Custom Vars
throw_speed = 18; //How fast
stay_time = 60; //How long da rope
dist = 150; //How far it takes you
hook_time = 5; //Also how far but not really?
stuck_in_player = false;
direc = 0;
//Proj Vars
hbox = noone;
