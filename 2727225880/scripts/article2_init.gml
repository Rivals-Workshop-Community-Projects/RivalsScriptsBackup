sprite_index = sprite_get("disc_zoom")

//article init
hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;

mask_index = sprite_get("discus_rotation");

state = 0
state_timer = 0

hit_lockout = 0

spin_image_speed = 10

owner_id = noone

gravity_spd = 0.35 //hi! gravity is a NATIVE VARIABLE for articles. wtf
max_fall = 10
initial_vsp = player_id.vsp

can_be_grounded = false
ignores_walls = false;
damage = 50

//STATES
//state 0 is the spawning state (i mean i guess??)
//state 1 is where it exists and can be hit etc (and when thrown, hitbox based on speed)
//state 2 is if its grabbed and being carried
//state 3 is death!

vsp = -10

prev_vsp = 0

spr_dir = player_id.spr_dir

fun_amazing_number = 0