timer = 0
window_length = 0
state_attacking = false

silk_cancel_id = noone

on_keyboard = true

taunt_attack = false

is_hornet = true
manual_hit = false //manual var for triggering fake on-hit stuff
has_snapped = false
hornet_silked_id = noone
hornet_wrapped_id = noone
has_dair_wall_bounce = true

voice_mode = false //SHAW

set_hit_particle_sprite(2, sprite_get("particle_needle"))

vfx_dash = hit_fx_create(sprite_get("vfx_dash"), 15)
vfx_silk_apply = hit_fx_create(sprite_get("vfx_silk_apply"), 30)
vfx_shockwave = hit_fx_create(sprite_get("vfx_shockwave"), 36)
proj_parried = false

uspec_free = false

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .15;
crouch_anim_speed = .15;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .15;

walk_speed = 3;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.7;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6;
djump_speed = 10.5;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.3;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 1;
double_jump_time = 28; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
wall_frames = 2;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = 0.5;
hitstun_grav = 0.50;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 8;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 3;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 1;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_mol");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
/*
rune A type="A"
rune A desc="You can move during DSTRONG"
rune B type="A"
rune B desc="FSPECIAL and DSPECIAL don't go into pratfall on whiff"
rune C type="A"
rune C desc="USPECIAL can be jump canceled while dashing"
rune D type="H"
rune D desc="DSTRONG wraps silked opponents"
rune E type="H"
rune E desc="Pressing Attack during a successful parry will trigger a powerful counter hit"
rune F type="O"
rune F desc="Barbs travel further"

rune G type="H"
rune G desc="Hitting silked opponents can be canceled into DSPECIAL"
rune H type="R"
rune H desc="USPECIAL throw distance and speed increased"
rune I type="O"
rune I desc="You can have multiple barbs on stage at one"
rune J type="A"
rune J desc="DATTACK travels much further"
rune K type="H"
rune K desc="Opponents stay wrapped for much longer"

rune L type=""
rune L desc=""
rune M type=""
rune M desc=""
rune N type=""
rune N desc=""
rune O type=""
rune O desc=""
*/