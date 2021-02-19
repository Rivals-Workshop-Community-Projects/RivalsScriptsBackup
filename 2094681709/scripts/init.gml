hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .2;
crouch_anim_speed = .05;
walk_anim_speed = .2;
dash_anim_speed = .25;
pratfall_anim_speed = .25;


walk_speed = 5;
walk_accel = 1;
walk_turn_time = 10;
initial_dash_time = 16;
initial_dash_speed = 7.5;
dash_speed = 9
dash_turn_time = 15;
dash_turn_accel = 0.5;
dash_stop_time = 6.5;
dash_stop_percent = .55; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

crouch_jump_speed = 12;
stand_jump_speed = 13;

crouch_jump_hsp = 4;
stand_jump_hsp = 4;

crouch_jump_accel = 1.15;
stand_jump_accel = .6;

crouch_jump_sound = sound_get("rev1");


jump_start_time = 4;

did_crouchjump = 0;

jump_speed = 10;
short_hop_speed = 8;
djump_speed = 10;
leave_ground_max = 8.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 2; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .1;
prat_fall_accel = .65; //multiplier of air_accel while in pratfall
air_friction = .06;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 10.25;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 7; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .65;
hitstun_grav = .48;
knockback_adj = .85; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 5;
wave_land_adj = 1.65; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 4;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.75;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
roll_forward_max = 9.75; //roll speed
croll_backward_max = 9.75;

land_sound = asset_get("sfx_kragg_rock_land");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_mobile_gear_jump");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = sound_get("rev4");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

/*
 * Sprites and variables
*/

intro_active = 1;
intro_speed = .25;
intro_sfx = asset_get("mfx_player_ready");
intro_sfx_frame = 0;
intro_player_offset = 0; //Delays the intro animation depending on the player number.



debug_toggle = 0;
icon_shake = 0;

// ARCHEN_IS_VALID = false;

// Defeatist Passive
POWER_STATE_OFF  = 0;
POWER_STATE_UP   = 1;
POWER_STATE_DOWN = 2;


old_power_state	   = POWER_STATE_OFF;
power_state        = POWER_STATE_OFF;  // Initial power state
power_range        = 50;               // Damage range to trigger the (de)buff
neutral_range      = 25;               // Damage range to get back to neutral. (shouldn't be higher than power_range.)
power_up_mult      = 1;             // Knockback multiplier when buffed
power_down_mult    = 1;             //                    - when debuffed

power_up_damage_mult      = 1.25;             // Damage multiplier when buffed
power_down_damage_mult    = 0.75;             //                    - when debuffed

power_duration     = 15;               // Duration of the (de)buff when unfixed
power_timer        = -1;               // Time in seconds of when the current (de)buff was triggered
power_time_elapsed = 0;                // Time in seconds elapsed since the last trigger
power_keep         = false;            // Whether the (de)buff is fixed or not
power_within_range = false;            // Whether or not the player is within range for a trigger
power_dots         = 0;                // Number of dots on the HUD bar
power_dot_type     = POWER_STATE_OFF;  // Type of dot for the HUD bar

enemy_count = 0;
our_dmg = 0;
their_dmg = 0;

debug_last_mult = 1;
debug_last_knock = 0;

//Car Up Special
uspecial_boost = -16; //height at which up special sends you into the air
uspecial_startup = 18; //startup frames for up special
uspecial_landing_lag = 24; //length of up special landing animation

//Neutral Special article stuff
killarticles = false;

//N-Special

nspecial_active = 0;
nspecial_friction = 0.945;
nspecial_anim_speed = 0.2;
nspecial_rock_vspeed = -6; //For when you spawn a rock using nspecial.

nspecial_off_vsp = 4.5; //Pushes the rock up when you disable AP.

nspecial_current = noone;
nspecial_image = -1;

// UI
POWER_BAR_COLOUR_OFF  = make_colour_rgb(255, 255, 255);  // Colour for neutral state
POWER_BAR_COLOUR_UP   = make_colour_rgb(223, 62, 35);    // Colour for rage state
POWER_BAR_COLOUR_DOWN = make_colour_rgb(0, 141, 240);    // Colour for sweat state
POWER_BAR_COLOUR_TIME = make_colour_rgb(255, 213, 65);   // Colour for fixed state

state_colour[POWER_STATE_OFF]  = POWER_BAR_COLOUR_OFF;
state_colour[POWER_STATE_UP]   = POWER_BAR_COLOUR_UP;
state_colour[POWER_STATE_DOWN] = POWER_BAR_COLOUR_DOWN;

spr_power_bar_bg  = sprite_get("power_bar_bg");
spr_power_bar_dot = sprite_get("power_bar_dot");

spr_power_icon_up_0 = sprite_get("power_icon_up_0");
spr_power_icon_up_1 = sprite_get("power_icon_up_1");

spr_power_icon_down_0 = sprite_get("power_icon_down_0");
spr_power_icon_down_1 = sprite_get("power_icon_down_1");

statboost_time = 0;
statboost_maxtime = 60;

statboost_sprite = sprite_get("powerup");

gender = 0;
if random_func(0, 7, 1) == 0 {gender = 1;}

birdboy = noone;
grabbedid = noone;
grab_passes = 0;