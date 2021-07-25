//article1_init
init = 0;
sprite_index = sprite_get("fuel_tank");
state = 0;
state_timer = 0;
can_be_grounded = false;
ignores_walls = true;
free = true;
uses_shader = true;

field_index = -1;
frame_update = 0;
field_frame_update = 0;
health2 = 3;
health_alpha = 0;
field_size = 142;

hitbox = noone
prevhitbox = noone;
prevattack = noone;
prevgroup = noone;
prevx = x;
prevy = y;
hit_stun = 1;
recoil_timer = 0;

tank_explosion = hit_fx_create(sprite_get("tank_explosion"), 20);