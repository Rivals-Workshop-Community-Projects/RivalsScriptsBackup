hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouchbox");
air_hurtbox_spr = sprite_get("hurtbox_air");
hitstun_hurtbox_spr = sprite_get("hurtbox");

char_height = 48;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.2;
walk_turn_time = 10;
initial_dash_time = 15;
initial_dash_speed = 6.5;
dash_speed = 5.75;
dash_turn_time = 20;
dash_turn_accel = 0.2;
dash_stop_time = 4;
dash_stop_percent = .8; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 12;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 10;
walljump_time = 32;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 12; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 0.9; 

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 10;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .15; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 5;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_syl");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

markmode = 0   //If 0, nspecial heals and fspecial hurts. If 1, nspecial hurts and fspecial heals.
sealtimer = 0
sealmark = 0
lasthitplayer = noone;
healme = 0
uspecialtimer = 0
uspecialdir = 0
uspecialturnspeed = 10
boomerang = noone
gracex = -1
gracey = -1
gracetime = 0
mytotem = noone
hue = 0
uspecialcancel = 1
dspecialjump = 1
kirbyability = 8
enemykirby = noone;
swallowed = 0;

deathmark = sprite_get("mark_death")
fspecial_dead = hit_fx_create( sprite_get( "fspecial_dead" ), 14 );
seal_hit_large_hurt = hit_fx_create( sprite_get( "seal_hit_large_hurt" ), 33 );
seal_hit_large_heal = hit_fx_create( sprite_get( "seal_hit_large_heal" ), 33 );
seal_hit_medium_hurt = hit_fx_create( sprite_get( "seal_hit_medium_hurt" ), 35 );
seal_hit_medium_heal = hit_fx_create( sprite_get( "seal_hit_medium_heal" ), 35 );
seal_hit_weak_hurt = hit_fx_create( sprite_get( "seal_hit_weak_hurt" ), 35 );
seal_hit_weak_heal = hit_fx_create( sprite_get( "seal_hit_weak_heal" ), 35 );
