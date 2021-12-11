hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = sprite_get("hitstun_hurtbox");

spin_hit = false; //Need this for FSpecial spin hitting to allow to use Special again.
confetti_L = 0;
confetti_R = 0;
propeller_rats = 0;
rats = 0;
rat_timer = 0;
which_bash = 0;
afterimage_timer = 0;
KILL_RATS = 0;

char_height = 68;
idle_anim_speed = 1/6.5;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .25;
pratfall_anim_speed = .15;

walk_speed = 3.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6;
dash_speed = 5.5;
dash_turn_time = 16;
dash_turn_accel = .5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .3; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = .95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .13; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 3;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 3;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("gus_land");
landing_lag_sound = asset_get("gus_land");
waveland_sound = asset_get("sfx_waveland_gus");
jump_sound = asset_get("sfx_gus_jump");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

timer = 0;

// afterimage
afterImageTimer = 0;
afterImageMax = 16;
afterImage = array_create(afterImageMax, -1);

bomb_explosion = hit_fx_create(sprite_get("bomb_explosion_hfx"), 18);
confetti_slash = hit_fx_create(sprite_get("confetti_slash"), 24); 
confetti_slash2 = hit_fx_create(sprite_get("confetti_slash2"), 22);
cards = hit_fx_create(sprite_get("cards"), 15);
cards_small = hit_fx_create(sprite_get("cards_small"), 15);
slash = hit_fx_create(sprite_get("slash"), 20);
nothing = hit_fx_create(sprite_get("nothing"), 1);
brigandine_image = hit_fx_create(sprite_get("brigandine_afterimage_fx"), 16);
brigandine_sparks = hit_fx_create(sprite_get("brigandine_sparkles_fx"), 25);

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;