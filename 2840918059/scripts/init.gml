hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 58;
idle_anim_speed = .085;
crouch_anim_speed = .085;
walk_anim_speed = .125;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 7;
initial_dash_speed = 5;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .6; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .55;
hitstun_grav = .45;
knockback_adj = .95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 9;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .00; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 8;
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
techroll_active_frames = 1;
techroll_recovery_frames = 4;
techroll_speed = 11;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 2;
roll_back_active_frames = 1;
roll_back_recovery_frames = 4;
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


//Attack Charge Meter
BAR = 0;

//Flips
front_flip = false;
back_flip = false;
flip_timer = 0;

//Clone Air Lifespan
air_time = 0;

//Purple Screen Fatality FX
purple = 0;


//Fatality FX
fatality = hit_fx_create( sprite_get( "fatality" ), 80 );
fatality2 = hit_fx_create( sprite_get( "fatality2" ), 80 );

//Nspecial FX
nspec_trail = hit_fx_create( sprite_get( "nspec_trail" ), 8 );
nspec_trail2 = hit_fx_create( sprite_get( "nspec_trail2" ), 5 );

//Fspecial FX
clone_break = hit_fx_create( sprite_get( "fspecial_clone_break" ), 15 );
expire = hit_fx_create( sprite_get( "fspecial_clone_expire" ), 15 );

//Uspecial FX
uspec_ice = hit_fx_create( sprite_get( "uspecial_ice" ), 15 );

//Attack Charge FX
charge = hit_fx_create( sprite_get( "charge" ), 15 );

//Ice Splash FX
splash = hit_fx_create( sprite_get( "splash" ), 20 );
dtilt_ice = hit_fx_create( sprite_get( "dtilt_ice" ), 10 );










