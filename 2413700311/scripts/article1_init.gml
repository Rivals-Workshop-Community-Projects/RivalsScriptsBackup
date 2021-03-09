//article1_init

init = 0;
sprite_index = sprite_get("body_fall_proj");

state_timer = 0;
can_be_grounded = true;
ignores_walls = false;
free = false;
die_count = 0;

headdie = false;

hspmove = 3;//左右移動保持用

state = 0;
//state = 0  ...倒れるアニメ
//state = 1  ...倒れた状態
//state = 2  ...飛び上がり
//state = 3  ...回転

movestate = 0;
//0 Dsp 上下
//1 Fsp 左右

player_id.bodyloss = false;