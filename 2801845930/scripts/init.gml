hurtbox_spr = sprite_get("spam_hurt");
crouchbox_spr = sprite_get("spam_hurt_crouch");
air_hurtbox_spr = sprite_get("spam_hurt_air");;
hitstun_hurtbox_spr = sprite_get("spam_hurt");

char_height = 100;
idle_anim_speed = .1;
crouch_anim_speed = .07;
walk_anim_speed = .125;
dash_anim_speed = .125;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 5.75;
dash_speed = 5;
dash_turn_time = 16;
dash_turn_accel = 1.35;
dash_stop_time = 9;
dash_stop_percent = .75; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .2;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 9;
leave_ground_max = 4; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4.3; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3.5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 10.5; //fast fall speed
gravity_speed = .4;
hitstun_grav = .45;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 10;
wave_land_adj = 1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 2;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 2;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 9.5; //roll speed
roll_backward_max = 9.5;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = -10;

// Visual Effects

stringhfx = hit_fx_create( sprite_get( "stringhfx" ), 30 );
emptyhfx = hit_fx_create( sprite_get( "spam_empty" ), 4 );
stringsnaphfx = hit_fx_create( sprite_get( "stringsnaphfx" ), 20 );

// Variables

SpamNeoColor = get_player_color(player);
SpamNeoStringColor1 = 0;
SpamNeoStringColor2 = 0;

SpamNeoWalkIdleSTimer = 0;
SpamNeoWalkIdleFrame = 0;

SpamNeoStringTimer = 0;
SpamNeoStringFrame = 0;

SpamNeoStringSpawned = false;
SpamNeoStringType = 0;

SpamNeoStringTopX = 0;
SpamNeoStringTopY = 0;

SpamNeoStringConectors = 0; // Number of connectors currently active (should be 4 + chain top)

SpamNeoStringLineVsp = 0;
SpamNeoStringLineHsp1 = 0;
SpamNeoStringLineHsp2 = 0;
SpamNeoStringLineHsp3 = 0;

SpamNeoTestingPosY = 0;

// Drawing the string with while function in pre-draw

SpamNeoStringPosYi = 0;
SpamNeoStringPosXi = 0;
SpamNeoStringPosYf = 0;
SpamNeoStringPosXf = 0;
SpamNeoStringAngle = 0;

// Attack Stuff

SpamNeoJabSoundTimer = 0;
SpamNeoDAttackSoundPlayed = false;

// String Debuff Stuff

SpamPlayerStringNum = 0; // Set so that article will attatch to the right player (1 = player 1, 2 = player 2, etc.)
SpamNumPlayerArticles = 0; // The number of active articles

SpamNeoStringStretch = 0;

// Grab Variables

SpamNeoGrabStartX = 0;
SpamNeoGrabStartY = 0;
SpamNeoGrabEasingTimer = 0;
SpamNeoGrabbedId = 0;

SpamNeoPipisAngle = 0;
SpamNeoPipisBonk = false; // If false you hit your own pipis
SpamNeoPipisSound = false;

SpamNeoUSpcYeetX = 0;
SpamNeoUSpcYeetY = 0;
SpamNeoUSpcYeetAngle = 0;
SpamNeoUSpcUsed = false;
SpamNeoUSpcPrat = false;

SpamNeoFastVsp = 0;

SpamNeoID = 0;

SpamNeoPullPower = 0; // Set between 1-5
SpamNeoPullX = 0;
SpamNeoPullY = 0;
SpamNeoPullON = false;

SpamNeoSnappingHitbox = false; // When true creates a hitbox
SpamNeoSnappingXp1 = 0;
SpamNeoSnappingYp1 = 0;
SpamNeoSnappingXp2 = 0;
SpamNeoSnappingYp2 = 0;
SpamNeoSnappingXp3 = 0;
SpamNeoSnappingYp3 = 0;
SpamNeoSnappingXp4 = 0;
SpamNeoSnappingYp4 = 0;
SpamNeoSnappedTest = false; // Test if hit has happened
SpamNeoSnappedTimer = 0;

SpamNeoDSpcVisual = false;

SpamNeoIntroTimer = 0;
SpamNeoPlayerCount = 0;
SpamNeoEnemyName = 0;
SpamNeoEnemyURL = 0;

SpamNeoGrabAngle = 0;
SpamNeoGrabKB = 0;
SpamNeoGrabScaling = 0;
SpamNeoGrabDmg = 0;
SpamNeoGrabHBDmg = 0;

SpamNeoStringStartX = 0;
SpamNeoStringStartY = 0;

SpamNeoPipisActive = false;
SpamNeoPipisCooldown = false;

SpamNeoNairUp = false;
SpamNeoNairTimer = 0;
SpamNeoNairHsp = 0;
SpamNeoNairVsp = 0;
SpamNeoNairSetSp = false;

SpamNeoPlaytest = (object_index == oTestPlayer);

SpamNeoGetPlayerInfo = false;

SpamNeoTauntTime = 0;
SpamNeoTauntActive = false;
SpamNeoTauntRand = 0;
SpamNeoTauntSound = false;

SpamNeoREAL = true; // If this is true this spamton will be the real spamton, running all the other update stuff
SpamNeo1984 = 1; // literally 1984

SpamNeoPratSet = false; // If true will enter pratfall at the end of next attack