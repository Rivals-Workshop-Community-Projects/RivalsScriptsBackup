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
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 2.75;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 7.5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 5;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.5;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.02;		// 0.02 -  0.07
max_fall            = 9;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.4;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 8;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate
can_wall_cling      = true;

// Shield-button actions
wave_friction       = 0;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png
lantern = sprite_get("lantern");
lantern_flame = sprite_get("lantern_flame_1");
miiverse_post = sprite_get("miiverse_posts"); 

// SFX
woosh_1 = sound_get("woosh_1");

// VFX

vfx_knife_small = hit_fx_create(sprite_get("vfx_knife_small"), 16);
vfx_knife_med = hit_fx_create(sprite_get("vfx_knife_med"), 30);
vfx_knife_big = hit_fx_create(sprite_get("vfx_knife_big"), 30);
vfx_phlame_med= hit_fx_create(sprite_get("vfx_phlame_med"), 30);
vfx_lantern_large = hit_fx_create(sprite_get("vfx_lantern_large"), 20);

vfx_soul_trail = hit_fx_create(sprite_get("vfx_soul_trail"), 10);

install_background_sprite = sprite_get("9216_white_pixels");

// Variables
has_goku_beam = true;
doing_goku_beam = false;
beam_newest_hbox = noone;

enemy_pratfall_timer = 0;
hit_dspecial = false;

lantern_x = x+(48*spr_dir);
lantern_y = y;
lantern_anim_timer = 0;
using_lantern_move = false;

lantern_charge = 0;
lantern_charge_max = 90;
lantern_level = 1;

lantern_charge_visual = 0;

install_background_anim_timer = 0;
install_background_anim_max = 6;

//sets the colors for phantom mode
mask_r = get_color_profile_slot_r(get_player_color(player), 4);;
mask_g = get_color_profile_slot_g(get_player_color(player), 4);;
mask_b = get_color_profile_slot_b(get_player_color(player), 4);;
mask_shade_r = get_color_profile_slot_r(get_player_color(player), 5);
mask_shade_g = get_color_profile_slot_g(get_player_color(player), 5);;
mask_shade_b = get_color_profile_slot_b(get_player_color(player), 5);;
knife_r = get_color_profile_slot_r(get_player_color(player), 6);;
knife_g = get_color_profile_slot_g(get_player_color(player), 6);;
knife_b = get_color_profile_slot_b(get_player_color(player), 6);;
knife_shade_r = get_color_profile_slot_r(get_player_color(player), 7);
knife_shade_g = get_color_profile_slot_g(get_player_color(player), 7);;
knife_shade_b = get_color_profile_slot_b(get_player_color(player), 7);;

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.2;
dash_anim_speed     = 0.4;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 20;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 1;		// may or may not actually work... dan pls
clingtime = 0;

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 2;

// Tech
tech_active_frames      = 7;
tech_recovery_frames    = 3;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 6;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 6;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 6;
roll_back_recovery_frames       = 3;

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
hurtbox_spr         = sprite_get("idle_hurtbox");
crouchbox_spr       = sprite_get("crouch_hurtbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_ran"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Barney stuff, this keeps track of knife properties when it's being thrown
knife_hit = false;
knife_x = 0;
knife_y = 0;
knife_obj = 0;
knife_travel_time = 0;
has_wall_hooked = false;

// Adjust these to change the properties of FSPECIAL
fspecial_angle_minimum = -45 // Bottom end regardless of direction, assume 0 is straight forward, positive values angle up
fspecial_angle_maximum = 45 // Top end regardless of direciton, assume 0 is straight forward, positive values angle up

fspecial_travel_speed = 24 // Speed while flinging towards an enemy
fspecial_end_hsp = 2
fspecial_end_vsp = -6

fspecial_travel_time_max = 30 // Time before the failsafe activates

// More Barney stuff, these are adjustable install props
install_timer_max = 600; // Measured in frames
install_phantom_delay = 3; // How many frames the install lags behind
install_phantom_skin_index = 4; // What base colour the phantom uses
install_phantom_fade_time = 8; // How many frames the phantom fades after an attack
install_forbidden_attacks = [ // Stops the phantom from mirroring certain attacks, use if there's serious technical problems with certain attacks
    AT_DSPECIAL,
    AT_NSPECIAL
]
install_afterimage_offset_max = 16;
install_afterimage_offset_min = 6;
install_afterimage_skin_index = 4; // What base colour the afterimages use
install_afterimage_alpha = 0.4;

install_timer_max_old = install_timer_max;//for the munophone cheat

// Non-adjustable lantern install props
install_active = false; // mechanical
install_timer = 0;
install_timer_visual = 0;

// Non-adjustable install phantom stuff
install_phantom_history_pointer = 0;
install_phantom_history_positions = array_create(install_phantom_delay, -1);
install_phantom_x = 0;
install_phantom_y = 0;
install_phantom_history_hitboxes = array_create(install_phantom_delay, -1);
install_phantom_history_sprites = array_create(install_phantom_delay, -1); // visual
install_phantom_sprite = 0;
install_phantom_frame = 0;
install_phantom_spr_dir = 1;
install_phantom_rotation = 0;
install_phantom_alpha = 0;

// dspecial stun stuff
dspecial_stun_timer_max = 60; // failsafe in case the player falls off the stage or something
dspecial_stun_timer = 0;
dspecial_stun_target = 0;

// nspecial thrown lantern stuff
// don't include nspecial in this list cuz it'll make it weird
lantern_attacks = [
    AT_DSTRONG,
    AT_FTILT,
    AT_DSPECIAL,
    AT_BAIR
]

// lantern article props
nspecial_lantern_velocity = 22 // it's setup like this instead of just a flat trajectory so we have more control over the curve
nspecial_lantern_decel = 1 // measured in pixels per frame
nspecial_lantern_spawn_x = 40
nspecial_lantern_spawn_y = -30
// different logic to fspecial, this is just a flat up/down angle adjustment, not too much reason to have the fine control of fspecial
nspecial_angle_minimum = -30
nspecial_angle_maximum = 30

// nspecial props
// maybe don't enable both at once
nspecial_instant_recall = true // if true, non-nspecial lantern moves will instantly recall lantern
nspecial_restrict_attacks = false // if true, lantern moves are unavailable while it's active

// non-adjustable nspecial stuff
nspecial_lantern_active = false // affects both gameplay & draw logic
nspecial_current_lantern = 0
nspecial_lantern_has_hooked = false

// soul stuff
soul_collect_sound = asset_get("mfx_xp")
soul_collect_volume = 0.6
soul_collect_pitch = 3
soul_trail_sprite_count = 3
soul_trail_random_offset = 10

// non-adjustable soul stuff (jank!!!)
soul_trail_temp_x = []
soul_trail_temp_y = []
soul_trail_temp_length = 0
soul_trail_temp_scale = 0

// permanent value for coldwin, lets him hook his opponent's lantern in the ditto
i_am_coldwin = true
with (oPlayer) {
    if "i_am_coldwin" not in self {
        i_am_coldwin = false
    }
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);