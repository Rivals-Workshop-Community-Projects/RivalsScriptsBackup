hurtbox_spr = sprite_get("hurtbox_idle");
crouchbox_spr = sprite_get("hurtbox_crouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

ball_hitfx = hit_fx_create(sprite_get("plasma_hitfx"),50);
smoke_fx = hit_fx_create(sprite_get("smoke"),12);
speedcloud_fx = hit_fx_create(sprite_get("dust"),32);
wall_fx = hit_fx_create(sprite_get("plasma_hitfx2"),32);
hitball_fx = hit_fx_create(sprite_get("ball_hit"),32);

fspecial_char = noone;
killarticles = false;
ball_exists = false;
ball_cooldown = 0;
h = 0;
h2 = 0;
do_a_fair = false;
//have_a_jaw_breaker = "sure";

char_height = 62;
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 5.5;
walk_accel = 0.8;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6.5;
dash_speed = 6;
dash_turn_time = 16;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .35;
moonwalk_accel = 1.6;

jump_start_time = 5;
jump_speed = 13;
short_hop_speed = 6;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 11;
walljump_time = 32;
wall_frames = 2;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 17; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 18;
wave_land_time = 9;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .02; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = -5;
bubble_y = 10;


//entrance
