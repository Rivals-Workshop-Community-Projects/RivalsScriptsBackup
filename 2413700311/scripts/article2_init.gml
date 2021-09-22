//article1_init

init = 0;
sprite_index = sprite_get("fspecial_proj");
mask_index = sprite_get("article2_mask");
depth = -225;
spr_dir = player_id.spr_dir;

lifetime = 0;

state_timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = true;
die_count = 0;

headdie = false;

objdir = player_id.spr_dir;

if(player_id.bodyless == true) player_id.huta_life = 1;//踏める回数
if(player_id.bodyless == false) player_id.huta_life = 3;//踏める回数

stop_timer = 0;//突進停止用

if(player_id.attack == AT_FSPECIAL) state = 0;
if(player_id.attack == AT_UTILT)    state = 10;

//state = 0  ...回転突進
//state = 10  ...回転突進(縦)

//state = 1  ...停止状態
//state = 2  ...ぼよん

//state = 9  ...消滅