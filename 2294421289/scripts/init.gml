init_shader();

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 100;

char_height = 55;
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .25; //0.3
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.11;
walk_turn_time = 6;
initial_dash_time = 8; //13
initial_dash_speed = 7.4; //7.3
dash_speed = 7.9; // 8.0
dash_turn_time = 13;
dash_turn_accel = 1.3; //1.5
dash_stop_time = 10; //8
dash_stop_percent = .5; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.6;

jump_start_time = 5;
jump_speed = 10.6;
short_hop_speed = 7;
djump_speed = 10.6;
leave_ground_max = 10; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 10; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6.68; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .8; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 8.2;
walljump_vsp = 8.3;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .60;
hitstun_grav = .50;
knockback_adj = 1.055; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier//1.08

land_time = 4; //normal landing frames
prat_land_time = 17; //15
wave_land_time = 8;
wave_land_adj = 1.36; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("speedboost");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Spindash variables :
spindash_timer = 0;

spindash_timer_start = 5;
spindash_force = 0.33; //0.318
spindash_limit = 18; //18

//Dstrong jump cancel
dstrong_cancel = 0;