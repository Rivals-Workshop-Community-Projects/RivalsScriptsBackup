hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;


//vars

hit_counter = 0;

time_slowed = false;
normal_hsp = 0;
normal_vsp = 0;
slow_timer = 0;
slow_timer_full = 0;
time_draw_timer = 0;
slow_hit = false;


start_draw = false;

//cooldown tracking
ball_ready = true;
rewind_ready = true;

// Time Slow
rc_length = 80;
ball_slow_length = 60;
blink_slow_length = 40;
passive_slow_length = 30;

ball_humm = asset_get( "sfx_plasma_field_loop" );

slow_owner = noone;

slowed_player = noone;

// Chronobreak
rewind_startx = 0;
rewind_starty = 0;

rewind_cancel = false;
rewind_clone = noone;
rewind_delay_def = 1.5 * 60;
rewind_delay = 0;
rewind_travel_time = 0;
rewind_travel_max = 25;

rewind_defensive_cd_def = 20;
rewind_defensive_cd = 0;

rewind_travel_default = 25;
rewind_travel_rc = 10;

rc_draw = 0;
rc_draw_timer = 0;

rewind_lowgrav_time = 0;

rewind_vfx = hit_fx_create( sprite_get("rewind_vfx"), 40);

uspec_used = false;
fspec_used = false;

uspec_dir = false;

ball_check = false;
//hitbox grid indexes for chaos stuff
HG_BALL_ANGLE = 55; //angle
HG_BALL_SPEED = 54; //speed

//---//

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6.5;
dash_speed = 6.25;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 12.5; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .15; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 0;
dodge_active_frames = 2;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
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
