hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;
orig_max_jump_hsp = max_jump_hsp;

spin_count = 0;

can_wall_cling = true;
walljump_timer = 0;
did_hit = false;

uspec_bounce = true;
fennek_uspec_grab = noone;
uspec_grabbed_lamp = false;
uspec_did_grab_lamp = false;
uspec_lamp_id = noone;
uspec_should_tether = false;
uspec_orig_x = x;
uspec_orig_y = y;
uspec_grounded = false;
lamp_prev_x = 0;
lamp_prev_y = 0;

fspec_grounded = false;

//Article variable pls dont delete
axe=noone;
axe_should_die=false;
can_catch_axe=false;
axe_has_hit=false;
axe_touch_despawn=0;
axe_touch_despawn_end=10;

lamp = noone;


sparks1 = hit_fx_create( sprite_get( "sparks1" ), 16 );
sparks2 = hit_fx_create( sprite_get( "sparks2" ), 16 );


//COMMAND (TEST)
item = 0;
/*switched = 0;*/

char_height = 52;
idle_anim_speed = .16;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.5;//.2
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 7.5;
dash_speed = 6.5;
dash_turn_time = 12;
dash_turn_accel = 1.4;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;//1.2
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .8; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 10;//12
walljump_time = 24;
wall_frames = 1;
max_fall = 12; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 18;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 3;
dodge_active_frames = 3;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
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

//custom effects
airdash = hit_fx_create( sprite_get( "airdash" ), 15 );
explode = hit_fx_create( sprite_get( "explosion_area" ), 15 );
axetrailing = hit_fx_create( sprite_get( "spinaxe1" ), 16 );


/*
//AfterImageTest
// afterimage
afterImageTimer = 0;
afterImageMax = 5;
afterImage = array_create(afterImageMax, -1);*/


// Comapts
TCG_Kirby_Copy = 1;
plushForAmber = sprite_get("plushForAmber");
Hikaru_Title = "The Hack n' Slasher";
scoop_personalized_flavour_name = "Vanilla with Brownie";
scoop_personalized_flavour_sprite = sprite_get("fennek_ice_cream");