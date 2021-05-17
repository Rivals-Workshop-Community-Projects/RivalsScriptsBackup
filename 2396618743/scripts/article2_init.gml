//DRAIN

init = 0;
sprite_index = sprite_get("drain");

state = 0;
state_timer = 0;
can_be_grounded = false;
ignores_walls = true;
free = true;
anim_timer = 0;
anim_speed = .25;

lifetime = 30;