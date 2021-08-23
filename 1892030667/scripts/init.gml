hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//Custom Vars
set_victory_theme(sound_get("musky_victory"));

//set_hit_particle_sprite( 1, PART_SHO_FIRE);

prat_reco = false;
has_gun = 1;
no_gun = 0;
gun_throw_hsp = 4;
gun_throw_vsp = -13;
special_held = 0;
old_special_held = 0;
hitb = 0;
hitb2 = 0;
gun = noone;
musky_ping = sound_get("musky_ping");
musky_reload = sound_get("musky_reload_short");
last_sprite = 0;
hview = round(view_hview*.8);
drawitx = 0;
drawity = 0;
offsetx = 0;
offsety = 0;
got_gun_max = 20;
got_gun = 0;
ccode = 0;
effected = 0;

shoot_ring_vfx = hit_fx_create(sprite_get("shoot_ring"), 15);

//Fspecial
gun_tether_sp = 13;
gun_tether_ang = 0;
gun_x = 0;
gun_y = 0;

//Nspecial
gun_load = 0;
gun_load_max = 1;
old_gun_load = 0;
loading = 0;
shot_sound = sound_get("musky_shot");
dry_sound = sound_get("musky_dry_fire");
gun_gui = sound_get("gun_small");

//Dspecial
hit_check = 0;
hit_dist = 0;
effected = 0;

//USpecial
can_uspec = 1;
uspec_ball = sprite_get("uspecial_ball");
uspec_sfx = hit_fx_create(sprite_get("uspecial_sfx"),15);

//Dair
al_jump = 0;

//Ustrong
old_dmg = 0;

// Trummel Codec
trummelcodecneeded = false;
trummelcodec_id = noone;

//Kirby
kirbyability = 0;
swallowed = 0;

//


char_height = 65;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .02;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 2;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.5;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 8;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 7; //roll speed
roll_backward_max = 7;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

