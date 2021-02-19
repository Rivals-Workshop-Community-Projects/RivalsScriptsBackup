sprite_index = sprite_get("fspecial_galaxy_shot");
image_speed = 0.2;
ignores_walls = false;
uses_shader = true;
facing = 0;
start = 0;

trap_playerid = noone;
trap_timer = 60;
trap_spd = 2;
trap_addhspd = 0;
trap_addvspd = 0;
trap_maxspd = 3;

ai_rand_x = -4;
ai_rand_y = -4;

stage_left = get_stage_data( SD_X_POS );
stage_right = stage_left + get_stage_data( SD_WIDTH );
var stage_bz = get_stage_data( SD_SIDE_BLASTZONE ) - 32;
stage_left -= stage_bz;
stage_right += stage_bz;
