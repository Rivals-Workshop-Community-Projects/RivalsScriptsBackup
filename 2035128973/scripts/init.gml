hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 50;
charHeightStand = char_height;
charHeightCrouch = 30;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 6.5;
initial_dash_speed_bone = 6.5;
initial_dash_speed_rush = 7;
dash_speed = 6.2;
dash_turn_time = 10;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = .5; //the value to multiply your hsp by when going into idle from dash or dashstop
dash_stop_percent_bone = .5;
dash_stop_percent_rush = .65;
ground_friction = 0.4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.99;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
leave_ground_max_bone = 5;
leave_ground_max_rush = 6.5;
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
air_max_speed_bone = 4;
air_max_speed_rush = 5.5;
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
jump_change_bone = 4;
jump_change_rush = 4.5;
air_accel = .25;
air_accel_bone = .25;
air_accel_rush = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 24; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 22;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_pom");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

fire_ang = 90;

renderer = instance_create(0,0,"obj_article2");
shinestar_effect = hit_fx_create(sprite_get("shinestar"), 10);
aura_effect = hit_fx_create(sprite_get("aurafx"), 24);
aurabig_effect = hit_fx_create(sprite_get("aurabigfx"), 24);

// intro
introTimer = -4;

// tutorial
sfxSelect = sound_get("sfx_next");
sfxAccept = sound_get("sfx_select");
sfxCancel = sound_get("sfx_cancel");
practice = get_training_cpu_action() != CPU_FIGHT;
menuState = 0;
menuStateBuffer = 0;
holdTimer = 0;
tutAlpha = 1;
tutColour = c_navy;
tutOn = true;
tutMenu = 0;
tutPrevMenu = 0;
tutDone = array_create(1, 0);
tutDoneAdv = array_create(1, 0);

// killcard
killCard = {attackPlayer:-4, deadPlayer:-4, timer:0};

// Support
Hikaru_Title = "Aura Guardian";
personaQuips[10] = "Melt it all!";
tcoart = sprite_get("tco_art");
arena_title = "The Aura Guardian";
battle_text = "* A wild Lucario appeared";
ncode1 = "Lucario has 2 stances. Pay attention to the bone.";
ncode2 = "Don't get impaled.";
ncode3 = "";
steve_death_message = "Transphobia is gone";
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 96;

// vfx roll
rollSpr = sprite_get("roll_forward");
rollArray = array_create(3, -1);
transcounter = 0;

// swordie/rushdown state
hasBone = true;
boneObj = noone;
boneMark = noone;
boneMarkDir = noone;

// uspec
//uspecBan = false;
hasMovedUp = false;

// nspec
asReverse = false;
asCharge = 0;
asChargeMax = 100;
asSFX[0] = 0;
asSFX[1] = 0;
asSFX[2] = 0;

// afterimage
afterImageTimer = 0;
afterImageMax = 16;
afterImage = array_create(afterImageMax, -1);

// hue
hue = 0;

// Pilot's costumes
costumeIndex = -1;
costumeList = [
	sprite_get("megaLuc"),
	sprite_get("riley"),
	sprite_get("anubis")
];