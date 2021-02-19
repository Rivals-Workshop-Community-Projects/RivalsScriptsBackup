//article2_init

can_be_grounded = true;
ignores_walls = true;
uses_shader = true;

spr_dir = player_id.spr_dir;
state = 0;
state_timer = 0;
dir = player_id.spr_dir;

fuse = player_id.fuse + player_id.strong_charge*10;
fuse_max = player_id.fuse_max

contactCD = 0;
random_rotate = random_func(1, 360, true);
smack = noone;
skull = false;
depth = player_id.depth + 10;
blinkT = 0;