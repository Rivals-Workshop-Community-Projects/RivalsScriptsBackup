
hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

introhit = 0
rollside = 1

nname = "Alex Ashikaga"
ncode1 = "Ranger of Okyo Forest. His power called Soul Flame,"
ncode2 = "which allow him to seek and attack foes with pin-point "
ncode3 = "accuracy. His poacher kill count is unknown [at least 100]"

hue = 0
halffire = 0
autodash = 0
dashing = 0
daigomode = 0

planted = 0
lattack = 0
lattacktime = 0

intro = 0
introtimer = -1

Hikaru_Title = "Soul Flame"
shunpo = 0
fireon = 0
firerange = -100
firetimer = 0
sakura = 0
shade = 0
shadeshine = 0

char_height = 67;
idle_anim_speed = 0.18;
crouch_anim_speed = .1;
walk_anim_speed = .30;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 4.85;
walk_accel = 1;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 8;
dash_speed = 4.5;
dash_turn_time = 6;
dash_turn_accel = 0.1;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 0.3;

jump_start_time = 4;
jump_frames = 8;
jump_speed = 13;
short_hop_speed = 7;
djump_speed = 13;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.30;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 12;
walljump_time = 12;
wall_frames = 2;
max_fall = 9.5; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = 0.80;
hitstun_grav = 0.52;
knockback_adj = 1.05; //the multi


land_time = 4; //normal landing frames
prat_land_time = 8;
wave_land_time = 6;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .006; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 1;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 4;
air_dodge_speed = 10;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 1; //roll speed
roll_backward_max = 1;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

shit1 = hit_fx_create( sprite_get( "shit1" ), 60 );

shit2 = hit_fx_create( sprite_get( "shit2" ), 60 );

shit3 = hit_fx_create( sprite_get( "shit3" ), 60 );

shit4 = hit_fx_create( sprite_get( "shit4" ), 60 );

shit5 = hit_fx_create( sprite_get( "shit5" ), 60 );

shit6 = hit_fx_create( sprite_get( "shit6" ), 60 );

shit7 = hit_fx_create( sprite_get( "shit7" ), 60 );

shit8 = hit_fx_create( sprite_get( "shit8" ), 60 );

sprite_change_offset("shit1", 100, 100);
sprite_change_offset("shit2", 100, 100);
sprite_change_offset("shit3", 100, 100);
sprite_change_offset("shit4", 100, 100);
sprite_change_offset("shit5", 100, 100);
sprite_change_offset("shit6", 100, 100);
sprite_change_offset("shit7", 100, 100);
sprite_change_offset("shit8", 100, 100);

lighten = hit_fx_create( sprite_get( "lighten" ), 8);
sprite_change_offset("lighten", 1000, 1000);

dsshadow = hit_fx_create( sprite_get( "DSshadow" ), 8);
dshadow = hit_fx_create( sprite_get( "ffires2" ), 12);
firepar1 = hit_fx_create( sprite_get( "firepar1" ), 20);
firepar2 = hit_fx_create( sprite_get( "firepar2" ), 12);
ffire = hit_fx_create( sprite_get( "ffires3" ), 24);
ffireh = hit_fx_create( sprite_get( "ffires3" ), 15);
tauntpar1 = hit_fx_create( sprite_get( "tauntpar1" ), 24);
darken = hit_fx_create( sprite_get( "darken" ), 10);
sprite_change_offset("darken", 1000, 1000);