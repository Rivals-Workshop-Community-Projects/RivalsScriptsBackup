spr_air = player_id.spr_sword_proj;
spr_des = player_id.spr_sword_dest;

sprite_index = spr_air;
mask_index = spr_air;
spr_dir = player_id.spr_dir;
image_index = 1;

can_be_grounded = false;
free = false;
ignores_walls = false;


hsp = 18;
hsp_cap = 19;
hsp_mod = 0.7;

hbox = noone;
hbox_frames = 0;
hbox_was_active = false;

state = PS_IDLE;
state_timer = 0;

destroy = false;
destroy_timer = 0;

caught = false;

other_sword = noone;
bounced = false;