hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

nateFromPowervale = 1;

actionMeterStatus = 0;
actionMeterFill = 0;
actionMeterAnimTimer = 0;
playedMeterSfx = 0;
specialPower = 0;

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
crystalOffset2 = 0;
airCrystalSpawnX = 0;
airCrystalSpawnY = 0;
crystalReticleMomentum = 0;

dattackCancelPower = 0;

progressCheck = 0;

usesAltHud = 0;

hasBounced = 0;

last_dodge_dir = 0;
gliderOffset = 0;

canMakePlat = 1;
madePlat = 0;
myPlatform = noone;

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
smolFspec = 0;

outlineR = 0;
outlineG = 0;
outlineB = 0;
outlineDirection = 0;
timeUntilFlow = 0;

fastFSpec = false;

spikeGlowTimer = 0;

buffFX = 0;
buffFXTimer = 0;
buffFXPosX = 0;
buffFXPosY = 0;

onPlatform = false;
taunt_cancel_available = false;

nspecPowerChange = 0;


alive_players = 0;

VA_inactiveColor_R1 = 130;
VA_inactiveColor_G1 = 20;
VA_inactiveColor_B1 = 14;
VA_inactiveColor_R2 = 82;
VA_inactiveColor_G2 = 5;
VA_inactiveColor_B2 = 5;
VA_inactiveColor_R3 = 59;
VA_inactiveColor_G3 = 1;
VA_inactiveColor_B3 = 1;

VA_activeColor_R1 = 255;
VA_activeColor_G1 = 248;
VA_activeColor_B1 = 176;
VA_activeColor_R2 = 255;
VA_activeColor_G2 = 228;
VA_activeColor_B2 = 18;
VA_activeColor_R3 = 214;
VA_activeColor_G3 = 162;
VA_activeColor_B3 = 4;

VA_transitionamt = 0;

target = noone;

HG_HITBOX_COLOR = 69;
hboxShape = -2;
shape_circle = sprite_get("hitbox_circle")
shape_rect = sprite_get("hitbox_rect")
shape_roundrect = sprite_get("hitbox_roundrect")

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
techroll_active_frames = 3;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
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

hitA = hit_fx_create( sprite_get( "illidrium_hfx_sml" ), 18 );
hitB = hit_fx_create( sprite_get( "illidrium_hfx_med" ), 18 );
hitC = hit_fx_create( sprite_get( "illidrium_hfx_lrg" ), 18 );

hitA2 = hit_fx_create( sprite_get( "ice_hfx_sml" ), 18 );
hitB2 = hit_fx_create( sprite_get( "ice_hfx_sml2" ), 21 );
hitC2 = hit_fx_create( sprite_get( "ice_hfx_sml3" ), 21 );

hitB3 = hit_fx_create( sprite_get( "ice_hfx_bair" ), 21 );
hitC3 = hit_fx_create( sprite_get( "ice_hfx_lrg" ), 26 );

empoweredFX = hit_fx_create( sprite_get( "fxEmpowered" ), 28 );
powerhit = hit_fx_create( sprite_get( "vfx_powerhit" ), 18 );
armorblock = hit_fx_create( sprite_get( "vfx_armorblock" ), 18 );

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

crystalRing = hit_fx_create( sprite_get( "crystal_detonatechargering" ),  21);
crystalPower = hit_fx_create( sprite_get( "crystal_powerring" ),  18);

healReleaseSparkle = hit_fx_create( sprite_get( "taunt2_release_sparkle" ),  15);
healAuraSparkle = hit_fx_create( sprite_get( "taunt2_aura" ),  30);
healNum = hit_fx_create( sprite_get( "healnum" ),  60);
healTarget = noone;
healTimer = 0;
healOffsetX = 0;
healOffsetXDir = 0;
healOffsetY = 0;

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
boxing_title = "Illidrium Wielder";
boxing_short_name = "Nate";
battle_text = "* Purple sparks fizzle through the air.";
miiverse_post = sprite_get("miiverse");

in_adventure = false;
should_do_intro = true;
hit_player_event = 2;

pronouns = ["he","him","his","is"];
am_is_clothed = true;
am_is_guest = true;
am_is_magic = true;
am_is_handed = true;

//victory
nate_victory_quote = "That was a simulation, right? It had to have been...";
nate_handled_victory_quote = false;
nate_victory_icon = 4;