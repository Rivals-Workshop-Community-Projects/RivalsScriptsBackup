has_hit = false;

state = 0;
state_timer = 0;

hitpause_timer = 0;

has_bounced = false;

nspecial_angle = 0;

prev_vsp = vsp;
prev_hsp = hsp;

if sign(hsp) == -player_id.spr_dir prev_hsp = -prev_hsp;

has_been_hit = false;

fix_hitpause = false;

orig_length = length;

has_been_recalled = false;

bounce_charge_time = 10;



hit_lockout_timer = 0;

//BY SUPERSONIC

hbox_group_2 = array_create(4,array_create(50,array_create(10,0))); //ew
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;