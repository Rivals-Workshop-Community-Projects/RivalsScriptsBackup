spr_idle = player_id.spr_pepsimachine_idle;
spr_spin = player_id.spr_pepsimachine_hurt;
spr_imp = player_id.spr_pepsimachine_impact;
spr_exp = player_id.spr_pepsimachine_boom;

sprite_index = spr_imp;
mask_index = spr_idle;
image_index = 1;

can_be_grounded = true;
free = false;
ignores_walls = false;

vsp = 0;

hbox = noone;
sbox = noone;
hbox_frames = 0;
hbox_was_active = false;

air_time = 0;

//impact_time = 0;

launch = false;
destroy = false;
explode = false;
explode_timer = 0;

now_grounded = false;

state = PS_IDLE;
state_timer = 0;