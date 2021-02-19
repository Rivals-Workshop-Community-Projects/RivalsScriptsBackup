hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .8;
pratfall_anim_speed = .25;

walk_speed = 4.5;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7.5;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 12.5; //fast fall speed
gravity_speed = .5;
hitstun_grav = .4;
knockback_adj = 1.15;

land_time = 4; //normal landing frames
prat_land_time = 8;
wave_land_time = 9;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 0;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 8;
dodge_recovery_frames = 20;

//tech animation frames
tech_active_frames = 14;
tech_recovery_frames = 4;

//tech roll animation frames
techroll_startup_frames = 8;
techroll_active_frames = 4;
techroll_recovery_frames = 14;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 12;
air_dodge_recovery_frames = 12;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 14;
roll_forward_recovery_frames = 12;
roll_back_startup_frames = 3;
roll_back_active_frames = 14;
roll_back_recovery_frames = 12;
roll_forward_max = 5; //roll speed
roll_backward_max = 5;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

bombEffect = 0;
bombStale = false;
lastEffect = 0;

anim = 0;

vat = noone;
vat_usable = true;

set_victory_theme(sound_get( "Plague_Knight_Victory_Theme"));

wave = noone;
gotWave = true;


//spécificités de skins
fxG = false;
if (get_player_color(player) == 6)//for the enchantress, explsions are the same color as her neclacce (magenta)
    fxG = true;
vatNA = false
if (get_player_color(player) == 8)//for polar knight, the vat is not animated
    vatNA = true;
alchmeister = false;
if (get_player_color(player) == 11)//for the alchmeister, the bombs are different
    alchmeister = true;

//CODED BY HOWEAL TANKAA
//TAKE INSPIRATION FREELY
