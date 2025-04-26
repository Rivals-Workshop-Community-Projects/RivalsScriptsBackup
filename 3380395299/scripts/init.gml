hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 72;
idle_anim_speed = .035;
crouch_anim_speed = .035;
walk_anim_speed = .05;
dash_anim_speed = .1;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.15;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.5;
dash_speed = 5.5;
dash_turn_time = 9;
dash_turn_accel = 1.75;
dash_stop_time = 6;
dash_stop_percent = .3; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .45;
moonwalk_accel = 1.05;

jump_start_time = 5;
jump_speed = 9;
short_hop_speed = 5;
djump_speed = 7.9;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 33; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 8;
walljump_time = 20;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .35;
hitstun_grav = .45;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .025; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 2;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 1;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme(sound_get("victory"));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Grab variables
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.
grabTimer = 10;

//other variables. ik
dspecial_icon = sprite_get("basecast_icons");
dspecial_icon_bc = 18;
dspecial_icon_colors = 0;
basecast_hit = false;
firemenOut = false;
judgeCharge = 0;
nspecialProj = 0; //0 = Pinball; 1 = Heart; 2 = Clawhammer; 3 = Bomb
stopRightThereBruh = 3;
maxjabs = 3;
msgw_compat = sprite_get("taunt2");

stung = hit_fx_create(sprite_get("effect_bluey"), 28);
stung2 = hit_fx_create(sprite_get("effect_bluey2"), 34);
stung3 = hit_fx_create(sprite_get("effect_cinna"), 16);
stung4 = hit_fx_create(sprite_get("effect_cinna2"), 32);
cementspill = hit_fx_create(sprite_get("cementspill"), 32);