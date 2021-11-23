/*
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES
// Physical size
char_height         = 64;       // cosmetic
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 6.5;		// 5    -  9
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
air_accel           = 0.35;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 6;		// 6    -  11
fast_fall           = 12;		// 11   -  16
gravity_speed       = 0.3;		// 0.3  -  0.6
hitstun_grav        = 0.45;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 8;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 3;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 20;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate
parry_stun_extra_time = 40 - prat_land_time; //since Unown doesnt have conventional pratland

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 6;		// 8    -  11

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 12;		// 24   -  40
walljump_time       = 18;		// 18   -  32
wall_frames         = 1;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 0;
dodge_recovery_frames   = 2;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 0;
air_dodge_recovery_frames   = 2;

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
hurtbox_spr         = sprite_get("hurtbox_D");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory")); // victory.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_ran"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = sound_get("empty"); //manually done (see animation.gml)

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//================================================================
// Custom grid indexes (use 70-79 range, not to disturb Rivals or Munophone)

AG_UNOWN_WINDOW_ACTIVE = 70; //set to TRUE to note an active window, first active window encountered will add the current letter to the buffer

//window length bonuses

//damage bonuses
//kb bonuses

//================================================================
// Animation
unown_eye_center_offset = 32; //positive means higher
empty_spr = asset_get("empty_sprite");

unown_airdodge_sfx = asset_get("sfx_quick_dodge");
unown_airdodge_vfx = 66;

//================================================================
// Balancing
unown_d_speed = 8;
unown_d_accel = 0.5;

//================================================================
// Forms
unown_form_data = [];
user_event(0); //initializes unown_form_data
unown_current_form = 4; // A = 1, B = 2, Z = 26, ! = 27, ? = 28
unown_looking_dir = 1; //spr_dir is often forced to 1, this is what controls unown's direction
unown_turning_timer = 0; //counts down
unown_turning_time_per_frame = 6;

prev_spr_dir = spr_dir;

//================================================================
// Levitation

//Parameters
lev_amplitude = 24; // total range of motion
lev_cycle_time = 40; //half a full up/down cycle

lev_airdodge_cooldown_max = 50;

uno_lev_height_min = 12;
uno_lev_height_mid = 24;
uno_lev_height_max = 32;
uno_lev_offset = 0; //depends on current form


//Flags
lev_bypass = false; //set to TRUE to avoid levitation for your attack
lev_is_grounded = true; //TRUE if close enough to ground to be considered landed
lev_pratland_timer = 0; //prevents exiting pratfall if above zero & "landed", ticks down when landed
lev_airdodge_cooldown = 0; //prevents parry from being spammed by not restoring airdodge immediately

// technical flags or derived from above
lev_state = 0; //0 aerial, 1 high-lev, 2 mid-lev, 3 low-lev
lev_state_timer = 0;
//physics precalculations
lev_target_vsp = (2.0 * lev_amplitude) / lev_cycle_time;
lev_target_accel = (2.0 * lev_target_vsp) / lev_cycle_time;

//================================================================
//attack flags
unown_i_angle = 90; //straight up
unown_i_prongs_spr = sprite_get("attack_I_prong");

unown_j_victim = noone;
unown_j_positions = []; //target positions for grab (see Hidden Power)

unown_t_times_through = 0; //number of loops made
unown_t_times_max = 3;

unown_u_bounced = false;

//================================================================
// Pokémon Teaches Typing
unown_text_buffer = "";
unown_text_maxlength = 16; //max number of characters on the buffer
unown_attack_is_fresh = false; //wether an attack is recent or not (if true, will add a letter when it reaches an active window)

unown_best_word_pos = 0;
unown_best_word_length = 0;

unown_dictionary = {}; //misnomer: actually a trie
with (oPlayer) if (self != other) && ("unown_dictionary" in self)
{ 
    with (other) print("taken from " + string(other.id));
    other.unown_dictionary = unown_dictionary;
    break;
}

//================================================================
// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);