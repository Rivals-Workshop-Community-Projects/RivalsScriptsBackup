// init is a script that creates variables when the player is created on the stage.
/*
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

// Physical size
char_height         = 60;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.9;		// 0.9  -  1.2

// Ground movement
walk_speed          = 2.5;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 10;		// 8    -  16
initial_dash_speed  = 5;		// 4    -  9
dash_speed          = 5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 0.5;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.7;		// 0.3  -  1
moonwalk_accel      = 1.2;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 5.5;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.35;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.03;		// 0.02 -  0.07
max_fall            = 7;		// 6    -  11
fast_fall           = 12;		// 11   -  16
gravity_speed       = 0.4;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 9;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = -1;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = -1;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel reund on your char's gravity
djump_accel_end_time= 14;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11

//backup stats for stat switching
reun_walk_speed          = 2.5;		// 3    -  4.5
reun_walk_accel          = 0.2;		// 0.2  -  0.5
reun_walk_turn_time      = 6;	    // 6
reun_initial_dash_time   = 10;		// 8    -  16
reun_initial_dash_speed  = 5;		// 4    -  9
reun_dash_speed          = 5;		// 5    -  9
reun_dash_turn_time      = 10;		// 8    -  20
reun_dash_turn_accel     = 0.5;		// 0.1  -  2
reun_dash_stop_time      = 4;		// 4    -  6
reun_dash_stop_percent   = 0.35;		// 0.25 -  0.5
reun_ground_friction     = 0.7;		// 0.3  -  1
reun_moonwalk_accel      = 1.2;

reun_leave_ground_max    = 6;		// 4    -  8
reun_max_jump_hsp        = 6;		// 4    -  8
reun_air_max_speed       = 5.5;  		// 3    -  7
reun_jump_change         = 3;		// 3
reun_air_accel           = 0.35;		// 0.2  -  0.4
reun_prat_fall_accel     = 0.85;		// 0.25 -  1.5
reun_air_friction        = 0.03;		// 0.02 -  0.07
reun_max_fall            = 7;		// 6    -  11
reun_fast_fall           = 12;		// 11   -  16
reun_gravity_speed       = 0.4;		// 0.3  -  0.6
reun_hitstun_grav        = 0.5;

reun_jump_start_time     = 4;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
reun_jump_speed          = 9;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
reun_short_hop_speed     = 6;		// 4    -  7.4
reun_djump_speed         = -1;		// 6    -  12       absa's is -1 because of her floaty djump
reun_djump_accel         = -1;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel reund on your char's gravity
reun_djump_accel_end_time= 14;        //                  the amount of time that   djump_accel   is applied for
reun_max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
reun_walljump_hsp        = 7;		// 4    -  7
reun_walljump_vsp        = 8;		// 7    -  10
reun_land_time           = 4;		// 4    -  6
reun_prat_land_time      = 10;

// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_example = sound_get("example"); // sounds/example.ogg

vfx_example = hit_fx_create(spr_example, 54);

// Variables
TRICKROOM_OWNER_ID = noone
trickroom_active = false
trickroom_timer = 0

// nspecial - Future Sight
//fs_deployed = false;
fs_x = 0;
fs_y = 0;
fs_charge = 0;
fs_charge_max = 2 * 30;    // Charging time needed to make biggest explosion
fs_countdown_min = 2 * 30; // Delay before smallest explosion detonates automatically
fs_countdown_max = 6 * 30; // This + min above = delay before largest explosion detonates automatically

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 30;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 3;
dodge_recovery_frames   = 2;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 2;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 2;
air_dodge_active_frames     = 2;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 1;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 1;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 3;
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

// Misc. mechanics
gravity_instance = noone;
accrued_gravity_time = 0;
min_gravity_time = 12; // Should be slightly larger than time to reach intermediate radius
max_gravity_time = 120;
// 'Current' sound cancelled under certain conditions or on hit/KO
current_sound_effect = noone;

// Focus Blast (fspecial)
current_focus_blast = noone;
focus_blast_charged = false;
focus_blast_half_charged = false;
fspecial_half_charged_time = get_window_value(attack, window, AG_WINDOW_LENGTH) / 2;

// Psyshock (dspecial)
psyshock_rise_duration = 1.5 * 60;
psyshock_travel_duration = 1.5 * 60;
psyshock_rise_speed = 0.5;
psyshock_travel_speed = 10;
// Won't seek targets beyond this range
psyshock_max_seeking_range = 300;
// Aim a little higher so we don't always aim at target's feet
psyshock_foot_offset = 17;
// Rune for second projectile
psyshock_additional_projectile = has_rune("A");
// Allow attack to be looped
psyshock_looping_enabled = has_rune("C");
// Allow attack to be used while a projectile exists?
//psyshock_allow_reuse = true;
// Cooldown between uses
psyshock_cooldown = 90;

// Stored Power (uspecial)
// Rune for extra dash
stored_power_additional_dash = has_rune("B");
// Number of dashes that can be done in a single usage of uspecial
stored_power_max_dashes = stored_power_additional_dash ? 3 : 2;
// If this is true, additional dashes are only done if the joystick
// is pointing in a different direction than the previous dash.
stored_power_redirection_required = true;
// Only set this speed for horizontal/vertical.
// Other vector components are computed automatically expecting 45-degree increments.
stored_power_dash_speed = 7;
// Same thing, but for projectile
stored_power_proj_speed = 2;
// Cooldown between uses
stored_power_cooldown = 90;
// Do not adjust these
stored_power_next_dash_selected = true;
stored_power_remaining_dashes = stored_power_max_dashes;
stored_power_chosen_angle = 0;
stored_power_chosen_angle_prev = 0;
stored_power_next_angle_locked_in = false;
// I know these are the same because we assume a 45 degree angle, but I want a central hook in case we change our minds
stored_power_angular_dash_speed_x = stored_power_dash_speed / sqrt(2);
stored_power_angular_dash_speed_y = stored_power_dash_speed / sqrt(2);
stored_power_angular_proj_speed_x = stored_power_proj_speed / sqrt(2);
stored_power_angular_proj_speed_y = stored_power_proj_speed / sqrt(2);

// Hurtbox sprites
hurtbox_spr         = sprite_get("hurtbox");
crouchbox_spr       = sprite_get("churtbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("reunvictory")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_ran"); // recommended to try out all 14 reun cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;