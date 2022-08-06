hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = sprite_get("air_box");
hitstun_hurtbox_spr = sprite_get("air_box");

Hikaru_Title = "N word"
cheapmode = 0
oknifecountcd = 0
nctimer = 0
oknifelost = 0

ncode1 = "[Special Unit] who only take tasks directly"
ncode2 = "from Mr.president. He has many encounters "
ncode3 = "with Anomalies, notoriously [Burger Clown]"

ntarget = 0

inloop = 0
looptime = 0
is_n = 1

ethrow = 0

introhit = 0
intro = 0
introtimer = -1
daired = 0

drop = 0

batt = 5

noinv = 3

attra = 0
milkpizz = 0
meleehit = 0

char_height = 60.1412;
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .16;
dash_anim_speed = .4;
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
ground_friction = .8;
moonwalk_accel = 1.8;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 8;
djump_speed = 12;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .0535;
max_djumps = 1;
double_jump_time = 34; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 3;
walljump_vsp = 11;
walljump_time = 25;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 8.5; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .64;
hitstun_grav = .515;
knockback_adj = 1.0;//the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 6;
techroll_recovery_frames = 2;
techroll_speed = 9.8;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 6;
roll_back_recovery_frames = 2;
roll_forward_max = 9.8; //roll speed
roll_backward_max = 9.8;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_waveland_cla");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

tauntpar1 = hit_fx_create( sprite_get( "tauntpar1" ), 20);
sprite_change_offset("tauntpar1", 30, 30);
tauntpar2 = hit_fx_create( sprite_get( "tauntpar2" ), 20);
sprite_change_offset("tauntpar2", 30, 30);
laser = hit_fx_create( sprite_get( "laser" ), 15);
sprite_change_offset("laser", 1600, 480);

hams = hit_fx_create( sprite_get( "hamburgers" ), 16);
sprite_change_offset("hamburgers", 16, 16);

sprite_change_offset("hamburger", 20, 20);
sprite_change_offset("hamburger2", 20, 20);
sprite_change_offset("hamburger3", 20, 20);

exp2 = hit_fx_create( sprite_get( "exp2" ), 42 );
sprite_change_offset("exp2", 82, 152);

cape = hit_fx_create( sprite_get( "cape" ), 30);
sprite_change_offset("cape", 104, 124);

lighten = hit_fx_create( sprite_get( "lighten" ), 12);
sprite_change_offset("lighten", 1000, 1000);
redden = hit_fx_create( sprite_get( "redden" ), 12);
sprite_change_offset("redden", 1000, 1000);
darken = hit_fx_create( sprite_get( "darken" ), 10);
sprite_change_offset("darken", 1000, 1000);

km1 = hit_fx_create( sprite_get( "kmark1" ), 16);
km2 = hit_fx_create( sprite_get( "kmark2" ), 16);
km3 = hit_fx_create( sprite_get( "kmark3" ), 20);

km1r = hit_fx_create( sprite_get( "kmark1r" ), 16);
km2r = hit_fx_create( sprite_get( "kmark2r" ), 16);
km3r = hit_fx_create( sprite_get( "kmark3r" ), 20);

km1l = hit_fx_create( sprite_get( "kmark1l" ), 16);
km2l = hit_fx_create( sprite_get( "kmark2l" ), 16);
km3l = hit_fx_create( sprite_get( "kmark3l" ), 20);

sprite_change_offset("kmark1", 50, 50);
sprite_change_offset("kmark2", 50, 50);
sprite_change_offset("kmark3", 50, 50);

sprite_change_offset("kmark1l", 50, 50);
sprite_change_offset("kmark2l", 50, 50);
sprite_change_offset("kmark3l", 50, 50);

ANks1 = sprite_get("kmark1")
ANks2 = sprite_get("kmark2")
ANks3 = sprite_get("kmark3")

kFinal = hit_fx_create( sprite_get( "knifeFinal" ), 25 );
sprite_change_offset("knifeFinal", 80, 80); 
timeS = hit_fx_create( sprite_get( "timeS" ), 21 );
sprite_change_offset("timeS", 40, 40); 
timeS2 = hit_fx_create( sprite_get( "timeS2" ), 21 );
sprite_change_offset("timeS2", 20, 20); 
fxslash1 = hit_fx_create( sprite_get( "fxslash1" ), 11 );
fxslash3= hit_fx_create( sprite_get( "fxslash3" ), 11 );

sprite_change_offset("fxslash1", 100, 200); 
sprite_change_offset("fxslash3", floor(75/1.5), floor(150/1.5) );

sprite_change_offset("kmark1r", 50, 50);
sprite_change_offset("kmark2r", 50, 50);
sprite_change_offset("kmark3r", 50, 50);

kls1 = hit_fx_create( sprite_get( "knifelasersomehow1" ), 12);
sprite_change_offset("knifelasersomehow1", 570, 32);

kls2 = hit_fx_create( sprite_get( "knifelasersomehow2" ), 12);
sprite_change_offset("knifelasersomehow2", 570, 32);

sprite_change_offset("knifeS", 40, 30);

	sprite_change_offset("dairs1", 32, 32);
		sprite_change_offset("Oboa", 50, 50);
	sprite_change_offset("Kat", 50, 50);
			sprite_change_offset("gun2", 32, 32);
			sprite_change_offset("dattacks1", 30, 16);