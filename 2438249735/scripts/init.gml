hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = sprite_get("air_box");
hitstun_hurtbox_spr = sprite_get("air_box");

issmol = 1
nname = "Ceae Grasia"
ncode1 = "A divine being, or just a humanoid being"
ncode2 = "bearing the embodiment of grasses (Poaceae)"
ncode3 = "They can make grass grow on any surface."

uspec = 0

shsp = 0
svsp = 0
djumped = 0
target = 0

invisound = 0
invitimer = 0

char_height = 80.1;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .16;
dash_anim_speed = .32;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 1;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 6.5;
dash_speed = 6.5
dash_turn_time = 8;
dash_turn_accel = .5;
dash_stop_time = 8;
dash_stop_percent = .0; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.8;

jump_start_time = 5;
jump_speed = 11;
jump_frames = 6;
short_hop_speed = 6;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.28;
prat_fall_accel = 0.8; //multiplier of air_accel while in pratfall
air_friction = .052;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 10;
walljump_time = 20;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .55;
hitstun_grav = .48;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.05; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
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
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 7;
techroll_recovery_frames = 4;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 9;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 7;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 1;
roll_back_active_frames = 7;
roll_back_recovery_frames = 4;
roll_forward_max = 8; //roll speed
roll_backward_max = 9;

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

       
       
lighten = hit_fx_create( sprite_get( "lighten" ), 8);
sprite_change_offset("lighten", 1000, 1000);

darken = hit_fx_create( sprite_get( "darken" ), 10);
sprite_change_offset("darken", 1000, 1000);



lpar1 = hit_fx_create( sprite_get( "lpar1" ), 15);
lpar2 = hit_fx_create( sprite_get( "lpar2" ), 20);
lpar3 = hit_fx_create( sprite_get( "lpar3" ), 20);
lpar4 = hit_fx_create( sprite_get( "lpar4" ), 20);
lpar5 = hit_fx_create( sprite_get( "lpar5" ), 20);
shit5 = hit_fx_create( sprite_get( "shit5" ), 60 );
shit1 = hit_fx_create( sprite_get( "shit1" ), 60 );

sprite_change_offset("lpar1", 30, 30);
sprite_change_offset("lpar2", 30, 30);
sprite_change_offset("lpar3", 30, 30);
sprite_change_offset("lpar4", 30, 30);
sprite_change_offset("lpar5", 30, 30);
sprite_change_offset("shit5", 100, 100);
sprite_change_offset("shit1", 100, 100);

sprite_change_offset("nproj", 25, 25);
sprite_change_offset("grass", 20, 38);
sprite_change_offset("seed", 5, 5);
sprite_change_offset("grasscv", 30, 30);

ds = hit_fx_create( sprite_get( "ds" ), 25 );












