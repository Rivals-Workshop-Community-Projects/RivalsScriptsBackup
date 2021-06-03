hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

if (get_player_color(player) == 11){
    log_alt = true
} else {
    log_alt = false
}

dash_sfx = true;
funny_dash = 0;
funny_fx = 0;
counter = false;

// intro
introTimer = -4;
int_length = 9;  // num of anim frames
int_spd = 4; // in game frames per anim frame

//Nspecial Stuff
nspecial_number = 0;
rage_damage = 0;
jackpot = false;
jackpot_number = 0;
jackpot_item = 0;
jackpot_shading = false;
jackpot_timer = 0;
proj_stored = false;
store_timer = 0;
store_timer2 = 10;
store_size = 2;

//Dair Grab
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.
next_dair_move = 0;

//Walk Stuff
walkfx_location = 0;

dtilt_offset = [66,0];
dtilt_teleport = false;
dtilt_end = false;
dtilt_start = false;

spr_dir_prev = spr_dir;


dtilt_tp_dist = 100;  //Distance the teleport will travel.
dtilt_tp_prec = 8; //The precision of the teleportation algorithm. Larger number will be more accurate, but slower to calculate. 8 is a good balance of speed and precision.

char_height = 46;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .6;
pratfall_anim_speed = .25;

walk_speed = 0;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 15;
initial_dash_speed = 0;
dash_speed = 13;
dash_turn_time = 14;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .3;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11.4;
short_hop_speed = 7;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .07;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 12;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

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
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_may");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


//Collisions
sprite_change_collision_mask("idle", false, 2, 0, 0, 0, 50, 0 );

user_event(14);