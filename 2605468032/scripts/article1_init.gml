//article1_init
mask_index = sprite_get("bubble_mask");
image_alpha = 1
depth = -20
gura_owner = -1;

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
free = true;

EA = 0; // variable for EA alt

x_dir = 0;

hud = 0;
outline = 0;

move = 0;

drag = 0;
drag_x = 0;
drag_y = 0;

mouse = -1;

state = 0;
state_timer = 0;

timer = 0;
timer2 = 0;
timer3 = 0;

destroy_timer = 0;
destroy_reset = 0;

countdown = 1000;
countdown_set = 0;

anim_time = 0;

old_vsp = 0;
old_hsp = 0;

hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;

hit_lockout = 0;


bubbled_playerid = noone;

counter = 0;

draw = 0;
anim = 0;

hit = 0;
hit_frames = 0;
drift_lockout = 0;

sfx = 0;

explode = noone;

col = noone;