hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

nateFromPowervale = 1;

actionMeterStatus = 0;
actionMeterFill = 0;
actionMeterAnimTimer = 0;
playedMeterSfx = 0;

activeBuff = 0;
activeBuffUses = 0;

outgoingDamage = 0;
incomingDamage = 0;

test1 = 0;
test2 = 0;

heldDir = 0;
upBCharge = 0;

crystalOut = 0;
crystalOffset = 0;
airCrystalSpawnX = 0;
airCrystalSpawnY = 0;

dattackCancelPower = 0;

progressCheck = 0;

usesAltHud = 0;

hasBounced = 0;

last_dodge_dir = 0;
gliderOffset = 0;

canMakePlat = 1;
madePlat = 0;

introTimer = -16;
introTimer2 = 0;

killarticles = false;
construct = noone;
construct2 = noone;

gbeamChargeSfx = 0;
gbeamChargeLoops = 0;
gbeamParticleNum = 0;
gbeamChargeLevel = 0;
gbeamStoredCharge = 0;
gbeamVisOffset = 0;
myBeam = noone;
mySwirl1 = noone;
mySwirl2 = noone;
mySwirl3 = noone;
mySwirl4 = noone;
chargingBeam = 0;

outlineR = 0;
outlineG = 0;
outlineB = 0;

fastFSpec = false;

buffFX = 0;
buffFXTimer = 0;
buffFXPosX = 0;
buffFXPosY = 0;

char_height = 52;
idle_anim_speed = .26;
crouch_anim_speed = .1;
walk_anim_speed = .22;
dash_anim_speed = .22;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 6;
dash_turn_time = 8;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 5.5;
djump_speed = 9.5; //9.5
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .7; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1; //2
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5.5;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .45;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 11;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .4; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 1;
roll_back_recovery_frames = 1;
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

empoweredFX = hit_fx_create( sprite_get( "fxEmpowered" ), 28 );

gbeamFail = hit_fx_create( sprite_get( "nspecial_beam_fail" ), 30 );
gbeamSmall = hit_fx_create( sprite_get( "nspecial_beam_small" ), 30 );
gbeamMedium = hit_fx_create( sprite_get( "nspecial_beam_medium" ), 30 );
gbeamLarge = hit_fx_create( sprite_get( "nspecial_beam_large" ), 30 );

beamChargeSparkle1 = hit_fx_create( sprite_get( "fspec_charge_sparkle1" ), 12 );
beamChargeSparkle2 = hit_fx_create( sprite_get( "fspec_charge_sparkle2" ), 12 );
beamChargeSwirl1 = hit_fx_create( sprite_get( "fspec_charge_swirl1" ), 14 );
beamChargeSwirl2 = hit_fx_create( sprite_get( "fspec_charge_swirl2" ), 14 );
beamChargeSwirl3 = hit_fx_create( sprite_get( "fspec_charge_swirl3" ), 14 );
beamChargeSwirl4 = hit_fx_create( sprite_get( "fspec_charge_swirl4" ), 14 );
beamChargeRing = hit_fx_create( sprite_get( "fspec_charge_ring" ),  20);

buffChargeSparkle1 = hit_fx_create( sprite_get( "dspec_charge_sparkle1" ), 12 );
buffChargeSparkle2 = hit_fx_create( sprite_get( "dspec_charge_sparkle2" ), 12 );
buffChargeSwirl1 = hit_fx_create( sprite_get( "dspec_charge_swirl1" ), 14 );
buffChargeSwirl2 = hit_fx_create( sprite_get( "dspec_charge_swirl2" ), 14 );
buffChargeSwirl3 = hit_fx_create( sprite_get( "dspec_charge_swirl3" ), 14 );
buffChargeSwirl4 = hit_fx_create( sprite_get( "dspec_charge_swirl4" ), 14 );
buffChargeRing = hit_fx_create( sprite_get( "dspec_charge_ring" ),  20);

swordFX = hit_fx_create( sprite_get( "dspec_sword" ),  40);
shieldFX = hit_fx_create( sprite_get( "dspec_shield" ),  40);

glider = hit_fx_create( sprite_get( "airdodge_glider" ),  21);
slide = hit_fx_create( sprite_get( "dodge_effect" ),  12);
turnblock = hit_fx_create( sprite_get( "dashturn_block" ),  9);

introbar = hit_fx_create( sprite_get( "introstructure" ),  70);
introbardecay = hit_fx_create( sprite_get( "introstructuredecay" ),  30);

set_victory_portrait(sprite_get("portrait_ext"));



steve_death_message = "Steve took critical damage!!";
arena_title = "Crafty Constructor";
battle_text = "* Purple sparks fizzle through the air.";
miiverse_post = sprite_get("miiverse");