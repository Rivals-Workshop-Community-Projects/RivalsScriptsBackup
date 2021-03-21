hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 42;
idle_anim_speed = .175;
crouch_anim_speed = .1;
walk_anim_speed = .215;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 7;
dash_speed = 6.75;
dash_turn_time = 16;
dash_turn_accel = 1.025;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 13;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .5; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 10;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 1;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

set_victory_theme( sound_get( "duck_victorytheme" ));
set_victory_bg( sprite_get( "duckvictorybackground" ))

duckjumpsound = sound_get("duck_jump");

land_sound = sound_get("duck_landing");
landing_lag_sound = sound_get("duck_landing");
waveland_sound = asset_get("sfx_waveland_wra");
jump_sound = duckjumpsound;
djump_sound = sound_get("duck_djump");
air_dodge_sound = asset_get("sfx_quick_dodge");


rockhitgroundsfx = sound_get("duck_rockhitground");

wagnusstartpointx = 0;
wagnusstartpointy = 0;


//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

wagnus_overheat = 0;

wagnus_charge_time = 0;
wagnus_charges = 3;
wagnus_warning = 0;

quack_open = 0;

tv_stat = -1;
mine_exists = 0;


warningflashtimer = 0;
warningflash = 0;

duckjetpackSFX = 0;

duckspawneffect = hit_fx_create( sprite_get( "spawneffect" ), 45 );


duckjetpacksteam = hit_fx_create( sprite_get( "recoloredsteam" ), 20 ); //because there's no way to prevent base game fx from being shaded based on player color, fix your game dan
mineexplosionfx = hit_fx_create( sprite_get( "orangeexplosion" ), 26 );



user_event(14);

