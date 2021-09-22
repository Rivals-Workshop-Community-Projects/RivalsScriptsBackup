hurtbox_spr = asset_get("bear_hurtbox");
crouchbox_spr = asset_get("orca_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

chains_spr = sprite_get("chains");
change_spr = sprite_get("chainge");
chainDownBall_spr = sprite_get("CDball");
chainBuff_spr = sprite_get("keyBuff");


find_key=false;
if (!instance_exists(obj_article1) /*player==2*/){
    my_key = instance_create(x,y,"obj_article1");
    my_key.desiredX=x;
    my_key.desiredY=y;
    find_key=true;
}
//else my_key=noone;//instance_create(x,y,"obj_article1");
my_jail = noone;
my_child = noone;
my_boomerang = noone;
startup_counter = 60;
has_boom = false;
invisible_rn=false;
numChains=0;
chainedDown=0;//just to prevent errors on reflected projectiles
taunting = 0;

char_height = 54;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .08;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 1.5;
walk_accel = 0.15;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = 5;
dash_speed = 4;
dash_turn_time = 10;
dash_turn_accel = 1.25;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.1;

jump_start_time = 5;
jump_speed = 14;
short_hop_speed = 8;
djump_speed = 9;
leave_ground_max = 9; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 9; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = 1.3; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .75;
hitstun_grav = .5;
knockback_adj = 1.35; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
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
air_dodge_recovery_frames = 3;
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
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
