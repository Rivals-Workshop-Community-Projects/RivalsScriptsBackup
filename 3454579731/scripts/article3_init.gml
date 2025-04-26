sprite_index = sprite_get("clowncar");
state = 0;
state_timer = 0;
should_die = false;

hbox = noone;

can_be_grounded = true;
free = true;
ignores_walls = false;
uses_shader = true;

hsp = 0;
vsp = 0;
active_time = 0;
max_fall_speed = 4;
grav = 0.4;
overlay_alpha = 0;

spr_dir = player_id.spr_dir;