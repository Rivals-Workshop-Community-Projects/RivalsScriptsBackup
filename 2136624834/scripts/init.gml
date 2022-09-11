hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = sprite_get("air_box");
hitstun_hurtbox_spr = sprite_get("air_box");

Hikaru_Title = "Frozen World"

uspechit = 0

snox = 0
snoy = 0

startdir = 0
finaldir = 0

grabbed = false
fairhit = 0

timebroke = 0

nname = "Elice Vuris"
ncode1 = "Daughter of Old Ice King and Mafia Princess."
ncode2 = "She is capable of creating snowballs, icicles"
ncode3 = "and freeze the world around her in a small radius."

trummelcodecneeded = false;
trummelcodec_id = noone;

usednsp = 0
usedfst = 0

introhit = 0
intro = 0
introtimer = -1

timefreeze = 0
fstronghit = 0

timeinv = -1

ncharge = 0
fcharge = 0
fver = 0

songplay = 0
songtimer = 0

timestop2 = 0
timestop = 0
timehit = 0

char_height = 60;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .13;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 6;
dash_speed = 6
dash_turn_time = 12;
dash_turn_accel = .5;
dash_stop_time = 10;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 8;
djump_speed = 11;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .055;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 3;
walljump_vsp = 11;
walljump_time = 14;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 8.5; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .6;
hitstun_grav = .52;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 8;
wave_land_adj = 0.6; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 3;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 5;
techroll_recovery_frames = 4;
techroll_speed = 30;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 7;
air_dodge_recovery_frames = 4;
air_dodge_speed = 13;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 2;
roll_back_active_frames = 5;
roll_back_recovery_frames = 4;
roll_forward_max = 16; //roll speed
roll_backward_max = 16;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_ice_shieldup");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

forze1 = hit_fx_create( sprite_get( "forze1" ), 1);
sprite_change_offset("forze1", 50, 50);

forze2 = hit_fx_create( sprite_get( "forze2" ), 1);
sprite_change_offset("forze2", 50, 50);

tauntpar1 = hit_fx_create( sprite_get( "tauntpar1" ), 28);
sprite_change_offset("tauntpar1", 30, 30);

icepar1 = hit_fx_create( sprite_get( "icepar1" ), 12);
sprite_change_offset("icepar1", 32, 32);


icicle3 = hit_fx_create( sprite_get( "icicle3" ), 20);

darken = hit_fx_create( sprite_get( "darken" ), 10);
sprite_change_offset("darken", 1000, 1000);

timefreeze_color = -1;

timefreeze_default = make_colour_rgb(255, 82, 193);
timefreeze_kat = make_colour_rgb(197, 0, 18);
timefreeze_alec = make_colour_rgb(21, 18, 28);
timefreeze_yotaro = make_colour_rgb(42, 12, 87);
timefreeze_diiu = make_colour_rgb(255, 198, 6);
timefreeze_unnamed = make_colour_rgb(55, 17, 30);

lighten = hit_fx_create( sprite_get( "lighten" ), 8);
sprite_change_offset("lighten", 1000, 1000);

darken = hit_fx_create( sprite_get( "darken" ), 10);
sprite_change_offset("darken", 1000, 1000);