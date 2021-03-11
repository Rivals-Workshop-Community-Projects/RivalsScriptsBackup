hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

scuttle = 0

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

mariospeed = 0;
oldspeed = 0;
draincooldown = 30;

oldtimer = 0;


damage_reduction = 0.6
speed_loss = 0;
multi_hit_protection = 0;

reflect = false;
indicator = 0;
draws_indicator = 0;
indicator_timer = 0;
indicator_scale = 0;
old_gametime = 0;

qpu = 0;
qpu_speed = 50;

voiceclip = ""; //These are mostly for the yahoos so it doesn't overlap each other 
currentclip = noone;
playvoice = 0;

walk_speed = 4.5;
walk_accel = 0.8;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 8;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .75;
moonwalk_accel = 1.8;

jump_start_time = 5;
jump_speed = 13;
short_hop_speed = 8;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .90; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 16;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

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
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 1;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

kickproj = noone;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
jump_sound = sound_get("woo");
djump_sound = asset_get("sfx_jumpair");
djump_sound = sound_get("woohoo");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme( sound_get( "victory" ) );

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

index = 0;
base_walk = walk_speed;

base_leaveground = leave_ground_max;
base_jump_hsp = max_jump_hsp;
base_air_max = air_max_speed;
base_jumpchange = jump_change;

base_dash = dash_speed;
base_dashstart = initial_dash_speed;

spawn_scuttle = false;

annouced = false;

//Intro
introdelay = 50;
introTimer = 999;
playintro = 1;

useskins = false;

spr_taunt = sprite_get("taunt");
af = hit_fx_create( sprite_get( "af" ), 15);
fs2 = hit_fx_create( sprite_get( "fstrong2" ), 20);
fs3 = hit_fx_create( sprite_get( "fstrong3" ), 20);
fs4 = hit_fx_create( sprite_get( "fstrong4" ), 20);
stomp_fx = hit_fx_create(sprite_get("poof"), 30)

Hikaru_Title = "Infinite Speed";
feri_costume = sprite_get("feri_costume_[Speedrunner_Feri]");
battle_text = "*You hear yahoos all around you";
arena_title = "The Speed Demon";
tcoart = sprite_get("TCOdemon");
toonlink_photo = sprite_get("pictophoto_smario");
toonlink_photo2 = 4;
kirbyability = 4;
gfzsignspr = sprite_get("speedsign");
steve_death_message = "So long-ay, Steve";
ncode1 = "The Speed Demon himself.";
ncode2 = "Make him lose speed to weaken him";
ncode3 = "or else he will overwhelm you.";