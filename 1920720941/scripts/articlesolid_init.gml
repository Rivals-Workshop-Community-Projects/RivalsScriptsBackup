//article_solid_init

init = 0;
sprite_index = sprite_get("dash_block");

state = 0;
state_timer = 0;
despawn_timer = 0;
can_be_grounded = false;
ignores_walls = true;
free = true;
destroyed = false;
destroy = false;
goal_y = -20;
active_dir = -1;
active_delay = 0;
time_offscreen = 0;
orig_x = 0;
orig_y = 0;
hitbox_active = false;
dash_dir = -1;
parried = false;