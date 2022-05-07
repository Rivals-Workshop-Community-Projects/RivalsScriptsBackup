hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("cat_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

respawnPlatAnimStripLength = 30;
respawnPlatAnimTimer = 0;
respawnPlatAnimSpeed = 17;

char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = 0.30;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 1;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 8;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .65; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 2;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 7; //maximum fall speed without fastfalling
fast_fall = 10; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.3; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 5; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
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
techroll_speed = 6;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 3;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 7; //roll speed
roll_backward_max = 14;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


//init.gml
tp_dist = 180;  //Distance the teleport will travel.
tp_prec = 8; //The precision of the teleportation algorithm. Larger number will be more accurate, but slower to calculate. 8 is a good balance of speed and precision.

// Passive FX
ZZ1 = hit_fx_create( sprite_get( "ZZ1" ), 48 );
ZZ2 = hit_fx_create( sprite_get( "ZZ2" ), 48 );
ZZ3 = hit_fx_create( sprite_get( "ZZ3" ), 66 );
ZZ4 = hit_fx_create( sprite_get( "ZZ4" ), 66 );
ZZ5 = hit_fx_create( sprite_get( "ZZ5" ), 66 );
ZZ6 = hit_fx_create( sprite_get( "ZZ6" ), 66 );
ZZ7 = hit_fx_create( sprite_get( "ZZ7" ), 66 );


// Active FX
ZZZ1 = hit_fx_create( sprite_get( "ZZZ1" ), 36);