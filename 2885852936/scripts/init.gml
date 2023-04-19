hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 50;
idle_anim_speed = .17;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 16; //max of 16
initial_dash_speed = 4; //lower then low of 4
dash_speed = 8; //9 max
dash_turn_time = 8;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = -.15; //lower then low of.25
ground_friction = .45;
moonwalk_accel = 1.2;

jump_start_time = 5;
jump_speed = 12.3; //ax of 12
short_hop_speed = 5;
djump_speed = -1; //lower then low of 8
djump_accel = -1.4; //lower then low of 8
djump_accel_start_time = 8;
djump_accel_end_time = 20;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .4;
hitstun_grav = .525;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 6;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
shothit = hit_fx_create( sprite_get( "shothit" ), 40 );
pig_hit = 0;

// intro
introTimer = -2;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

beem = sprite_get( "beem" );
shothit = sprite_get( "shothit" );
ltweet = sprite_get( "ltweet" );
//fspecial
cursor = 0;
killarticles = false;
move_cooldown[AT_DSPECIAL] = 650;

// creates a 30 frame explosion effect:
beemmiss = hit_fx_create( sprite_get( "beemmiss" ), 30 );
beemhit = hit_fx_create( sprite_get( "beemhit" ), 50 );
shotmiss = hit_fx_create( sprite_get( "shotmiss" ), 15 );
shothit = hit_fx_create( sprite_get( "shothit" ), 50 );
// Here's some new code for the pigmask
pig = noone;
spr_pig_idle = sprite_get("pigidle");
spr_pig_spawn = sprite_get("pigspawn");
spr_pig_fall = sprite_get("pigfall");
spr_pig_hit = sprite_get("pighit");
spr_pig_attack = sprite_get("pigattack");
spr_pig_charge = sprite_get("pigcharge");
spr_pig_land = sprite_get("pigland");
spr_pig_die = sprite_get("pigdie");
spr_pig_taunt = sprite_get("pigtaunt");