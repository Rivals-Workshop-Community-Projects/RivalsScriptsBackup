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
char_height         = 52;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.95;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 6;		// 5    -  9
dash_turn_time      = 8;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 5;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.6;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 5;		// 4    -  8
air_max_speed       = 3;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.03;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.55;		// 0.3  -  0.6
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
wave_friction       = 0.13;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_wrap = sprite_get("wrap"); // sprites/example_stripX.png

// SFX
sfx_dbfz_kame_charge = sound_get("ARC_BTL_GKN_Kamehame_Chrg");
sfx_dbfz_kame_fire = sound_get("ARC_BTL_GKN_Kamehame_Fire");
sfx_dbfz_hit_weak = sound_get("ARC_BTL_CMN_Hit_Small-A");
sfx_dbfz_hit_broken = sound_get("ARC_BTL_CMN_Hit_XLarge");
sfx_dbfz_hit_jab3 = sound_get("ARC_BTL_GKN_Atk5A_3rd_Hit");

sfx_counter = sound_get("sfx_counter");
sfx_grab = sound_get("sfx_grab");
sfx_headbuck_heavy = sound_get("sfx_headbuck_heavy");
sfx_headbuck_light = sound_get("sfx_headbuck_light");
sfx_headbuck_magic = sound_get("sfx_headbuck_magic");
sfx_headbuck_medium = sound_get("sfx_headbuck_medium");
sfx_hit_heavy = sound_get("sfx_hit_heavy");
sfx_hit_light = sound_get("sfx_hit_light");
sfx_hit_medium = sound_get("sfx_hit_medium");
sfx_lasso_heavy = sound_get("sfx_lasso_heavy");
sfx_lasso_light = sound_get("sfx_lasso_light");
sfx_quake_heavy = sound_get("sfx_quake_heavy");
sfx_quake_light = sound_get("sfx_quake_light");
sfx_quake_magic = sound_get("sfx_quake_magic");
sfx_quake_medium = sound_get("sfx_quake_medium");
sfx_swipe1 = sound_get("sfx_swipe1");
sfx_swipe2 = sound_get("sfx_swipe2");

sfx_voice_headbuckh = sound_get("sfx_voice_headbuckh");
sfx_voice_headbuckl = sound_get("sfx_voice_headbuckl");
sfx_voice_headbuckm = sound_get("sfx_voice_headbuckm");
sfx_voice_headbuckma = sound_get("sfx_voice_headbuckma");
sfx_voice_heavy1 = sound_get("sfx_voice_heavy1");
sfx_voice_heavy2 = sound_get("sfx_voice_heavy2");
sfx_voice_light1 = sound_get("sfx_voice_light1");
sfx_voice_light2 = sound_get("sfx_voice_light2");
sfx_voice_medium1 = sound_get("sfx_voice_medium1");
sfx_voice_medium2 = sound_get("sfx_voice_medium2");
sfx_voice_quakeh1 = sound_get("sfx_voice_quakeh1");
sfx_voice_quakeh2 = sound_get("sfx_voice_quakeh2");
sfx_voice_quakel1 = sound_get("sfx_voice_quakel1");
sfx_voice_quakel2 = sound_get("sfx_voice_quakel2");
sfx_voice_quakel3 = sound_get("sfx_voice_quakel3"); //Actually Medium I think
sfx_voice_quakem = sound_get("sfx_voice_quakem");
sfx_voice_taunt1 = sound_get("sfx_voice_taunt1");
sfx_voice_taunt2 = sound_get("sfx_voice_taunt2");
sfx_voice_taunt3 = sound_get("sfx_voice_taunt3");
sfx_voice_taunt4 = sound_get("sfx_voice_taunt4");
sfx_alleyoop = sound_get("reyn_ALLEYOOP"); 

// VFX
vfx_afterimage = hit_fx_create(sprite_get("afterimage"), 24);
fx_sonic = hit_fx_create( sprite_get("fx_sonic"), 18 );
vfx_magicquake = hit_fx_create( sprite_get("vfx_magicquake"), 16 );


// Variables
has_goku_beam = true;
doing_goku_beam = false;
beam_newest_hbox = noone;



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0.05;
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
dodge_recovery_frames   = 1;

// Tech
tech_active_frames      = 3;
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
roll_forward_active_frames      = 2;
roll_forward_recovery_frames    = 1;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 2;
roll_back_recovery_frames       = 1;

// Crouch
crouch_startup_frames   = 1;
crouch_active_frames    = 2;
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
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// BIG IRON MODE
bigiron = false;

// VOICE MODE
voices = false;
voice_vol = 0.7;

// Grab Mechanics
grabbed_id = noone;
ungrab_timer = 4;
extended_ungrab = 0;
grab_parried = false;
to_parry_wrap = false; // Used to pass into set_attack, because set_attack cant read windows for some reason

// Quake Mechanics
spr_quake = sprite_get("quake");
spr_quakemagic = sprite_get("quakemagic");

// Magic Mechanics
magic_charges = 0;
max_magic = 3;

// DEBUG
debug_text = false;
