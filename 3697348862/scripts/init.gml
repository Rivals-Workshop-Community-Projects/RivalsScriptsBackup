// init.gml

// ========= custom vars start =======

// Checks which current color the player has
alt_cur = get_player_color(player);
// yeah
ea_alt = (get_player_color(player) == 7);
gold_alt = (get_player_color(player) == 17);

// stuff
put_cover_back_on = false;

// dtilt
dtilt_no_ground_front = false;

// dair
dair_grabbed_player = noone;

// nspecial
sd_card_number = 1;	// default val
sd_card_number_max = 10;	// max val

holding_sd_card = false;
held_sd_card_num = -1;
sd_card_num_proj_spawn = -1;
sd_card_was_recaught = false;

nspec_rethrow_throw_dir = -1;

nspec_visual_charge_bump_tick = 0;
nspec_visual_charge_bump_tick_max = 10;

nspec_stored = false;

nspec_b_reverse_allow_timer = 0;

// fspecial

fspec_curr_operator = 1;

fspec_article_dummy = noone;	// for testing
fspec_article_add = noone;
fspec_article_sub = noone;
fspec_article_mlt = noone;
fspec_article_dvd = noone;

// dspecial
dspec_used_already = false;

// uspecial
uspecial_grabbed_player = noone;

uspec_grab_radius_bottom = 64;
uspec_grab_radius_else = 32;

uspec_random_number_inc_var = 0;
uspec_stored_grabbed_x = -1;
uspec_stored_grabbed_y = -1;
uspec_x_dist_diff = 0;
uspec_y_dist_diff = 0;

// mainly for debugging
uspec_allowed_to_grab_wall = true;

uspec_dmg_of_hit_player = -1;

uspec_was_cancel_into_wj = false;
uspec_random_wall_flag = false;
uspec_already_grabbed_wall = false;
uspec_is_curr_grabbing_wall = false;
uspec_climb_wall_stupid_tick_var = 0;
uspec_wall_grab_with_specific_hitbox_num = -1;

uspec_grabbed_operator = false;
uspec_told_grabbed_which_opp = -1;	// 0 -> Add, 1 -> Sub, 2 -> Mult, 3 -> Div
uspec_assigned_grabbed_operator = noone;
uspec_alr_grabbed_opp = false;

uspec_started_from_ground = false;

uspec_times_grabbed_wall = 0;

uspec_pity_hop_speed = -6.5;

// vfx init
vfx_thunder_small = hit_fx_create(sprite_get("vfx_thunder_small"), 6 * 2);
vfx_thunder_big = hit_fx_create(sprite_get("vfx_thunder_big"), 10 * 2);

vfx_operator_spawn_add = hit_fx_create(sprite_get("_vfx_operator_spawn_add"), 8 * 2);
vfx_operator_spawn_sub = hit_fx_create(sprite_get("_vfx_operator_spawn_sub"), 8 * 2);
vfx_operator_spawn_mlt = hit_fx_create(sprite_get("_vfx_operator_spawn_mlt"), 8 * 2);
vfx_operator_spawn_dvd = hit_fx_create(sprite_get("_vfx_operator_spawn_dvd"), 8 * 2);
vfx_operator_travel    = hit_fx_create(sprite_get("_vfx_operator_travel"), 8 * 1);
vfx_operator_arrow     = hit_fx_create(sprite_get("_vfx_operator_arrow"), 16 * 3);

// ========= custom vars end =========

// =======================================================================
// STAT NAME		    VALUE                   BASECAST RANGE      NOTES

// Physical size
char_height             = 78;                   //                  the height of the overhead hud - the arrow with your name and %
knockback_adj           = 0.95;		            // 0.9  -  1.2

// Ground movement
walk_speed              = 3;		            // 3    -  4.5
walk_accel              = 0.2;		            // 0.2  -  0.5
walk_turn_time          = 6;		            // 6
initial_dash_time       = 8;		            // 8    -  16       zetterburn's is 14
initial_dash_speed      = 6.8;		            // 4    -  9
dash_speed              = 5.9;		            // 5    -  9
dash_turn_time          = 14;		            // 8    -  20
dash_turn_accel         = 1.5;		            // 0.1  -  2
dash_stop_time          = 6;		            // 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.35;		            // 0.25 -  0.5
ground_friction         = 0.5;		            // 0.3  -  1
moonwalk_accel          = 1.4;		            // 1.2  -  1.4

