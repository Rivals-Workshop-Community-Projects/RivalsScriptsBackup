money = 0;
buy_vfx = noone;
sold = false;
sold_player = noone;
has_sold = false;

uspecial_angle = 90;

dspecial_spins = 0;
dspecial_spins_max = 6;
dspecial_hit = false;

taunt_hit = false;
taunt_line1 = noone;
taunt_line2 = noone;
taunt_num = 0;

money_lost_gui_timer = 0;
money_lost = 0;

frame_update = 0;
crouch_frame = 0;
can_crawl = false;
crouch_sfx_played = false;

easetimer = 0;

grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.0;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 16;
initial_dash_speed = 7;
dash_speed = 6.25;
dash_turn_time = 12;
dash_turn_accel = 1.4;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 6;
djump_speed = 11.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .60; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .55;
hitstun_grav = .48;
knockback_adj = 1.02; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 9;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 7;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("bcm_jump");
djump_sound = sound_get("bcm_jump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

AT_ASTRONG = 40;

buy_fx = hit_fx_create(sprite_get("buy_fx"), 12);
sell_fx = hit_fx_create(sprite_get("sell_fx"), 63);


//trailer
//nname = "Unknown"

//ncode1 = "paid to completely clear my info from your database lol"
//ncode2 = "tap to add text"
//ncode3 = "haha literally look behind you"