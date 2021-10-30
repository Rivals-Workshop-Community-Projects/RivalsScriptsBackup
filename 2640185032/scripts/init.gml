hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 48;
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 7.75;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .25; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.5;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 11;
leave_ground_max = 5.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 5; //normal landing frames
prat_land_time = 15;
wave_land_time = 8;
wave_land_adj = 1.40; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .10; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 3;
crouch_recovery_frames = 1;

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
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 4;
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
bubble_y = 4;


small_sprites = 1;


debug = false;
start_timer = 0;
alt_swap = true;
alt_select = -1;

//short charge for each knife throw
increase = 0;
increased = false;

ftilt_knife_cd = -1;

grab = noone;
uspec_bounce = 0;
uspec_knives = 0;
uspec_can_grab = true;

//nspec variables
knives = 0;
knife_timer = 0;
thisknife = noone;
can_b_reverse = false;
//location variables for when the aerial version is parried
parry_x = 0;
parry_y = 0;

//freeze stuff
can_dspec = false;
frozen_timer = -1;
freeze_max = 150;

fspec_fog_timer = -1;

//afterimages
after_image = array_create(10, -1);
after_image_timer = -1;


//assets
spr_iceclock_back = sprite_get("iceclock_back");
spr_iceclock_hand = sprite_get("iceclock_hand");
spr_iceclock_back_sm = sprite_get("iceclock_sm_back");
spr_iceclock_hand_sm = sprite_get("iceclock_sm_hand");
spr_iceclock_hour_hand = sprite_get("iceclock_hourhand");

spr_meter_back = sprite_get("meter_back");
spr_meter_bar = sprite_get("meter_bar");
spr_stack = sprite_get("stack");

sound_countdown = sound_get("sfx_countdown");
sound_whoosh = sound_get("dag_whoosh02");

vfx_knifebreak = hit_fx_create(sprite_get("vfx_knifebreak"), 15);
vfx_ring_flash = hit_fx_create(sprite_get("vfx_ring_flash"), 15);
vfx_star_flash = hit_fx_create(sprite_get("vfx_star_flash"), 15);
vfx_flake = hit_fx_create(sprite_get("vfx_flake"), 24);
particle_x = 0;
particle_y = 0;
col_R = get_color_profile_slot_r( get_player_color(player), 0);
col_G = get_color_profile_slot_g( get_player_color(player), 0);
col_B = get_color_profile_slot_b( get_player_color(player), 0);