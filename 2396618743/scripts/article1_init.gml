//ICE SHARD

init = 0;

//sprite_index = sprite_get("iceshard_big_appear")
charged = 0;
state = 0;
state_timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = true;

anim_timer = 0;
anim_speed = .25;
dir = 0;
homing = 0;
shortest_dist = 9999;
target = noone;
proj_speed = 0;
pointdir = 0;
timer = 120;

invulnerable = 0;
destroy_time = 20;