hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 58;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .155;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7.5;
dash_speed = 6.5;
dash_turn_time = 13;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .15;
moonwalk_accel = 1.6;

jump_start_time = 5;
jump_speed = 9.50;
short_hop_speed = 6;
djump_speed = 8.99;
leave_ground_max = 5.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .40;
hitstun_grav = .50;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 9;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .13; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 8;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
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



//attack stuff
jump_time = 0;
bounce = false;
follow = 0;
anim = 0;
boost = 0;
boost2 = 0;
x_dir = 0;
float = 0;
nspec_charge = 0;
pop = 0;

ditto = 0;

bubble_effect = 0;
bubble_frame = 0;

bubbleg = noone;
bloop = noone;
effect = noone;

pikmin = noone;
pikmin_frame = 0;
pikmin_time = 320;
pikmin_sound = 0;

status = noone;

fspec_set = 0;
projectile = noone;
shrimp_set = 0;
shrimp = 0;
fish = 0;

y_offset = 0;

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Bubble
caught = 0;
wet = 0;
bubble_pop = hit_fx_create( sprite_get( "bubble_destroy" ), 16 );
bubble_pop_ea = hit_fx_create( sprite_get( "bubble_destroy_ea" ), 16 );
bubble_pop2 = hit_fx_create( sprite_get( "bubble_destroy2" ), 16 );