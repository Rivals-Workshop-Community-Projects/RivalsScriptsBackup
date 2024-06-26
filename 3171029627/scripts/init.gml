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
char_height         = 90;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.9;		// 0.9  -  1.2

// Ground movement
walk_speed          = 1;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 5;		// 4    -  9
dash_speed          = 4.5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 4;		// 4    -  8
max_jump_hsp        = 4;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 9;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.1;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 6;		// 6    -  12
wave_land_adj       = 1.2;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 8;		// 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.145;
dash_anim_speed     = 0.145;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 4;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 4;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;

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
hurtbox_spr         = sprite_get("triangle_hurtbox");
crouchbox_spr       = sprite_get("triangle_crouch_hurtbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("sh_victory_bg")); // victory_background.png
set_victory_theme(sound_get("sh2_static")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_fors"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

uspecial_vfx1 = hit_fx_create(sprite_get("uspecial_vfx1"), 25);
uspecial_vfx2 = hit_fx_create(sprite_get("uspecial_vfx2"), 15);
torment_break1 = hit_fx_create(sprite_get("torment_break1"), 15);
torment_break2 = hit_fx_create(sprite_get("torment_break2"), 15);
torment_break3 = hit_fx_create(sprite_get("torment_break3"), 15);
hfx_sword_small = hit_fx_create(sprite_get("hfx_sword_small"), 32);
hfx_sword_medium = hit_fx_create(sprite_get("hfx_sword_medium"), 32);
hfx_sword_large = hit_fx_create(sprite_get("hfx_sword_large"), 32);
hfx_torment_tiny = hit_fx_create(sprite_get("hfx_torment_tiny"), 32);
hfx_torment_small = hit_fx_create(sprite_get("hfx_torment_small"), 32);
hfx_torment_large = hit_fx_create(sprite_get("hfx_torment_large"), 32);
vfx_spear_break_head = hit_fx_create(sprite_get("spear_fragment_1"), 90);
vfx_spear_break_shaft = hit_fx_create(sprite_get("spear_fragment_2"), 90);

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Gameplay Stuff
walk_sparks = false;
walk_sparks_cont = 0;
dash_sparks = false;
dash_sparks_cont = 0;
step_sound = 0;
step_sound_prev = -1;

bair_stuck = 0;
dest_x = x;
current_x = x;

torment_opponent = noone;
torment = noone;

fspecial_multihit = 0;
fspecial_timer = -1;
fspecial_armor = false;
keep_image_index = 0;
keep_state_timer = 0;
keep_spr_dir = 0;
keep_window_timer = 0;
keep_window = 0;

dspecial_grab = false;
opponent_damage = 0;

AG_ACTIVE_WINDOW = 30 //custom index - makes sure that torment armor doesn't last into endlag

//Intro & James variables
intro_front = sprite_get("intro_front");
james_sprite = sprite_get("james_intro");
james_intro = 60;
james_frame = 0;
james_x_start = x+40*spr_dir;
james_y_start = y;
james_x = 0;
james_y = 0;
james_taunt_window = 4;

//Intro Variables
introTimer = -(1 + player);
introTimer2 = 0;
introAnimFrameLength = 5;