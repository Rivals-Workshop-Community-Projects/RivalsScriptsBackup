can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

bomb_gravity = 0.32

spr_dir = player_id.spr_dir;
state = 0;
state_timer = 0;
dir = player_id.spr_dir;

fuse = player_id.fuse;
fuse_max = player_id.fuse_max

contactCD = 0;
random_rotate = random_func(1, 360, true);
bomb_foot = 0;
right_foot = 0
left_foot = 0

bomb_sp = 0;
bvsp = 0;
bhsp = 0;
smack = noone;
smackT = 90;
skull = false;
boom = noone;
mask_index = sprite_get("bomb_mask")
depth = player_id.depth - 1;
blinkT = 0;

sparkspot = 0;
sparkx = 0;
sparky = 0;
sparka = 0;

bomb_limit = player_id.bomb_limit;

loose = false;

fusesound = false;
fusesound2 = false;

oldhb = 0;
oldat = noone;

flip_up = false;

bombpause = 0;
//skull = true;