amaya_venom = false;
amaya_venom_count = 0;
amaya_venom_consumed = false;
amaya_venom_id = 0;
amaya_venom_timer = 0;
amaya_venom_sprite = -1;

venombubble_ins = noone;
bubble_count = 0;
easetimer = 0;

//sprite_change_collision_mask("bubble", true, 0, 0, 0, 0, 0, 0 );

hadoken_charge = 0;
hadoken_fx_frame = 0;
fspecial_projectile = noone;

articleIndex = 0;

dspecial_fx_frame = 0;
dspecial_free = false;

time_since_last_hit = 999;

hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 54;
idle_anim_speed = .12;
crouch_anim_speed = .1;
walk_anim_speed = .11;
dash_anim_speed = .16;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 16;
initial_dash_speed = 6.8;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.3;
dash_stop_time = 5;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.99;
short_hop_speed = 7;
djump_speed = 10.2;
leave_ground_max = 5.3; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.3; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .70; //multiplier of air_accel while in pratfall
air_friction = .025;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .55;
hitstun_grav = .515;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .07; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 9.3;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 8.75; //roll speed
roll_backward_max = 8.75;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

AT_FTILT2 = 40;
AT_UPTAUNT = 41;

poison_hit_small = hit_fx_create(sprite_get("poison_hit_small"), 16);
poison_hit_large = hit_fx_create(sprite_get("poison_hit_large"), 18);

charge_shine = hit_fx_create(sprite_get("charge_shine"), 12);

//workshop support
//miiverse_post = sprite_get("miiverse_post");