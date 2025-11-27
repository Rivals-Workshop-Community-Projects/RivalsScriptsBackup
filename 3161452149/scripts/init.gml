/* STAT NOTES
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

// STAT NAME		    VALUE       BASECAST RANGE      NOTES

// Physical size
char_height             = 60;       //                  the height of the overhead hud - the arrow with your name and %
knockback_adj           = 1;		// 0.9  -  1.2

// Ground movement
walk_speed              = 3;		// 3    -  4.5
walk_accel              = 0.3;		// 0.2  -  0.5
walk_turn_time          = 6;		// 6
initial_dash_time       = 9;		// 8    -  16       zetterburn's is 14
initial_dash_speed      = 8;		// 4    -  9
dash_speed              = 7;		// 5    -  9
dash_turn_time          = 12;		// 8    -  20
dash_turn_accel         = 1.5;		// 0.1  -  2
dash_stop_time          = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.2;		// 0.25 -  0.5
ground_friction         = 0.6;		// 0.3  -  1
moonwalk_accel          = 1.4;		// 1.2  -  1.4

// Air movement
leave_ground_max        = 7;		// 4    -  8
max_jump_hsp            = 6;		// 4    -  8
air_max_speed           = 5;  		// 3    -  7
jump_change             = 3;		// 3
air_accel               = 0.3;		// 0.2  -  0.4
prat_fall_accel         = 0.95;		// 0.25 -  1.5
air_friction            = 0.02;		// 0.02 -  0.07
max_fall                = 8.5;		// 6    -  11
fast_fall               = 15;		// 11   -  16
gravity_speed           = 0.55;		// 0.3  -  0.6
hitstun_grav            = 0.45;		// 0.45 -  0.53

// Jumps
jump_start_time         = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed              = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 6.5;		// 4    -  7.4
djump_speed             = 10.5;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time    = 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps              = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp            = 7;		// 4    -  7
walljump_vsp            = 9;		// 7    -  10
land_time               = 4;		// 4    -  6
prat_land_time          = 15;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction           = 0.09;		// 0    -  0.15
wave_land_time          = 9;		// 6    -  12
wave_land_adj           = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 9;		// 9    -  11
roll_backward_max       = 9;		// 9    -  11       always the same as forward
air_dodge_speed         = 8;		// 7.5  -  8
techroll_speed          = 10.5;		// 8    -  11



// Animation Info
// Misc. animation speeds
idle_anim_speed         = 0.2;
crouch_anim_speed       = 0.1;
walk_anim_speed         = 0.2;
dash_anim_speed         = 0.25;
pratfall_anim_speed     = 0.25;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 1;
//a dan moment makes it so the last frame needs to be doubled, the strip actually has 3 frames but the last 2 are the same

// Jumps
double_jump_time        = 36;		// 24   -  40
walljump_time           = 18;		// 18   -  32
wall_frames             = 1;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 3;
dodge_recovery_frames   = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 2;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 2;
roll_back_recovery_frames       = 2;

// Tech
tech_active_frames      = 4;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = roll_forward_startup_frames;
techroll_active_frames      = roll_forward_active_frames;
techroll_recovery_frames    = roll_forward_recovery_frames;


// Hurtbox sprites
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = sprite_get("crouchbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr


// Victory
set_victory_bg(sprite_get("winscreen")); // sprites\winscreen.png - name doesn't matter, the size has to be 480 x 270 pixels big, usually has this puple filter on it
set_victory_theme(sound_get("music_win_father")); // sounds\mus_victory.ogg - leave some silence in the file after the victory theme finishes

alt_cur = get_player_color(player);

buddy_starko_sfx = sound_get("buddy_starko");
buddy_screenko_sprite = sprite_get("buddy_screenko");
// buddy_screenko_sfx = sound_get("buddy_screenko");
buddy_screenko_voice_sfx = sound_get("buddy_screenko_voice");
// buddy_starko_sprite = sprite_get("buddy_starko");

//sfx list
sfx_hit_heavy = asset_get("sfx_clairen_hit_strong");
sfx_hit_med = asset_get("sfx_clairen_hit_med");
sfx_hit_weak = asset_get("sfx_clairen_hit_weak");

sfx_tip_heavy2 = asset_get("sfx_clairen_tip_assist");
sfx_tip_heavy1 = asset_get("sfx_clairen_tip_strong");
sfx_tip_med = asset_get("sfx_clairen_tip_med");
sfx_tip_weak = asset_get("sfx_clairen_tip_weak");

sfx_poke_heavy = asset_get("sfx_clairen_poke_strong");
sfx_poke_med = asset_get("sfx_clairen_poke_med");
sfx_poke_weak = asset_get("sfx_clairen_poke_weak");
sfx_swipe_heavy = asset_get("sfx_clairen_swing_strong");
sfx_swipe_med = asset_get("sfx_clairen_swing_med");
sfx_swipe_weak = asset_get("sfx_clairen_swing_weak");

sfx_spin = asset_get("sfx_clairen_spin");

//venus
venus = noone;
dspecial_bounce = 1;

//clone
main_pl = self;
clone_pl = noone;
clone_inputs = [];
can_swap = 0;
spc_dodge = 0;
old_wint = 0;
/*
[up_pressed, up_down, right_pressed, right_down, left_pressed, left_down, down_pressed, down_down,
strong_down, up_strong_pressed, up_strong_down, right_strong_pressed, right_strong_down, left_strong_pressed, left_strong_down, down_strong_pressed, down_strong_down,
up_stick_pressed, up_stick_down, right_stick_pressed, right_stick_down, left_stick_pressed, left_stick_down, down_stick_pressed, down_stick_down,
up_hard_pressed, right_hard_pressed, left_hard_pressed, down_hard_pressed,
attack_pressed, attack_down, special_pressed, special_down, jump_pressed, jump_down, tap_jump_pressed, shield_pressed, shield_down, taunt_pressed, taunt_down]
*/

//Dedede Stadium
arena_title = "The Rival Lost To Time";

//Soulbound Conflict
battle_text = "* She looks really pissed off.";

//Reiga's The Knight
knight_compat_dream = 
    [
        "Damn Ayala and her damn workshop...",
        "Bringing in these freaks from god knows where...",
        "And this #%$@ing bug thing trying to read my mind..."
    ]

//Kirby Copy Ability

TCG_Kirby_Copy = 7;
