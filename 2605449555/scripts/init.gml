hurtbox_spr = sprite_get("cann_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.75;
walk_accel = 0.225;
walk_turn_time = 5;
initial_dash_time = 14;
initial_dash_speed = 9.5;
dash_speed = 8.25;
dash_turn_time = 8;
dash_turn_accel = 1.6;
dash_stop_time = 6;
dash_stop_percent = 1; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.05;
moonwalk_accel = 1.3;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6.25;
djump_speed = 9.5;
leave_ground_max = 12; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 11; //the maximum hsp you can have when jumping from the ground
air_max_speed = 9; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = 0;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 9;
walljump_vsp = 6.5;
walljump_time = 32;
max_fall = 15; //maximum fall speed without fastfalling
fast_fall = 19; //fast fall speed
gravity_speed = .72;
hitstun_grav = .45;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 6;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 6; //roll speed
roll_backward_max = 6;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Character Variables

grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

CannUTiltFlip = false;
CannUTiltDir = 0;

// Heat Variables

HeatLevel = 0; // Current Heat Value
RaiseHeat = false; // Did the attack already raise heat? Then should be true
HeatGlowAnim = 10;
HeatGlowAnimCounter = 0;

HeatWarnTimer = 0;
HeatWarn = 0;

HeatOutlineTimer = 0;
HeatOutline = false;

FuseTimer = 1; // Increases by 1 every half second, managed by Fuse Counter
FuseCounter = 0; // every 30 increases Fuse Timer by 1

CannExploded = false;
HeatLowerAnim = 9;
HeatLowerAnimCounter = 0;

// Uspecial

CannUSpcCharging = false;
CannUSpcChargePower = 0;
CannUSpcChargingTimer = 0;
CannUSpcShoot = false;
CannUSpcFly = false;

CannUSpcX = 0;
CannUSpcY = 0;

CannUSpcExplodeTimer = 0;
CannUSpcExplodeFrame = 9;

CannUSpcShootBallTimer = 0;
CannUSpcShootBallFrame = 0;

CannUSpcShootBallEndTimer = 0;

CannUSpcShootHitboxTimer = 0;

CannUSpcUses = 1;

// Nspecial

CannNSpcCharge = 0;
CannNSpcChargeTimer = 0;

CannCannonBallActive = false;

CannNSpcNoHeatSoundDelay = false;

// FSpecial

CannFSpcDashTimer = 0;

CannShootTimer = 0;

CannGrabbedId = 0;

CannFSpcChargeShotTimer = 0;

CannFSpcCharge = 0;

CannFSpcUsed = false;

CannFSpcDashLength = 0;

// DSpecial 

CannDSpcDmg = 0;

CannDSpcKB = 0;

CannCounterHeatGain = 0;

CannCounterActive = false;

CannCounterAttack = false;

CannCounterStunHit = false;

CannDSpcMeleeHit = false;

CannCounteredEnemyId = 0;

// Strongs

CannStrongTimer = 0;
CannStrongPower = 0;

CannAttackDown = false;

CannStrongHspStore = 0;

//Nair Slowfalling

CannNairVspReduce = false;
CannNairDidReduce = false;

// Fspecial 

CannFspecialPrat = false;

// Taunt

ConfettiRedHsp = 0;
ConfettiGreenHsp = 0;
ConfettiBlueHsp = 0;
ConfettiYellowHsp = 0;

// Death

CannDeath = false;

// Dash Attack Dumb

DAttackHSP = 0;

/* Max Heat Stats
walk_speed = 3.75;
walk_accel = 0.225;
walk_turn_time = 5;
initial_dash_time = 14;
initial_dash_speed = 9.5;
dash_speed = 8.25;
dash_turn_time = 8;
dash_turn_accel = 1.6;
dash_stop_time = 6;
dash_stop_percent = 1; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.05;
moonwalk_accel = 1.3;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 7.5;
leave_ground_max = 12; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 11; //the maximum hsp you can have when jumping from the ground
air_max_speed = 9; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = 0;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 9;
walljump_vsp = 6.5;
walljump_time = 32;
max_fall = 15; //maximum fall speed without fastfalling
fast_fall = 19; //fast fall speed
gravity_speed = .75;
hitstun_grav = .7;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0; //grounded deceleration when wavelanding
