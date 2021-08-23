hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = sprite_get("air_box");
hitstun_hurtbox_spr = sprite_get("air_box");

Hikaru_Title = "Underpaid Worker"

nname = "Nolan Dolal"
ncode1 = "A [Special Unit] who is currently going undercover"
ncode2 = "to investigate the nature of [Burger Clown] anomaly."
ncode3 = "He also having fiancial issues."

introhit = 0
intro = 0
introtimer = -1

hudx = 0
hudy = 0

superMove = 14

batt2 = 0

oldsupp = 0

battfade = 0
suppfade = 0

daired = 0
golden = 0
drop = 0
coindrop = 0
batt = 1
supply = 0
noinv = 3

attra = 0
milkpizz = 0
meleehit = 0

char_height = 80;
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
air_friction = .05;
max_djumps = 1;
double_jump_time = 34; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 3;
walljump_vsp = 11;
walljump_time = 12;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 8.5; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .64;
hitstun_grav = .5;
knockback_adj = 1.0;//the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
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
sprite_change_offset("laser", 800, 48);

lighten = hit_fx_create( sprite_get( "lighten" ), 8);
sprite_change_offset("lighten", 1000, 1000);
darken = hit_fx_create( sprite_get( "darken" ), 10);
sprite_change_offset("darken", 1000, 1000);


lasernor = hit_fx_create( sprite_get( "gun4" ), 12);
sprite_change_offset("gun4", 570, 32);

sw = hit_fx_create( sprite_get( "shockwave2" ), 16);
sprite_change_offset("shockwave2", 107, 126);