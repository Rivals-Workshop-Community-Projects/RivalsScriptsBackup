//article2_init

init = 0;

sprite_index = sprite_get("ropeArrow");
mask_index = asset_get("empty_sprite");
//hurtbox_spr = asset_get("empty_sprite");

state = 0;
state_timer = 0;
full_timer = 0;
stay_timer = 0;
anim_time = .2;
can_be_grounded = true;
ignores_walls = false;
//free = true;
uses_shader = true;


//Custom Vars
throw_speed = 22; 
stay_time = 100; //100
dist = 48; //64
hook_time = 5;
//Proj Vars
hbox = noone;