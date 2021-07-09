//aaa
sprite_index = sprite_get("flowertrap")
mask_index = sprite_get("b")

can_be_grounded = true;
ignores_walls = false;;
spr_dir = player_id.spr_dir;


//states
state = 0;
state_timer = 0;



//misc isk
should_activate = false;
fly_hitbox = noone;
fly_grabbed_player_obj = noone;

//animations
idle_anim_speed = 0.15;
min_frame = 0;
max_frame = 7;

//timers for startup/endlag
fly_activate_startup = 24; //startup of activation
fly_activate_active = 4; //active hitbox time
fly_activate_endlag = 18; //endlag frames
fly_die_time = 42; //post-activation endlag

//hold time
fly_hold_time = 20; //how long the enemy is held for in frames
fly_hold_time_base = fly_hold_time; //change the regular fly hold time if you want to change the base one, since the regular is changed in code later on

//flower
flower_lifetime = 600; //how long flower stays on field until it dies
flower_die_time = 35; //how long it takes for the flower to finish dying