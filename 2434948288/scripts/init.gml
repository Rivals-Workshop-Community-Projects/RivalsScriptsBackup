hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56;
idle_anim_speed = .175;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.0;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 16;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 16; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 16;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .12; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 0
techroll_active_frames = 6;
techroll_recovery_frames = 4;
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

// Hit Effects
slash1 = hit_fx_create(sprite_get("slash1"), 16);
slash2 = hit_fx_create(sprite_get("slash2"), 16);
slash3 = hit_fx_create(sprite_get("slash3"), 16);
slash4 = hit_fx_create(sprite_get("slash4"), 16);
nspec  = hit_fx_create(sprite_get("nspecFX"), 16);
dspec  = hit_fx_create(sprite_get("dspecialFX"), 8);

// Transcend
transcounter = 0;

// Jab
jabLoop = 0;
jabHeld = false;

// FSpecial
fspecBounce = true;

// Guitar
guitar = instance_create(x,y,"obj_article1");

// NSpec held
nspecHeld = 0;

// Bury
buryFrames = 80;
maybeBuryFrames = 40;

// Support
Hikaru_Title = "Shadow Hatter";
personaQuips[10] = "Face the light!";
//tcoart = sprite_get("tco_art");
arena_title = "Umbrastellan";
battle_text = "You feel a deadly prescence.";
steve_death_message = "Transphobia is gone";
//fs_char_chosen_final_smash = "custom";
//fs_char_portrait_y = 96;