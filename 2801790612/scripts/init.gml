/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The commented-out numbers are the range of values the RoA
 * base cast has - e.g. it lists the slowest and fastest run speeds.
 * 
 * Replace Zetter's stats with whatever strengths/weaknesses your char should
 * have, e.g. change dash_speed to 8 or so if you want a fast character.
 *
 * Explanation of each stat:
 * https://rivalsofaether.com/player-variables/
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 * 
 * Base Cast Stats:
 * docs.google.com/spreadsheets/d/14JIjL_5t81JHqnJmU6BSsRosTe2JO8sFGUysM_9tDoU
 */

// STAT NAME		VALUE       BASECAST RANGE   NOTES

// Physical size
char_height         = 66;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 4;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 10;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 7.5;		// 5    -  9
dash_turn_time      = 15;		// 8    -  20
dash_turn_accel     = 1.0;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 5;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.5;		// 0.25 -  1.5
air_friction        = 0.05;		// 0.02 -  0.07
max_fall            = 11;		// 6    -  11
fast_fall           = 16;		// 11   -  16
gravity_speed       = 0.60;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 7;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 5;		// 4    -  7
walljump_vsp        = 10;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 10;		// 9    -  11
roll_backward_max   = 10;		// 9    -  11       always the same as forward
wave_land_time      = 9;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
///sfx_dbfz_kame_charge = sound_get("ARC_BTL_GKN_Kamehame_Chrg");
///sfx_dbfz_kame_fire = sound_get("ARC_BTL_GKN_Kamehame_Fire");
///sfx_dbfz_hit_weak = sound_get("ARC_BTL_CMN_Hit_Small-A");
///sfx_dbfz_hit_broken = sound_get("ARC_BTL_CMN_Hit_XLarge");
///sfx_dbfz_hit_jab3 = sound_get("ARC_BTL_GKN_Atk5A_3rd_Hit");

// VFX
vfx_ftilt_destroy = hit_fx_create(sprite_get("vfx_ftilt_destroy"), 12); // actually for nspecial, not ftilt
vfx_nspecial_fire = hit_fx_create(sprite_get("vfx_nspecial_fire"), 16);
fx_sonic = hit_fx_create( sprite_get("fx_sonic"), 18 );

// Variables
has_goku_beam = true;
doing_goku_beam = false;
beam_newest_hbox = noone;



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 20;		// 24   -  40
walljump_time       = 18;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 2;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 1;
crouch_active_frames    = 1;
crouch_recovery_frames  = 1;

/*

Muno's Words of Wisdom: Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation. Dan Moment

*/



// Hurtbox sprites
hurtbox_spr         = sprite_get("idle_hurt");
crouchbox_spr       = sprite_get("crouch_hurt");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("pepsi_victory")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_wra"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Intro
introTimer = -1;
introTimer2 = 0;

// 
spr_pepsican = sprite_get("pepsican");
spr_pepsican_hurt = sprite_get("pepsican_hurt");
spr_pepsimachine_idle = sprite_get("pepsimachine_idle");
spr_pepsimachine_hurt = sprite_get("pepsimachine_hurt");
spr_pepsimachine_impact = sprite_get("pepsimachine_impact");
spr_pepsimachine_boom = sprite_get("pepsimachine_boom");

spr_garbage1 = sprite_get("garbage1");
spr_garbage2 = sprite_get("garbage2");
spr_garbage3 = sprite_get("garbage3");
spr_garbage4 = sprite_get("garbage4");

spr_pepsi_meter = sprite_get("meter");

sfx_pepsi_boost = sound_get("pepsiman_boost");
sfx_pepsi_step = sound_get("pepsiman_step");
sfx_pepsi_bounce = sound_get("pepsiman_bounce");
sfx_pepsi = sound_get("pepsiman_pepsi");
sfx_pepsiman = sound_get("pepsiman_pepsiman_short");
sfx_pepsiman_long = sound_get("pepsiman_pepsiman_long");
sfx_pepsi_crash = sound_get("pepsiman_crash");
sfx_pepsi_hit = sound_get("pepsiman_hit");
sfx_pepsi_can = sound_get("pepsiman_can");
sfx_pepsi_slide = sound_get("pepsiman_slide");
sfx_pepsi_boing = sound_get("pepsiman_boing");
sfx_pepsi_fizz = sound_get("pepsiman_fizz");
sfx_pepsi_glug = sound_get("pepsiman_glug");
sfx_pepsi_gulp = sound_get("pepsiman_gulp");
sfx_pepsi_hurt1 = sound_get("pepsiman_hurt1");
sfx_pepsi_hurt2 = sound_get("pepsiman_hurt2");
sfx_pepsi_pour = sound_get("pepsiman_pour");
sfx_pepsi_psha = sound_get("pepsiman_psha");
sfx_pepsi_zoop = sound_get("pepsiman_zoop");
sfx_pepsi_screech = sound_get("pepsiman_screech");
sfx_alleyoop = sound_get("reyn_ALLEYOOP"); 
sfx_metal_can = sound_get("metal_can");


vfx_pepsi_burst = hit_fx_create(sprite_get("burst_fx"), 10);
vfx_pepsimachine_boom = hit_fx_create(sprite_get("pepsimachine_boom"), 6);

// Pepsi meter
pepsi_meter = 0;
combo_timer = 0;
combo_time = 60;
combo = 0;

// Pepsi Machine storage variable
pepsimachine = noone; // Stores reference to article 1
bounce_count = 0;

hit_fspecial = false; // Boolean for if the fspecial hit. Resets on fspecial call
pepsi_fspecial = false; // Boolean for if meter was expended for FSPECIAL cancel.
fspecial_hitbox = noone; // Stores reference for FSPECIAL hitbox

// Garbage, just like my code
rand_garbage = noone;
garb_bounce = 0;

// FSPECIAL BUFFER SYSTEM
fspecial_timer = 0;
fspecial_time = 30; // The ammount of frames you are allowed to cancel into fspecial

// Killsound stuff
pepsid = noone;
pause_timer = 0;
farx = 0;
fary = 0;

// DEBUG VARIABLE
debug_text = false;
bigiron = false;
