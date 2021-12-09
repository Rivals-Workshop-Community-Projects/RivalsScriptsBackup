hurtbox_spr = sprite_get("idlehurt");
crouchbox_spr = sprite_get("crouchhurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;
attack_input = 0; //how many frames youre holding the button to change to strong version
special_input = 0;

char_height = 60;
idle_anim_speed = .10;
crouch_anim_speed = .1;
walk_anim_speed = .250;
dash_anim_speed = .350;
pratfall_anim_speed = .10;

walk_speed = 3.5;
walk_accel = 0.8;
walk_turn_time = 8;
initial_dash_time = 8;
initial_dash_speed = 8;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 13;
short_hop_speed = 8;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 0.8; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 4;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 3;
dodge_active_frames = 1;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 9;
air_dodge_recovery_frames = 2;
air_dodge_speed = 9.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

weapom_switch = 0;
set_victory_theme( sound_get("victory"));

land_sound = sound_get("land");
landing_lag_sound = sound_get("land");
waveland_sound = sound_get("land");
jump_sound = sound_get("jump");
djump_sound = sound_get("jump");
air_dodge_sound = sound_get("air_start");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

toxic = hit_fx_create( sprite_get( "toxicdestroy" ), 18 );
balls = hit_fx_create( sprite_get( "balls" ), 20 );