hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 8;
dash_speed = 7;
dash_turn_time = 8;
dash_turn_accel = 2;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 36;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .55;
hitstun_grav = .45;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_cla");
jump_sound = asset_get("sfx_frog_uspecial_cast");
djump_sound = asset_get("sfx_bird_sidespecial_start");
air_dodge_sound = asset_get("sfx_quick_dodge");

hfx_wind_small = hit_fx_create(sprite_get("hfx_wind_small"), 15);
hfx_wind_large = hit_fx_create(sprite_get("hfx_wind_large"), 15);
hfx_wind_huge = hit_fx_create(sprite_get("hfx_wind_huge"), 28);
fspecial_proj_particle = hit_fx_create(sprite_get("fspecial_proj_particle"), 24);
vfx_fair = hit_fx_create(sprite_get("vfx_fair"), 15);
point_die_vfx = hit_fx_create(sprite_get("point_die"), 15);
dspecial_vfx = hit_fx_create(sprite_get("dspecial_vfx"), 20);

set_victory_theme( sound_get( "uysal_victory_theme" ) );

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Gameplay stuff
AT_AIRDASH = AT_EXTRA_1;
airdash_rot = 0;

point = noone;
enemy_state = noone;

uspecial_enhanced = 1;

bead_proj = noone;
bead_article = noone;
bead_trigger = 0;
marked_timer = 0;
attack_used = noone;
bead_x = 0;
bead_y = 0;
beaded_player = noone;
fspecial_homing = noone;
fspecial_spr_dir = 1;
launch_direction = 1;

dspecial_hit = false;
dspecial_turned = false;
dspecial_hitbox = noone;