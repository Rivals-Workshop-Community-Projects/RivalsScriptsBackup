//article1_init

origID = undefined;

//spr_dir = player_id.spr_dir;

isZo = true;

explode = false;

unbashable = 1;

sprite_index = sprite_get("idle_B");
mask_index = sprite_get("zo_ground_hurtbox");
depth = -3;
strong_sprite = asset_get("empty_sprite");
strong_mask = asset_get("empty_sprite");

jumpVfx = hit_fx_create(sprite_get("jump_vfx"), 12);
landVfx = hit_fx_create(sprite_get("land_vfx"), 24);

was_parried = false;
parry_stun = 0;

prevHitboxID = undefined;
prevHitboxNumber = undefined;
prevHitboxAttack = undefined;
prevHitboxGroup = undefined;
damage = 0;

hitstun = 0;
hitAngle = 0;
hitKnockback = 0;
hitXDir = 1;
hitYDir = 1;

djumps = 0; //number of djumps used.

drawMasks = false;
taunt_pressed = false;

recovering = false;

loopTaunt = true;

rocketDist = 170; //distance from rocket where Ru will grapple
rocketDistLate = 100; //while travelling, distance of grapple
rocketHeight = -65; //y level where Zo will auto recover

bufferJump = false; //true if ru is attacking and jump is pressed

buffer_hsp = 0; //tranisiton var so prev works
prev_hsp = 0;
buffer_vsp = 0;
prev_vsp = 0;

attack = undefined;

drawTurret = true;
turretTurning = -10;
turretAngle = 0;
turretActive = false;
slewTimer = 0;

drawLightning = false;

shieldActive = false;
shieldTimer = 0;
shieldMaxTime = 150; //cooldown time
shieldMaxActive = 300; //active time
shieldEndTimer = shieldMaxTime;
shieldHits = 0; //number of hits on shield
shieldHealth = 1; //max number of hits a shield can take before breaking


//fspecial vars
chainHit = false;
chainActive = false;
chainOriginX = 0;
chainEndX = 0;
chainY = 0;
chainSprDir = undefined;
chainPlayerID = undefined; //hit player
chainTether = false; //fspec hits a wall

can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

state = undefined; //not actual states, they are simulated
next_state = undefined; //for setting the next state
state_timer = 0;
window = 0;
window_timer = 0;
frameSpeed = 1; //number of frames before image_index advances
strong_charge = 0; //number of frames of charging strong attacks
release_timer = 0; //increments after strong charge is over

strongCharging = false;

hitpause = false; //in hitpause or not
hitstop = 0; //The number of frames remaining until hitpause ends
hitstop_full = 0; //The number of frames this instance of hitpause lasts total

playerWalkRange = 60; //x range where outside, Zo will start walking towards player
playerWalkFollowRange = 70; //x within range, Zo's hsp will match player hsp while walking
playerDashRange = 120; //x outside range, Zo will dash
playerDashStopRange = 88; //x distance from player where Zo will stop dash
playerTurnRange = 30; //x range where Zo will turn to face player
playerJumpRange = 50; //y range at which Zo will try jump.
playerDjumpRange = 70; //y range at which Zo will try djump.
playerShorthopRange = 20; //y range at which Zo will try shorthop.
playerAirRange = 80; //x range where Zo will try drift towards player.

walk_speed = 2;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7.5;
dash_speed = 6.5;
dash_turn_time = 8;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .52;
hitstun_grav = .45;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");