hurtbox_spr = sprite_get("spr_hurtbox_idle");
crouchbox_spr = sprite_get("spr_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

large_plasma_hfx = hit_fx_create(sprite_get("large_plasma_hfx"), 38);
plasma_hfx = hit_fx_create(sprite_get("plasma_hfx"),40);

ball_hit = hit_fx_create(sprite_get("screen_effect"),120);
ball_hit2 = hit_fx_create(sprite_get("plasma_hitfx"),50);
ball_hittest = hit_fx_create(sprite_get("plasma_hitfx"),50);
ball_hit3 = hit_fx_create(sprite_get("plasma_hitfx2"),45);
dust = hit_fx_create(sprite_get("dust"),45);
charge = hit_fx_create(sprite_get("charge_effect"),45);
stock_explosion = hit_fx_create(sprite_get("spr_exp"),45);

ball_cooldown = 0;
ball_exists = false;

should_cancel_shine = false;
is_offstage = false;
//Crouch jump
crouch_timer = 0;
crouch_active = false;
jump_detect = 6;
dammage = 0;
can_press = 0;
time_b4hit = 0;
release_time = 0;
pillar = asset_get("pillar_obj");
actionlinesi = 0;
small_sprites = 1
grabbedid = noone;

//article stuff
killarticles = false;
draw_e = 0;
size = 0;
size2 = 0;
shoc2 = 0;

char_height = 52;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = 0.15;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 2.25;
walk_accel = 0.3;
walk_turn_time = 9;
initial_dash_time = 15;
initial_dash_speed = 6;
dash_speed = 6.5;
dash_turn_time = 12;
dash_turn_accel = 1.0;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.2;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .5;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .015;
max_djumps = 1;
double_jump_time = 35; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 31;
wall_frames = 2;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 17; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = .8; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 5; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.48; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 3;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 2;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
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
