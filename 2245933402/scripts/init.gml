hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = asset_get("ex_guy_hurt_box");

obamium = 0
obx = 0
oby = 0
obabo = 1
ostyle = 5
otime = 0

jumping = 0

healtime = 0

nname = "Boarack Oboama"
ncode1 = "The President of AERica."
ncode2 = "Suspected to carry the exotic material [Obamium] "
ncode3 = "Current status: Missing. "


grelive = 0
jettime = 0
bullet = 0

nbullet = 0
bbullet = 0
fbullet = 0
dbullet = 0

gun = 0

spamb = 0

char_height = 55;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 1;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 8;
dash_speed = 6;
dash_turn_time = 4;
dash_turn_accel = 1.5;
dash_stop_time = 9;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 4;
jump_speed = 13;
short_hop_speed = 8;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .80; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 11;
walljump_time = 24;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 3;
techroll_speed = 6;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 3;
roll_forward_max = 6; //roll speed
roll_backward_max = 6;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");


//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


esp2 = hit_fx_create( sprite_get( "esp2" ), 9 );
sprite_change_offset("esp2", 32, 32);


shotgun1  = hit_fx_create( sprite_get( "shotgun1" ), 9 );
sprite_change_offset("shotgun1", 76, 98);

dattacks1 = hit_fx_create( sprite_get( "dattacks1" ), 24 );
sprite_change_offset("dattacks1", 30, 16);
