set_victory_theme(sound_get("victory"))
set_victory_bg(sprite_get("victory_background"))

hurtbox_spr = sprite_get("azelf_hitbox");
crouchbox_spr = sprite_get("azelf_crouch_hitbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 42;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .15;
pratfall_anim_speed = .25;

walk_speed = 4.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 5.5;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .4; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .3;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 8;
short_hop_speed = 4.5;
// djump_speed = -1;
djump_speed = 9;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;

max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
// djump_accel = -1.7;
// djump_accel_start_time = 4;
// djump_accel_end_time = 13;

walljump_hsp = 5;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 8.25; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .325;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 8;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 1;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 1;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_ran");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

azelf_futureplaced = false;
azelf_futureready = false;
azelf_char_height = char_height;
azelf_psybeam_ready = false;

sprite_change_collision_mask( "future_sight_mask", true, 0, 0, 0, 0, 0, 0 );
