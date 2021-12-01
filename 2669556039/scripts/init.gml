hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 80;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 8;
initial_dash_time = 14;
initial_dash_speed = 6.5;
dash_speed = 5.5;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7.5;
djump_speed = 11.5;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 2; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .7;
hitstun_grav = .6;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 5; //normal landing frames
prat_land_time = 3;
wave_land_time = 10;
wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 6;
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 7;
air_dodge_speed = 7;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 1;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

small_sprites = true;
small_hurtboxes = true;

dspecialAirTimer = 0;
dspecialTimer = 0;
dspecialTimerMin = 15;
dspecialTimerMax = 150;
dspecialTurnSpd = 2;
dspecialProjSpd = 20;
dspecialAngle = 0;
head = noone;
headX = -3;
headY = -48; //TODO: actually attach head lower than its spawned?

nspecialType = 0;
nspecialTypes = 4;
nspecialNames = ["Explosion", "Toxic", "Hypnosis", "Giga Drain"];
nspecialAvailable = true;
right_down_last = false;
left_down_last = false;
attack_down_last = false;
special_down_last = false;
strong_down_last = false;
shield_down_last = false;
nspecialSleep = sprite_get("nspecialSleep");
statusIndications = sprite_get("statusIndications");
poisonedEnemies = ds_list_create();
toxicCooldown = 90;
toxicDmgCooldown = 30;
toxicDmgMin = 1;
toxicDmgMax = 2;
toxicHit = hit_fx_create(sprite_get("toxicHit"), 14);
toxicArticles = ds_list_create();
hypnoEnemies = ds_list_create();
hypnoCooldown = 90;
toxicArticleMax = 3;

lastSprInd = 0;
lastState = 0;

dodgeAngle = 0;
savedAirdodge = false;

uspecialAngle = 0;

idleTimer = 0;
idleIndex = 0;

doDspecialKnockback = false;
didExplosion = false;
didExplosion2 = false;

didFstrong = false;