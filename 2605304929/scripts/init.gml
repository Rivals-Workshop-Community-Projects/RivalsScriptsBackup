hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 2.75;
walk_accel = 0.2;
walk_turn_time = 5;
initial_dash_time = 8;
initial_dash_speed = 6.1;
dash_speed = 5.2;
dash_turn_time = 12;
dash_turn_accel = 1.3;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .28;
prat_fall_accel = 0.60; //multiplier of air_accel while in pratfall
air_friction = .055;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 10;
walljump_time = 7;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
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
dodge_recovery_frames = 4;

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

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_waveland_abs");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_absa_jump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Custom section ----------------------------------------------------

//Crouch Bubble Hitfx
crouch_bubble = noone;
hsp_at_start_of_double_jump = 0;

//init.gml - Maw's command grab variables
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.


//Fspecial Variable
ganoncide_preventor_available_flag = true; // Flag used to detect ganoncide and prevent it, but only one time before touching ground
grabbed_player_obj_spr_angle=0;
grabbed_player_obj_draw_x = 0;
grabbed_player_obj_draw_y = 0;

//Input Variables
AB_input_prevention_flag = false;

//Status Effect
electric_buff_water_attack_threshold = 9;
water_buff_electric_attack_threshold = 15;
water_buff_electric_attack_flag = false;
electric_buff_water_attack_flag = false;
element_debug_draw = true;
element_draw = true;

// HitFX
hitfx_large_elec = hit_fx_create(sprite_get("hitfx_large_elec"),12);
hitfx_large_water = hit_fx_create(sprite_get("hitfx_large_water"),12);
hitfx_water_paw = hit_fx_create(sprite_get("hitfx_water_paw"),25);
hitfx_elec_paw = hit_fx_create(sprite_get("hitfx_elec_paw"),25);
hitfx_consume_water = hit_fx_create(sprite_get("consume_water"),30);
hitfx_consume_elec = hit_fx_create(sprite_get("consume_elec"),30);
hitfx_bubbles = hit_fx_create(sprite_get("bubbles"),30);

// Lukaru's Intro Code
// intro
introTimer = -4;

// Hud Code
distance_to_opponent = [0,0,0];