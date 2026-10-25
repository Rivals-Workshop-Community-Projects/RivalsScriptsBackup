//other_init - called by all other players when they're created while this workshop character exists

grabbed = false;
sansKR = 0;
sansKRconsume = false;
sansKR_timer = 0;
sansKR_player = noone;
comboKR = 0;

sansFS_soul_host = noone;
sansFS_hsp_store = 0;
sansFS_vsp_store = 0;
sansFS_soul_x = 0;
sansFS_soul_y = 0;
sansFS_soul_width = 10;
sansFS_soul_speed = 3;
sansFS_hit_lockout = 0;

//blueMoving = false;

/*
bone_pause = false;
bone_pause_timer = 0;

kr = false;
kr_time = 360;
kr_timer = 0;
kr_dmg_time = 30;
kr_dmg_timer = 0;

actual_grav = gravity_speed;
actual_dash = dash_speed;
actual_walk = walk_speed;

soul_grav = gravity_speed*2;
soul_dash = dash_speed/1.5;
soul_walk = walk_speed/1.5;

is_ronald_sans = false;
not_real_ronald = false;
zoom_direction = spr_dir;
x_value = 0;
gaucho = false;

ronald_detected = false;
accurate_detected = false;
duane_detected = false;