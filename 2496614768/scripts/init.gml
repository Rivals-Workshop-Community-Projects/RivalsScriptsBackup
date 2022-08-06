hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = sprite_get("air_box");
hitstun_hurtbox_spr = sprite_get("air_box");

bhood = get_player_color(player) == 10

canceltime = 0

ncode1 = "A speedter(?) stickman janitor."
ncode2 = "He have a complicated relationship "
ncode3 = "with his ex-boss Mr.Green."

shsp = 0
svsp = 0

superMove = 14

countered = 0
victim = 0

oldx = 0
oldy = 0

shocked = 0
shock = 0
shocktimer = 0
inactive = 150

timesound = 0
timebreak = 0
timebreakmax = 0
uspechit = 0
jabhit = 0
grabwall = 0

ais1 = 0
aii1 = 0
aix1 = 0
aiy1 = 0
aisd1 = 0
aid1 = 0

ais2 = 0
aii2 = 0
aix2 = 0
aiy2 = 0
aisd2 = 0
aid2 = 0

char_height = 69;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .16;
dash_anim_speed = .32;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 1;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 8;
dash_speed = 7.5;
dash_turn_time = 6;
dash_turn_accel = .5;
dash_stop_time = 6;
dash_stop_percent = .0; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 1.8;

jump_start_time = 5;
jump_speed = 14;
jump_frames = 9;
short_hop_speed = 9;
djump_speed = 15;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.3;
prat_fall_accel = 0.8; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 12;
walljump_time = 20;
wall_frames = 1; //anim frames before you leave the wall
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .75;
hitstun_grav = .50;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .6; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 6;
techroll_recovery_frames = 3;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 6;
air_dodge_recovery_frames = 4;
air_dodge_speed = 10;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 6;
roll_back_recovery_frames = 3;
roll_forward_max = 10; //roll speed
roll_backward_max = 10;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
can_jump_capped = false;

aih1 = hit_fx_create( sprite_get( "aihit1" ), 8*4);
aih2 = hit_fx_create( sprite_get( "aihit2" ), 8*5);
i5 = hit_fx_create( sprite_get( "np5" ), 20);	

hfx1 = hit_fx_create( sprite_get( "hitfx1" ),12);
hfx2 = hit_fx_create( sprite_get( "hitfx2" ),16);

sprite_change_offset("hitfx1", 50, 100);
sprite_change_offset("hitfx2", 40, 130);

esp2 = hit_fx_create( sprite_get( "esp2" ), 9 );
sprite_change_offset("esp2", 32, 32);
       
    
sw2 = hit_fx_create( sprite_get( "shockwave2" ), 12);
sprite_change_offset("shockwave2", 100, 120);

sprite_change_offset("tbfx", 50, 50);

sw = hit_fx_create( sprite_get( "shockwave" ), 8);
sprite_change_offset("shockwave", 107, 126);

lighten = hit_fx_create( sprite_get( "lighten" ), 12);
sprite_change_offset("lighten", 1000, 1000);
