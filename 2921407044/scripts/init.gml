
hurtbox_spr = sprite_get("standing_hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox"); // Air hitbox is very similar size to crouch, just reused it.
air_hurtbox_spr = sprite_get("air_hurtbox");
hitstun_hurtbox_spr = -1;

//hurtbox_spr = asset_get("ex_guy_hurt_box");
//crouchbox_spr = asset_get("ex_guy_crouch_box");

char_height = 70;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .175;
dash_anim_speed = .2;
pratfall_anim_speed = .175;

walk_speed = 3;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 6.25;
dash_speed = 5.75;
dash_turn_time = 12;
dash_turn_accel = .5;
dash_stop_time = 10;
dash_stop_percent = .025; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10; 
short_hop_speed = 7; 
djump_speed = 9; 
leave_ground_max = 7; 
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2; // Referenced Mollo
prat_fall_accel = .50; //multiplier of air_accel while in pratfall
air_friction = .04; // Refference KRagg
max_djumps = 1;
double_jump_time = 38; // Referenced Mollo //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6; // Referenced Mollo
walljump_vsp = 8;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5; // Referenced Mollo
hitstun_grav = .55; // Referenced Mollo
knockback_adj = 0.9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.20; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .10; //grounded deceleration when wavelanding

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
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2; 
roll_forward_active_frames = 4; 
roll_forward_recovery_frames = 2; 
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
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

//Shell variable Initialization --------------------------------------
shells = 2;
reload_indicator_sound_played = false;
dryfire_sound_played = false;

//Uspecial hit variable ----------------------------------------------
uspecial_hit = 0;

//Nspecial_2 direction variable
nspecial_direction = 180; // used in post draw and attack update
arm_flap_sound_has_flapped = false; // Used in pre draw

//Dspecial variables
current_article1_HitboxID = noone;
dspecial_script_hitbox_time_length = 0;
suitcase_bomb = 0; // Object ID Variable
//suitcase_residual = 0; // Object ID Variable
dspecial_cooldown = 60 * 5; // 5 sec cooldown
dspecial_hit_fx = hit_fx_create(sprite_get("dspec_explosion"),30);

// Hit Particles
set_hit_particle_sprite(1,sprite_get("hit_particle1")); // feather
set_hit_particle_sprite(2,sprite_get("hit_particle2")); // small
set_hit_particle_sprite(3,sprite_get("hit_particle3")); // medium
set_hit_particle_sprite(4,sprite_get("hit_particle4")); // large
set_hit_particle_sprite(5,sprite_get("hit_particle5")); // shotgun
set_hit_particle_sprite(6,sprite_get("hit_particle6")); // steam

hp_feather = 1;
hp_small = 2;
hp_medium = 3;
hp_large = 4;
hp_shotgun = 5;
hp_steam = 6;

// HFX Variables
hfx_feather = hit_fx_create(sprite_get("hfx_feather"),18);
hfx_small = hit_fx_create(sprite_get("hfx_small"),18);
hfx_medium = hit_fx_create(sprite_get("hfx_medium"),18);
hfx_large = hit_fx_create(sprite_get("hfx_large"),18);
hfx_shotgun = hit_fx_create(sprite_get("hfx_shotgun"),18);
hfx_steam = hit_fx_create(sprite_get("hfx_shotgun"),18);

hfx_steam_boost_small = hit_fx_create(sprite_get("hfx_steam_boost_small"),18);
hfx_steam_boost_large = hit_fx_create(sprite_get("hfx_steam_boost_large"),18);
hfx_steam_jump = hit_fx_create(sprite_get("hfx_steam_jump"),18);
hfx_steam_djump = hit_fx_create(sprite_get("hfx_steam_djump"),18);

//Fspecial variable
fspecial_charge = 0;

//Sprite Setting
respawn_sprite = sprite_get("respawn")

//Intro stuff
reload_sound_played_flag = false;

//Sfx variables
fspecial_charge_sfx_id = 0;

// Compatibility Stuff -----------------------------------------------
Hikaru_Title = "Riding Shotgun";
arena_title = "On Borrowed Time";
battle_text ="*The future holds nothing else but confrontation" // Opening line of "Lost at Birth" by Public Enemy

