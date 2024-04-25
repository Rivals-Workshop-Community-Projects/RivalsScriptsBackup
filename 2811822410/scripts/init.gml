roll_dir = 0;
bair_spins = 0;
//
dtilts_max = 2;
dtilts = dtilts_max;
//
uspecial_loop_max = 1;
uspecial_loop = uspecial_loop_max;

uspecial_has_pratfall = false;

scanned = 0;
scanned_max = 600;
scanned_id = -4;

ftilt_hit = [0, 0, 0, 0, 0];

fstrong_one = -4;
fstrong_two = -4;
///

hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56; //56
idle_anim_speed = .2;
crouch_anim_speed = .2;
walk_anim_speed = .2;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3; 
walk_accel = .2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 8;
dash_turn_accel = 1;
dash_stop_time = 6;
dash_stop_percent = .30; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .55;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.5; //10.5
short_hop_speed = 5.5;
djump_speed = 10.5; //10.5
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4; //.25
prat_fall_accel = .5; //multiplier of air_accel while in pratfall // .3
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10; 
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5; //5
hitstun_grav = .5; //5
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, 1> = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .15; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 10;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 2;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 2;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 1;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
//
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 1;
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

//6 Level1
rune_fspecial = 				has_rune("A");
rune_rethrow = 				has_rune("B");
rune_leek_move = 		has_rune("C");
//rune_teleport = 				has_rune("D");
rune_dair_spike = 			has_rune("D");
rune_follow_hit = 			has_rune("E");
rune_clone_jump = 		has_rune("F");
//5 Level 2
rune_follow_miku = 		has_rune("G");
rune_attack = 				has_rune("H");
rune_friction = 				has_rune("I");
rune_nair = 					has_rune("J");
rune_recovery_boost = has_rune("K");
//4 Level 3
rune_hit_reset = 			has_rune("L");
rune_indestructible =	has_rune("M");
rune_sentience = 			has_rune("N");
rune_clairen = 				has_rune("O");


if rune_friction {
	ground_friction = .1;
}

//Test Player viewer
spr_shapes = [sprite_get("boxCircle"), sprite_get("boxSquare"), sprite_get("boxRound"), sprite_get("arrow")]
test_frame_advance = false;
window_reset = true;
