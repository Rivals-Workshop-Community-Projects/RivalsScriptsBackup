hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56;
charHeightStand = char_height;
charHeightCrouch = 30;
idle_anim_speed = .13;
crouch_anim_speed = .15;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 5.8;
dash_speed = 6.2;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9;
short_hop_speed = 4.5;
djump_speed = 9.5;
//djump_accel = -1.4;
//djump_accel_start_time = 4;
//djump_accel_end_time = 15;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 7;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .4;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 6;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 4;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 2;
techroll_recovery_frames = 4;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 4;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_eta");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// vfx roll
rollSpr = sprite_get("roll_forward");
rollArray = array_create(3, -1);

// tutorial
sfxSelect = asset_get("mfx_option");
sfxAccept = asset_get("mfx_confirm");
sfxCancel = asset_get("mfx_back");
practice = get_training_cpu_action() != CPU_FIGHT;
menuState = 0;
menuStateBuffer = 0;
holdTimer = 0;
tutAlpha = 1;
tutOn = true;
tutMenu = 0;
tutPrevMenu = 0;
tutDone = array_create(1, 0);
tutDoneAdv = array_create(1, 0);

// transcend
transcounter = 0;

// nspec charge
nspecChargeMax = 100;
nspecCharge = 0;
nspecFree = false;
nspecFiring = 0;
nspecFired = 0;
nspecLeaderObj = noone;

// fspec
fspecActive = false;
fspecDir = 1;
fspecDist = 0;
fspecMaxDist = 250;
fspecSpeed = 4;
fspecHoldTime = 80;
fspecHoldTimer = 0;
fspecGrabbedObj = noone;

// snowflake
flake = {x:x==0?room_width/2:x, y:y==0?room_height/2:y, hsp:0, vsp:0, isOut:false};
renderer = instance_create(0,0,"obj_article2");
particle = hit_fx_create(sprite_get("particle"), 21);

// uspec
uspecTarget = false;
uspecAngle = 90;
uspecBan = false;

// jab lag
jabLag = 0;

// ustrong
ustrongLoop = 0;

//topcustom
topcustom = 0;

// Support
Hikaru_Title = "Ice fox";
personaQuips[10] = "Melt it all!";
tcoart = sprite_get("tco_art");
arena_title = "The Snowblind Sage";
battle_text = "You are blinded by snow.";
ncode1 = "Stay away from those icicles.";
ncode2 = "Those are extremely dangerous.";
ncode3 = "";
steve_death_message = "Transphobia is gone";