hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 46;
idle_anim_speed = .14;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6.5;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 34; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .50;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 11;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .12; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 6;
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 3;
techroll_active_frames = 4;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 3;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 3;
roll_back_active_frames = 4;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("sfx_land");
landing_lag_sound = sound_get("sfx_landlag");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("sfx_jump");
djump_sound = sound_get("sfx_djump");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme(sound_get("mus_pac-man_wins"));
//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

pellet = noone;
pellet_id = noone;
dot_img = 0;
arm_dir_number = 0;
move_timer = 0;

hydrant = noone;
hydrant_hit = noone;
hydrant_cooldown = 0;
fspecial_stuck = false;

trail = hit_fx_create(sprite_get("trail"), 12);
fruit = noone;
times_collected = 0;
fruit_sound_num = 0;
fruit_num = 1;
fruit_win_length = 16;

trampoline = noone;
tramp_jump = sound_get("sfx_trampoline");
tramp_break = sound_get("sfx_tramp_break");
can_tramp = true;

set_victory_bg(sprite_get("victory_bg"));

wait_time = 360;
wait_length = 204;
wait_sprite = sprite_get("wait");