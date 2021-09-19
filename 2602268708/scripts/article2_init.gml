vsp = 3 * player_id.free
spr_dir = player_id.spr_dir
grav_sp = 0.4;
move_speed = 4;
sprite_index = sprite_get("heaveho")

state = "not_started"
state_timer = 0;
lock_state = false;


ignores_walls = false;

throw_aspeed = (4 / 20);
yeet_speed = -10;
depth = player_id.depth - 3