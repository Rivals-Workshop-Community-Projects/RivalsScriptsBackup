hurtbox_spr = sprite_get("e_hurtbox");
crouchbox_spr = sprite_get("e_crouchbox");
air_hurtbox_spr = sprite_get("e_air_hurtbox");
hitstun_hurtbox_spr = -1;

df_1 = false;
df_2 = false;

df_link_timer = 0;
df_1_timer = 0;
df_2_timer = 0;

super_eligible = false;

nspecials_held = 0;
nspecial_cast_anim = 0;

grabbed_player_id = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .07;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .2;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 8;
dash_speed = 7;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .5; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7.5;
djump_speed = 12;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .7;
prat_fall_accel = .65; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 14;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 18; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 1.18; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 9;
wave_land_time = 6;
wave_land_adj = 3.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 2;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 7;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 4.6;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 7.4; //roll speed
roll_backward_max = 7.4;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
