//article3_init
depth = player_id.depth - 1

can_be_grounded = true;
ignores_walls = true;
uses_shader = true;


state = 0
// 0 = taking of
// 1 = free fall
// 2 = go to target
last_state = 0

state_timer = 0;

im_spd = 0.25;
image_index = 2;



sprite_index = sprite_get("missile")


angle = 0


angle_to = 0;


max_fall = 2;
min_acc = 2;

hsp = 7;
vsp = -7;

aim_acc = 0.45
aim_spd = 0;
aim_spd_max = 26

explode = false;
destroyed = false;

aimed_id = noone;

my_hitbox = create_hitbox( AT_DSPECIAL, 1, x, y )


