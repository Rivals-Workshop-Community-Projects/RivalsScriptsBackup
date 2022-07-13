vine_break_vfx = hit_fx_create(sprite_get("vine_break_vfx"), 18);
vfx_wood_extra_large = hit_fx_create(sprite_get("vfx_wood_extra_large"), 28)
vfx_wood_large = hit_fx_create(sprite_get("vfx_wood_large"), 21)
vfx_wood_small = hit_fx_create(sprite_get("vfx_wood_small"), 18)
vfx_flower_large = hit_fx_create(sprite_get("vfx_flower_large"), 18)
vfx_flower_sweetspot = hit_fx_create(sprite_get("vfx_flower_sweetspot"), 21)

sfx_ivy_swipe_heavy1 = sound_get("ivy_swipe_heavy1")
sfx_ivy_swipe_heavy2 = sound_get("ivy_swipe_heavy2")
sfx_ivy_swipe_heavy3 = sound_get("ivy_swipe_heavy3")
sfx_ivy_swipe_med1 = sound_get("ivy_swipe_med1")
sfx_ivy_swipe_weak1 = sound_get("ivy_swipe_weak1")
sfx_ivy_swipe_weak2 = sound_get("ivy_swipe_weak2")

arb_marked = false

AG_VINE_SPRITE = 1000
remote_strong = false
strong_draw_x = x
strong_draw_y = y

timer = 0;
seed_count = 0;
ground_seed_count = 0;
special_fair = false;
break_coords = [undefined, undefined];

dspec_coords = [undefined,undefined];
dspec_timer = 0;

spawn_vine_hitbox = undefined
spawn_vine_timer = 0;

//mark_article_id = undefined //if of seed artile thats marking a player
//seeker_id = undefined //id of dspec vine seeker proj

//grabbedID = undefined;
//grabbedTimer = 0;

hurtbox_spr = asset_get("orca_hurtbox");
crouchbox_spr = asset_get("orca_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 44;
idle_anim_speed = .125;
crouch_anim_speed = .125;
walk_anim_speed = .225;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 4.0;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7.5;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.75;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .75;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 7.4;
djump_speed = 11.5;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = 1.00; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 26; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .60;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .11; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 8;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 2;
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
air_dodge_speed = 8.0;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 10; //roll speed
roll_backward_max = 10;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_syl");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
