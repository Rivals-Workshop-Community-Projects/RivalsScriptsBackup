spr_air = player_id.spr_sword_air;
spr_idle = player_id.spr_sword_idle;
spr_imp = player_id.spr_sword_impact;

sprite_index = spr_air;
mask_index = spr_idle;
image_index = 1;

can_be_grounded = true;
free = false;
ignores_walls = false;

vsp = 0;

hbox = noone;
hbox_frames = 0;
hbox_was_active = false;

impact_time = 0;

destroy = false;

state = PS_IDLE;
state_timer = 0;