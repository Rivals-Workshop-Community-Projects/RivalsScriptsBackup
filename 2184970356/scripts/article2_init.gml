//article init

init = 0;
sprite_index = sprite_get("snowbig");
mask_index = sprite_get("snow");
image_index = 0;

state = 0;
state_timer = 0;
can_be_grounded = true;
ignores_walls = false;
free = true;

vsp = 4;

Timer = 0;
Check = 0;

damage_check = false;

coat_age = 0;
coat_initial = 90;
coat = 0;