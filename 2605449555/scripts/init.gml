hurtbox_spr = sprite_get("cann_hurt");
crouchbox_spr = sprite_get("canncrouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.35;
walk_accel = 0.2;
walk_turn_time = 5;
initial_dash_time = 14;
initial_dash_speed = 7.5;
dash_speed = 6.75;
dash_turn_time = 8;
dash_turn_accel = 1.4;
dash_stop_time = 6;
dash_stop_percent = 1; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.1;
moonwalk_accel = 1.3;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6.25;
djump_speed = 9.5;
leave_ground_max = 7.4; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7.4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6.25; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3.25; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = 0;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8.5;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .5;
hitstun_grav = .45;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 13;
wave_land_time = 8;
wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.1; //grounded deceleration when wavelanding

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
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_gus");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_propeller_dagger_draw");

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

// NSpecial Velocities Stuff

CannLastUsedNorU = 0; // Nspecial = 0 >> Uspecial = 1

CannNSpecialSpdTimer = 0;
CannNSpecialVelocity = 0;
CannNSpecialVsp = 0;
CannNSpecialHsp = 0;

CannStoredNSpecialAmt = 0;

CannDotTime= 0;

CannDot1XPos = 0;
CannDot1YPos = 0;

CannDot2XPos = 0;
CannDot2YPos = 0;

CannDot3XPos = 0;
CannDot3YPos = 0;

CannDot4XPos = 0;
CannDot4YPos = 0;

CannDot5XPos = 0;
CannDot5YPos = 0;

CannBoomX = 0;

CannBoomY = 0;

CannBonkLD = 0;

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

// Bair Yeet

CannBairHasYeet = false;

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

// Teleporting To Cannonball

CannTeleportable = false;

CannTpX = 0;
CannTpY = 0;

CannBallGetValues = false;
CannBallDelete = false;
CannBallTpX = 0;
CannBallTpY = 0;
CannBallTpHsp = 0;
CannBallTpVsp = 0;

CannTpUsed = false;

// Hitting Cannonball

CannHitpause = 0;

CannBallState = 0;

CannBallDelete = 0;

CannBallOppHit = false;

CannBallDie = false; // If true delete the cannonball

CannBallParry = false; // If the opponent parries the cannonball

CannBallSelfParry = false; // If YOU parry your own cannonball

CannBallFSpcLand = false;

CannBallOppLastHitX = 0;

CannBallOppLastHitY = 0;

CannBallOppLastHitLD = 0;

CannOppFSpecialHit = false;

CannUStrongEasingTimer = 0;

CannUStrongStartX = 0; // Hit player x position at start of easing

CannUStrongStartY = 0; // Hit player y position at start of easing

CannFSpecialLanded = false;

CannNSpecialCooldownTimer = 0; // If you teleport this will be set so that you can't shoot for a bit
CannNSpecialCooldownSound = true; // Plays a sound

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
