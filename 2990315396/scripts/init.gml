//Extra Code Sources
//Mr Nart (Peppino): Mach Run (code edited by me though since noise functions differently)
//Karu: Afterimage Framework, CSS Framework

//Answearing Machine: All of the Amazing Custom Music (Pumpin Hot Stuff, Victory Theme)

//Thank you so much guys!!!!!

woaged = false;

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = sprite_get("crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

breakdance_timer = 0; //brak dans
breakdance_dir = 0; //brak dans
breakdance_box_vsp = 0; //brak dans
breakdance_box_y = 0; //brak dans
breakdance_box_x = 0; //brak dans

//mach run code courtesy of Mr Nart
normal_max_jump_hsp = max_jump_hsp;
was_free = false;

noisefire_ins = noone;

nspecial_turned = false;
nspecial_accel = 0.5; //peppino's is 0.3, noises is faster so comboes are harder to set up with his slower speed (i think)
nspecial_max_hsp = 8; //peppino's is 10
nspecial_loops = -1;
nspecial_dash_charge = 0;
//nspecial_mach_duration = 36; //peppino's is 45, but noise's is currently set to not go down on hitpause
nspecial_mach_duration = 45; //okay nevermind im not really sure what i should do
nspecial_mach_timer = 0;
nspecial_mach_sound = noone;
nspecial_mach_jump_hsp = nspecial_max_hsp * 0.75;
nspecial_mach_frict_mult = 0.5;
nspecial_jump_timer = 0; // allows noise to cancel mach boost so he doesnt just die offstage

ai_freq = 5; //counts for mach mode, uspecial and dair

afterimage_array = 0;
afterimage_colour = 0;

player_default_colour = false;

dash_sound = noone;

dattack_bounce = 0;
dstrong_timer = 0;

uspecial_charge = 0;

taunt_index = 0;
taunt_free = 0;

grabbed_player_obj = noone;
grabbed_player_relative_x = 0;
grabbed_player_relative_y = 0;

can_wall_cling = true;
wall_frames = 4;
walljump_frame = 0;
walljump_jump_time = 1;
player_frame_update = 0;

char_height = 50;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .3;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 3.75;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 7.0;
dash_turn_time = 14;
dash_turn_accel = 1.2;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .80; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .5;
hitstun_grav = .48;
knockback_adj = 1.18; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .08; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 9;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 7;
techroll_recovery_frames = 4;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 6;
air_dodge_recovery_frames = 6;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 7;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 2;
roll_back_active_frames = 7;
roll_back_recovery_frames = 4;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("sfx_jump");
djump_sound = sound_get("sfx_jump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
