hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("hurtbox_crouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;
wall_lockout = 0;
fspecial_wall = noone;
dreameater_sprite = sprite_get("poison");
shadowball_hit = false;
shadowball_hit_player = noone;
shadowball_hit_timer = 0;
shadowball_hit_size = 0;
nspec_speed = 10;
nspec_explode = hit_fx_create(sprite_get("explosion"),24);
explode = hit_fx_create(sprite_get("hitfx"),20);
attack_audio = sound_get("grunt1");
dive = hit_fx_create(sprite_get("dive"),25);
curse = hit_fx_create(sprite_get("cursevfx"),30);
shatter = hit_fx_create(sprite_get("vfx_shatter_large"),28);
trail_color = make_color_rgb(get_color_profile_slot_r(get_player_color(player), 3), get_color_profile_slot_g(get_player_color(player), 3), get_color_profile_slot_b(get_player_color(player), 3))
proj_size = 0;
galaxy_timer = 0;
bartholomew = true;
nspecial_cur_window = 0;
nspecial_cur_frame = 0;
nspecial_cur_size = 1;
fspecial_hard_cd = false;
//weird delta variables im too lazy to check if they still do anything
u_cooldown = 0;
u_max_cool = 150;
u_dir = 90;
u_player = noone;
u_hit_proj = false;
u_player_reset = true;

char_height = 52;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .1;
dash_anim_speed = .2;
pratfall_anim_speed = .1;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7.5;
dash_speed = 7;
dash_turn_time = 20;
dash_turn_accel = .4;
dash_stop_time = 8;
dash_stop_percent = .45; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .14;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 5.1;
short_hop_speed = 3;
djump_speed = -9;
djump_accel = -1.1;
djump_start_time = 4;
djump_accel_end_time = 15;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 3; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .35; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 6;
walljump_time = 32;
max_fall = 5; //maximum fall speed without fastfalling
fast_fall = 8; //fast fall speed
gravity_speed = .1;
hitstun_grav = .4;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 14;
wave_land_time = 10;
wave_land_adj = .9; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .08; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 8;
crouch_recovery_frames = 2;

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
air_dodge_startup_frames = 2;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 4;
air_dodge_speed = 9.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 3;
roll_forward_max = 7; //roll speed
roll_backward_max = 7;
set_victory_bg(sprite_get("bg"));

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = sound_get("djump");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme(sound_get("gengarwin"));
//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
