//article2_init - item thrower

init = 0;
sprite_index = sprite_get("thrower");
image_alpha = 1;
image_xscale = 2;
image_yscale = 2;

image_index = player_id.thrower_rand*2

depth = 1;

state = 0;
state_timer = 30;
state_end = 0;
air_timer = 0;
shoot_count = 0;
shoot_max = 3;
sent_player = false;
arror_timer = 0;
arror_timer_max = 30;

can_be_grounded = true;
ignores_walls = false;
uses_shader = false;