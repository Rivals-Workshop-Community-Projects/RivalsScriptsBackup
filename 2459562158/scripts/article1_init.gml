//article1_init
//cucumber compressor
depth = player_id.depth - 1;
spr_dir = player_id.spr_dir;


can_be_grounded = true;
ignores_walls = false;
uses_shader = true;


state = 0
// 0 = haven't exploded
// 1 = explosion
last_state = 0

state_timer = 0;


vsp = -5 - has_rune("D") * 3
hsp = (5 + has_rune("D") * 3) * spr_dir;

air_fric = 0.01;

grav = 0.2;

destroyed = false;

sprite_index = sprite_get("cucumber")

image_angle = 45 + 90 * (spr_dir == -1)

rot_spd = 8;

rep = has_rune("H");