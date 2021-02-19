//---- own stuff ----------------------------
taunt_detonate = true;

nspec_sound_timer = 0;
nspec_sound_isplayig = false;

can_create_hitbox = true; // for nair, might need a rename
signflipper = 0;
dattack_timer = 0;
can_super_jump = true;
super_jump_timer = 0; // used for special FX
play_boost_sound = true; // ugly way to prevent the boosted double jump from playing every frame
magnet = 0; //whether the ball can get pulled back
hitstop_amount = 4;
turret_angle = 0;
uspecial_timer = 0;
can_uspecial = true;
uair_charge = 0;
attack_id = 0;
stage_x = get_stage_data(SD_X_POS);
xPos = 420;
yPos = 420;
// -------------------------------------------

hurtbox_spr = asset_get("bug_hurtbox");
crouchbox_spr = asset_get("bug_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = 0.1; //0.1
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = 0.2; // 0.2
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 11;
initial_dash_speed = 5;
dash_speed = 6;
dash_turn_time = 12;
dash_turn_accel = 0.9;
dash_stop_time = 5;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 11;
leave_ground_max = 4; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 34; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 0.9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.4; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 6;
crouch_active_frames = 1;
crouch_recovery_frames = 5;

//parry animation frames
dodge_startup_frames = 3;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 3; //1
air_dodge_active_frames = 4; //2
air_dodge_recovery_frames = 3; //3
air_dodge_speed = 7;

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
