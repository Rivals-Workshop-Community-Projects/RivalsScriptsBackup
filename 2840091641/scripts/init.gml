hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 69; //nice
idle_anim_speed = .02;
crouch_anim_speed = .13;
walk_anim_speed = 2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 0.2;
walk_turn_time = 8;
initial_dash_time = 10;
initial_dash_speed = 3;
dash_speed = 5;
dash_turn_time = 13;
dash_turn_accel = .7;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 11.50;
leave_ground_max = 16; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .37;
prat_fall_accel = .3; //multiplier of air_accel while in pratfall
air_frict = .08;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 7;
walljump_time = 14;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 10; //fast fall speed
gravity_speed = .57;
hitstun_grav = .50;
knockback_adj = 1.04; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 9;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .15; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

//walljump
wall_frames = 1

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 4;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 4;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;




//soldier

//dattack
whipped = false
whippedtimer = 0

launchDir = 0;
generalDir = 1;
lastDir = 0;

rocketAmmo = 3;
rocketJumping = false;
rocketSelfKnock = 24;
currentArmSpr = 0;

armSpr[0] = sprite_get("laucher");
ammo = 3;
ammoTimer = 0;

deathSound[1] = "death1";
deathSound[2] = "death2";
deathSound[3] = "death3";
deathSound[4] = "death4";

joy_pad_idle = false;
launchDir = 0;


instanceNumber[1] = 0;
instanceNumber[2] = 0;
instanceNumber[3] = 0;
instanceNumber[4] = 0;
instanceNumber[5] = 0;
instanceAltNumber = 1;

launcherSkin[0] = "laucher"
launcherSkin[1] = "laucher1"
launcherSkin[2] = "laucher2"
launcherSkin[3] = "laucher3"
launcherSkin[4] = "laucher4"
launcherSkin[5] = "laucher5"
launcherSkin[6] = "laucher6"
launcherSkin[7] = "laucher7"
launcherSkin[8] = "laucher8"

launcherFrame = 0; //visual rocket launcher frame
holdDir = 0//keepingArm in Place Temp

working = 0;

//ai
randomAI = 0;
ammoAmountTimer = .80