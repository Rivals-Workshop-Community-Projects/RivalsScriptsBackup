/*hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 50;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 13;
initial_dash_speed = 5.5;
dash_speed = 6;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 13;
short_hop_speed = 8;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 9; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
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
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 4;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
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
bubble_y = 8;*/

// Stats - comment contains base cast range and notes. all stats are zetterburn's unless specified otherwise in the notes

// Physical size
char_height         = 50;       // not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.3;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 13;		// 8    -  16
initial_dash_speed  = 6;		// 4    -  9
dash_speed          = 6;		// 5    -  9
dash_turn_time      = 12;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 8;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.4;		// 1.2  -  1.4

// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 6;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.5;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 13;		// 6    -  11
fast_fall           = 16;		// 11   -  16
gravity_speed       = 0.65;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 7;		// 4    -  7.4
djump_speed         = 12;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        // ???              the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 9;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.04;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.35;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11



// Animation Info

// Misc. animation speeds
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not work... dan pls

// Crouch
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 4;

/*

Muno's Words of Wisdom: Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation. Dan Moment

*/

// Parry
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

// Tech
tech_active_frames = 3;
tech_recovery_frames = 2;

// Tech roll
techroll_startup_frames = 2
techroll_active_frames = 3;
techroll_recovery_frames = 1;

// Airdodge
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;

// Roll
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;



// Character-specific sprites init

// SFX init

sfx_example = sound_get("example"); // if there were a file called "example.ogg" in the sounds folder, you could do   sound_play(sfx_example);



// VFX init
vfx_example = hit_fx_create(sprite_get("example"), 54); // then you do   spawn_hit_fx(vfx_example);

light_effect = hit_fx_create( sprite_get( "nikvfxlight" ), 21 );
med_effect = hit_fx_create( sprite_get( "nikvfxmed" ), 21 );
heavy_effect = hit_fx_create( sprite_get( "nikvfxheavy" ), 21 );
spike_effect = hit_fx_create( sprite_get( "nikvfxspike" ), 21 );
zap_effect = hit_fx_create( sprite_get( "zapvfx" ), 18 );

pluxthrow_effect = hit_fx_create( sprite_get( "pluxvfxthrow" ), 21 );
pluxhurt_effect = hit_fx_create( sprite_get( "pluxvfxhurt" ), 21 );
pluxbubble_effect = hit_fx_create( sprite_get( "pluxvfxbubble" ), 21 );

// Hurtbox sprites
hurtbox_spr         = sprite_get( "nik_hurtbox" );
crouchbox_spr       = sprite_get( "nik_crouch_hurtbox" );
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
//set_victory_bg(sprite_get("victory_background"));
//set_victory_theme(sound_get("victory_theme"));

// Movement SFX
land_sound          = asset_get("sfx_land_med");
landing_lag_sound   = asset_get("sfx_land");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = sound_get("jump");
djump_sound         = sound_get("jump_double");
air_dodge_sound     = asset_get("sfx_quick_dodge");

set_victory_theme( sound_get("nikensho_win") );

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

small_sprites = 1;

//Switch Cycle
cycle = 0;
old_cycle = 0;
new_timer = 0;

//dair
dairHitPlayer = false;

//cooldown cycle
cooldown = -1;
cooldownOn = false;
cooldownCycle = 0;

//Fspecial
should_2hit = false;
should_swing = false;

//Uspecial2
fairyTimer = 300;

//Nspecial2 - Fairy & bubble stuff
fairy = true;
fairyenergy = 4;
fairydecay = 0;
wasfairydecay = 0;
fairycooldown = 60;
plux_throw_hit = 0;

killarticles = false;
replacedcount = 0;
destroy_bubble = false;

throwing = 0;
throwX = 0;
throwY = 0;
throwHSP = 0;
throwVSP = 0;
animationcounter = 0;

//Dspecial2
chargelvl = 0;

//debug draw
drawDebug = -1;

//intro
introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

muno_event_type = 0;
user_event(14);