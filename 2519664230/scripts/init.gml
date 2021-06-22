hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .08;
crouch_anim_speed = .1;
walk_anim_speed = .19;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 7;
initial_dash_speed = 5.5;
dash_speed = 6;
dash_turn_time = 24;
dash_turn_accel = 0.9;
dash_stop_time = 8;
dash_stop_percent = .65; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .3;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3.75; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .5;
prat_fall_accel = .4; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 42; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 7;
walljump_time = 42;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 10;
wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .03; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 5;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
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
bubble_x = 0;
bubble_y = 8;

hit_out = false;
hit_kb = 0;

dspecial_y = 0;
bubbles_spawned = 0;

messed_up = 0;
waterfalled = noone;
waterfalling = false;