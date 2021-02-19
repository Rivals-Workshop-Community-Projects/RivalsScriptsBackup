hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = sprite_get("air_box");
hitstun_hurtbox_spr = sprite_get("air_box");

Hikaru_Title = "Novice Grand Master"

nname = "Fuki Fujisaki"
ncode1 = "The new Grand Master of Ashikaga clan."
ncode2 = "Her attack seems to mess with the nature of causality,"
ncode3 = "she is capable of creating astra projection of herself."

curse_target = 0

rekarma = 0
karma = 0
karmacom = 0
admw = 0
admb = 0
karmatimer = 0
nshit = 0
souldmg = 0
col = 0
col1 = 155
col2 = 155
col3 = 155

karmaminus = 0

soulx = x
souly = y
souldir = 0
soulfree = 0
soultimer = 0


introhit = 0
intro = 0
introtimer = -1

char_height = 70;
idle_anim_speed = .12;
crouch_anim_speed = .1;
walk_anim_speed = .16;
dash_anim_speed = .4;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 1;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 7
dash_turn_time = 8;
dash_turn_accel = .5;
dash_stop_time = 10;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .8;
moonwalk_accel = 1.8;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 7;
djump_speed = 10;
leave_ground_max = 4; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.8; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .28;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .0522;
max_djumps = 1;
double_jump_time = 40; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 3;
walljump_vsp = 12;
walljump_time = 36;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 7.5; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .50;
hitstun_grav = .53;
knockback_adj = 1.0;//the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 5;
techroll_recovery_frames = 3;
techroll_speed = 9.8;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 0;
air_dodge_recovery_frames = 3;
air_dodge_speed = 9;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 5;
roll_back_recovery_frames = 3;
roll_forward_max = 9.8; //roll speed
roll_backward_max = 9.8;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = sound_get("RZ3");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

SC = hit_fx_create( sprite_get( "SC" ), 16 );
sprite_change_offset("SC", 100, 100);
ai = hit_fx_create( sprite_get( "ai" ), 8 );

wh = hit_fx_create( sprite_get( "whitehit" ), 14 );
sprite_change_offset("whitehit", 80, 80);

bh = hit_fx_create( sprite_get( "blackhit" ), 22 );
sprite_change_offset("blackhit", 80, 80);

esp1 = hit_fx_create( sprite_get( "esp1" ), 9 );
sprite_change_offset("esp1", 32, 32);

esp2 = hit_fx_create( sprite_get( "esp2" ), 9 );
sprite_change_offset("esp2", 32, 32);

esp3 = hit_fx_create( sprite_get( "esp3" ), 9 );
sprite_change_offset("esp3", 32, 32);

lighten = hit_fx_create( sprite_get( "lighten" ), 8);
sprite_change_offset("lighten", 1000, 1000);
darken = hit_fx_create( sprite_get( "darken" ), 10);
sprite_change_offset("darken", 1000, 1000);

shit3 = hit_fx_create( sprite_get( "shit3" ), 60 );
shit4 = hit_fx_create( sprite_get( "shit4" ), 60 );
shit5 = hit_fx_create( sprite_get( "shit5" ), 60 );
shit6 = hit_fx_create( sprite_get( "shit6" ), 60 );

sprite_change_offset("shit3", 100, 100);
sprite_change_offset("shit4", 100, 100);
sprite_change_offset("shit5", 100, 100);
sprite_change_offset("shit6", 100, 100);
