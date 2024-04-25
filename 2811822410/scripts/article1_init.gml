//
sprite_index = sprite_get("nspecial_ball"); 
mask_index = sprite_get("nspecial_ball");

depth = 0
free = true
can_be_grounded = false;
ignores_walls = true;

state = 0;
state_timer = 0;
orb_attack = -4;

last_x = -4;
last_y = -4;

orb_hitbox = -4;
orb_special = false;
