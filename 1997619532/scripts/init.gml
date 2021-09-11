
intro = 0
introtimer = -1



hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

Hikaru_Title = "Edge of Void"

nname = "Mayu Ashikaga"
ncode1 = "Aka [False Messiah] among ICRC community."
ncode2 = "Student President of InterCity High School"
ncode3 = "She inherited the Ashikaga techniques with the blade ."

uairhit = 2
sakura = 0

omega = 0

svsp = 0
shsp = 0

overt = 600
stabt = 0;
hitflash = false
halo = 0;
haloann = 0;
halotimer = 250;

introhit = 0

wavetime = 0
wavehit = 0

char_height = 59;
idle_anim_speed = 0.15;
crouch_anim_speed = .1;
walk_anim_speed = .20;
dash_anim_speed = .4;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 2;
walk_turn_time = 10;
initial_dash_time = 5;
initial_dash_speed = 7.5;
dash_speed = 7.5;
dash_turn_time = 6;
dash_turn_accel = 0.1;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 13;
jump_frames = 8;
short_hop_speed = 7.5;
djump_speed = 13;
leave_ground_max = 4; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.30;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .055;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 10;
walljump_time = 20;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .51;
knockback_adj = 1.10; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 6;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 8;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 3;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 10; //roll speed
roll_backward_max = 10;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_land_light");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

SC = hit_fx_create( sprite_get( "SC" ), 12 );
sprite_change_offset("SC", 100, 100);
SCM = hit_fx_create( sprite_get( "SCM" ), 12 );
sprite_change_offset("SCM", 100, 100);
SB = hit_fx_create( sprite_get( "SB" ), 12 );
sprite_change_offset("SB", 100, 100);

G7 = hit_fx_create( sprite_get( "G7" ), 24 );
G72 = hit_fx_create( sprite_get( "G72" ), 24 );

slash = hit_fx_create( sprite_get( "slash" ), 12 );
sprite_change_offset("slash", 50, 50);
slash2 = hit_fx_create( sprite_get( "slash2" ), 12 );
sprite_change_offset("slash2", 50, 50);
slash3 = hit_fx_create( sprite_get( "slash3" ), 12 );
sprite_change_offset("slash3", 50, 50);
slash4 = hit_fx_create( sprite_get( "slash4" ), 12 );
sprite_change_offset("slash4", 50, 50);

auram = hit_fx_create( sprite_get( "aura" ), 8 );
sprite_change_offset("aura", 48, 92);


aimg = hit_fx_create( sprite_get( "clones" ), 7);


dimg = hit_fx_create( sprite_get( "clones2" ), 7);


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

darken = hit_fx_create( sprite_get( "darken" ), 10);
sprite_change_offset("darken", 1000, 1000);