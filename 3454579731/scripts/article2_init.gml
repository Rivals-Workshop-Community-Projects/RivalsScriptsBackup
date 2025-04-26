sprite_index = sprite_get("big_cannonball");
image_index = 0;
image_alpha = 1;
cannon_index = 0;
cannon_angle = 0;
cannon_y = 0;
fired = false;
depth = -8;

state = 0;
state_timer = 0;
exist_timer = 0;

spawned = false;
busy = false;
should_die = false;

can_be_grounded = false;
free = true;
ignores_walls = true;
uses_shader = true;

hsp = 0;
vsp = 0;
active_time = 0;
max_fall_speed = 8;
grav = 0.8;
bounced = false;

spr_dir = player_id.spr_dir;

hbox = noone;
was_free = false;
owner = player_id.player;
stored_charge = 0;
double_fired = false;