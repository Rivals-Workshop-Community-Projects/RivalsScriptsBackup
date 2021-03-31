hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 50;
idle_anim_speed = .18;
crouch_anim_speed = .1;
walk_anim_speed = .225;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = has_rune("D")?4:3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = has_rune("D")?9:6.2;
dash_speed = has_rune("D")?8:5.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .3;
ground_friction = .4;
moonwalk_accel = 1.45;

jump_start_time = 5;
jump_speed = 10.99;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7;
max_jump_hsp = 6;
air_max_speed = 4;
jump_change = 3;
air_accel = .3;
prat_fall_accel = .85;
air_friction = .04;
max_djumps = has_rune("J")?2:1;
double_jump_time = 25;
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10;
fast_fall = 14;
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.0;

land_time = 4;
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.35;
wave_friction = .15;

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 0;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 0;
roll_back_active_frames = 6;
roll_back_recovery_frames = 4;
roll_forward_max = 9;
roll_backward_max = 9;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_dust_knuckle");
jump_sound = sound_get("jump");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// hit effects
shinestar_effect = hit_fx_create(sprite_get("shinestar"), 10);
fspec_effect = hit_fx_create(sprite_get("fspecParticle"), 10);
dragon_effect = hit_fx_create(sprite_get("dragonhit"), 48);
saw_effect = hit_fx_create(sprite_get("sawhit"), 48);
chun_effect = hit_fx_create(sprite_get("chunhit"), 48);
bunny_effect = hit_fx_create(sprite_get("bunnyhit"), 48);

// vfx roll
rollArray = array_create(6, -1);

// airdodge effect
airdodgeStart = {x:0, y:0};

// Jump Strongs
jsTimer = 0;
jsMax = 16;
jsArray = array_create(10, -1);
jsCStick = false;

// vfx slice
vfxSlice = {sliceAng:0,sliceX:0,sliceY:0,sliceTimer:0};

// USpec vfx
uspecArray = array_create(10, -1);
uspecStart = {x:0, y:0};
uspecStartup = 12;
uspecStartupConst = uspecStartup;
uspecSpeed = {hsp:0, vsp:0, joy_pad_idle:0, joy_dir:0};

// FSpec hookshot
fspecPos = {x: 0, y: 0};		// final pos
fspecPosHigh = {x: 44, y: 47};	// High
fspecPosLow = {x: 56, y: 25};	// gun crouch
fspecPosX = {a: 0, b: 0};
fspecX = 0; // distance
fspecX2 = 0; // distancePortal
fspecHooked = false;
fspecPortalHooked = false;
portalRef = noone;

// NSpec charge
nspecMax = has_rune("N")?40:100;
nspecCharge = 0;

// DSpec effect
dspecImage = -1;
dspecCoolMax = has_rune("K")?0:80;

// strong angle
strongAng = 0;

// transcend
transcounter = 0;

// dair cancel
dairCancel = 60;

// portal
canTele = true;
teleFlash = 0;

// intro
introTimer = -4;

// crouch
charHeightStand = char_height;
charHeightCrouch = 30;

// thonk
thonkObj = -1;

// tutorial
practice = get_training_cpu_action() != CPU_FIGHT;
menuState = 0;
menuStateBuffer = 0;
holdTimer = 0;
tutAlpha = 1;
tutOn = true;
tutMenu = 0;
tutPrevMenu = 0;
tutDone = array_create(4, 0);
tutDoneAdv = array_create(6, 0);

// tut draw text
tutText = -1;
tutLength = 0;

// Support
Hikaru_Title = "True Crystal";
personaQuips[10] = "I don't like your hair!";
tcoart = sprite_get("tco_art");
arena_title = "Void Dragon";
battle_text = "The smell of Space and Time consumes you.";
ncode1 = "KILL KILL KILL KILL KILL KILL KILL KILL KILL KILL";
ncode2 = ncode1;
ncode3 = ncode1;
steve_death_message = "Transphobia is gone";
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 96;