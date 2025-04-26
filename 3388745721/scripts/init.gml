hurtbox_spr = sprite_get("bug_hurtbox");
crouchbox_spr = sprite_get("bug_crouch_hurtbox");
dashbox_spr = sprite_get("bug_dash_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//Custom Variables
ground_friction_init = .2;
ground_friction_crouch = 0.5;
clingtime = 0;


char_height = 64;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .175;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 6.25;
dash_speed = 6;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .2;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9;
short_hop_speed = 5;
djump_speed = 8;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 2;
double_jump_time = 38; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 7;
walljump_time = 40;
can_wall_cling = true;
max_fall = 7; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .38;
hitstun_grav = .45;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 24;
wave_land_time = 8;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 3;
techroll_recovery_frames = 4;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 4;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

fx_gus_flame_small = hit_fx_create(sprite_get("fx_gus_flame_small"), 18);
fx_gus_flame_large = hit_fx_create(sprite_get("fx_gus_flame_large"), 24);
hfx_wind_small = hit_fx_create(sprite_get("hfx_wind_small"), 15);
hfx_wind_large = hit_fx_create(sprite_get("hfx_wind_large"), 15);
hfx_wind_huge = hit_fx_create(sprite_get("hfx_wind_huge"), 28);
hfx_QD_die = hit_fx_create(sprite_get("hfx_QD_die"), 21);
hfx_QD_hurt = hit_fx_create(sprite_get("hfx_QD_hurt"), 21);
hfx_QD_consume = hit_fx_create(sprite_get("hfx_QD_consume"), 21);
heat_wave_die = hit_fx_create(sprite_get("fspecial_proj_destroy"), 25);

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_forsburn_cape_swipe");
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = asset_get("sfx_quick_dodge");

set_victory_theme( sound_get( "victory" ) );

QD_Charge = 0 //Establishes the number of Quiver Dance Charges you have
QD_article_1 = noone;
QD_article_2 = noone;
QD_damage = 0;
QD_damage_threshold = 22;  
QD_timer_trigger = 0;
QD_timer = 90;

galaxy_timer = 0;
dair_forgiveness = 0;
dair_forgiveness_threshold = 30
uspecial_angle = 0;
uspecial_speed = 10;
uspecial_extra_vspeed = -4;
fly_dir = 0;
uspec_angle = 90;
uspec_was_free = false;

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
