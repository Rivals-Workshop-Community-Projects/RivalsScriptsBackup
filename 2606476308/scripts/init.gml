hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("cr_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//other stuff
set_victory_theme(sound_get("mus_monkeese_victory"));

char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .2;
walk_anim_speed = .15;
dash_anim_speed = .25;
pratfall_anim_speed = 1;

hue = 0;
outlineR = 0;
outlineG = 0;
outlineB = 0;
outlineDirection = 0;
sideBHold = 0;
//99, 155, 255

walk_speed = 3.5;
walk_accel = 0.2;
walk_turn_time = 5;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 6;
dash_turn_accel = 1.5;
dash_stop_time = 2.5;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .35;
moonwalk_accel = 1;

jump_start_time = 5;
jump_speed = 9.3;
short_hop_speed = 5.5;
djump_speed = 8.2;
leave_ground_max = 4; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .5;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .01;
max_djumps = 2;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 8;
walljump_time = 16;
max_fall = 7; //maximum fall speed without fastfalling
fast_fall = 10; //fast fall speed
gravity_speed = .45;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.4; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .02; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 10;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 0;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 6;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 6;
roll_back_recovery_frames = 1;	
roll_forward_max = 10; //roll speed
roll_backward_max = 10;

land_sound = sound_get("landing");
landing_lag_sound = sound_get("landing");
waveland_sound = asset_get("sfx_waveland_wra");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = asset_get("sfx_quick_dodge");

comboblast = hit_fx_create( sprite_get( "comboblast" ), 30 );

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

bat_sweetspot = hit_fx_create( sprite_get( "sweetspot" ), 7 );
bat_explosion = hit_fx_create( sprite_get( "explosion" ), 15 );

kirbyability = 3

flying_rock1 = noone
flying_rock2 = noone
flying_rock3 = noone
nspecial_extended_window = false
rock_hit = false
flying_rock1_uspecial = false
flying_rock2_uspecial = false
flying_rock3_uspecial = false
spinny_rocks_var = 0
grabbedid = noone
colCir = noone
hit_enemy_nspec = false