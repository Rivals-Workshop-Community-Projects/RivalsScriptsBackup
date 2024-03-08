hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = sprite_get("DS_hurtbox_crouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;
small_sprites = 1;

//Player Variables
moveMulti = false; //Check if current attack is a multi hit.
invertMode = false; //if you are inverted
uspecUsed = false;
fspecJack = 0;
fspecProj = noone;
fspecFreeze = 0;
showTimer = 30;
curSuit = 0;
oldSuit = 0;
hudpos_x = x-30;
hudtimer = 0;
ds_Prac = false;
ds_Lock = false;
ds_Timer = 0;
ds_Msg = "";
cfToggle = false;
cardFlipScale = 0;
randomizeSFX = 1;

solids = asset_get("par_block");
plats = asset_get("par_jumpthrough");

club_explosion = hit_fx_create( sprite_get( "explosion-club" ), 30);
heartHit = hit_fx_create( sprite_get( "hfx_heart" ), 24);
heartHitSmall = hit_fx_create( sprite_get( "hfx_heartsmall" ), 24);

//FSpecial Beam
beamFrame = -1;
beamTimer = 0;
beamX = 0;
beamY = 0;
beamdir = 0;

char_height = 56;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .075;
dash_anim_speed = .1;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.15;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 5;
dash_speed = 5.75;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .2;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 8.5;
short_hop_speed = 5;
djump_speed = -2;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
djump_accel = -2.1;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time = 7;
old_jump = true;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 24;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .35;
hitstun_grav = .47;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 6;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 6;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 5;
roll_back_recovery_frames = 1;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_waveland_ran");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_absa_jump");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme(sound_get("DS_victory"));
set_victory_bg(sprite_get("DS_victorybg"));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//RAINBOWS
hue_offset = 0;
hue_speed = 0.75; //change this to change the speed of the hueshift