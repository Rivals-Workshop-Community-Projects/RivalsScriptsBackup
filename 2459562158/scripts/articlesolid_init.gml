//article1_init

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;


state = 0
// 0 = taking of
// 1 = idle + flying away
last_state = 0

state_timer = 0;

image_spd = 0.2;

spr_dir = player_id.spr_dir;

x_pos = x;
y_pos = y;

hsp_fake = 0;
vsp_fake = 0;

x = x;
y = 3000;

sprite_index = sprite_get("kappamobile_takeoff");