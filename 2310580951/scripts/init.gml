hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56;
idle_anim_speed = .16;
crouch_anim_speed = .1;
walk_anim_speed = .16;
dash_anim_speed = .35;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.35;
walk_turn_time = 8;
initial_dash_time = 14;
initial_dash_speed = 8;
dash_speed = 7.25;
dash_turn_time = 15;
dash_turn_accel = 1.5;
dash_stop_time = 5;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .65;
moonwalk_accel = 1.464;

//Alternate jumps
regular_jump_speed = 10.5;
smol_jump_speed = 6;
true_double_jump_speed = 13;
triple_jump_speed = 16;

jump_start_time = 5;
jump_speed = 9;
short_hop_speed = 6;
djump_speed = 9;
leave_ground_max = 6.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 20; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 30;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .05; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 11;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 2;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 6;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 1;
roll_back_recovery_frames = 4;
roll_forward_max = 10; //roll speed
roll_backward_max = 10;

land_sound = sound_get("land");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("jump");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme(sound_get("victory"));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
wall_frames = 1;		// may or may not work... dan pls

//Unique variables
sleepTimer = 0;
jumps = 0;
jumpTimer = 0;
RollAfter = hit_fx_create( sprite_get( "roll_afterimage" ),6);
RollAfterL = hit_fx_create( sprite_get( "roll_afterimage_l" ),6);
RollAfterDef = hit_fx_create( sprite_get( "roll_afterimage_def" ),6);
RollAfterDefL = hit_fx_create( sprite_get( "roll_afterimage_def_l" ),6);
kick = 0;
flyingTime = 140;
canGoUp = 1;
GroundPound = hit_fx_create(sprite_get("groundpound"), 22);

//Grab variables
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.
grabTimer = 10;

//Mario voices
ItsAMeMario = true;
boing = sound_get("mario-boing");
doh = sound_get("mario-doh");
dream = sound_get("mario-dream");
haha = sound_get("mario-haha");
herewego = sound_get("mario-herewego");
imtired = sound_get("mario-imtired");
snore1 = sound_get("mario-snore1");
snore2 = sound_get("mario-snore2");
waha = sound_get("mario-waha");
woo = sound_get("mario-woo");
hoo = sound_get("mario-hoo");
wah = sound_get("mario-wah");
woohoo = sound_get("mario-woohoo");
ugh = sound_get("mario-ugh");
yah = sound_get("mario-yah");
buhbye = sound_get("mario-buhbye");
bowser = sound_get("mario-solongbowser");
yawn = sound_get("mario-yawn");
yahoo = sound_get("mario-yahoo");
yippee = sound_get("mario-yippee");

//adventure
pronouns = ["he","him","his","is"];
am_is_verbal = false;
am_is_experienced = true;
am_is_magic = true;