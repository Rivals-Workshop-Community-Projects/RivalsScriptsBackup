//article1_init

init = 0;
sprite_index = sprite_get("fspecial_proj");
mask_index = sprite_get("article2_mask");
depth = -225;

lifetime = 0;

state_timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = true;
die_count = 0;

headdie = false;

objdir = player_id.spr_dir


stop_timer = 0;//突進停止用

state = 0;
//state = 0  ...回転突進
//state = 1  ...停止状態
//state = 2  ...ぼよん

//state = 9  ...消滅