hurtbox_spr = sprite_get("idleh_hurt");
crouchbox_spr = sprite_get("crouchh_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 62;
idle_anim_speed = .11;
crouch_anim_speed = .1;
walk_anim_speed = .14;
dash_anim_speed = .17;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.5;
dash_speed = 5.75;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11.7;
short_hop_speed = 6;
djump_speed = 10.8;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .045;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 0.925; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

isWrestleCat = true;

target = noone;
fspecmode = 0;
shouldQuit = 0;
myFX = noone;
flameBurstTimer = 0;
flameBurstTimer2 = 0;

custom_up_held = 0;

isAI = false;

grabHeightOffset = 0;
fthrowBack = sprite_get("fthrow_back");

killarticles = false;
bufferNSpecPower = 0;

kirbyability = 11;

didFullJab = 0;
uspecCancel = 0;
uspecHSP = 0;
dattackBounce = 0;

triggerSafety = -420;

hue = 0;

revengeMult = 1;
revengeAnchor = 0;
revengeBuffer = 0;
outlineR = 0;
outlineG = 0;
outlineB = 0;
outlineDirection = 0;
HG_REVENGE_KB_MULTIPLIER = 69;
revengeHitShakeFrames = 0;
revengeTarget = noone;
triedRevengeBurst = false;
incomingDamage = 0;

land_time = 5; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.05; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 3;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 5;
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

flame = hit_fx_create( sprite_get( "flame" ), 12 );
flameR = hit_fx_create( sprite_get( "flameR" ), 12 );
flameR2 = hit_fx_create( sprite_get( "flameR2" ), 12 );

ropeSmoke = hit_fx_create( sprite_get( "smoke" ), 20 );

trail = hit_fx_create( sprite_get( "uspecial_trail" ), 28 );
burst = hit_fx_create( sprite_get( "uspecial_burst" ), 22 );
firehfx = hit_fx_create( sprite_get( "fire_hfx" ), 18 );
trailR = hit_fx_create( sprite_get( "uspecial_rainbowtrail" ), 28 );
burstR = hit_fx_create( sprite_get( "uspecial_rainbowburst" ), 22 );
firehfxR = hit_fx_create( sprite_get( "fire_rainbowhfx" ), 18 );
gleam = hit_fx_create( sprite_get( "dspec_gleam" ), 14 );

burstMain = hit_fx_create( sprite_get( "burst_main" ), 18 );
burstRingsA = hit_fx_create( sprite_get( "burst_ringsA" ), 18 );
burstRingsB = hit_fx_create( sprite_get( "burst_ringsB" ), 18 );
RburstMain = hit_fx_create( sprite_get( "burstrainbow_main" ), 18 );
RburstRingsA = hit_fx_create( sprite_get( "burstrainbow_ringsA" ), 18 );
RburstRingsB = hit_fx_create( sprite_get( "burstrainbow_ringsB" ), 18 );

introBurst = hit_fx_create( sprite_get( "intro_burst" ), 18 );
introTimer = -10;
introTimer2 = 0;

empoweredFX = hit_fx_create( sprite_get( "fxEmpowered" ), 28 );

set_victory_portrait(sprite_get("portrait_real"));


arena_title = "The Ring's Raging Flame";
boxing_title = "The Ring's 
Raging Flame";
boxing_short_name = "Incineroar";
battle_text = "* Incineroar's not stuck in here with you....";

muno_event_type = 0;
user_event(14);
	
user_event(7);