//thank u for reading this have a nice day
//thanks you too :)

//simple compats
steve_death_message = "Steve was slain by Mallory70942794";
pkmn_stadium_front_img = sprite_get("pkmn_sprite1");
pkmn_stadium_back_img = sprite_get("pkmn_sprite2");
arena_title = "Heir of Miasma";
spam_ad = sprite_get("mal_ad")

//fx
sword = hit_fx_create( sprite_get( "hfx_sword" ), 30 );
bigsmoke = hit_fx_create( sprite_get( "hfx_bigsmoke" ), 50 );
midsmoke = hit_fx_create( sprite_get( "hfx_midsmoke" ), 50 );
smokeball = hit_fx_create( sprite_get( "hfx_smokeball" ), 15 );
nothing = hit_fx_create( sprite_get( "nothing" ), 30 );
set_hit_particle_sprite( 1, sprite_get( "particle_1" ) );
set_hit_particle_sprite( 2, sprite_get( "particle_2" ) );
set_hit_particle_sprite( 3, sprite_get( "nothing" ) );
fspecdie = hit_fx_create( sprite_get( "fspec_die" ), 30 );

//extra alts
extra_col = 0;

hurtbox_spr = sprite_get("1");
crouchbox_spr = sprite_get("2");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 58;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6.5;
dash_speed = 5.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .63;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9.99;
short_hop_speed = 6;
djump_speed = 10.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .1;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .45;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 9;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 4;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
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

//plat
respawnPlatSprite = sprite_get("platbehind");

//sick
malsick = false;

//sick consume
malsick_consumed = false;

//smoke shit
maxSmoke = 3;
smokeAmount = maxSmoke;

//uspeccancel
uspeccancel = false;

//nspec
nspecObj = noone;
nspecTimer = 0;
nspecTimerMax = 40;

///dair grab
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

//enhanced strong
markConsumed = false;
sickAfterGraceMax = 0;
sickAfterGrace = 0;//How many frames the opponent is invincible from getting sick again after recovering from sickness

//bair 
bairused = false;

