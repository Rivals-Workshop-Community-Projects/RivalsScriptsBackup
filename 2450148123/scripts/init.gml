hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .1;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

//intro
introTimer = 60*2;
voice_lines = false;


//starpower
star_meter = 0;
colorloop = 0;
colorlooptimer = 0;
install = false;
star_damage = 2;
hitbox_x = x;
hitbox_y = y;

//afterimages
installdrawtimer = 0;
installdrawx = 0;
installdrawy = 0;
installdrawsprdir = 1;
drawloop = 0;
drawlooptimer = 0;

//airdash
dashdir = 1;
airdashing = false;
has_airdash = true;
airdash_timer = 13;
djumpstorage = 0;
buffer_airdash = false;


//face the enemy
looking=spr_dir;
noturn=false; //False to turn to enemy when possible
deactivate_turn=0;

//specials
reentry = 0;
reentry_pressed = false;
can_dspce = false;
northknuckle_used = false;
AT_NSPECIAL_AIR_2 = AT_EXTRA_3;

//dstrong stagger
firstattack = true;

//confirm in hitstop
confirm_jab = false;
confirm_ftilt = false;
confirm_fstrong = false;

//VFX
polarisfx = hit_fx_create( sprite_get("polarisfx"), 40 );
polarisfx2 = hit_fx_create( sprite_get("polaris2fx"), 15 );
stardestroyfx = hit_fx_create( sprite_get("star_proj_destroyed"), 10 );
polarhit = true;
polarhit2 = false;

//SFX
attacksfxindex = 0;
voiceplaying = false;
rolling = false;

//Kirbo
kirbyability = 16;
swallowed = 0;

//final smash
fs_char_chosen_final_smash = "custom";
// fs_char_chosen_trigger = "ori";
fs_char_portrait_y = 90;
fs_portrait_x = 40;
fs_charge = 0;
final_smash_loop = 0;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 3;
initial_dash_time = 15;
initial_dash_speed = 5;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.2;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 8;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .05; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 12;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 7;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 7; //roll speed
roll_backward_max = 7;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;



///input system variables
// showinput="";
// neutral = true;
// scroll = 0;
trueinput = false;

stopbreverse = false;
//used to detect which direction is the player facing at the start of the command
start_dir[7] = 1;     //qcfsuper
start_dir[6] = 1;     //dashback
start_dir[5] = 1;     //dash
start_dir[4] = 1;     //qcfd
start_dir[3] = 1;     //hcf
start_dir[2] = 1;     //dp
start_dir[1] = 1;     //qcb
start_dir[0] = 1;     //qcf

//commands
qcfd = 0;
qcfd_timer = 0;
qcfd_temp = 0;

hcf = 0;
hcf_timer = 0;
hcf_temp = 0;

dp = 0;
dp_timer = 0;
dp_temp = 0;

qcb = 0;
qcb_timer = 0;
qcb_temp = 0;

qcf = 0;
qcf_timer = 0;
qcf_temp = 0;

qcfs = 0;
qcfs_timer = 0;
qcfs_temp = 0;

ddf = 0;
ddf_timer = 0;
ddf_temp = 0;

ddb = 0;
ddb_timer = 0;
ddb_temp = 0;

sgs = 0;
sgs_timer = 0;
sgs_temp = 0;

// cBack = 0;
// cBack_done = 0;

// cDown = 0;
// cDown_done = 0;


//phone stuffs

spr_nspecial_proj = sprite_get("nspecial_proj");
spr_nspecial_proj_light = sprite_get("nspecial_lightproj");
spr_fspecial_fx = sprite_get("fspecialfx");
spr_starpowerfx = sprite_get("installfx");
spr_starpower = sprite_get("starinstall");
spr_starpowersuper = sprite_get("installsuper");
spr_photo = sprite_get("photo");
spr_airdash = sprite_get("airdodge_forward");
spr_fs = sprite_get("final_smash");
spr_fs_beam = sprite_get("fs_beam");
spr_combo1 = sprite_get("combo");
spr_combo2 = sprite_get("combo2");
spr_combo3 = sprite_get("combo3");
spr_combo4 = sprite_get("combo4");

user_event(14); 

