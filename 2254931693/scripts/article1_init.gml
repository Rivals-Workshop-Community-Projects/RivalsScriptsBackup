// article init

state = PS_IDLE_AIR; // reuse player states for articles
state_timer = 0;
mask_index = sprite_get("frog_mask");
free = 1;
grabbedplayer = 0;

lockout = 0;

hbox_group = array_create(4,array_create(50,array_create(10,0))); //ew

hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;

vsp = -8;
hsp = 3 * player_id.spr_dir;
can_be_grounded = true;
ignores_walls = false;

frog_dspecial_pausetime = 0;    
frog_dspecial_movetime = 0;


