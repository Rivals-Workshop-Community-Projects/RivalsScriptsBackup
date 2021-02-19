//Actual variables to initialize

hit_player = player;
hit_player_obj = self;
greaterdog_object = 0;
greaterdog_timer = 0;

//VERY IMPORTANT
tcoart = sprite_get("annoydog_tcoart");

//init.gml
set_victory_theme( sound_get( "dog_dogsong" ) );
hurtbox_spr = sprite_get("idle_hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 48;
idle_anim_speed = 0.1;
crouch_anim_speed = 0.1;
walk_anim_speed = 0.5;
dash_anim_speed = 1;
pratfall_anim_speed = 0.25;

walk_speed = 3;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 6;
initial_dash_speed = 8.0;
dash_speed = 7.5;
dash_turn_time = 6;
dash_turn_accel = 0.6;
dash_stop_time = 6;
dash_stop_percent = 0.6; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.6;
moonwalk_accel = 1.6;

jump_start_time = 4;
jump_speed = 12.25;
short_hop_speed = 8.75;
djump_speed = 12;
leave_ground_max = 12; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 6; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.3;
prat_fall_accel = 0.7; //multiplier of air_accel while in pratfall
air_friction = 0.09;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.

walljump_hsp = 6;
walljump_vsp = 12;
walljump_time = 24;
wall_frames = 1; //anim frames before you leave the wall

max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 19; //fast fall speed
gravity_speed = 0.6;
hitstun_grav = 0.5;
knockback_adj = 1.25; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 3; //normal landing frames
prat_land_time = 20;
wave_land_time = 5;
wave_land_adj = 2.0; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 6;
crouch_active_frames = 1;
crouch_recovery_frames = 8;

//parry animation frames
dodge_startup_frames = 0;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 2;
techroll_recovery_frames = 1;
techroll_speed = 6;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 20;
air_dodge_recovery_frames = 1;
air_dodge_speed = 6;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 1;

roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 1;

roll_forward_max = 6; //roll speed
roll_backward_max = 6;

land_sound = asset_get("sfx_land");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("dog_dodge");
jump_sound = sound_get("dog_jump");
djump_sound = sound_get("dog_doublejump");
air_dodge_sound = sound_get("dog_wavedash");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = -8;
