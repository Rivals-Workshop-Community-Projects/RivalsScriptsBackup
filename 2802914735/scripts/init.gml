/// -------------------------- the funny setup ---------------------------------
//variables
window_length = 10; //window length variable, updated later
should_debug = false; //variable to toggle debug text
axes_num = 1; //funny variable to handle axe number in throw animations
dspecial_failed = false;
has_touched_grass = false; //wii fit deep breath for buffs
axe_type = 0; // 0: neutral - 1: red - 2: blue - 3: green
prev_axe_type = 0; //for sound/visual purposes
pratphobia = false;
fspecial_charging = false;
fspec_jump_timer = 0; //tapjump user (derogatory)
fspec_walk_timer = 0; //for walk anims
fspec_jumpstart = false; //to handle if the player is starting to jump
fspec_jumpstart_timer = 0; //jumpstart
fspec_land_timer = 0; //fspec land anims


nspecial_buffer = 10;
nspecial_anim_buffer = 25; //for icon

dspecial_fail_buffer = 0; //for the sound when you try using dspecial while on cooldown

prev_free = false;
//vfx
//vfx_axe_something = something something create hit effect
vfx_dspecialboost = hit_fx_create(sprite_get("vfx_dspecialboost"),24);
vfx_dspecialfail = hit_fx_create(sprite_get("vfx_dspecialfail"),18);

//sfx
//sfx_ayaka_awesome = sound_get("uhhhhhhhhh")


//custom indexes for throws (in case of different frame data n stuff)
AT_FSPECIAL_RED = 44;
AT_FSPECIAL_BLUE = 45;
AT_FSPECIAL_GREEN = 46;
//AT_FTILT_RED = 47;
//AT_FTILT_BLUE = 48;
//AT_FTILT_GREEN = 49;

/// ------------------------------ stats ----------------------------------------
hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .3;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6.5;
dash_speed = 5.75;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .65;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 7; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .10; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 5;

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
roll_forward_recovery_frames = 3;
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