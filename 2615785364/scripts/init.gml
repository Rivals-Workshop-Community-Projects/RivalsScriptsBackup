set_victory_bg( sprite_get( "bg" ));
set_victory_theme( sound_get( "sonic" ));

fx_ringhit1 = hit_fx_create(sprite_get("ringexplode"), 10);

//these are the provided sample SSL hit effects
hfx_explode = hit_fx_create(sprite_get("explode"), 16);
hfx_smaller = hit_fx_create(sprite_get("hfx_smaller"), 24);
hfx_small = hit_fx_create(sprite_get("hfx_small"), 24);
hfx_medium = hit_fx_create(sprite_get("hfx_medium"), 24);
hfx_big = hit_fx_create(sprite_get("hfx_big"), 24);
hfx_bigger = hit_fx_create(sprite_get("hfx_bigger"), 24);

fx_dust = hit_fx_create(sprite_get("dust"), 8);

wait_time = 300;
wait_length = 350;
wait_sprite = sprite_get("wait");

can_throw_bell = 0;
chadRealLife = 0;
sonicSpinSpeed = 0;

ssl_debug_enabled = true; //togles template debug messages.
ssl_advanced_debug_enabled = false; //togles advanced debug messages, only enable if you really want to know whats going on.
tap_jump_protection_enabled = true; //set this to false if your character should not get double jump back if you canceled it into air up attack.

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .125;
pratfall_anim_speed = .25;

walk_speed = 7.5;
walk_accel = 5;
walk_turn_time = 1;
initial_dash_time = 1;
initial_dash_speed = 1;
dash_speed = 7.5;
dash_turn_time = 1;
dash_turn_accel = 1;
dash_stop_time = 10;
dash_stop_percent = 0; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .9;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 12;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .525;
hitstun_grav = .5;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
defense_modifier = 1;

//sleep animation (only use if you want to have sleep support)
ssl_sleep_enabled = false; //set to true if your character has a sleep animation
ssl_sleep_anim_speed = .1; //sleep animation speed, similar to walk anim speed
ssl_sleep_anim_frames = 2; //number of frames in your sleep strip

//Landind Stats------------------------------------------
land_time = 4; //normal landing frames, only change if you have a reason
prat_land_time = 12; // Normal range is 10-15, more if your character rarely enters pratfall or has alternate recovery tools

//#endregion--------------------------------------------------------------------


//------------------------------------------------------------------------------
//Template Debug Messages Toggles-----------------------------------------------
ssl_debug_enabled = true; //togles template debug messages.
ssl_advanced_debug_enabled = false; //togles advanced debug messages, only enable if you really want to know whats going on.



/*
*
*
*
*
*       Don't change the stuff below unless you know what your are doing.
*
*
*
*
*
*
*/
//------------------------------------------------------------------------------
//#region  Do not Change for Smash Land ----------------------------------------

//------------------------------------------------------------------------------
//#region Secret Alts-----------------------------------------------------------
//These variables are used for the secret alt code.
SecretColor = 0; //Current secret color
ColorLock = 0;
ColorLocked = false;

//#endregion--------------------------------------------------------------------


//rivals sfx
waveland_sound = sound_get("nothing");
air_dodge_sound = sound_get("nothing");

//movement stats that you shouldn't change for smash land but can if you want
walk_accel = 1; //only change if you want a walk and run which smash land shouldnt have
walk_turn_time = 1;
initial_dash_time = 1;
initial_dash_speed = 1;

dash_turn_time = 1;
dash_turn_accel = 1;
dash_stop_time = 1;
dash_stop_percent = 0; //the value to multiply your hsp by when going into idle from dash or dashstop
jump_start_time = 5; //standard 5 frames, universal rivals mechanic
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
moonwalk_accel = 1.4;

//wavedash
wave_land_time = 8; 
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding


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

//Tap Jump Protection System by @Danilo-PJ#3122
old_djumps = 0;
dj_state_timer = 0;
is_double_jump = false;
is_jumpsquat = false;

//Strong buffer stuff so you can have a neutral strong press
strong_buffer = 0;
strong_pressed = false;
strong_was_pressed = false;

//pokemon template values
display_level = 0;
pokemon = 0;

//#endregion

dash_sound = sound_get("dash");
land_sound = sound_get("land");
landing_lag_sound = sound_get("land");
jump_sound = sound_get("sonicjump");
djump_sound = sound_get("sonicdjump");
wall_jump_sound = sound_get("jump");
ssl_death_sound = sound_get("ssl_death");