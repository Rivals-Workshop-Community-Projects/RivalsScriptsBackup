hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .100;
dash_anim_speed = .7;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 4.5;
dash_speed = 6.0;
dash_turn_time = 6;
dash_turn_accel = 2;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 6;
jump_speed = 9.5;
short_hop_speed = 6;
djump_speed = 9.5;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 5.5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 50; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5.5;
walljump_vsp = 9.5;
walljump_time = 50;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .35;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.4; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .035; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 3;
techroll_active_frames = 5;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 3;
roll_back_active_frames = 5;
roll_back_recovery_frames = 3;
roll_forward_max = 10; //roll speed
roll_backward_max = 10;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

emoji_splat = hit_fx_create(sprite_get("emoji_splat"), 12);
laugh_splat = hit_fx_create(sprite_get("laugh_splat"), 120);
reverse_laugh_splat = hit_fx_create(sprite_get("reverse_laugh_splat"), 120);
set_hit_particle_sprite(1, sprite_get("emoji_particle"));

//Kirby!
kirbyability = 16;
swallowed = 0;

// misc.
thumbsup_queued = false;
floss_queued = false;
floss_duration = 16; // duration of each step of the floss
num_jabs = 10;
max_hat_spins = 3;
var color_slot = get_player_color(player);
emoji_color = [get_color_profile_slot_r(color_slot, 5),
               get_color_profile_slot_g(color_slot, 5),
               get_color_profile_slot_b(color_slot, 5)];
// nspecial
joke_primed = false;
joke_charge_sound_playing = false;
joke_progress = 0;
joke_limit = 240;
joke_aura_timer = 0;
joke_aura_timer_max = 64;
joke_interrupted = false;
joke_reached_half = false;
joke_reached_full = false;