hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");

attacking = false 
flashbang = 0

fangle = 0

bulletnum = 12 
oldvsp = 0
oldhsp = 0
gonnaflop = false 
stamina = 150

parryside = 0

char_height = 58.112;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .12;
dash_anim_speed = .22;
pratfall_anim_speed = .25;

walk_speed = 2;
walk_accel = 1;
walk_turn_time = 4;
initial_dash_time = 12;
initial_dash_speed = 4;
dash_speed = 4
dash_turn_time = 12;
dash_turn_accel = .3;
dash_stop_time = 12;
dash_stop_percent = .3; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 1;
moonwalk_accel = 1;

jump_start_time = 10;
jump_speed = 5;
short_hop_speed = 4;
djump_speed = 7;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = 0.8; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 0;
double_jump_time = 40; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 8;
walljump_vsp = 2;
walljump_time = 12;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 10; //fast fall speed
gravity_speed = .6;
hitstun_grav = .4;
knockback_adj = 0.9;//the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 14; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = .8; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 0;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 7;
techroll_recovery_frames = 3;
techroll_speed = 5;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 3;
roll_forward_max = 4; //roll speed
roll_backward_max = 5;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

if get_player_color(player) >= 8 {
    max_djumps = 1
}
