hurtbox_spr = sprite_get("ganon_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

no_sword = true;

use_sword = false;

//float stuff, original code by RubyNights (for Pomme)
floating = 0;
floatTimer = 0;
floatMax = 45;
floatAnimTimer = 0;
floatMoveSpeed = 1;
freeFloat = 0;
freeFloatStop = 0;
floatCancel = 0;
floatDriftSpeed = 0;
floatRestore = 0;

floateffectAnimStripLength = 4;
floateffectAnimTimer = 0;
floateffectAnimSpeed = 0.25;



downBuffer = 0;

spr_float = sprite_get("float");

grab_air = false;
fspecial_cont = 0;
fspecial_hit = -1;
hold_on = true;

hit_effect = hit_fx_create( sprite_get( "darkness" ), 20 );

char_height = 74;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 3;
initial_dash_speed = 4;
dash_speed = 5;
dash_turn_time = 7;
dash_turn_accel = 1;
dash_stop_time = 3;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1;

jump_start_time = 7;
jump_speed = 11;
short_hop_speed = 10;
djump_speed = 11;
leave_ground_max = 5.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4.3; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 22;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .8;
hitstun_grav = .6;
knockback_adj = 0.8; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.20; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames =2;

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
air_dodge_recovery_frames = 1;
air_dodge_speed = 6;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 3;
roll_back_active_frames = 1;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("landing");
landing_lag_sound = sound_get("landing");
waveland_sound = asset_get("waveland");
jump_sound = sound_get("jump");
djump_sound = sound_get("jump2");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme( sound_get( "victory" ) );

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

moveX = 0;
moveY = 0;

arena_title = "King of Darkness";

boxing_title = "Weilder of Power";

Hikaru_Title = "Queen of Darkness";

nname = "Ganodorf"

ncode1 = "King of darkness and holder of the triforce of power."
ncode2 = "Hits very hard but is not that fast."
ncode3 = "Keep your wits and play smart."

battle_text = "You feel a fated battle is about to begin.";

introTimer = -5;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;
introSound = false;
