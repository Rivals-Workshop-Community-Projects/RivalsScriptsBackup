hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");

// Offscreen codes
hud_color = get_player_hud_color(player);
ballOffSprite = sprite_get("ballHud")
ballOffSpriteTwo = sprite_get("ballHud2")
//

set_victory_theme(sound_get("Truth"));

Hikaru_Title = "Pseudo Angel"

nname = "Sleven Gabri Rehael"
ncode1 = "None of these words "
ncode2 = "are in the bible !"
ncode3 = "  "

hue = 0
hurtsprite = 0

air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 66.66;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .16;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9;
short_hop_speed = 5;
djump_speed = 8;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .6; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 40; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 20;
max_fall = 5; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .3;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 12;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .3; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 4;
techroll_recovery_frames = 5;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 5;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 5;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 5;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_may");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_gus_jump");
air_dodge_sound = asset_get("sfx_quick_dodge");

awaken = hit_fx_create( sprite_get( "fx_spawn" ),60);
sprite_change_offset("fx_spawn",  96, 88);
fx_dstrong = hit_fx_create( sprite_get( "fx_fstrong" ),10);
fx_fstrong = hit_fx_create( sprite_get( "fx_fstrong" ),15);
fx_ustrong = hit_fx_create( sprite_get( "fx_ustrong" ),10);
//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 0;

