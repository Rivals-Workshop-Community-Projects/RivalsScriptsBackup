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

// STAT NAME        VALUE       BASECAST RANGE   NOTES

// Physical size
char_height         = 52;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1;        // 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;     // 3    -  4.5
walk_accel          = 0.2;      // 0.2  -  0.5
walk_turn_time      = 6;        // 6
initial_dash_time   = 8;        // 8    -  16       zetterburn's is 14
initial_dash_speed  = 7;        // 4    -  9
dash_speed          = 6.5;      // 5    -  9
dash_turn_time      = 10;       // 8    -  20
dash_turn_accel     = 1.5;      // 0.1  -  2
dash_stop_time      = 6;        // 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;     // 0.25 -  0.5
ground_friction     = 0.5;      // 0.3  -  1
moonwalk_accel      = 1.3;      // 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;        // 4    -  8
max_jump_hsp        = 6;        // 4    -  8
air_max_speed       = 4;        // 3    -  7
jump_change         = 3;        // 3
air_accel           = 0.3;      // 0.2  -  0.4
prat_fall_accel     = 0.85;     // 0.25 -  1.5
air_friction        = 0.04;     // 0.02 -  0.07
max_fall            = 10;       // 6    -  11
fast_fall           = 14;       // 11   -  16
gravity_speed       = 0.6;      // 0.3  -  0.6
hitstun_grav        = 0.5;      // 0.45 -  0.53

// Jumps
jump_start_time     = 5;        // 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 12;       // 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 7;        // 4    -  7.4
djump_speed         = 11;       // 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;        // 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 6;        // 4    -  7
walljump_vsp        = 10;        // 7    -  10
land_time           = 4;        // 4    -  6
prat_land_time      = 18;       // 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;     // 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;        // 6    -  12
wave_land_adj       = 1.3;      // 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_dbfz_kame_charge = sound_get("ARC_BTL_GKN_Kamehame_Chrg");
sfx_dbfz_kame_fire = sound_get("ARC_BTL_GKN_Kamehame_Fire");
sfx_dbfz_hit_weak = sound_get("ARC_BTL_CMN_Hit_Small-A");
sfx_dbfz_hit_broken = sound_get("ARC_BTL_CMN_Hit_XLarge");
sfx_dbfz_hit_jab3 = sound_get("ARC_BTL_GKN_Atk5A_3rd_Hit");

// VFX
vfx_ftilt_destroy = hit_fx_create(sprite_get("vfx_ftilt_destroy"), 12); // actually for nspecial, not ftilt
vfx_nspecial_fire = hit_fx_create(sprite_get("vfx_nspecial_fire"), 16);

// Variables
can_wall_cling = true;
has_goku_beam = true;
doing_goku_beam = false;
beam_newest_hbox = noone;
attacking = false;
free_time = 0;
not_free_time = 0;
sound_playing = noone;
paused = false;
trail_1 = false; // Whether or not the first trail is currently active
trail_2 = false; // Whether or not the second trail is currently active
trail_1_draw = false; // Whether or not trail 1 should draw
trail_2_draw = false; // Whether or not trail 2 should draw
trail_1_pos = [[noone, noone], [noone, noone], [noone, noone], [noone, noone]]; // The position of the first trail (last 2 frames)
trail_2_pos = [[noone, noone], [noone, noone], [noone, noone], [noone, noone], [noone, noone], [noone, noone], [noone, noone], [noone, noone]]; // The position of the second trail (last 4 frames)
var empty = asset_get("empty_sprite");
trail_1_index = [[empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0]]; // The sprite and image index (+ spr_dir) of trail 1 (last 2 frames)
trail_2_index = [[empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0]]; // The sprite and image index (+ spr_dir) of trail 2 (last 4 frames)empty_trail_2_index = []; // What trail 2 looks like when it's empty
trail_1_gone = 0; // How many frames trail 1 has been disappearing for
trail_2_gone = 0; // How many frames trail 2 has been disappearing for
trail_1_colour = c_white; // The colour of trail 1
trail_2_colour = c_red; // The colour of trail 2
has_fspecialed = false;
fspecial_aerial = false;
has_uppercutted = false;
walljumping_frames = 0;
cling_timer = 0;
wall_climbing = false;
wall_climb_timer = 0;
ledge_snapped = false;
ledge_getup_timer = 0;
dig_timer = 0;
drill_timer = 0;
mound_1 = noone;
mound_2 = noone;
entered_mound = 0;

//**** CHANGEABLE VARIABLES
knuckles_soft_armor = 6;
glide_speed = 7;
glide_fall_speed = 1;
glide_landing_lag_time = 4;
glide_jump_speed = 6;
glide_turn_speed = 0.58;
wall_cling_time = 90; // How many frames before you are kicked off of wall
wall_climb_speed = 2;
wall_climb_anim_frames = 9; // Animation frames
wall_climb_frames = 45; // In game frames
wall_climb_idle_frame = 10;
wall_jump_anim_frames = 5;
max_climb_height = 64; // How many pixels above the bottom of your sprite you should switch to climb up a ledge
ledge_getup_frame_start = 17;
ledge_getup_anim_frames = 4; // Animation frames
ledge_getup_frames = 16; // In game frames
getup_distance = 20; // How far, horizontally, knuckles appears after ledge getup
climb_dust_frequency = 9; // How often (in frames) the dust appears while climbing
meter_visible = true; // Whether or not the wallclimb meter should show up
dig_speed = 8;
dig_max_time = 40; // How long knuckles can dig for
drill_cancel_time = 30; // How many frames until the drill can be cancelled
mound_speed = 17; // How fast you travel between mounds
mound_closeness = 40; // How close you need to be to a mound to get in it
mound_max = 120; // How long you have to be chasing a mound before the game considers it a lost cause and just uppercuts you
orig_mound1 = noone;
orig_mound2 = noone;

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.21;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 40;       // 24   -  40
walljump_time       = 30;       // 18   -  32
wall_frames         = 2;        // may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 3;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 3;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 2;
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

//SFX List
sfx_airdodge = sound_get("sfx_airdodge")
sfx_djump = sound_get("sonic_jump");
sfx_jump = sound_get("sonic_djump")
sfx_waveland = sound_get("sfx_waveland")

// Hurtbox sprites
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Compatability 
TCG_Kirby_Copy = 14;
arena_title = "The Echidna Warrior";
Hikaru_Title = "Revamped Gem Thief";
gfzsignspr = sprite_get("signknux")
resort_portrait = sprite_get("portrait_knuckles")

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound = sfx_waveland
jump_sound = sfx_jump
djump_sound         = sfx_djump;
air_dodge_sound = sfx_airdodge

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;



// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);