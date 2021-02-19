//article init

init = 0;
sprite_index = sprite_get("icywind");
mask_index = sprite_get("icywind");
image_index = 0;
image_alpha = 0.5;

state = 0;
state_timer = 0;
can_be_grounded = false;
ignores_walls = true;
free = true;

check = true;

lifeTimer = 0;
cloudCheck = true;