hurtbox_spr = sprite_get("ash_hurtbox");
crouchbox_spr = sprite_get("ash_crouching_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//debug stuff
debug = 0;
fspecial_fx = hit_fx_create( sprite_get( "fspecial_fx" ), 8 );
cancel_chance = hit_fx_create( sprite_get( "cancel_chance" ), 12 );
cancel_chance2 = hit_fx_create( sprite_get( "cancel_chance_star" ), 12 );
dizzy = hit_fx_create( sprite_get( "dizzy" ), 28 );

char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .2;
walk_anim_speed = .20;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = .5;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 9;
dash_speed = 9;
dash_turn_time = 9;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.7;

jump_start_time = 4;
jump_speed = 11.5;
short_hop_speed = 6.5;
djump_speed = 10.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .90; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 13;
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
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
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

//intro
introTimer = -2;
introTimer2 = 0;

//Workshop character interactions
kirbyability = 16

//stuff
fspecial_hit_cancel = 0;
fspecial_jump = 0;

if (get_player_color( player ) == 0) {
    tcoart = sprite_get("ashtcoart1");
}

if (get_player_color( player ) == 1) {
    tcoart = sprite_get("ashtcoart1");
}

if (get_player_color( player ) == 2) {
    tcoart = sprite_get("ashtcoart1");
}

if (get_player_color( player ) == 3) {
    tcoart = sprite_get("ashtcoart2");
}

if (get_player_color( player ) == 4) {
    tcoart = sprite_get("ashtcoart1");
}

if (get_player_color( player ) == 5) {
    tcoart = sprite_get("ashtcoart1");
}

if (get_player_color( player ) == 6) {
    tcoart = sprite_get("ashtcoart1");
}

if (get_player_color( player ) == 7) {
    tcoart = sprite_get("ashtcoart1");
}

if (get_player_color( player ) == 8) {
    tcoart = sprite_get("ashtcoart2");
}

if (get_player_color( player ) == 9) {
    tcoart = sprite_get("ashtcoart2");
}

if (get_player_color( player ) == 10) {
    tcoart = sprite_get("ashtcoart1");
}

if (get_player_color( player ) == 11) {
    tcoart = sprite_get("ashtcoart2");
}

if (get_player_color( player ) == 12) {
    tcoart = sprite_get("ashtcoart3");
}

trummelcodecneeded = false;
trummelcodec_id = noone;