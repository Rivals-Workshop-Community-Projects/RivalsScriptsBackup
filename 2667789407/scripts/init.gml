/*
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES
// Physical size
char_height         = 64;       // cosmetic
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement (obsolete)
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
leave_ground_max    = 9;		// 4    -  8
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
wave_friction       = 0;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 2;		// 1.2  -  1.5      idk what zetterburn's is
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

//window bonuses

//hitbox bonuses
HG_UNOWN_DAMAGE_BONUS = 70;
HG_UNOWN_KNOCKBACK_BONUS = 71;
HG_UNOWN_SCALING_BONUS = 72;

//================================================================
// Animation
unown_eye_center_offset = 32; //positive means higher
empty_spr = asset_get("empty_sprite");

unown_airdodge_sfx = asset_get("sfx_quick_dodge");
unown_airdodge_vfx = 66;

unown_fastfall_vfx = hit_fx_create( asset_get("fx_fastfall_bg"), 12 );

sfx_unown_buff_up = asset_get("sfx_ell_arc_taunt_start");
sfx_unown_buff_down = asset_get("sfx_ell_arc_taunt_end");

vfx_hiddenpower_spr = sprite_get("vfx_hiddenpower")
hitfx_hiddenpower = hit_fx_create(vfx_hiddenpower_spr, 24);

inward_hidden_power_timer = 0;
inward_hidden_power_timer_max = 2 * 17;
inward_hidden_power_fast = false; //use to set 2x speed of effect

hidden_power_strength_vfx = 0; //1, 2, 3 to have a hitfx appear to communicate range of hidden power

vfx_snow_twinkle = hit_fx_create(sprite_get("vfx_snow_twinkle"), 6); //if it aint broke...

//================================================================
// Balancing
unown_d_speed = 8;
unown_d_accel = 0.5;

unown_n_cooldown = 40;
unown_n_invincibility = 50;

unown_maxspeed_base = air_max_speed;
//Word buffer stat bonuses
unown_maxspeed_bonus = 1.0;
unown_kbadjust_bonus = -0.1;
unown_accel_bonus = 0.1;

//================================================================
// Forms
unown_form_data = [];
user_event(0); //initializes unown_form_data
unown_current_form = 4; // A = 1, B = 2, Z = 26, ! = 27, ? = 28
unown_looking_dir = 1; //spr_dir is often forced to 1, this is what controls unown's direction
unown_turning_timer = 0; //counts down
unown_turning_time_per_frame = 6;

prev_spr_dir = spr_dir;

//initialize form
var stage_id = get_stage_data(SD_ID);
if (is_string(stage_id)) 
{ 
    stage_id = string_digits(stage_id);
    stage_id = (string_length(stage_id) > 0 ? real(stage_id) : 0)
}
unown_current_form = 1 + random_func((player + stage_id) % 24, 28, true);

hurtbox_spr = unown_form_data[unown_current_form].hurtbox;

//================================================================
// Levitation

//Parameters
lev_amplitude = 24; // total range of motion
lev_cycle_time = 40; //half a full up/down cycle

lev_parry_cooldown_max = 50;

uno_lev_height_min = 12;
uno_lev_height_mid = 24;
uno_lev_height_max = 36;
uno_lev_offset = 0; //depends on current form

//Flags
lev_bypass = false; //set to TRUE to avoid levitation for your attack
lev_is_grounded = true; //TRUE if close enough to ground to be considered landed
lev_pratland_timer = 0; //prevents exiting pratfall if above zero & "landed", ticks down when landed
lev_parry_cooldown = 0; //prevents parry from being spammed by not restoring airdodge immediately

// technical flags or derived from above
lev_state = 0; //0 aerial, 1 high-lev, 2 mid-lev, 3 low-lev
lev_state_timer = 0;
//physics precalculations
lev_target_vsp = (2.0 * lev_amplitude) / lev_cycle_time;
lev_target_accel = (2.0 * lev_target_vsp) / lev_cycle_time;

//================================================================
//attack flags

unown_c_used = false; //once per airtime

unown_i_angle = 90; //straight up
unown_i_prongs_spr = sprite_get("attack_I_prong");

unown_j_victim = noone;
unown_j_positions = []; //target positions for grab (see Hidden Power)

unown_t_times_through = 0; //number of loops made
unown_t_times_max = 3;

unown_u_bounced = false;

//position of water spout (timer counts down)
unown_y_waterhitbox = noone;
unown_y_water = { tip_x:0, tip_y:0, start_x:0, start_y:0, index:0, timer:0 }; 
unown_y_waterstart_spr = sprite_get("attack_Y_waterstart");
unown_y_waterbeam_spr = sprite_get("attack_Y_waterbeam");
unown_y_watertip_spr = sprite_get("attack_Y_watertip");
unown_y_water_active_frames = 4;
unown_y_water_active_time = 20;
unown_y_water_dying_frames = 2;
unown_y_water_dying_time = 10;

//================================================================
// Pokémon Teaches Typing
unown_text_buffer = "";
unown_text_maxlength = 16; //max number of characters on the buffer
unown_attack_is_fresh = false; //wether an attack is recent or not (if true, will add a letter when it reaches an active window)
unown_diagonal_leniency = 0; //if above zero, allows switching to diagonals when using cardinal attacks
unown_diagonal_leniency_max = 2;

unown_best_word_pos = 0;
unown_best_word_length = 0;
unown_current_bonus = 0;

//unown_word_length_bonus[3] = scale of bonus for a 3-letter word in the buffer
unown_word_length_bonus = [0, 0, 0.20, 0.40, 0.60, 0.75, 0.90, 1.0, 1.05, 1.10, 1.15, 1.20, 1.25];
unown_letter_exclamation_bonus = 0.015; //added bonus for using "!" for each additional letter not in a word
unown_recalculate_stats = true; //set to true to let passive buffs recalculate (needed at the start to init the forms)

unown_dictionary = {}; //misnomer: actually a trie
unown_collect_dictionary_entries = true;
with (oPlayer) if (self != other) && ("unown_dictionary" in self)
{ 
    with (other) print("dictionary copied from P" + string(other.player));
    other.unown_dictionary = unown_dictionary;
    other.unown_collect_dictionary_entries = false;
    break;
}

//================================================================
// Compatibilities

//Pokémon Stadium
pkmn_stadium_front_img = sprite_get("cmp_stadium_front");
pkmn_stadium_back_img = sprite_get("cmp_stadium_back");

//================================================================
// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);