hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = sprite_get("stand_box");
hitstun_hurtbox_spr = sprite_get("stand_box");

Hikaru_Title = "Lucah"

nname = "Lucah"
ncode1 = "Formerly known as Natalie."
ncode2 = "An angel[?] trained by [???] organization."
ncode3 = ""

dplayer = self

attacking = 0
nearshop = false

startup = 0
antarget = -4

shoping = 0
item = 3

adap = 0
raged = 0
para = 0
unte = 0
disc = 0 
gun = 0

oldphsp = 0
oldpvsp = 0
LA = 450

charge = 5
style = 8

prshape = 0

style1 = 0
style2 = 1

fami = 0
famix = 0
famiy = 0

taunted = 0

	shsp = 0
    svsp = 0
    
    
hdamage = 0
hangle = 0
hkb = 0
hkbg = 0
hpause = 0
hpauseg = 0

shopx = 0
shopy = 0

char_height = 60;
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .16;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 0.4;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 6.66;
dash_speed = 6.66
dash_turn_time = 6.66;
dash_turn_accel = .5;
dash_stop_time = 9;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.8;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 8;
djump_speed = 11;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .055;
max_djumps = 1;
double_jump_time = 34; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 3;
walljump_vsp = 11;
walljump_time = 12;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 8.5; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .6;
hitstun_grav = .53;
knockback_adj = 1.0;//the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 3;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 9.8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("fstep");
landing_lag_sound = asset_get("sfx_gus_land");
waveland_sound = asset_get("sfx_waveland_may");
jump_sound = asset_get("sfx_gus_jump");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

aproj = hit_fx_create( sprite_get( "aproj" ), 20);
aproj2 = hit_fx_create( sprite_get( "aproj2" ), 20);
gunf = hit_fx_create( sprite_get( "gunf" ), 2);

idles = hit_fx_create( sprite_get( "idles" ), 12);

lsw = hit_fx_create( sprite_get( "lsw" ), 10);


asw = hit_fx_create( sprite_get( "asw" ), 10);

answ = hit_fx_create( sprite_get( "answ" ), 10);

thsw = hit_fx_create( sprite_get( "thsw" ), 10);

tsw = hit_fx_create( sprite_get( "tsw" ), 10);

tauntpar1 = hit_fx_create( sprite_get( "tauntpar1" ), 20);
sprite_change_offset("tauntpar1", 30, 30);
tauntpar2 = hit_fx_create( sprite_get( "tauntpar2" ), 20);
sprite_change_offset("tauntpar2", 30, 30);
laser = hit_fx_create( sprite_get( "laser" ), 15);
sprite_change_offset("laser", 800, 48);

lighten = hit_fx_create( sprite_get( "lighten" ), 8);
sprite_change_offset("lighten", 1000, 1000);
darken = hit_fx_create( sprite_get( "darken" ), 10);
sprite_change_offset("darken", 1000, 1000);


esp2 = hit_fx_create( sprite_get( "esp2" ), 9 );
sprite_change_offset("esp2", 32, 32);

sprite_change_offset("tsw", 40, 40);
sprite_change_offset("thsw", 40, 40);
sprite_change_offset("answ", 40, 40);
sprite_change_offset("asw", 40, 40);
sprite_change_offset("lsw", 40, 40);