// Air movement
leave_ground_max        = 5;		            // 4    -  8
max_jump_hsp            = 5;		            // 4    -  8
air_max_speed           = 3.5;  		            // 3    -  7
jump_change             = 3;		            // 3
air_accel               = 0.25;		            // 0.2  -  0.4
prat_fall_accel         = 0.85;		            // 0.25 -  1.5
air_friction            = 0.04;		            // 0.02 -  0.07
max_fall                = 9;		            // 6    -  11
fast_fall               = 14;		            // 11   -  16
gravity_speed           = 0.45;		            // 0.3  -  0.6
hitstun_grav            = 0.45;		            // 0.45 -  0.53

// Jumps
jump_start_time         = 5;		            // 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed              = 10;		            // 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 5;		            // 4    -  7.4
djump_speed             = 10;		            // 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = 0;		            // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time    = 0;		            //                  the amount of time that   djump_accel   is applied for
max_djumps              = 1;		            // 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp            = 7;		            // 4    -  7
walljump_vsp            = 8;		            // 7    -  10
land_time               = 4;		            // 4    -  6
prat_land_time          = 10;		            // 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate
double_jump_time 		= 32; 					// the number of frames to play the djump animation. Can't be less than 31.
wall_frames 			= 2;					// the number of frames to play for when you're walljumping but still on the wall

// Shield-button actions
wave_friction           = 0.12;		            // 0    -  0.15
wave_land_time          = 8;		            // 6    -  12
wave_land_adj           = 1.2;		            // 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 9;		            // 7    -  11
roll_backward_max       = roll_forward_max;		// 7    -  11       always the same as forward
air_dodge_speed         = 7.5;		            // 7.5  -  8
techroll_speed          = 10;		            // 8    -  11

