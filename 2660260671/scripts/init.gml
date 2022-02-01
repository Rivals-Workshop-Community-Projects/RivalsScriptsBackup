hurtbox_spr = sprite_get("idlehurt");
crouchbox_spr = sprite_get("crouchhurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 32;
idle_anim_speed = .12;
crouch_anim_speed = .12;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 5.25;
walk_accel = 0.13;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 8;
dash_speed = 7.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 8.5;
short_hop_speed = 5;
djump_speed = 7;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .6;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
djump_accel = -0.5;
djump_accel_start_time = 5;
djump_accel_end_time = 16;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 6; //maximum fall speed without fastfalling
fast_fall = 9; //fast fall speed
gravity_speed = .38;
hitstun_grav = .5;
knockback_adj = 1.6; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 7;
wave_land_adj = 1.58; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 5;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 3;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 3;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 3;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 10; //roll speed
roll_backward_max = 10;

set_victory_theme( sound_get("victory"));

land_sound = sound_get("land");
landing_lag_sound = sound_get("land");
waveland_sound = sound_get("land");
jump_sound = sound_get("bounce");
djump_sound = sound_get("bubbly");
air_dodge_sound = sound_get("minimize");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

smallhit = hit_fx_create( sprite_get( "smallhit" ), 25 );
itembreakpot = hit_fx_create( sprite_get( "itembreakpot" ), 10 );
itembreaklamp = hit_fx_create( sprite_get( "itembreaklamp" ), 10 );
itembreakrock = hit_fx_create( sprite_get( "itembreakrock" ), 10 );
itembreakplatter = hit_fx_create( sprite_get( "itembreakplatter" ), 10 );
itembreakicup = hit_fx_create( sprite_get( "itembreakicup" ), 10 );






//Pokemon Stadium
pkmn_stadium_front_img = sprite_get("pkmn_stadium_front_image");
pkmn_stadium_back_img = sprite_get("pkmn_stadium_back_image");
