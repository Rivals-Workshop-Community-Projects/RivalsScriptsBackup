hurtbox_spr = sprite_get("hurtb");
crouchbox_spr = sprite_get("crouchb");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 42;
idle_anim_speed = .2;
crouch_anim_speed = .12;
walk_anim_speed = .2;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .3;
moonwalk_accel = 1.69;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 5;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .015;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 7;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .45;
hitstun_grav = .45;
knockback_adj = .99; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 8;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 1;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 4;

//tech roll animation frames
techroll_startup_frames = 4
techroll_active_frames = 8;
techroll_recovery_frames = 4;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 4;
air_dodge_active_frames = 8;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7;

//roll animation frames
roll_forward_startup_frames = 4;
roll_forward_active_frames = 8;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 4;
roll_back_active_frames = 8;
roll_back_recovery_frames = 4;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme(sound_get("oldman"));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//character support
arena_title = "The Old Person";

//adventure
pronouns = ["he","him","his","is"];
am_is_noob = true;
am_is_experienced = true;
am_is_insane = true;
am_is_small = true; 