// Hurtbox Setup
hurtbox_spr = sprite_get("__ti84_hurtbox");
crouchbox_spr = sprite_get("__ti84_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

// Animation Speeds
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;


// Crouch Animation Frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 3;

// Parry Animation Frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 7;

// Tech Animation Frames
tech_active_frames = 2;
tech_recovery_frames = 1;

// Airdodge Animation Frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

// Roll Animation Frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = roll_forward_startup_frames;
roll_back_active_frames = roll_forward_active_frames;
roll_back_recovery_frames = roll_forward_recovery_frames;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

// Tech Roll Animation Frames
techroll_startup_frames = roll_forward_startup_frames;
techroll_active_frames = roll_forward_active_frames;
techroll_recovery_frames = roll_forward_recovery_frames;
techroll_speed = 10;

// Custom SFX Init

//sfx_customTemp = sound_get("sfx_customTemp");

// yes i did record sfx from my own calculator
sfx_reallife_ti84_battery_cover_off = sound_get("sfx_reallife_ti84_battery_cover_off");
sfx_reallife_ti84_battery_cover_on = sound_get("sfx_reallife_ti84_battery_cover_on");
sfx_reallife_ti84_button_press = sound_get("sfx_reallife_ti84_button_press");
sfx_reallife_ti84_cover_off = sound_get("sfx_reallife_ti84_cover_off");
sfx_reallife_ti84_cover_on = sound_get("sfx_reallife_ti84_cover_on");

sfx_ssbu_byleth_usmash_1 = sound_get("sfx_ssbu_byleth_usmash_1");
sfx_ssbu_byleth_usmash_3 = sound_get("sfx_ssbu_byleth_usmash_3");
sfx_ssbu_byleth_uspecial_grab = sound_get("sfx_ssbu_byleth_uspecial_grab");
sfx_ssbu_byleth_uspecial_whip = sound_get("sfx_ssbu_byleth_uspecial_whip");

sfx_ssbu_grab = sound_get("sfx_ssbu_grab");
sfx_ssbu_item_get = sound_get("sfx_ssbu_item_get");
sfx_ssbu_item_throw = sound_get("sfx_ssbu_item_throw");
sfx_ssbu_item_toss = sound_get("sfx_ssbu_item_toss");

sfx_ssbu_megaman_dair = sound_get("sfx_ssbu_megaman_dair");
sfx_ssbu_megaman_dashattack = sound_get("sfx_ssbu_megaman_dashattack");
sfx_ssbu_megaman_dtilt = sound_get("sfx_ssbu_megaman_dtilt");
sfx_ssbu_megaman_fspec_1 = sound_get("sfx_ssbu_megaman_fspec_1");
sfx_ssbu_megaman_fspec_2 = sound_get("sfx_ssbu_megaman_fspec_2");
sfx_ssbu_megaman_fspec_3 = sound_get("sfx_ssbu_megaman_fspec_2");
sfx_ssbu_megaman_jump = sound_get("sfx_ssbu_megaman_jump");
sfx_ssbu_megaman_megabuster = sound_get("sfx_ssbu_megaman_megabuster");
sfx_ssbu_megaman_nspec = sound_get("sfx_ssbu_megaman_nspec");
sfx_ssbu_megaman_uair = sound_get("sfx_ssbu_megaman_uair");

sfx_ssbu_pacman_fruit_charge_1 = sound_get("sfx_ssbu_pacman_fruit_charge_1");
sfx_ssbu_pacman_fruit_charge_2 = sound_get("sfx_ssbu_pacman_fruit_charge_2");
sfx_ssbu_pacman_fruit_charge_3 = sound_get("sfx_ssbu_pacman_fruit_charge_3");
sfx_ssbu_pacman_fruit_charge_4 = sound_get("sfx_ssbu_pacman_fruit_charge_4");
sfx_ssbu_pacman_fruit_charge_5 = sound_get("sfx_ssbu_pacman_fruit_charge_5");
sfx_ssbu_pacman_fruit_charge_6 = sound_get("sfx_ssbu_pacman_fruit_charge_6");
sfx_ssbu_pacman_fruit_charge_7 = sound_get("sfx_ssbu_pacman_fruit_charge_7");
sfx_ssbu_pacman_fruit_charge_8 = sound_get("sfx_ssbu_pacman_fruit_charge_8");

sfx_ssbu_rob_airdodge = sound_get("sfx_ssbu_rob_airdodge");
sfx_ssbu_rob_crouch = sound_get("sfx_ssbu_rob_crouch");
sfx_ssbu_rob_dashstart = sound_get("sfx_ssbu_rob_dashstart");
sfx_ssbu_rob_land = sound_get("sfx_ssbu_rob_land");
sfx_ssbu_rob_swipe_heavy = sound_get("sfx_ssbu_rob_swipe_heavy");
sfx_ssbu_rob_swipe_med = sound_get("sfx_ssbu_rob_swipe_med");
sfx_ssbu_rob_swipe_weak = sound_get("sfx_ssbu_rob_swipe_weak");

// victory theme
set_victory_theme(sound_get("victory"));

// Base SFX Init
land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

// Setting Portrait for alts that change outline color
// Resetting portrait and result_small back to normal
set_victory_portrait( sprite_get( "portrait" ));
set_victory_sidebar( sprite_get( "result_small" ));

// portrait setting depending on alt
switch (alt_cur){
	// gameboy
	case 7:
		set_victory_portrait( sprite_get( "portrait_ea" ));
		set_victory_sidebar( sprite_get( "result_small_ea" ));
		break;
	// pure gold
	case 17:
		set_victory_portrait( sprite_get( "portrait_gold" ));
		set_victory_sidebar( sprite_get( "result_small_gold" ));
		break;
}

// Compatability (add more as needed.)
TCG_Kirby_Copy = 2; 								// Kirby (Dream Collection) - Drill
steve_death_message = "Steve failed Algebra 1";		// Steve (Muno)
link_spear_drop = 2;								// Link (Muno) idk what this is idgaf about this compat
Hikaru_Title = "f ing stupid calculator";			// Hikaru Title
arena_title = "The Arithmetic Machine";				// Mt. Dedede
arena_short_name = "TI-84 Graph. Calc.";		// see above but ye
user_event(9); 										// Palutena's Guidance

is_gorable = false;									// general gorable var
blood_col = make_colour_rgb(						// just in case
get_color_profile_slot_r( get_player_color(player), 5 ), 
get_color_profile_slot_g( get_player_color(player), 5 ), 
get_color_profile_slot_b( get_player_color(player), 5 )
);

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


// frame data woodcock stuff

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