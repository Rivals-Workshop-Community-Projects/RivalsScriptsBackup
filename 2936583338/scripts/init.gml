set_victory_bg( sprite_get( "bg" ));
set_victory_theme( sound_get( "joymech" ));

ska_j_bounce = 0;
sukalander = 0;

hurtbox_spr = sprite_get("suka_hurt_box");
crouchbox_spr = sprite_get("suka_crouch_box");
air_hurtbox_spr = sprite_get("suka_air_box");
hitstun_hurtbox_spr = -1;

char_height = 74;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.15;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 4.5;
dash_speed = 4.15;
dash_turn_time = 20;
dash_turn_accel = 1.5;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 6;
jump_speed = 7.25;
short_hop_speed = 3.8;
djump_speed = 7;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .165;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .06;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 7;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .2;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
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
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 12;
roll_forward_active_frames = 12;
roll_forward_recovery_frames = 12;
roll_back_startup_frames = 12;
roll_back_active_frames = 12;
roll_back_recovery_frames = 12;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("ska_jump");
djump_sound = sound_get("ska_djump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
