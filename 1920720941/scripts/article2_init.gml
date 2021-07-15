//article2_init

init = 0;
sprite_index = sprite_get("dream_mist_blank");
opacity = 0.5;

goal_x = x;
goal_y = y;

moving_x = true;
moving_y = true;

state = 0;
state_timer = 0;
star_timer = 0;
timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = true;
destroy = false;
destroy_delay = 0;
destroy_particle = 0;

dream_mist_sprite = sprite_get("dream_mist");
dream_mist_stars1 = sprite_get("dream_mist_bg");
dream_mist_stars2 = sprite_get("dream_mist_fg");