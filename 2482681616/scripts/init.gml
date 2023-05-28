hurtbox_spr = sprite_get("hurt_box");
crouchbox_spr = sprite_get("crouch_hurt_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 112;
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .18;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 4;
dash_speed = 5;
dash_turn_time = 18;
dash_turn_accel = 1;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 1;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7.4;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .07;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .6;
hitstun_grav = .53;
knockback_adj = 0.9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 6;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .12; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_kra");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//local variables
idle_timer = 0;
training_toggle = 0;
step_sound = 0;
nspecial_ground_y = y; 

spawn_y = y;
spawn_x = x;
can_spawn = false;
can_spawn_side = false;
//mask_index = sprite_get("mask");

//Grab template
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.
fspecial_ground_dist = 0;
uspecial_wall_times = 0;
uspecial_wall_times_max = 999;
uspecial_wall_timer = 0;
uspecial_wall_timer_max = 300;
wall_player_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
wall_player_xoffset = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
wall_climb_dir = 1;
sp_ind = asset_get("empty_sprite");

//Hit FX
fx_fstrong_debris = hit_fx_create(sprite_get("fstrong_debris"), 16)

//Slow Start passive
//States
SLOWSTART_STATE_OFF = 0;
SLOWSTART_STATE_ON = 1;

old_slowstart_state = SLOWSTART_STATE_OFF;
slowstart_state = SLOWSTART_STATE_ON;

slowstart_damage_mult = 0.75; //Slow Start's damage multiplier (Apply to damage)
slowstart_knockback_mult = 0.7; //Slow Start's KB multiplier (Apply to KB)
slowstart_knockbackscale_mult = 0.7; //Slow Start's KBS multiplier (Apply to KBS)
slowstart_hitstop_sub = 3; //Slow Start's KBS multiplier (Apply to KBS)
slowstart_movement_mult = 0.75; //Slow Start's movement multiplier (Apply to stats)

slowstart_duration = (has_rune("N") ? 10 : 60) * 60; //Duration of Slow Start (in frames)
slowstart_timer = slowstart_duration;

slowstart_stateffect_duration = 60;
slowstart_stateffect_timer = -1;
slowstart_stateffect_alpha = 0;
slowstart_stateffect_bg = sprite_get("statchange_bg");
slowstart_stateffect_bgdir = -1;

//Affected variables
def_walk_speed = walk_speed;
def_initial_dash_speed = initial_dash_speed;
def_dash_speed = dash_speed;
def_dash_turn_time = dash_turn_time;
def_moonwalk_accel = moonwalk_accel;

def_max_jump_hsp = max_jump_hsp;
def_air_max_speed = air_max_speed;
def_jump_change = jump_change;
def_air_dodge_speed = air_dodge_speed;
def_roll_forward_max = roll_forward_max;
def_roll_backward_max = roll_backward_max;
def_max_fall = max_fall;

// UI
SLOWSTART_BAR_BG_COLOR[SLOWSTART_STATE_ON] = make_colour_rgb(255, 255, 255);  // Colour for on state
SLOWSTART_BAR_BG_COLOR[SLOWSTART_STATE_OFF] = make_colour_rgb(106, 106, 106);    // Colour for off state
SLOWSTART_BAR_COLOR = make_colour_rgb(67, 203, 255);  // Colour for on state

slowstart_ui_bg = sprite_get("slowstartbar_bg");
slowstart_ui_bar = sprite_get("slowstartbar");
slowstart_ui_powerdown = sprite_get("power_down_hud");

//Victory
set_victory_theme(sound_get("sfx_victory"));
set_victory_bg(sprite_get("victory_bg"));

//Big runes
if (has_rune("O")) {
    instance_create(round(x), round(y), "obj_article1");
}

/*
╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Compatibility			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝
*/

//Hikaru
Hikaru_Title = "Legendary Titan";
//Mt. Dedede
arena_title = "The Legendary Titan";
//Soulbound Conflict
battle_text = "* Something big blocks the way."
//Pokemon Stadium
pkmn_stadium_front_img = sprite_get("pkmn_stadium_front_image");
pkmn_stadium_back_img = sprite_get("pkmn_stadium_back_image");

//Dracula
dracula_portrait = sprite_get("empty_sprite");
dracula_portrait2 = asset_get("empty_sprite");
var page = 0;
dracula_speaker[page] = 0;
dracula_text[page] = "...";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "Is this about that temple I destroyed?";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "[taunt]";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "So be it then.";
page++;

initIndexes();

//Below code from MunoPhone API.
#define initIndexes()

// Custom indexes

AT_PHONE = 40;

i = 80;

// NOTE: All overrides for the frame data guide should be strings. Any non-applicable (N/A) values should be entered as "-"

// General Attack Indexes
AG_MUNO_ATTACK_EXCLUDE = i; i++;		// Set to 1 to exclude this move from the list of moves
AG_MUNO_ATTACK_REFRESH = i; i++;		// Set to 1 to refresh this move's data every frame while the frame data guide is open
AG_MUNO_ATTACK_NAME = i; i++;			// Enter a string to override move name
AG_MUNO_ATTACK_FAF = i; i++;			// Enter a string to override FAF
AG_MUNO_ATTACK_ENDLAG = i; i++;			// Enter a string to override endlag
AG_MUNO_ATTACK_LANDING_LAG = i; i++;	// Enter a string to override landing lag
AG_MUNO_ATTACK_MISC = i; i++;			// Enter a string to OVERRIDE the move's "Notes" section, which automatically includes the Cooldown System and Misc. Window Traits found below
AG_MUNO_ATTACK_MISC_ADD = i; i++;		// Enter a string to ADD TO the move's "Notes" section (preceded by the auto-generated one, then a line break)

// Adding Notes to a move is good for if a move requires a long explanation of the data, or if a move overall has certain behavior that should be listed such as a manually coded cancel window

// General Window Indexes
AG_MUNO_WINDOW_EXCLUDE = i; i++;		// 0: include window in timeline (default)    1: exclude window from timeline    2: exclude window from timeline, only for the on-hit time    3: exclude window from timeline, only for the on-whiff time
AG_MUNO_WINDOW_ROLE = i; i++;			// 0: none (acts identically to AG_MUNO_WINDOW_EXCLUDE = 1)   1: startup   2: active (or BETWEEN active frames, eg between multihits)   3: endlag
AG_MUNO_ATTACK_USES_ROLES = i; i++;		// Must be set to 1 for AG_MUNO_WINDOW_ROLE to take effect

// If your move's windows are structured non-linearly, you can use AG_MUNO_WINDOW_ROLE to force the frame data system to parse the window order correctly.

// Cooldown System (do this instead of manually setting in attack_update, and cooldown/invul/armor will automatically appear in the frame data guide)
AG_MUNO_ATTACK_COOLDOWN = i; i++;		// Set this to a number, and the move's move_cooldown[] will be set to it automatically. Set it to any negative number and it will refresh when landing, getting hit, or walljumping. (gets converted to positive when applied)
AG_MUNO_ATTACK_CD_SPECIAL = i; i++;		// Set various cooldown effects on a per-attack basis.
AG_MUNO_WINDOW_CD_SPECIAL = i; i++;		// Set various cooldown effects on a per-window basis.
AG_MUNO_WINDOW_INVUL = i; i++;			// -1: invulnerable    -2: super armor    above 0: that amount of soft armor

/*
 * AG_MUNO_ATTACK_CD_SPECIAL values:
 * - 1: the cooldown will use the phone_arrow_cooldown variable instead of move_cooldown[attack], causing it to display on the overhead player indicator; multiple attacks can share this cooldown.
 * - 2: the cooldown will use the phone_invis_cooldown variable instead of move_cooldown[attack], which doesn't display anywhere (unless you code your own HUD element) but does allow you to share the cooldown between moves.
 * 
 * AG_MUNO_WINDOW_CD_SPECIAL values:
 * - 1: a window will be exempted from causing cooldown. It is HIGHLY RECOMMENDED to do this for any startup windows, so that the cooldown doesn't apply if you're hit out of the move before being able to use it.
 * - 2: a window will reset the cooldown to 0.
 * - 3: a window will set cooldown only if the has_hit	      variable is false, and set it to 0 if has_hit        is true.
 * - 4: a window will set cooldown only if the has_hit_player variable is false, and set it to 0 if has_hit_player is true.
 */

i = 80;

HG_MUNO_HITBOX_EXCLUDE = i; i++;		// Set to 1 to exclude this hitbox from the frame data guide
HG_MUNO_HITBOX_NAME = i; i++;			// Enter a string to override hitbox name

HG_MUNO_HITBOX_ACTIVE = i; i++;			// Enter a string to override active frames
HG_MUNO_HITBOX_DAMAGE = i; i++;			// Enter a string to override damage
HG_MUNO_HITBOX_BKB = i; i++;			// Enter a string to override base knockback
HG_MUNO_HITBOX_KBG = i; i++;			// Enter a string to override knockback growth
HG_MUNO_HITBOX_ANGLE = i; i++;			// Enter a string to override angle
HG_MUNO_HITBOX_PRIORITY = i; i++;		// Enter a string to override priority
HG_MUNO_HITBOX_GROUP = i; i++;			// Enter a string to override group
HG_MUNO_HITBOX_BHP = i; i++;			// Enter a string to override base hitpause
HG_MUNO_HITBOX_HPG = i; i++;			// Enter a string to override hitpause scaling
HG_MUNO_HITBOX_MISC = i; i++;			// Enter a string to override the auto-generated misc notes (which include misc properties like angle flipper or elemental effect)
HG_MUNO_HITBOX_MISC_ADD = i; i++;		// Enter a string to ADD TO the auto-generated misc notes, not override (line break will be auto-inserted)

// Misc. Hitbox Traits
HG_MUNO_OBJECT_LAUNCH_ANGLE = i; i++;	// Override the on-hit launch direction of compatible Workshop objects, typically ones without gravity. For example, Otto uses this for the ball rehit angles. Feel free to code this into your attacks, AND to support it for your own hittable articles.

/* Set the obj launch angle to:
 * - -1 to send horizontally away (simulates flipper 3, angle 0)
 * - -2 to send radially away (simulates flipper 8)
 */

/*