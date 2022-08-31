spr_idle = player_id.spr_quake;
spr_alt = player_id.spr_quakemagic;
vfx_magic = player_id.vfx_magicquake;

sprite_index = spr_idle;
mask_index = spr_idle;
image_index = 1;

can_be_grounded = true;
free = false;
ignores_walls = true;

pain_level = 1;
hitbox_check = 0;
to_spawn = 0;

variation = 0
//var1_anim = [0, 5, 10, 15]
//var2_anim = [1, 6, 11, 16]
//var3_anim = [2, 7, 12, 17]
//var4_anim = [3, 8, 13, 18]
//var5_anim = [4, 9, 14, 19]
hbox = noone;

master_crack = true;
max_left = false;
max_right = false;

left_checks = 1;
right_checks = 1;

base_width = 8;

quake_size = 999;

anims = [[0, 5, 10, 15], [1, 6, 11, 16], [2, 7, 12, 17], [3, 8, 13, 18], [4, 9, 14, 19]];

destroy = false;

state = PS_IDLE
state_timer = 0;