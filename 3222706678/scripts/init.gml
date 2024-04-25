hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = sprite_get("hurtbox_crouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

fidget = 1; //idle animations
djumped = 0; //used double jump, for animation
parachuted = 0; //prevent infinite up bs
nobrakes = 0; //prevent bucket braking after the first one
bellcooldown = 0; //for the hud element to keep track of

oilfill = 0; //how much of the bucket's filled
oildamage = 0; //how much damage is currently stored in the bucket

thisjudge = 0; //the judge you're about to swing
nextjudge = 0; //the judge you're gonna swing next

abyssmode = 0; //check if runes are on

char_height = 48;
idle_anim_speed = .022;
crouch_anim_speed = .022;
walk_anim_speed = .07;
dash_anim_speed = .13;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 5.8;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 5.7;
djump_speed = 8.8;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.2; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.2; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .45;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 9.8; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .46;
hitstun_grav = .5;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 0;
crouch_active_frames = 2;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 1;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 0
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 8.6;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7;

//roll animation frames
roll_forward_startup_frames = 0;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 0;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 7.2; //roll speed
roll_backward_max = 7.2;

land_sound = sound_get("land");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_gus_land");
jump_sound = sound_get("jump1");
djump_sound = sound_get("jump2");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
