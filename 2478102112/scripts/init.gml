hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

killarticles = false;

superMove = 14
superTrue = 0

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .4;
kart_sprite = sprite_get("car");
ftarget = 0;
fstrong_rando = 0;
ustrong_charge = 0;
uairpop = 0;
dair_type = 0;
uloop = 0;
ufall = 0;
has_cake = 0;
party_cooldown = 0;
pbc = 0;
happy_birthday = 0;
beffect_timer = 0;
que_count = 0;
que_timer = 0;
armor_part = 0;
wrap_sprite = sprite_get("candy_eaten")
//fcountdown = random_func( 0, 14, true );
camera_obj = asset_get("camera_obj");
confetti = hit_fx_create( sprite_get( "confetti" ), 60 );
confetti_side = hit_fx_create( sprite_get( "confetti_launch_horizontal" ), 60 );
confetti_diag = hit_fx_create( sprite_get( "confetti_launch_diagonal" ), 60 );
gunshot = hit_fx_create( sprite_get( "gun_shot" ), 60 );
beffect = hit_fx_create(sprite_get("walk_bugingi_fade"), 30);
heal_fx = hit_fx_create( sprite_get( "heal" ), 30 );
foodrng = 0;
//dance_timer = noone;
//dance_timer_innitd = 0;

walk_speed = 3;
walk_accel = 0.15;
walk_turn_time = 12;
initial_dash_time = 4;
initial_dash_speed = 8;
dash_speed = 7;
dash_turn_time = 5;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 11;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .3; //multiplier of air_accel while in pratfall
air_friction = .025;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 10;
wave_land_adj = 1.01; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .2; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 7;
air_dodge_recovery_frames = 2;
air_dodge_speed = 10;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
