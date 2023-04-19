spr_idle = player_id.spr_bump_idle;
spr_back = player_id.spr_bump_back;
spr_point = player_id.spr_bump_pointer;
spr_impact = player_id.spr_bump_impact;
spr_active = player_id.spr_bump_active;
spr_actimp = player_id.spr_bump_actimp;

sprite_index = spr_actimp;
mask_index = spr_idle;
image_index = 1;

can_be_grounded = false;
free = true;
ignores_walls = false;
// New stuff
is_hittable = true;
hittable_hitpause_mult = 0.5;

destroy = false;

spin_timer_max = 600;
spin_timer = 0;
spin_angle = 0;

hbox = noone;

// state 0: Idle
// state 1: Initial Bump
// state 2: Spin
// state 3: Spinner Bump
bumper_state = 1;
bumper_state_timer = 0;

vfx_timer = 0;
vfx_max = 10;
vfx_show = false;