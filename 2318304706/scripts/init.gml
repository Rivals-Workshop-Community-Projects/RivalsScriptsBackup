hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .12;
crouch_anim_speed = .1;
walk_anim_speed = .175;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7.5;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .8;
moonwalk_accel = 1.4;

blinkTimer = 0;
customGotParried = 0;

killarticles = false;
fsmashOut = 0;
dairOut = 0;
whirlOut = 0;
flashOut = 0;
flashAngle = 0;
blastOut = 0;
soul = noone;
triedDair = 0;

numFlashes = 2;

usingAltGBeamControl = 0;

shouldShowIndicator = false;
timedHitAvailable = false;

drm = 0;
kirbyability = 13;
swallowed = 0;

plushForAmber = sprite_get("genoDoll");

isAI = false;

HG_HITBOX_COLOR = 69;
hboxShape = -2;
shape_circle = sprite_get("hitbox_circle")
shape_rect = sprite_get("hitbox_rect")
shape_roundrect = sprite_get("hitbox_roundrect")

gbeamChargeSfx = 0;
gbeamChargeLoops = 0;
gbeamParticleNum = 0;
gbeamChargeLevel = 0;
gbeamStoredCharge = 0;
gbeamVisOffset = 0;
myBeam = noone;
myBeam2 = noone;
chargingBeam = 0;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 5.5;
djump_speed = 9;
leave_ground_max = 4; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .325;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6.5;
walljump_vsp = 8; 
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .4;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 6;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .13; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 3;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_ori");
jump_sound = sound_get("smrpg_mario_jump");
djump_sound = sound_get("smrpg_mario_jump_air");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

muzzleJab = hit_fx_create( sprite_get( "jab_muzzle" ), 2 );
failSmoke = hit_fx_create( sprite_get( "fstrong_smoke" ), 20 );

gwhirlTrail = hit_fx_create( sprite_get( "fspec_proj_trail" ), 10 );

gbeamChargeParticle = hit_fx_create( sprite_get( "nspecial_charge_energy" ), 20 );
gbeamFail = hit_fx_create( sprite_get( "nspecial_beam_fail" ), 40 );
gbeamSmall = hit_fx_create( sprite_get( "nspecial_beam_small" ), 40 );
gbeamMedium = hit_fx_create( sprite_get( "nspecial_beam_medium" ), 40 );
gbeamLarge = hit_fx_create( sprite_get( "nspecial_beam_large" ), 40 );

empoweredFX = hit_fx_create( sprite_get( "fxEmpowered" ), 18 );

beaconAlert = hit_fx_create( sprite_get( "dspec_article_alert" ), 14 );

introSoul = hit_fx_create( sprite_get( "soul" ), 12 );
introSoulFX = hit_fx_create( sprite_get( "fspec_proj_decay" ), 12 );
introTimer = -10;
introTimer2 = 0;

runeActiveA = has_rune("A");
runeActiveB = has_rune("B");
runeActiveC = has_rune("C");
runeActiveD = has_rune("D");
runeActiveE = has_rune("E");
runeActiveF = has_rune("F");
runeActiveG = has_rune("G");
runeActiveH = has_rune("H");
runeActiveI = has_rune("I");
runeActiveJ = has_rune("J");
runeActiveK = has_rune("K");
runeActiveL = has_rune("L");
runeActiveM = has_rune("M");
runeActiveN = has_rune("N");
runeActiveO = has_rune("O");




arena_title = "Star Road's Finest";
boxing_title = "Star Road's Finest";
boxing_short_name = "Geno";
battle_text = "* The smell of stardust fills the air.";

muno_event_type = 0;
user_event(14);
//user_event(7);