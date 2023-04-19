hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 30;
idle_anim_speed = .2
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.0;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 6;
initial_dash_speed = 8.0;
dash_speed = 6;
dash_turn_time = 15;
dash_turn_accel = 4.0;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 1.0;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10
short_hop_speed = 6;
djump_speed = 9;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 12;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .45
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 0;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

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
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
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


set_victory_theme( sound_get( "win") );

//Fspecial
hspe = 7;
vspe = 5;

fsplow = 13;
fsphigh = 10;

rocketpunch = noone;

//Fuse
fuse = 580
fuse_max = 480
fusesound = false;
fusesound2 = false;
ovenhands = 10;
explode = false;
lowfuse = false;
fuse_pause = false;
prime = false;


//hudsopark
sparkspot = 0;
sparkx = 0;
sparky = 0;
sparka = 0;
msparkspot = 0;
msparkx = 0;
msparky = 0;
msparka = 0;
sparktimer = 0;

//extra1
handsDisplay = false;
handsx = 15
handsy = 40;
boomvsp = 0;
boomhsp = 0;
handsoff = false;
handsoff_tumble = -1;
skullhands = false;
alterExtra = false;

//fair
fair_spike = false;

//bair
bair_launch = false;

//Jab
jabParry = false;


//bomb limit
bomb_limit = 2;
limitshow = 60;

//bomb colors
blinkT = 0;

//hud
fuseshow = 0;
hudbomb = noone;

//Dash Attack
DAslow = false;

//Upspecial
uspec_low = false;
uspec_lowcancel = false;

//strongs
strong = 0;
Ustrong_mine = false;
dMinex = 0;
dMiney = 0;


//mine
superjump = 11;

//Fstrong
fst_dir = 0;
spinhit1 = true;
spinhit2 = true;
spinhit3 = true;
spinhit4 = true;
spinhit5 = true;
spinhit6 = true;
fst_bomb = noone;
fst_cos = cos(degtorad(point_direction(0,0,hsp,vsp)))*55



//Counter Play Prime
primeDamageLimit = 10;
primeDamage = 0;
primeCounter = false;
primeCounterTimer = 0;