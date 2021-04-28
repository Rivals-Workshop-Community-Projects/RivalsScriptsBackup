hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 54;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 3.75;
walk_accel = 0.50;
walk_turn_time = 6;
initial_dash_time = 6;
initial_dash_speed = has_rune("D")?10:8;
dash_speed = has_rune("D")?9:7;
dash_turn_time = has_rune("D")?5:10;
dash_turn_accel = 3;
dash_stop_time = has_rune("D")?3:6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 1.0;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7;
djump_speed = 12.5;
leave_ground_max = has_rune("C")?8.5:7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = has_rune("C")?8.5:7; //the maximum hsp you can have when jumping from the ground
air_max_speed = has_rune("C")?7:5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = has_rune("C")?5:4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = has_rune("C")?.6:.3;
prat_fall_accel = has_rune("C")?.8:0.60; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
wall_frames = 1;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = has_rune("D")?1.5:1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = has_rune("D")?.02:.06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 4;
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
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 8.5; //roll speed
roll_backward_max = 8.5;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// intro
introTimer = -4;

// tutorial
sfxSelect = sound_get("sfx_cursor");
sfxAccept = sound_get("sfx_select");
sfxCancel = sound_get("sfx_cancel");
practice = get_training_cpu_action() != CPU_FIGHT;
menuState = 0;
menuStateBuffer = 0;
holdTimer = 0;
tutAlpha = 1;
tutOn = true;
tutMenu = 0;
tutPrevMenu = 0;
tutDone = array_create(3, 0);
tutDoneAdv = array_create(3, 0);

// tut draw text
tutText = -1;
tutLength = 0;

// hit effects
shinestar_effect = hit_fx_create(sprite_get("shinestar"), 10);
startrail_effect = hit_fx_create(sprite_get("startrail"), 16);
smallstar_effect = hit_fx_create(sprite_get("hitsmall"), 16);
bigstar_effect = hit_fx_create(sprite_get("hitfx"), 16);
beegstar_effect = hit_fx_create(sprite_get("bighit"), 16);

// transcend
transcounter = 0;

// hue
//hue = 0;

// USpec
uspecDir = 0;
uspecTimes = 0;
uspecLanded = false;
uspecPos = {x:0, y:0};

// dair counter for star
dairTimes = 0;

// dspec range
dspecRadius = has_rune("A")?512:256;

// fspec
grabDjump = true;
hasMovedUp = false;
upThrow = 0;

// shine
nspecCharge = 0;

// despawn on hit
canDespawn = true;

// constellations
starKB = has_rune("K")?8:5;
starDamage = 1;

// afterimage
afterImageTimer = 0;
afterImageMax = 16;
afterImage = array_create(afterImageMax, -1);

// Support
Hikaru_Title = "Starry Fox";
personaQuips[10] = "Go back to space!";
tcoart = sprite_get("tco_art");
arena_title = "Star Fox";
battle_text = "Space.";
ncode1 = "Wait a minute, this is just star fox";
ncode2 = "DMCA!";
ncode3 = "Up Throw Up Air";
steve_death_message = "Transphobia is gone";
//fs_char_chosen_final_smash = "custom";
//fs_char_portrait_y = 96;
//kirbyability = 16;
//swallowed = 0;