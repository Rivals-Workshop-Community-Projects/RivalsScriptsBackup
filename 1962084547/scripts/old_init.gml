hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .05;
crouch_anim_speed = .05;
walk_anim_speed = 1.5;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 1;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 8;
dash_speed = 7;
dash_turn_time = 8;
dash_turn_accel = 1.5;
dash_stop_time = 5;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7;
djump_speed = 7.25;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 1;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 2;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 8.5; //maximum fall speed without fastfalling
fast_fall = 9.5; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = .85; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
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
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
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

/*
 * Sprites and variables
*/

debug_toggle = 1;


// ARCHEN_IS_VALID = false;

// Defeatist Passive
POWER_STATE_OFF  = 0;
POWER_STATE_UP   = 1;
POWER_STATE_DOWN = 2;

power_state        = POWER_STATE_OFF;  // Initial power state
power_range        = 30;               // Damage range to trigger the (de)buff
power_up_mult      = 1.25;             // Knockback multiplier when buffed
power_down_mult    = 0.75;             //                    - when debuffed
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

// Up-Special Boulder
USPECIAL_VERTICAL_COUNT = 0;

USPECIAL_VERTICAL_BOOST[0] = -10;  // Vertical momentum boost when using Up-B in the air
USPECIAL_VERTICAL_BOOST[1] = -5;
USPECIAL_VERTICAL_BOOST[2] = -2.5;
USPECIAL_VERTICAL_BOOST[3] = 0;

BOULDER_DIR_U  = 1;
BOULDER_DIR_L  = 2;
BOULDER_DIR_UL = 3;
BOULDER_DIR_R  = 4;
BOULDER_DIR_UR = 5;
BOULDER_DIR_B  = 6;

BOULDER_COOLDOWN = 1.25;  // Cooldown in seconds for Up-B

BOULDER_BASE_DAMAGE    = 4;
BOULDER_BASE_KNOCKBACK = 7;

BOULDER_THROW_ANGLE        = 60;  // Angle for default throw
BOULDER_THROW_ANGLE_BACK   = 80;  // Angle for backwards throw
BOULDER_THROW_ANGLE_CHANGE = 20;  // Change in angle resulted by joystick movement
BOULDER_THROW_ANGLE_MIN    = 20;  // Minimum throw angle
BOULDER_THROW_SPEED_NORMAL = 10;  // Throw speed for B press
BOULDER_THROW_SPEED_HOLD   = 13;  // Throw speed when holding B

boulder_alive = false;
boulder_dir = BOULDER_DIR_U;

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
