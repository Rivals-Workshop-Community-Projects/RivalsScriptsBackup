// article1 init

init = 0;
sprite_index = sprite_get("head_mine");

state = 0;
state_timer = 0;
det_timer = random_func(0, 3, true);
if (det_timer == 0) det_timer = 90;
if (det_timer == 1) det_timer = 180;
if (det_timer == 2) det_timer = 270;
can_be_grounded = true;
ignores_walls = false;
free = false;