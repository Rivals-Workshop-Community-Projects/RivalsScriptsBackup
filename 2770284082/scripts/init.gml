hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = sprite_get("air_box");
hitstun_hurtbox_spr = sprite_get("air_box");

Hikaru_Title = "M word"

ncode1 = "[Special Unit] who only take tasks directly"
ncode2 = "from Mr.president. He has many encounters "
ncode3 = "with Anomalies, notoriously [Burger Clown]"

cur_sound = sound_play(sound_get("v_hee"))
	 	sound_stop(cur_sound)

reversed = 0

voiced = 1

soundlol = 0
wahoo = 0

moonlight = 0

damageminigate = 0
side = 0
tiptoe = 0
twirl = 0
thrusting = 0
hatstate = 0
char_height = 60;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .16;
dash_anim_speed = .4;
pratfall_anim_speed = .25;

walk_speed = 4.5;
walk_accel = 1;
walk_turn_time = 1;
initial_dash_time = 2;
initial_dash_speed = 4;
dash_speed = 4.5;
dash_turn_time = 1;
dash_turn_accel = .5;
dash_stop_time = 1;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 1;
moonwalk_accel = 2;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7;
djump_speed = 12;
leave_ground_max = 10; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 3; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .0535;
max_djumps = 1;
double_jump_time = 52; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 11;
walljump_time = 25;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 8.5; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .6;
hitstun_grav = .525;
knockback_adj = 1.05;//the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 12;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .2; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 5;
techroll_recovery_frames = 2;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 5;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_waveland_cla");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

sprite_change_offset("Moonlight", 75, 75);

dsp = hit_fx_create( sprite_get( "dspecgone" ), 7*3);
sprite_change_offset("dspecgone", 94, 122);

nfx = hit_fx_create( sprite_get( "nfx" ), 12);
sprite_change_offset("nfx", 94, 122);

p1 = hit_fx_create( sprite_get( "spark1" ), 12);
sprite_change_offset("spark1", 5, 5);

p2 = hit_fx_create( sprite_get( "spark2" ), 12);
sprite_change_offset("spark2", 5, 5);

p3 = hit_fx_create( sprite_get( "spark3" ), 12);
sprite_change_offset("spark3", 30, 30);

h3 = hit_fx_create( sprite_get( "hat3" ), 14);
sprite_change_offset("hat3", 30, 30);

b1 = hit_fx_create( sprite_get( "block" ), 18);
sprite_change_offset("block", 40, 40);

res = hit_fx_create( sprite_get( "plat" ), 5);
