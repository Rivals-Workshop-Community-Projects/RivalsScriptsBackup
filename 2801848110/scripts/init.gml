hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");

set_victory_theme(sound_get("BoNova"));

projecting = 0
projectx = 0
projecty = 0

air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

is_attacking = false 
last_spr = 0
last_img = 0

RCing = 0

drifttime = 0

ihatecstick = 0

upbhsp = 0
upbvsp = 0

RCX = 0
RCY = 0
RCspr = 0
RCimg = 0
RCside = 0

saveid = 0
esavex = 0
esavey = 0
esave = 0

crippled = false 

timeflow = 100
pausing = false 

char_height = 46;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 1;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .35;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9.5;
short_hop_speed = 6;
djump_speed = 9.5;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .6; //multiplier of air_accel while in pratfall
air_friction = .025;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 3;
walljump_vsp = 9;
walljump_time = 20;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .4;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 2;
techroll_recovery_frames = 3;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 3;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_abs");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_gus_jump");
air_dodge_sound = asset_get("sfx_quick_dodge");

fspec = hit_fx_create( sprite_get( "fx_fspecial" ), 15);
gone = hit_fx_create( sprite_get( "fx_gone" ), 8);
appear = hit_fx_create( sprite_get( "fx_appear" ), 15);
tri = hit_fx_create( sprite_get( "fx_tri" ), 10);
dash = hit_fx_create( sprite_get( "fx_dash" ), 10);
air = hit_fx_create( sprite_get( "fx_air" ), 10);
pause = hit_fx_create( sprite_get( "fx_pause" ), 12);
play = hit_fx_create( sprite_get( "fx_play" ), 16);
RC = hit_fx_create( sprite_get( "fx_RC" ), 6*3);

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 0;


/// dracula dialog
Hikaru_Title = "Construction worker"

nname = "Ne0 Pausign"
ncode1 = "Pause"
ncode2 = "Play"
ncode3 = "Repeat"

tauntnum = 0
