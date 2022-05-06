/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The ATTACKS are still in their overpowered form in this
 * template, so be sure to make the ones for your character weaker.
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// STAT NAME		SNAKE VALUE    BASECAST RANGE   NOTES

// Physical size
small_sprites       = 1;    	//                 	1 for non-upscaled sprites
char_height         = 60;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.95;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.3;		// 0.2  -  0.5
walk_turn_time      = 9;		// 6
initial_dash_time   = 12;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 5;		// 4    -  9
dash_speed          = 6;		// 5    -  9
dash_turn_time      = 16;		// 8    -  20
dash_turn_accel     = 0.75;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.25;		// 0.25 -  0.5
ground_friction     = 0.9;		// 0.3  -  1
moonwalk_accel      = 1.2;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 4.5;		// 4    -  8
max_jump_hsp        = 4.5;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.2;		// 0.2  -  0.4
prat_fall_accel     = 0.25;		// 0.25 -  1.5
air_friction        = 0.02;		// 0.02 -  0.07
max_fall            = 8.5;		// 6    -  11
fast_fall           = 12;		// 11   -  16
gravity_speed       = 0.35;		// 0.3  -  0.6
hitstun_grav        = 0.45;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5 (9 for Brawl)  this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 7.6;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 5.9;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 4;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.15;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 16;		// 6    -  12
wave_land_adj       = 1.2;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.0;		// 7.5  -  8
techroll_speed      = 8;		// 8    -  11



// Character-specific assets init

//Sprites
image_index_arms = 0;															// Image index for arms layer
image_index_equipment = 0;														// Image index for equipment layer (separate from arms, because weapons don't have alt costumes.)
image_index_legs = 0;															// Image index for legs layer

//spr_nspecial_proj = sprite_get("nspecial_proj");
//spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_dashstart = sound_get("sfx_footstep_dashstart");
sfx_dashstart_orig = asset_get("sfx_dash_start");
sfx_footstep_walk_l = sound_get("sfx_footstep_walk_l");
sfx_footstep_walk_r = sound_get("sfx_footstep_walk_r");
sfx_footstep_run_l = sound_get("sfx_footstep_run_l");
sfx_footstep_run_r = sound_get("sfx_footstep_run_r");
sfx_footstep_last_foot = 0;                                                     // 0 = left, 1 = right
/*sfx_dbfz_kame_charge = sound_get("ARC_BTL_GKN_Kamehame_Chrg");
sfx_dbfz_kame_fire = sound_get("ARC_BTL_GKN_Kamehame_Fire");
sfx_dbfz_hit_weak = sound_get("ARC_BTL_CMN_Hit_Small-A");
sfx_dbfz_hit_broken = sound_get("ARC_BTL_CMN_Hit_XLarge");
sfx_dbfz_hit_jab3 = sound_get("ARC_BTL_GKN_Atk5A_3rd_Hit");*/

// VFX
vfx_boom_frag = hit_fx_create(sprite_get("fx_boom_frag"), 28);
vfx_boom_stun = hit_fx_create(sprite_get("fx_boom_stun"), 15);
vfx_boom_sleepgas = hit_fx_create(sprite_get("fx_boom_sleepgas"), 40);

vfx_smoke_destoy = hit_fx_create(sprite_get("ent_smoke_destroy"), 8);

vfx_box_destroy = hit_fx_create(sprite_get("ent_box_destroy"), 24);
vfx_supplydrop_destroy = hit_fx_create(sprite_get("ent_supplydrop_destroy"), 16);

vfx_stun_deplete = hit_fx_create(sprite_get("ui_emote_stun_depletefx"), 32);


// Variables
/*has_goku_beam = true;
doing_goku_beam = false;
beam_newest_hbox = noone;*/


// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.08; //0.04
crouch_anim_speed   = 0.3;
walk_anim_speed     = 0.16;
dash_anim_speed     = 0.24;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 18;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 4;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 3;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 2;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 3;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 4;
crouch_recovery_frames  = 1;

// Crouch (custom)

crouch_accel = 0.1;
crouch_speed = 2;
crouch_move_timer = 0;
is_crouching = false;
was_crouching = false;


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
//hurtbox_spr         = asset_get("ex_guy_hurt_box");
hurtbox_spr         = sprite_get("hurtbox_idle");
hurtbox_spr_default = hurtbox_spr;                                              // For when the hurtbox sprite has to be changed.
crouchbox_spr       = sprite_get("hurtbox_prone");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_37")); // Default Victory Background
set_victory_theme(sound_get("mus_victory_theme_01")); // Default Victory Song
//set_victory_bg(sprite_get("victory_39")); // Non-Lethal Victory Background
//set_victory_theme(sound_get("mus_victory_theme_02")); // Non-Lethal Victory Song

// Movement SFX
/*land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");*/
land_sound          = sound_get("sfx_footstep_walk_l");
landing_lag_sound   = sound_get("sfx_footstep_run_r");
waveland_sound      = sound_get("sfx_wave_land_kojima"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Voice Clips
vox_prev            = noone;

vox_hurt_cooldown   = 0;
vox_hurt_light_01   = sound_get("vox_sna_hurt_small_01");
vox_hurt_light_02   = sound_get("vox_sna_hurt_small_02");                       // TODO: Find a better voice clip!
vox_hurt_light_03   = sound_get("vox_sna_hurt_small_03");
vox_hurt_mid_01     = sound_get("vox_sna_hurt_mid_01");
vox_hurt_mid_02     = sound_get("vox_sna_hurt_mid_02");
vox_hurt_mid_03     = sound_get("vox_sna_hurt_mid_03");
vox_hurt_heavy_01   = sound_get("vox_sna_hurt_big_01");
vox_hurt_heavy_02   = sound_get("vox_sna_hurt_big_02");

vox_plant_player	= sound_get("vox_sna_plant_player");
//vox_ko              = sound_get("vox_sna_ko");
vox_ko              = sound_get("vox_sna_ko_reverb");

vox_attack_light_01 = sound_get("vox_sna_grunt_06");
vox_attack_light_02 = sound_get("vox_sna_grunt_03");
vox_attack_heavy_01 = sound_get("vox_sna_grunt_07");
vox_attack_heavy_02 = sound_get("vox_sna_grunt_08");
vox_attack_heavy_03 = sound_get("vox_sna_grunt_04");


// UI Sound Effects
sfx_ui_inv_open 	= sound_get("ui_inv_open");
sfx_ui_inv_scroll 	= sound_get("ui_inv_scroll");
sfx_ui_inv_equip 	= sound_get("ui_inv_equip");


// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;




//--------------------------------------
// Muno sprite set code
//--------------------------------------

current_sprite_set = 0;                                                         // Current alt. (0 = Sneaking Suit, 1 = Navy SEAL Fatigues.)
num_sprite_sets = 2;                                                            // Number of "alts" available.

checked_sprite_names = [                                                        // List of sprites to check for costume changes. (TODO: Update this for YOUR sprites)
    "idle", 
    "idle_pistol", 
    "idle_rifle",
    "crouch", 
    "crouch_full",
    "crawl", 
    "aim_legs_crouch",
    "walk", 
    "walk_pistol", 
    "walk_rifle", 
    "walkturn", 
    "walkturn_pistol", 
    "walkturn_rifle", 
    "dash", 
    "dash_pistol", 
    "dash_rifle", 
    "dashstart", 
    "dashstart_pistol", 
    "dashstart_rifle", 
    "dashstop", 
    "dashstop_pistol",
    "dashstop_rifle",
    "dashturn", 
    "dashturn_pistol", 
    "dashturn_rifle", 
    
    "hurt",
    "hurtground",
    "bighurt",
    "uphurt",
    "downhurt",
    "bouncehurt",
    "spinhurt",
    
    "jumpstart", 
    "jumpstart_rifle", 
    "jump", 
    "jump_rifle", 
    "doublejump", 
    "walljump", 
    "pratfall", 
    "land", 
    "land_rifle", 
    "land_box", 
    "landinglag", 
    
    "parry", 
    "roll_forward", 
    "roll_backward", 
    "roll_backward_rifle", 
    "airdodge", 
    "waveland", 
    "tech", 
    
    "jab", 
    "jab_rifle", 
    "dattack", 
    "ftilt", 
    "dtilt", 
    "utilt", 
    "nair", 
    "fair", 
    "bair", 
    "uair", 
    "dair", 
    "fstrong", 
    "ustrong", 
    "dstrong", 
    "nspecial", 
    "nspecial_air", 
    "fspecial", 
    "aim_torso_fspecial", 
    "aim_torso_fspecial_rifle", 
    "uspecial", 
    "dspecial", 
    "dspecial_air", 
    "dspecial_crouch", 
    "nthrow", 
    "taunt",
    "taunt_air",
    "taunt_crouch",
    "cover",
    "cover_pistol",
    "cover_rifle",
    "phone_open",
    "intro",
    
    "idle_box",
    "walk_box",
    "walkturn_box",
    "dashstart_box",
    "dash_box",
    "dashstop_box",
    "dashturn_box",
    "jumpstart_box",
    "jump_box",
    "doublejump_box",
    "land_box",
    "walljump_box",
    "hurt_box"
];



//======================================
// Adventure Mode variables
//======================================

pronouns = ["he","him","his","is"];
nick = "Merc";

am_is_fire = false; 			// Is a fire elemental - fire, plasma, smoke, cooking
am_is_water	= false;		    // Is a water elemental - water, ice, poison, sweat
am_is_air = false;			    // Is an air elemental - wind, music, thunder, pure rage
am_is_earth = false;			// Is an earth elemental - rock, plant, plant, crystal
am_is_aether = false;		    // Is an aether elemental - Space, mysticism
am_is_abyssal = false;		    // Is a creature of the abyss
am_is_subterranain = false;	    // Is from the underground
// SENSE; Manipulating the opponent's perception and psyche
 
am_is_verbal = true;		    // Is capable of speaking complex languages
am_is_noob = false;			    // Is unfamiliar with things or naieve
am_is_experienced = true; 	    // Does exude experience

am_is_future = false;		    // Is this character from a future?
am_is_past = false;			    // Is this character from the past?
am_is_myth = false;			    // Is this character part of a mythos?

am_is_evil = false;			    // Has a self-centered moral compass
am_is_chaotic = false;		    // Has a particularly flexible moral compass
am_is_insane = false;		    // Experiences reality in a unique way

am_is_undead = false;		    // Was dead... now is not
am_is_construct = false;		// Is living through "unnatural" means aka " purpose-built"
am_is_magic = false;			// Is supernatural in a magical way
am_is_big = false;			    // Is this character much larger than average?
am_is_small = false;			// Is this character much smaller than average?
am_is_handed = true; 		    // Does this character have appendages to hold things with?
am_is_clothed = true;           // Does this character wear clothes?

am_is_guest = true; 			// Is this character not an atherian local?

am_is_realitybreak = false;	    // Is this character a casual reality manipulator?
am_is_not = false;	            // They do not belong. They shouldn't be here. They do not belong. They shouldn't be here. They do not belong. They shouldn't be here.


//=========================================
// AARON'S CODE STARTS HERE :)
//=========================================

sna_prime = false;					// The "main" Snake, that performs all of the drawing functions. Used when there are multiple Snake players.

is_init = true;                     // Is this the initialization tick?
//is_attacking = false;				// Is the player attacking?

is_on_respawn_plat = false;			// Is the player on the respawn platform?

sna_height_default		= char_height;
sna_height_crouch		= floor(char_height * 0.25);
sna_height_box			= floor(char_height * 0.5);
sna_height_cover		= floor(char_height * 0.5);

//Nackles42's intro code
introTimer = -2;					//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;
introAnimSpeed = 8;					// How many frames before the image index changes.
introAnimCount = 12;				// How many frames before the image index changes.

strong_pressed = false;             // Strong_pressed input
strong_down = false;                // Strong_down input

spr_dir_old = spr_dir;				// Late sprite direction variable
free_old = free;					// Late free variable

//sna_vox_enabled = true;				// Enable/disable voice clips

sna_box_is_equipped = false;		// Does Snake have a box equipped?
sna_box_equip_time = 0;				// What time did Snake equip the box? (Used for drawing the equip transition.)
sna_box_equip_duration = 4;			// How many frames does it take for Snake to equip the box?
//sna_box_obj = noone;				// The equipped box platform object.
sna_box_dmg = 0;					// How much damage the currently equipped box has taken.
sna_box_dmg_threshold = 20;			// Max damage the box can take, before being destroyed.

sna_ration_cooldown = 0;			// Cooldown before Snake can eat another ration.

sna_detect_cover = false;			// Should Snake perform a collision check for cover?
sna_is_in_cover = false;			// Is Snake in cover?
sna_cover_obj = noone;				// Cover object to ignore hitboxes.

sna_held_entity = noone;			// The entity article that's currently being held.
sna_total_entities_spawned = 0;		// Total number of entities Snake has spawned. Increases every time an entity spawns.
sna_is_stuck = false;				// Does this player have an entity stuck to them?

// CQC Grab Variables
sna_grabbed_playerid = noone;		// The grabbed player.
sna_grabbed_x = 18;					// The grabbed player's x position
sna_grabbed_y = 0;					// The grabbed player's y position
sna_grabbed_dir = 1;				// The grabbed player's facing direction. (Relative to the current spr_dir.)
sna_grab_time = 0;					// How many frames Snake has held a player for.
sna_grab_time_max = 1;				// The number that the grab time was last set to. (Used for drawing the grip meter.)
sna_grabbed_cooldown = 0;			// How many frames until this player can be grabbed again.
sna_grab_delay = 60;				// How long to set the grabbed player's cooldown, whenever they're grabbed. Used to prevent potential infinite chain grabs.

// Interrogation Variables
sna_ingerrogate_timer = 0;			// How many frames the opponent has been interrogated for.
sna_interrogate_vox_idx = 0;		// The random voice clip index that Snake uses during interrogations. (0-2);
sna_interrogate_vox_cooldown = 0;	// Number of frames before one of Snake's interrogation voice clips can play again.

sna_interrogated_line_01 = "...";   // Snake interrogation dialogue. Lines 2 and 3 are optional.
sna_interrogated_line_02 = noone;
sna_interrogated_line_03 = noone;

sna_interrogated_line_spoken = false;  // Has the player spoken the interrogation line yet? Used to advance the interrogation line index.
sna_interrogated_line_idx = 1;      // The current interrogation line.

sna_has_uspecial = false;			// Whether or not Snake has an up special. (Fake pratfall.)

// Stealth Variables
sna_stealth_seen = false;						// Whether or not Snake is in someone's cone of vision.
sna_stealth_seen_timer = 0;						// How long Snake has been seen for. Gradually increases when seen. Gradually decreases when not seen.
sna_stealth_seen_alertthreshold = 10;			// How long Snake can be seen for, before triggering an ALERT.
sna_stealth_state = 0;							// 0 = SNEAK, 1 = CAUTION, 2 = EVASION, 3 = ALERT
sna_stealth_state_awareness = 0.00;				// Ranges from 0.00 to 99.99, for each phase. (Except for SNEAK.)
//sna_stealth_depletionrate_alert = 0.18;
//sna_stealth_depletionrate_evasion = 0.34;
//sna_stealth_depletionrate_caution = 0.06;
sna_stealth_depletionrate_alert = 0.72;
sna_stealth_depletionrate_evasion = 1.36;
sna_stealth_depletionrate_caution = 0.24;
// MGS-accurate depletion rates. (For personal reference.)
/*sna_stealth_depletionrate_alert = 0.09;
sna_stealth_depletionrate_evasion = 0.17;
sna_stealth_depletionrate_caution = 0.03;*/

// Smoke Variables
sna_hide_in_smoke = true;			// Whether or not to visually hide Snake in the smoke.
sna_is_in_smoke = false;			// Is Snake in a smoke cloud?
sna_obj_smoke_back = instance_create(0, 0, "obj_article2");						// Create the back smoke drawing article.
sna_obj_smoke_back.depth = -1;													// Set the back smoke depth to be in front of Snake (and Forsburn).
sna_obj_smoke_front = instance_create(0, 0, "obj_article2");					// Create the front smoke drawing article.
sna_obj_smoke_front.depth = -100;												// Set the front smoke depth to be in front of everyone.
sna_obj_smoke_front.is_front = true;											// Set the front smoke flag to true;
sna_smoke_radius = 60;															// How big the smoke area that Snake can hide in is.
sna_smoke_lifetime = 40 * 60;													// Smoke lasts 40 seconds.
sna_smoke_idx_latest = 0;														// The latest smoke cloud index created. Increases by 1 every time a smoke cloud is created. Loops back to 0 when reaching limit.
sna_smoke_idx_limit = 8;														// The max number of smoke clouds Snake can create.
sna_smoke_clouds = [];				// Create an array that holds a list of all the smoke clouds.
for (var _i = 0; _i < sna_smoke_idx_limit; _i++) {
	sna_smoke_clouds[_i] = {
		x: 0,																	// Smoke x coordinates
		y: 0,																	// Smoke y coordinates
		creation_time: get_gameplay_time() - (sna_smoke_lifetime + 1)			// The time the smoke was created
	};
}
/*
SMOKE ARRAY VARIABLE GUIDE:
	x:								X coordinates.
	y:								Y coordinates.
	creation_time:					The time this smoke cloud was created.


EXAMPLE ARRAY:
sna_smoke_clouds[0] = {
	x: 420,
	y: 69,
	creation_time: get_gameplay_time()
}
*/

// Dust Removal Code (By FQF)
asset_new_dust = asset_get("new_dust_fx_obj");
sna_remove_dust = false;														// TODO: Only remove the dust when hidden in smoke!



//------------------------------------------------------------------------------
// Emote Icon Initialization (For exclamation marks, stars, and ZZZs).
//------------------------------------------------------------------------------
sna_emote_window = 0;
sna_emote_start_time = 0;

sna_emote_windows = [];
// Default
sna_emote_windows[0] = { length: 1, 	next_window: 0,		spr_idx: noone, 							img_idx_start: 0,	num_frames: 1,	col: c_white};	// No Icon
// Notice
sna_emote_windows[1] = { length: 8, 	next_window: 2, 	spr_idx: sprite_get("ui_emote_alert"),		img_idx_start: 0,	num_frames: 2,	col: c_white};	// Notice - Start
sna_emote_windows[2] = { length: 28,	next_window: 3, 	spr_idx: sprite_get("ui_emote_alert"),		img_idx_start: 2,	num_frames: 1,	col: c_white};	// Notice - Idle
sna_emote_windows[3] = { length: 8, 	next_window: 0, 	spr_idx: sprite_get("ui_emote_alert"),		img_idx_start: 3,	num_frames: 2,	col: c_white};	// Notice - Exit
// Alert
sna_emote_windows[4] = { length: 8, 	next_window: 5, 	spr_idx: sprite_get("ui_emote_alert"),		img_idx_start: 0,	num_frames: 2,	col: /*#*/$7a7aff};	// Alert - Start
sna_emote_windows[5] = { length: 28,	next_window: 6, 	spr_idx: sprite_get("ui_emote_alert"),		img_idx_start: 2,	num_frames: 1,	col: /*#*/$7a7aff};	// Alert - Idle
sna_emote_windows[6] = { length: 8, 	next_window: 0, 	spr_idx: sprite_get("ui_emote_alert"),		img_idx_start: 3,	num_frames: 2,	col: /*#*/$7a7aff};	// Alert - Exit
// Stun Stars
sna_emote_windows[7] = { length: 60, 	next_window: 7, 	spr_idx: sprite_get("ui_emote_stun_1"),		img_idx_start: 0,	num_frames: 16,	col: c_white};	// 1 Star
sna_emote_windows[8] = { length: 60, 	next_window: 8, 	spr_idx: sprite_get("ui_emote_stun_2"),		img_idx_start: 0,	num_frames: 16,	col: c_white};	// 2 Stars
sna_emote_windows[9] = { length: 60, 	next_window: 9, 	spr_idx: sprite_get("ui_emote_stun_3"),		img_idx_start: 0,	num_frames: 16,	col: c_white};	// 3 Stars
sna_emote_windows[10] = { length: 60, 	next_window: 10, 	spr_idx: sprite_get("ui_emote_stun_4"),		img_idx_start: 0,	num_frames: 16,	col: c_white};	// 4 Stars
sna_emote_windows[11] = { length: 60, 	next_window: 11, 	spr_idx: sprite_get("ui_emote_stun_5"),		img_idx_start: 0,	num_frames: 16,	col: c_white};	// 5 Stars

// Sleep "Z"s
sna_emote_windows[12] = { length: 144, 	next_window: 12, 	spr_idx: sprite_get("ui_emote_sleep_1"),	img_idx_start: 0,	num_frames: 24,	col: c_white};	// 1 Z
sna_emote_windows[13] = { length: 144, 	next_window: 13, 	spr_idx: sprite_get("ui_emote_sleep_2"),	img_idx_start: 0,	num_frames: 24,	col: c_white};	// 2 Zs
sna_emote_windows[14] = { length: 144, 	next_window: 14, 	spr_idx: sprite_get("ui_emote_sleep_3"),	img_idx_start: 0,	num_frames: 24,	col: c_white};	// 3 Zs
sna_emote_windows[15] = { length: 144, 	next_window: 15, 	spr_idx: sprite_get("ui_emote_sleep_4"),	img_idx_start: 0,	num_frames: 24,	col: c_white};	// 4 Zs


//-----------------------------------------
// Status Initialization
//-----------------------------------------
sna_life = 100;																	// LIFE Gauge
sna_life_drawn = sna_life;														// LIFE Gauge (Visual) (DO NOT REFERENCE! ONLY FOR DRAWING! WILL CAUSE DESYNCS!)
sna_psyche = 100;																// PSYCHE Gauge
sna_psyche_drawn = sna_psyche;													// PSYCHE Gauge (Visual) (DO NOT REFERENCE! ONLY FOR DRAWING! WILL CAUSE DESYNCS!)

sna_life_depleted = false;														// If true, this character will be vulnerable to lethal attacks, until LIFE regenerates back to 100.
sna_psyche_depleted = false;													// If true, this character will be unconscious, until PSYCHE regenerates back to 100.
sna_psyche_depleted_start_time = 0;												// When the psyche gauge was depleted.
sna_psyche_depleted_duration = 0;												// How many frames the psyche gauge will take to regenerate.
sna_psyche_depleted_airtime = 0;												// How many frames the player has been in the air for.
sna_psyche_depleted_airtime_max = 45;											// How many frames the unconscious player can be in the air for, before waking up.

sna_psyche_ko_type = 0;                                                         // 0 = stun, 1 = sleep

//-----------------------------------------
// Status UI Initialization
//-----------------------------------------
sna_ui_status_state = 0;														// The current stats UI display state. 0 = don't display, 1 = display, 2 = fade out.
sna_ui_status_timer = 0;														// The current state timer for the stats.

sna_ui_status_states = [];
sna_ui_status_states[0] = { length: 1, next_state: 0, };						// Don't Display
sna_ui_status_states[1] = { length: 20, next_state: 2, };						// Display
sna_ui_status_states[2] = { length: 10, next_state: 0, };						// Fade Out


//-----------------------------------------
// Alternate Costumes
//-----------------------------------------
switch(get_player_color( player )) {											// Get the current palette
	
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    	current_sprite_set = 1;                                                 // SEAL uniform
    	
    	set_victory_portrait(sprite_get("portrait_alt"));						// Set the victory portrait
    	set_victory_sidebar(sprite_get("result_small_alt"));					// Set the victory sidebar
    	
    	// Unique Pliskin interrogation lines.
    	sna_interrogated_line_01 = "My name is S...";   // Snake interrogation dialogue. Lines 2 and 3 are optional.
		sna_interrogated_line_02 = "My name is... Pliskin. Iroquois Pliskin. Lieutenant Junior Grade.";
		sna_interrogated_line_03 = "That suit -- are you FOXHOUND?";
    break;
    
    default:
    	current_sprite_set = 0;													// Default costume
    	
    	set_victory_portrait(sprite_get("portrait"));						// Set the victory portrait
    	set_victory_sidebar(sprite_get("result_small"));					// Set the victory sidebar
    break;
    
}


//-----------------------------------------
// Enable/Disable voice clips
//-----------------------------------------
/*switch(get_player_color( player )) {											// Get the current palette
	
    case 13:
    case 14:
    case 15:
    	sna_vox_enabled = false;												// Disable voice clips for retro alts.
    break;
    
}*/


//-----------------------------------------
// Entity Dictionary Initialization
//-----------------------------------------

// Define entity IDs

dict_entities = [];
i = 0;

ENT_MAG 		= init_entity(true, false, "ent_throwable_mag", "ent_throwable_mask", 			2, 24, true, 0.3, 10, 0.02, 0.1, 0.32, true, true, true, true, -1, -1, -1, false, 0, false, 0, 0, false, -1, -1, 1, noone, noone, noone, false, false, sound_get("sfx_w_rifle_lower"), sound_get("sfx_at_kick_01"), sound_get("sfx_phys_mag_bounce"), asset_get("sfx_mol_bombpop"), noone, -1, 1920 ); // TODO: Set cleanup time to a large number for optimization? Alternatively, just have a limit to the number of mags that can exist.
ENT_GREN_SMOKE 	= init_entity(true, false, "ent_throwable_gren_smoke", "ent_throwable_mask",	2, 24, true, 0.3, 10, 0.02, 0.1, 0.32, true, true, true, true, -1, -1, -1, false, 0, false, 0, 0, false, -1, 1, 13, noone, noone, noone, false, false, sound_get("sfx_w_grenade_pinpull"), sound_get("sfx_w_grenade_throw"), sound_get("sfx_phys_grenade_bounce"), asset_get("sfx_mol_bombpop"), sound_get("sfx_w_grenade_explosion_04"), -1, 1920 );
ENT_GREN_STUN 	= init_entity(true, false, "ent_throwable_gren_stun", "ent_throwable_mask",		2, 24, true, 0.3, 10, 0.02, 0.1, 0.32, true, true, true, true, -1, -1, -1, false, 0, false, 0, 0, false, 120, 50, vfx_boom_stun, noone, 6, 1000, false, false, sound_get("sfx_w_grenade_pinpull"), sound_get("sfx_w_grenade_throw"), sound_get("sfx_phys_grenade_bounce"), asset_get("sfx_mol_bombpop"), sound_get("sfx_w_grenade_explosion_02"), -1, 1920 );
ENT_GREN_FRAG 	= init_entity(true, false, "ent_throwable_gren_frag", "ent_throwable_mask",		2, 24, true, 0.3, 10, 0.02, 0.1, 0.32, true, true, true, true, -1, -1, -1, false, 0, false, 0, 0, false, 120, 50, vfx_boom_frag, 4, 5, 1000, false, false, sound_get("sfx_w_grenade_pinpull"), sound_get("sfx_w_grenade_throw"), sound_get("sfx_phys_grenade_bounce"), asset_get("sfx_mol_bombpop"), sound_get("sfx_w_grenade_explosion_03"), -1, 1920 );

// TODO: Get rid of ENT_ELMT_SMOKE, and ENT_ELMT_SMOKE_OPAQUE. These are from the old, unoptimized smoke method, and are no longer used.
ENT_ELMT_SMOKE 			= init_entity(true, false, noone, "ent_smoke_mask",	0, 36, false, 0, 0, 0, 0, 0, false, true, false, false, -1, -1, -1, false, 0, false, 0, 0, false, -1, -1, 1, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );
ENT_ELMT_SMOKE_OPAQUE 	= init_entity(true, false, "ent_smoke", "ent_smoke_mask",	0, 36, false, 0, 0, 0, 0, 0, false, true, false, false, -1, -1, -1, false, 0, false, 0, 0, false, -1, -1, 1, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );

ENT_PLNT_C4 			= init_entity(true, false, "ent_plantable_c4", "ent_throwable_mask",		3, 24, true, 0.3, 10, 0.02, 1, 0, false, true, false, false, -1, -1, -1, false, 0, false, 0, 0, false, -1, -1, vfx_boom_frag, noone, 8, 1000, true, true, noone, noone, sound_get("sfx_w_plantable_plant"), noone, sound_get("sfx_w_grenade_explosion_03"), -1, 1920 );
ENT_PLNT_SATCHEL 		= init_entity(true, false, "ent_plantable_satchel", "ent_throwable_mask",	3, 24, true, 0.3, 10, 0.02, 1, 0, false, true, false, false, -1, -1, -1, false, 0, false, 0, 0, false, -1, -1, vfx_boom_sleepgas, noone, 9, noone, true, true, noone, noone, sound_get("sfx_w_plantable_plant"), noone, sound_get("sfx_w_grenade_explosion_04"), -1, 1920 );
ENT_PLNT_CLAYMORE 		= init_entity(true, false, "ent_plantable_claymore", "ent_throwable_mask",	0, 24, true, 0.3, 10, 0.02, 1, 0, true, true, false, false, -1, -1, 1, false, 0, false, 0, 0, false, -1, -1, 13, noone, 7, 1000, false, false, noone, noone, sound_get("sfx_w_plantable_plant"), noone, sound_get("sfx_w_grenade_explosion_03"), -1, 1920 );
ENT_PLNT_BOOK 			= init_entity(true, false, "ent_plantable_book", "ent_throwable_mask",		2, 24, true, 0.3, 10, 0.02, 1, 0, false, true, false, false, -1, -1, -1, false, 0, false, 0, 0, false, -1, -1, noone, 4, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );


ENT_PKUP_M9 			= init_entity(true, false, "ent_pkup_weap_small", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 2, true, 18, 0, true, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );
ENT_PKUP_M9_AMMO 		= init_entity(true, false, "ent_pkup_weap_ammo", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 2, false, 9, 0, false, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );
ENT_PKUP_M9_SUPP 		= init_entity(true, false, "ent_pkup_item_small", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 2, false, 0, 1, false, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );
ENT_PKUP_SOCOM 			= init_entity(true, false, "ent_pkup_weap_small", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 3, true, 28, 0, true, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );
ENT_PKUP_SOCOM_AMMO 	= init_entity(true, false, "ent_pkup_weap_ammo", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 3, false, 14, 0, false, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );
ENT_PKUP_SOCOM_SUPP 	= init_entity(true, false, "ent_pkup_item_small", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 3, false, 0, 1, false, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );
ENT_PKUP_MOSIN 			= init_entity(true, false, "ent_pkup_weap_large", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 4, true, 8, 0, true, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );
ENT_PKUP_MOSIN_AMMO 	= init_entity(true, false, "ent_pkup_weap_ammo", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 4, false, 4, 0, false, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );
ENT_PKUP_M4 			= init_entity(true, false, "ent_pkup_weap_large", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 5, true, 60, 0, true, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );
ENT_PKUP_M4_AMMO 		= init_entity(true, false, "ent_pkup_weap_ammo", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 5, false, 30, 0, false, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );

ENT_PKUP_SMOKE_GRENADE 	= init_entity(true, false, "ent_pkup_item_large", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 9, true, 1, 0, false, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );
ENT_PKUP_STUN_GRENADE 	= init_entity(true, false, "ent_pkup_item_large", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 10, true, 1, 0, false, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );
ENT_PKUP_GRENADE 		= init_entity(true, false, "ent_pkup_item_large", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 11, true, 1, 0, false, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );

ENT_PKUP_C4 			= init_entity(true, false, "ent_pkup_item_large", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 12, true, 1, 0, false, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );
ENT_PKUP_CLAYMORE 		= init_entity(true, false, "ent_pkup_item_large", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 13, true, 1, 0, false, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );
ENT_PKUP_BOOK 			= init_entity(true, false, "ent_pkup_weap_book", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 14, true, 1, 0, false, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );
ENT_PKUP_SATCHEL 		= init_entity(true, false, "ent_pkup_item_large", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 15, true, 1, 0, false, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );

ENT_PKUP_BOX 			= init_entity(true, false, "ent_pkup_item_box", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 16, true, 1, 0, false, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );
ENT_PKUP_RATION 		= init_entity(true, false, "ent_pkup_item_ration", "ent_throwable_mask",		1, 64, true, 0.2, 8, 0.02, 1, 0, false, true, true, true, -1, -1, -1, true, 17, true, 1, 0, false, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );

ENT_SUPPLYDROP 			= init_entity(true, false, "ent_supplydrop", "ent_box_mask",		0, 64, true, 0.3, 10, 0.02, 1, 0, false, true, false, false, -1, -1, -1, false, 0, false, 0, 0, false, -1, -1, noone, noone, noone, noone, false, false, noone, noone, noone, noone, noone, -1, 1920 );


i = 0; // DELETEME; Redundant.


//-----------------------------------------
// Equipment Dictionary Initialization
//-----------------------------------------

// Define equipment IDs

dict_equipment = [];
i = 0;

EQ_EMPTY            = init_equipment(true,      "NONE",			"",						"",            -1, -1, 		0, -1, 0,	false, false, false, false, 0, 0,	false, 0, false, 0,	false, true, false, false, -1 ); // MUST ALWAYS OWN EQ_EMPTY!
EQ_STUN_KNIFE       = init_equipment(false,     "S. KNIFE",		"Stun Knife",			"knife",         14, -1,		0, -1, 0,	false, false, false, false, 0, 0,	false, 0, false, 0,	false, true, false, false, -1 );
EQ_M9               = init_equipment(false,     "M9",			"M9",					"m9",           2, 3,		0, 2, 24,	true, true, true, true, 9, 27, 	false, 0, false, 1,	true, true, true, true, -1 ); // 27 max bullets
EQ_SOCOM            = init_equipment(false,     "SOCOM",		"SOCOM", 				"socom",        0, 1,		0, 1, 30,	true, true, true, true, 14, 42,	true, 0, false, 1, 	true, true, true, true, -1 ); // 42 max bullets
EQ_MOSIN            = init_equipment(false,     "M. NAGANT",	"Mosin-Nagant",			"mosin",    5, -1,		0, 4, 24,	true, true, false, true, 4, 12,	false, 2, false, 2,	false, false, false, true, -1 ); // 12 max bullets
EQ_M4               = init_equipment(false,     "M4",			"M4",					"m4",            4, -1,		0, 3, 30,	true, true, true, true, 30, 90,	true, 1, true, 2,		false, false, false, true, -1 ); // 90 max bullets
EQ_STINGER          = init_equipment(false,     "STINGER",		"Stinger",				"stinger",      -1, -1,		0, -1, 0,	true, false, false, true, 0, 10,	false, 2, false, 2,	false, false, false, false, -1 ); // 10 max bullets
EQ_PATRIOT          = init_equipment(false,     "PATRIOT",		"Patriot",				"patriot",      -1, -1,		0, 3, 30,	false, false, false, false, 0, 0,	true, 0, true, 2,		false, false, false, true, -1 ); // infinite bullets

EQ_MAGAZINE         = init_equipment(true,     "MAGAZINE",		"Magazine",				"mag",         15, -1,		1, -1, 0,	true, false, false, false, 0, 99,	false, 0, false, 0, false, false, false, false, ENT_MAG ); //max 99
EQ_SMOKE_GRENADE    = init_equipment(false,     "SMOKE G.",		"Smoke Grenade",		"smgrenade",    6, -1,		1, -1, 0,	true, false, false, false, 0, 10,	false, 0, false, 0, false, false, false, false, ENT_GREN_SMOKE ); //max 10
EQ_STUN_GRENADE     = init_equipment(false,     "STUN G.",		"Stun Grenade",			"stgrenade",    7, -1,		1, -1, 0,	true, false, false, false, 0, 10,	false, 0, false, 0, false, false, false, false, ENT_GREN_STUN ); //max 10
EQ_GRENADE          = init_equipment(false,     "GRENADE",		"Frag Grenade",			"frgrenade",     9, -1,		1, -1, 0,	true, false, false, false, 0, 10,	false, 0, false, 0, false, false, false, false, ENT_GREN_FRAG ); //max 10

EQ_C4               = init_equipment(false,     "C4",			"C4",					"c4",           10, -1,		2, -1, 0,	true, false, false, false, 0, 10,	false, 0, false, 0, false, false, false, false, ENT_PLNT_C4 ); // max 10
EQ_CLAYMORE         = init_equipment(false,     "CLAYMORE",		"Claymore",				"claymore",        12, -1,		2, -1, 0,	true, false, false, false, 0, 10,	false, 0, false, 0, false, false, false, false, ENT_PLNT_CLAYMORE ); // max 10
EQ_BOOK             = init_equipment(false,     "BOOK",			"Book",					"book",        13, -1,		2, -1, 0,	true, false, false, false, 0, 10,	false, 0, false, 0, false, false, false, false, ENT_PLNT_BOOK ); // max 10
EQ_SATCHEL      	= init_equipment(false,     "SATCHEL",		"Sleeping Gas Satchel",	"satchel",  	11, -1,		2, -1, 0,	true, false, false, false, 0, 10,	false, 0, false, 0, false, false, false, false, ENT_PLNT_SATCHEL ); // max 10

EQ_BOX              = init_equipment(true,     "BOX",			"Cardboard Box",		"box",          17, -1,		3, -1, 0,	true, false, false, false, 0, 10,	false, 0, false, 0, false, false, false, false, -1 );
EQ_RATION           = init_equipment(false,     "RATION",		"Ration",				"ration",   	16, -1,		3, -1, 0,	true, false, false, false, 0, 5,	false, 0, false, 0, false, false, false, false, -1 );
EQ_INF_BANDANA      = init_equipment(false,     "BANDANA",		"Infinity Bandana",		"bandana",      -1, -1,		3, -1, 0,	true, false, false, false, 0, 5,	false, 0, false, 0, false, false, false, false, -1 );
EQ_STEALTH_CAMO     = init_equipment(false,     "STEALTH",		"Stealth Camouflage",	"scamo",        -1, -1,		3, -1, 0,	true, false, false, false, 0, 5,	false, 0, false, 0, false, false, false, false, -1 );

i = 0;


//-----------------------------------------
// Equipment Animation Initialization
//-----------------------------------------
init_equipment_anim_settings(EQ_M9, 		true, "aim_head_fspecial", 2, -46, 0.75,	"aim_armsf_fspecial_pistol",	"aim_armsb_fspecial_pistol",	0, -44, 58, -7, 0, 	"sfx_w_pistol_fire_m9", "sfx_w_pistol_fire_m9s", "sfx_w_pistol_fire_dry", 96);
init_equipment_anim_settings(EQ_SOCOM,		true, "aim_head_fspecial", 2, -46, 0.75,	"aim_armsf_fspecial_pistol",	"aim_armsb_fspecial_pistol",	0, -44, 58, -7,	0,	"sfx_w_pistol_fire_socom", "sfx_w_pistol_fire_socoms", "sfx_w_pistol_fire_dry", 96);
init_equipment_anim_settings(EQ_MOSIN,		true, "aim_head_fspecial", 2, -46, 0.75,	"aim_armsf_fspecial_barifle",	"aim_armsb_fspecial_barifle",	-2, -44, 80, -2,	1,	"sfx_w_rifle_fire_mosin", noone, "sfx_w_rifle_fire_dry", 256);
init_equipment_anim_settings(EQ_M4, 		true, "aim_head_fspecial", 2, -46, 0.75,	"aim_armsf_fspecial_rifle", 	"aim_armsb_fspecial_rifle", 	-2, -44, 76, -2,	2,	"sfx_w_rifle_fire_m4", noone, "sfx_w_rifle_fire_dry", 160);
init_equipment_anim_settings(EQ_STINGER,	true, "aim_head_fspecial", 2, -46, 0.75,	"aim_armsf_fspecial_launcher",	"aim_armsb_fspecial_launcher",	-2, -44, 76, -2,	-1,	noone, noone, noone, 0);
init_equipment_anim_settings(EQ_PATRIOT, 	true, "aim_head_fspecial", 2, -46, 0.75,	"aim_armsf_fspecial_rifle", 	"aim_armsb_fspecial_rifle", 	-2, -44, 76, -2,	2,	"sfx_w_rifle_fire_m4", noone, "sfx_w_rifle_fire_dry", 0);

// Crawl/Supine Animation Coordinates
init_equipment_anim_crawl_settings(EQ_M9,			20, -12, 14, -12,		0, 0, 0, 0);
init_equipment_anim_crawl_settings(EQ_SOCOM,		20, -12, 14, -12,		0, 0, 0, 0);
init_equipment_anim_crawl_settings(EQ_MOSIN,		20, -12, 16, -14,		0, 0, 0, 0);
init_equipment_anim_crawl_settings(EQ_M4,			20, -12, 16, -14,		0, 0, 0, 0);
init_equipment_anim_crawl_settings(EQ_STINGER,		0, 0, 0, 0,				0, 0, 0, 0); // No crouching while aiming for launchers.
init_equipment_anim_crawl_settings(EQ_PATRIOT,		20, -12, 16, -14,		0, 0, 0, 0);


//-----------------------------------------
// Equipment Description Initialization
//-----------------------------------------
dict_equipment[EQ_M9].description				= "Tranquilizer gun. Press FORWARD + SPECIAL to aim, and press ATTACK to fire. Put on/off suppressor w/ ATTACK.";
dict_equipment[EQ_SOCOM].description			= ".45 handgun. Press FORWARD + SPECIAL to aim, and press ATTACK to fire. Put on/off suppressor w/ ATTACK.";
dict_equipment[EQ_MOSIN].description			= "Tranquilizer rifle. Press FORWARD + SPECIAL to aim, and press ATTACK to fire.";
dict_equipment[EQ_M4].description				= "Assault rifle. 30 rounds per magazine. Press FORWARD + SPECIAL to aim, and press ATTACK for automatic fire.";

dict_equipment[EQ_MAGAZINE].description			= "Empty magazine. Press SPECIAL to hold, and press ATTACK to throw. Direction held varies distance.";
dict_equipment[EQ_SMOKE_GRENADE].description	= "Grenade that disperses smoke screen. Press SPECIAL to hold, and press ATTACK to throw.";
dict_equipment[EQ_STUN_GRENADE].description		= "Grenade. Press SPECIAL to hold, and press ATTACK to throw. Direction held varies distance.";
dict_equipment[EQ_GRENADE].description			= "Grenade that stuns enemies temporarily. Press SPECIAL to hold, and press ATTACK to throw.";

dict_equipment[EQ_C4].description				= "Plastic explosive w/ remote detonator. Press DOWN + SPECIAL to hold, ATTACK to set, and TAUNT to detonate.";
dict_equipment[EQ_CLAYMORE].description			= "Anti-personnel landmine w/ front sensor. Press DOWN + SPECIAL to hold, and press ATTACK to set.";
dict_equipment[EQ_BOOK].description				= "Publication w/ adult-oriented material. Press DOWN + SPECIAL to hold, and press ATTACK to set.";
dict_equipment[EQ_SATCHEL].description			= "Sleep gas dispersal device. Press DOWN + SPECIAL to hold, ATTACK to set, and TAUNT to detonate.";

dict_equipment[EQ_BOX].description				= "Cardboard box to transport perishable foods. Press UP + SPECIAL while on the ground to wear.";
dict_equipment[EQ_RATION].description			= "''Meal ready to eat'' to restore life. Press UP + SPECIAL while on the ground to use.";


//-----------------------------------------
// Inventory Initialization
//-----------------------------------------
inv_menu_open = false;
inv_can_open = true;

codec_menu_open = false;

supply_menu_open = false;

inv_display_cycle = false;														// Used for displaying the next/previous cycled equipment
inv_display_cycled_category = 0;

// Currently equipped weapon slots.
/*
Usage:
inv_firearm = inv_firearm_containers[inv_firearm_container]; // Get the weapon index for the array

Subtract ammo example:
dict_equipment[inv_firearm].total_ammo -= 1;

*/

inv_firearm = 0;																// The currently selected indexes.
inv_throwable = 0;
inv_plantable = 0;
inv_item = 0;

inv_firearm_late = 0;															// The last frame's selected indexes.
inv_throwable_late = 0;
inv_plantable_late = 0;
inv_item_late = 0;

inv_firearm_prev = 0;															// The last firearm container you had equipped. (For toggling your firearm.)

inv_firearm_container = 0;														// The currently selected containers.
inv_throwable_container = 0;
inv_plantable_container = 0;
inv_item_container = 0;

// TODO: Remove these? Probably useless.
//inv_firearm_container_late = 0;													// The last frame's selected container. (Used to detect if we switched our inventory selection.)
//inv_throwable_container_late = 0;
//inv_plantable_container_late = 0;
//inv_item_container_late = 0;

ui_cursor_x = 0;																// Cursor X position
ui_cursor_y = 0;																// Cursor Y position

inventory_refresh();


//-----------------------------------------
// Inventory UI Initialization
//-----------------------------------------
ui_state = [0];

// UI state indexes
UI_NOONE = 0;                                                              // Initialize UI state indexes
UI_INV_MAIN = 1;
// Firearms / Melee Weapons
UI_INV_FIREARMS_OPEN    = 2;
UI_INV_FIREARMS_IDLE    = 3;
UI_INV_FIREARMS_NEXT    = 4;
UI_INV_FIREARMS_PREV    = 5;
UI_INV_FIREARMS_CLOSE   = 6;
// Throwables
UI_INV_THROWABLES_OPEN  = 7;
UI_INV_THROWABLES_IDLE  = 8;
UI_INV_THROWABLES_NEXT  = 9;
UI_INV_THROWABLES_PREV  = 10;
UI_INV_THROWABLES_CLOSE = 11;
// Plantables
UI_INV_PLANTABLES_OPEN  = 12;
UI_INV_PLANTABLES_IDLE  = 13;
UI_INV_PLANTABLES_NEXT  = 14;
UI_INV_PLANTABLES_PREV  = 15;
UI_INV_PLANTABLES_CLOSE = 16;
// Items
UI_INV_ITEMS_OPEN       = 17;
UI_INV_ITEMS_IDLE       = 18;
UI_INV_ITEMS_NEXT       = 19;
UI_INV_ITEMS_PREV       = 20;
UI_INV_ITEMS_CLOSE      = 21;

// Supply Drop Menu
UI_SUPPLY_IDLE      	= 22;

// TODO: Codec
// UI_CODEC_MAIN_OPEN
// UI_CODEC_MAIN_IDLE
// UI_CODEC_MAIN_EXIT
// UI_CODEC_MAIN_ADJ_RIGHT
// UI_CODEC_MAIN_ADJ_LEFT
// UI_CODEC_CONTACTS_OPEN
// UI_CODEC_CONTACTS_IDLE
// UI_CODEC_CONTACTS_CLOSE
// UI_CODEC_CALL_START
// UI_CODEC_CALL_IDLE
// UI_CODEC_CALL_CLOSE

// UI state properties
init_ui_state(UI_NOONE, 1, UI_NOONE);                                           // Initialize UI state properties
init_ui_state(UI_INV_MAIN, 60, UI_INV_MAIN);
// Firearms / Melee Weapons
init_ui_state(UI_INV_FIREARMS_OPEN, 6, UI_INV_FIREARMS_IDLE);
init_ui_state(UI_INV_FIREARMS_IDLE, 1, UI_INV_FIREARMS_IDLE);
init_ui_state(UI_INV_FIREARMS_NEXT, 8, UI_INV_FIREARMS_IDLE);
init_ui_state(UI_INV_FIREARMS_PREV, 8, UI_INV_FIREARMS_IDLE);
init_ui_state(UI_INV_FIREARMS_CLOSE, 6, UI_INV_MAIN);
// Throwables
init_ui_state(UI_INV_THROWABLES_OPEN, 6, UI_INV_THROWABLES_IDLE);
init_ui_state(UI_INV_THROWABLES_IDLE, 1, UI_INV_THROWABLES_IDLE);
init_ui_state(UI_INV_THROWABLES_NEXT, 8, UI_INV_THROWABLES_IDLE);
init_ui_state(UI_INV_THROWABLES_PREV, 8, UI_INV_THROWABLES_IDLE);
init_ui_state(UI_INV_THROWABLES_CLOSE, 6, UI_INV_MAIN);
// Plantables
init_ui_state(UI_INV_PLANTABLES_OPEN, 6, UI_INV_PLANTABLES_IDLE);
init_ui_state(UI_INV_PLANTABLES_IDLE, 1, UI_INV_PLANTABLES_IDLE);
init_ui_state(UI_INV_PLANTABLES_NEXT, 8, UI_INV_PLANTABLES_IDLE);
init_ui_state(UI_INV_PLANTABLES_PREV, 8, UI_INV_PLANTABLES_IDLE);
init_ui_state(UI_INV_PLANTABLES_CLOSE, 6, UI_INV_MAIN);
// Items
init_ui_state(UI_INV_ITEMS_OPEN, 6, UI_INV_ITEMS_IDLE);
init_ui_state(UI_INV_ITEMS_IDLE, 1, UI_INV_ITEMS_IDLE);
init_ui_state(UI_INV_ITEMS_NEXT, 8, UI_INV_ITEMS_IDLE);
init_ui_state(UI_INV_ITEMS_PREV, 8, UI_INV_ITEMS_IDLE);
init_ui_state(UI_INV_ITEMS_CLOSE, 6, UI_INV_MAIN);
// Supply Drop Menu
init_ui_state(UI_SUPPLY_IDLE, 1, UI_SUPPLY_IDLE);

// UI navigation variables
ui_state_current = 0;                                                           // The UI state you're in.
//ui_state_timer = 0;                                                             // The timer for each UI state. Resets to 0 when changing to a new state.
ui_state_start_time = 0;                                                         // The time that the UI state was set.

// UI input variables
input_timer_nav_l = 0;                                                          // Used to detect if you're quickly pressing a direction.
input_timer_nav_r = 0;
input_timer_nav_u = 0;
input_timer_nav_d = 0;

input_timer_nav_stick_l = 0;                                                    // Used to detect if you're quickly pressing a direction.
input_timer_nav_stick_r = 0;
input_timer_nav_stick_u = 0;
input_timer_nav_stick_d = 0;
input_timer_nav_stick_l_late = 0;                                               // Used to detect if you've released a direction.
input_timer_nav_stick_r_late = 0;
input_timer_nav_stick_u_late = 0;
input_timer_nav_stick_d_late = 0;

input_timer_nav_cycle_threshold = 10;                                           // Longest number of frames to hold a direction, for it to count as a "tap".
input_timer_nav_cycle_allowed = true;											// Allow for temporarily disabling cycling. Used when closing a category menu.
input_timer_nav_scroll_threshold = 20;                                          // Number of frames to hold a navigation direction, before it auto scrolls.

input_timer_taunt = 0;                                                          // Used to detect if you're quickly pressing taunt.
input_timer_taunt_late = 0;                                                     // Used to detect if you've released taunt.
input_timer_taunt_toggle_threshold = 10;                                        // Longest number of frames to hold down taunt, for it to count as a "tap".


//-----------------------------------------
// Supply Menu Containers
//-----------------------------------------
// Firearms
supply_containers[0, 0] = {
	linked_equip: EQ_SOCOM,
	linked_pickup: ENT_PKUP_SOCOM,
	linked_pickup_ammo: ENT_PKUP_SOCOM_AMMO,
	linked_pickup_supp: ENT_PKUP_SOCOM_SUPP,
};
supply_containers[0, 1] = {
	linked_equip: EQ_M9,
	linked_pickup: ENT_PKUP_M9,
	linked_pickup_ammo: ENT_PKUP_M9_AMMO,
	linked_pickup_supp: ENT_PKUP_M9_SUPP,
};
supply_containers[0, 2] = {
	linked_equip: EQ_M4,
	linked_pickup: ENT_PKUP_M4,
	linked_pickup_ammo: ENT_PKUP_M4_AMMO,
};
supply_containers[0, 3] = {
	linked_equip: EQ_MOSIN,
	linked_pickup: ENT_PKUP_MOSIN,
	linked_pickup_ammo: ENT_PKUP_MOSIN_AMMO,
};
// Throwables
supply_containers[1, 0] = {
	linked_equip: EQ_SMOKE_GRENADE,
	linked_pickup: ENT_PKUP_SMOKE_GRENADE,
};
supply_containers[1, 1] = {
	linked_equip: EQ_STUN_GRENADE,
	linked_pickup: ENT_PKUP_STUN_GRENADE,
};
supply_containers[1, 2] = {
	linked_equip: EQ_GRENADE,
	linked_pickup: ENT_PKUP_GRENADE,
};
// Plantables
supply_containers[2, 0] = {
	linked_equip: EQ_C4,
	linked_pickup: ENT_PKUP_C4,
};
supply_containers[2, 1] = {
	linked_equip: EQ_SATCHEL,
	linked_pickup: ENT_PKUP_SATCHEL,
};
supply_containers[2, 2] = {
	linked_equip: EQ_CLAYMORE,
	linked_pickup: ENT_PKUP_CLAYMORE,
};
/*supply_containers[2, 3] = {
	linked_equip: EQ_BOOK,
	linked_pickup: ENT_PKUP_BOOK,
};*/
// Items
supply_containers[3, 0] = {
	linked_equip: EQ_BOX,
	linked_pickup: ENT_PKUP_BOX,
};
/*supply_containers[3, 1] = {
	linked_equip: EQ_RATION,
	linked_pickup: ENT_PKUP_RATION,
};*/


//-----------------------------------------
// Supply Drop Variables
//-----------------------------------------
supplydrop_point_x = 0;															// The supply drop coordinates
supplydrop_point_y = 0;
supplydrop_wait_time = 4 * 60;													// 5 Seconds to wait for supply drop
supplydrop_request_time = -(supplydrop_wait_time + 1);							// The time the supply drop was requested
supplydrop_ent_box = noone;														// The supply drop box entity.
supplydrop_box_spawn_y = -500;													// The relative height at which to spawn the box.
supplydrop_pickup_1 = noone;													// The pickup entities to spawn
supplydrop_pickup_2 = noone;
supplydrop_pickup_3 = noone;



//-----------------------------------------
// Aiming Variables
//-----------------------------------------

sna_is_aiming = false;															// Whether or not Snake is aiming.
//sna_is_aiming_late = false;
sna_lock_aiming = false;														// Whether or not to lock Snake's aim angle.
sna_aim_dir = 0;																// The current aim angle
//sna_aim_dir_visual = 0;															// The the visual aim angle, that takes spr_dir into account. ONLY USED FOR SPRITES!
sna_aim_dir_target = 0;															// The target aim angle
sna_aim_speed_lerp = 0;
sna_aim_speed_max = 30;															// How fast Snake aims towards the target angle
sna_aim_accel = 0.05;
sna_aim_accel_stick = 0.01;
sna_arms_x = 0;																	// The current coordinates for Snake's arms.
sna_arms_y = 0;
sna_head_x = 0;																	// The current coordinates for Snake's head.
sna_head_y = 0;
sna_muzzle_x = 0;																// The coordinates for the end of Snake's firearm.
sna_muzzle_y = 0;
sna_aim_crosshair_angle = 0;
//sna_aim_radius = 512;															// How far the crosshair is from Snake.
sna_aim_target = noone;															// The object that Snake's raycast hits, if any.
//sna_aim_raycast_x = 0;															// The raycast hit point when you're aiming.
//sna_aim_raycast_y = 0;
sna_fire_buffered = false;


//-----------------------------------------
// Aiming Legs Variables
//-----------------------------------------
sna_is_using_aimlegs = false;													// Whether or not Snake is using the aim legs.
sna_is_using_aimlegs_late = sna_is_using_aimlegs;
sna_legs_strafemode = false;													// Whether or not the legs are in Strafe mode.
sna_legs_window = 0;															// 0 = idle, 1 = walk forward, 2 = walk backward
sna_legs_window_late = 0;
sna_legs_window_sprite = sprite_get("aim_legs_idle");							// 0 = idle, 1 = walk forward, 2 = walk backward
sna_legs_anim_start_frame = 0;													// Start frame
sna_legs_anim_end_frame = 0;													// End frame
sna_legs_anim_frame = 0;														// Current Frame;
sna_legs_walk_speed = 2.5;														// How fast you move while aiming.
sna_legs_acceleration = 0.15;													// Rate at which Snake's walk accelerates.
sna_legs_window_timer = 0;														// How many frames have passed in the window.
sna_legs_window_length = 0;														// Current window length for the legs window.
sna_lock_aimwalk = true;														// Whether or not you can walk while aiming.



//-----------------------------------------
// Item Drops
//-----------------------------------------
sna_pkupdrop_queue = 0;



//----------------------------------------------
// CHEATS:
//----------------------------------------------

//give_equipment(EQ_STUN_KNIFE, 0, false);
//give_equipment(EQ_M9, 999, true);
//give_equipment(EQ_SOCOM, 999, true);
//give_equipment(EQ_M4, 999, true);
//give_equipment(EQ_MOSIN, 999, true);

//give_equipment(EQ_MAGAZINE, 999, false);
//give_equipment(EQ_SMOKE_GRENADE, 999, false);
//give_equipment(EQ_STUN_GRENADE, 999, false);
//give_equipment(EQ_GRENADE, 999, false);

//give_equipment(EQ_C4, 999, false);
//give_equipment(EQ_SATCHEL, 999, false);
//give_equipment(EQ_CLAYMORE, 999, false);
//give_equipment(EQ_BOOK, 999, false);

give_equipment(EQ_BOX, 1, false);				// Start Snake off with one box, since he has a box in his intro animation.
//give_equipment(EQ_RATION, 999, false);

//DELETEME: TEMPORARILY GIVE THE M9 A SILENCER
dict_equipment[EQ_M9].suppressor_attached = true;
dict_equipment[EQ_M9].suppressor_durability = 100;
//dict_equipment[EQ_M9].num_suppressors = 10;
dict_equipment[EQ_SOCOM].suppressor_attached = true;
dict_equipment[EQ_SOCOM].suppressor_durability = 100;
//dict_equipment[EQ_SOCOM].num_suppressors = 10;
/* TODO:
When picking up a suppressor, it should fill the suppressor durability to 100 if you have 0 suppressors, and 0 durability.
If you have more than 0 durability, increase the num_suppressors by 1.
NUM SUPPRESSORS DOES NOT INCLUDE THE CURRENTLY ATTACHED SUPPRESSOR!*/






//=========================================
// AARON'S CODE ENDS HERE :,(
//=========================================


// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

//muno_event_type = 0;
//user_event(14);

/*array_push(phone_offscreen, self);											// Used for custom offscreen bubble. Kinda buggy.
phone_offscr_sprite = sprite_get("ui_roa_offscreen"); // icon to display
phone_offscr_index = current_sprite_set; // image_index of the icon
phone_offscr_x_offset = 0; // x offset to draw the arrow at; uses spr_dir
phone_offscr_y_offset = -22; // y offset to draw the arrow at
phone_offscr_leeway = 30; // approximate width/height of obj*/


//=========================================
// FUNCTIONS
//=========================================


//-----------------------------------------
// Initialize Entities
//-----------------------------------------
#define init_entity(_can_be_grounded, _ignores_walls, _spr_idx, _msk_idx, _anim_type, _anim_length, _has_physics, _grav_spd, _max_fall, _air_frict, _ground_frict, _bounciness, _can_be_hit, _ignore_bounce_hitboxes, _can_push, _can_be_pushed, _life, _psyche, _dmg_threshold, _is_pickup, _pickup_item_idx, _pickup_give_item, _pickup_given_ammo, _pickup_given_suppressors, _pickup_fill_mag, _gren_fuselength, _gren_explodeonimpact_timer, _gren_explosion_fx, _gren_explosion_hbox, _gren_explosion_hbox_friendly, _gren_explosion_earshot, _plnt_sticky, _plnt_detonatable, _sfx_ready, _sfx_throw, _sfx_bounce, _sfx_on_hit, _sfx_gren_explode, _cleanup_time, _cleanup_dist)

dict_entities[i] = {
	
	// Article Settings
	can_be_grounded: _can_be_grounded,
	ignores_walls: _ignores_walls,
	
	// Draw Settings
	spr_idx: _spr_idx,                                                  		// The sprite index to use.
	msk_idx: _msk_idx,                                                  		// The mask index to use.
	anim_type: _anim_type,														// 0 = static, 1 = looping, 2 = physics windows, 3 = sticky windows
	anim_length: _anim_length,													// Animation speed. (1 only)
	
	// Physics Settings
	has_physics: _has_physics,													// Does this entity have physics?
	gravity_speed: _grav_spd,
	max_fall: _max_fall,
	air_friction: _air_frict,
	ground_friction: _ground_frict,
	bounciness: _bounciness,
	
	//has_player_bounce: _has_player_bounce,
	//player_bounce_damage: _player_bounce_dmg,
	can_be_hit: _can_be_hit,													// Can this entity be hit by hitboxes?
	ignore_bounce_hitboxes: _ignore_bounce_hitboxes,							// Can this entity be bonk'd by other entities?
	
	sna_can_push: _can_push,
	sna_can_be_pushed: _can_be_pushed,
	
	// Statistics
	life: _life,																// How much LIFE this entity starts out with. -1 for no LIFE system.		Triggers hook function when it reaches 0.
	psyche: _psyche,															// How much PSYCHE this entity starts out with. -1 for no PSYCHE system.	Triggers hook function when it reaches 0.
	dmg_threshold: _dmg_threshold,												// How much damage this entity can take, before triggering the damage threshold hook. -1 for no damage effect.
	
	// Pickup Settings
	is_pickup: _is_pickup,														// Can this entity be picked up?
	pickup_item_idx: _pickup_item_idx,											// Item index that this pickup relates to.
	pickup_gives_item: _pickup_give_item,										// True/False; Does this pickup give the player the item? (False for ammo boxes, and silencers.)
	pickup_given_ammo: _pickup_given_ammo,										// How much ammo should this pickup give?
	pickup_given_suppressors: _pickup_given_suppressors,						// How many suppressors should this pickup give?
	pickup_fill_mag: _pickup_fill_mag,											// Should this pickup fill the weapon's magazine? (True for weapon pickups. False for ammo boxes.)
	
	// Grenade Settings
	gren_fuselength: _gren_fuselength,
	gren_explodeonimpact_timer: _gren_explodeonimpact_timer,
	//gren_explodeonimpact: _gren_explodeonimpact,
	gren_explosion_fx: _gren_explosion_fx,
	gren_explosion_hbox: _gren_explosion_hbox,									// Explosion hitbox index. (Index from nspecial.gml. Set to "noone" for no hitbox.)
	gren_explosion_hbox_friendly: _gren_explosion_hbox_friendly,				// Friendly fire explosion hitbox index. (Index from nspecial.gml. Set to "noone" for no friendly fire hitbox.)
	gren_explosion_earshot: _gren_explosion_earshot,							// The distance from the explosion that opponents can hear it from.
	
	// Plantable Settings
	plnt_sticky: _plnt_sticky,													// Can this plantable entity stick to objects?
	plnt_detonatable: _plnt_detonatable,										// Can this plantable entity be detonated?
	
	// Sound Settings
	sfx_ready: _sfx_ready,
	sfx_throw: _sfx_throw,
	sfx_bounce: _sfx_bounce,
	sfx_on_hit: _sfx_on_hit,
	sfx_gren_explode: _sfx_gren_explode,
	
	// Optimization Settings
	cleanup_time: _cleanup_time,
	cleanup_distance: _cleanup_dist,
	
	
};

i++;
return i - 1;



//-----------------------------------------
// Equipment Dictionary Initialization
//-----------------------------------------
#define init_equipment( _is_owned, _name, _fullname, _spritename, _icon_index, _icon_index_s, _category, _hitbox_idx, _projectile_speed, _uses_ammo, _uses_magazines, _gives_magazines, _uses_ammo_boxes, _ammo_mag_max, _ammo_total_max, _automatic_chambering, _reload_chambering_mode, _full_auto, _hold_type, _uses_suppressors, _can_cqc, _can_human_shield, _can_hold_up, _ent_idx )

dict_equipment[i] = {
    
    is_owned: _is_owned,                                                        // Do you have this equipment in your inventory?
    
    name: _name,                                                                // String for the equipment's display name.
    fullname: _fullname,                                                        // String for the equipment's description name.
    spritename: _spritename,                                                    // String for the equipment's sprite name.
    icon_index: _icon_index,													// The image index used to display this item
    icon_index_s: _icon_index_s,												// The image index used to display this item's alt mode, if applicable. (For attaching silencers, lethal/non-lethal, etc.)
    category: _category,                                                        // 0 = firearms/melee (forward), 1 = throwables (neutral), 2 = plantables (down), 3 = items (up).
    
    description: "",
    
    hitbox_idx: _hitbox_idx,													// The hitbox number to use.
    proj_speed: _projectile_speed,
    
    uses_ammo: _uses_ammo,                                                      // Has a limited capacity.                              (True even for consumable items. False for special equipment.)
    uses_magazines: _uses_magazines,                                            // Used for firearms that reload.                       (False for items, grenades, and the stinger.)
    gives_magazines: _gives_magazines,											// Whether or not this firearm gives empty magazines.	(False for bolt-action rifles.)
    uses_ammo_boxes: _uses_ammo_boxes,                                          // Set to true for equipment that uses ammo boxes.      (False for rations and grenades.)
    
    ammo_mag: 0,
    ammo_mag_max: _ammo_mag_max,                                                // Max ammo per mag
    ammo_total: 0,
    ammo_total_max: _ammo_total_max,                                            // Total max ammo (including mag)
    
    mag_bullet_queue: 0,														// Subtracted every time you fire. If you reload while the number is below 0, you are given an empty magazine.
    
    is_chambered: false,														// Whether or not a round is in the chamber.
    automatic_chambering: _automatic_chambering,								// Whether or not you have to manually chamber for each shot. (True for auto or semi-auto, false for bolt-action, pump-action, single-action, etc.)
    reload_chambering_mode: _reload_chambering_mode,							// 0 = chamber when on dry reload, 1 = always chamber after reload, 2 = never chamber after reload.
    full_auto: _full_auto,														// Does holding the attack button cause it to continue to fire?
    
    hold_type: _hold_type,														// 0 = default, 1 = pistol, 2 = rifle
    
    uses_suppressors: _uses_suppressors,										// Whether or not this weapon uses suppressors.
    suppressor_attached: false,													// Whether or not a suppressor is attached.
    suppressor_durability: 0,													// The current suppressor durability.
    num_suppressors: 0,															// Misnomer: Number of backup suppressors for this weapon. (DOES NOT INCLUDE THE ATTACHED SUPPRESSOR.)
    
    // Only applicable to fspecial weapons:
    can_cqc: _can_cqc,                                                          // Can CQC be used with this weapon equipped?
    can_human_shield: _can_human_shield,                                        // Can you use this weapon while holding an opponent?
    can_hold_up: _can_hold_up,                                                  // Can you hold up opponents with this weapon?
    
    // Animation Settings (configured in different function)
    uses_aimlayers: false,
    spr_head: noone,
	spr_arms_f: noone,
	spr_arms_b: noone,
	head_x: 0,																	// Head anchor
	head_y: 0,
	head_crawl_x: 0,
	head_crawl_y: 0,
	head_supine_x: 0,															
	head_supine_y: 0,
	head_ang_multiplier: 1.0,													// Make the head not rotate as much as the arms. (To make it look less artificial.)
	arms_x: 0,																	// Arms anchor
	arms_y: 0,
	arms_crawl_x: 0,
	arms_crawl_y: 0,
	arms_supine_x: 0,															
	arms_supine_y: 0,
	muzzle_offset_x: 0,
	muzzle_offset_y: 0,
	
	muzzle_flash_idx: -1,														// Muzzle flash image index to use. -1 means no muzzle flash.
    
    sfx_fire: noone,
    sfx_fire_suppressed: noone,
    sfx_fire_dry: noone,
    
    crosshair_distance: 0,														// How far away the crosshair appears.
    
    // Entity Settings
    ent_idx: _ent_idx															// Index for the entity that this equipment creates.
    
};

i++;
return i - 1;



//-----------------------------------------
// Equipment Animation Initialization
//-----------------------------------------
#define init_equipment_anim_settings(_idx, _uses_aimlayers, _spr_head, _head_x, _head_y, _head_ang_multiplier, _spr_arms_f, _spr_arms_b, _arms_x, _arms_y, _muzzle_offset_x, _muzzle_offset_y, _muzzle_flash_idx, _sfx_fire, _sfx_fire_suppressed, _sfx_fire_dry, _crosshair_distance)

dict_equipment[_idx].uses_aimlayers = _uses_aimlayers;
dict_equipment[_idx].spr_head = _spr_head;
dict_equipment[_idx].spr_arms_f = _spr_arms_f;
dict_equipment[_idx].spr_arms_b = _spr_arms_b;
dict_equipment[_idx].head_x = _head_x;
dict_equipment[_idx].head_y = _head_y;
dict_equipment[_idx].head_ang_multiplier = _head_ang_multiplier;
dict_equipment[_idx].arms_x = _arms_x;
dict_equipment[_idx].arms_y = _arms_y;
dict_equipment[_idx].muzzle_offset_x = _muzzle_offset_x;
dict_equipment[_idx].muzzle_offset_y = _muzzle_offset_y;

dict_equipment[_idx].muzzle_flash_idx = _muzzle_flash_idx;

dict_equipment[_idx].sfx_fire = _sfx_fire;
dict_equipment[_idx].sfx_fire_suppressed = _sfx_fire_suppressed;
dict_equipment[_idx].sfx_fire_dry = _sfx_fire_dry;

dict_equipment[_idx].crosshair_distance = _crosshair_distance;



//-----------------------------------------
// Equipment Crawl Animation Initialization
//-----------------------------------------
#define init_equipment_anim_crawl_settings(_idx, _head_crawl_x, _head_crawl_y, _arms_crawl_x, _arms_crawl_y, _head_supine_x, _head_supine_y, _arms_supine_x, _arms_supine_y )

dict_equipment[_idx].head_crawl_x = _head_crawl_x;
dict_equipment[_idx].head_crawl_y = _head_crawl_y;
dict_equipment[_idx].head_supine_x = _head_supine_x;
dict_equipment[_idx].head_supine_y = _head_supine_y;
dict_equipment[_idx].arms_crawl_x = _arms_crawl_x;
dict_equipment[_idx].arms_crawl_y = _arms_crawl_y;
dict_equipment[_idx].arms_supine_x = _arms_supine_x;
dict_equipment[_idx].arms_supine_y = _arms_supine_y;



//==============================================================================
// GIVE EQUIPMENT FUNCTIONS
//==============================================================================

/* WARNING:
If making changes to these functions, remember to update these in all the other
scripts that also share these functions.

These scripts are:
	- init.gml
	- attack_update.gml
	
TODO: Put these functions in a user event?

*/

//-----------------------------------------
// Give Equipment
//-----------------------------------------
#define give_equipment(_idx, _ammo, _fill_magazine)															// Give an item. Specify the given ammo, and whether or not it should fill the magazine.
var _given_equipment = dict_equipment[_idx];

dict_equipment[_idx].is_owned = true;																		                    // Give the player the equipment.

if (_given_equipment.uses_ammo) {																								// If the given equipment uses ammo...
	
	give_ammo(_idx, _ammo, _fill_magazine);																						// Give the player the desired ammo.
	
	dict_equipment[_idx].is_chambered = (_given_equipment.ammo_mag > 0) ? true : false;											// If the mag has ammo, chamber it. If the mag comes empty, don't chamber it.

	
}

inventory_refresh();																						                    // Rebuild the inventory lists.



//-----------------------------------------
// Give Ammo
//-----------------------------------------
#define give_ammo(_idx, _ammo, _fill_magazine)
var _given_equipment = dict_equipment[_idx];

dict_equipment[_idx].ammo_total = clamp(dict_equipment[_idx].ammo_total + _ammo, 0, _given_equipment.ammo_total_max);		// Give the player the desired ammo.

if (_fill_magazine == true && _given_equipment.uses_magazines == true) {													// Should the magazine be filled?
	dict_equipment[_idx].ammo_mag = clamp(_given_equipment.ammo_total, 0, _given_equipment.ammo_mag_max);	                // Fill the magazine, if specified.
	if (_given_equipment.mag_bullet_queue < 1)																				// If the mag bullet queue is less than 1...
		dict_equipment[_idx].mag_bullet_queue = clamp(_given_equipment.mag_bullet_queue + _ammo, -_given_equipment.ammo_mag_max, _given_equipment.ammo_mag_max);	// Reset the mag bullet queue.
}



//-----------------------------------------
// Remove Equipment
//-----------------------------------------
#define remove_equipment(_idx )														// Remove an item. Specify the given ammo, and whether or not it should fill the magazine.
var _taken_equipment = dict_equipment[_idx];

dict_equipment[_idx].is_owned = false;												// Remove the equipment.

inventory_refresh();																// Rebuild the inventory lists.


#define inv_update_firearm_index												// Update the current firearm index.
inv_firearm = inv_firearm_containers[inv_firearm_container];

if (inv_firearm != EQ_EMPTY) inv_firearm_prev = inv_firearm;					// If you didn't switch to an empty slot, update your previously equipped firearm to the currently equipped one.

#define inv_update_throwable_index												// Update the current throwable index.
inv_throwable = inv_throwable_containers[inv_throwable_container];

#define inv_update_plantable_index												// Update the current plantable index.
inv_plantable = inv_plantable_containers[inv_plantable_container];

#define inv_update_item_index													// Update the current item index.
inv_item = inv_item_containers[inv_item_container];


//-----------------------------------------
// Refresh Inventory
//-----------------------------------------
#define inventory_refresh                                                       // Go through the equipment dictionary, and add the owned equipment to the inventory.
inv_firearm_containers = [];
inv_throwable_containers = [];
inv_plantable_containers = [];
inv_item_containers = [];

for (var _i = 0; _i < array_length(dict_equipment); _i++) {
    var _category = dict_equipment[_i].category;
    
    // Add an empty container to the firearms category, by default.
    if (_i == EQ_EMPTY) array_push(inv_firearm_containers, EQ_EMPTY);				// By default, add an empty container to the firearms category. THIS IS REQUIRED!!!
    
    else {																			// Skip EQ_EMPTY, since whether or not you "own" it shouldn't affect anything.
    	
    	// Add the rest of the owned weapons.
	    if (dict_equipment[_i].is_owned) {                                          // If the weapon is owned...
	        
	        if (_category == 0) array_push(inv_firearm_containers, _i);              // Add the equipment IDs to the inventory slots.
	        else if (_category == 1) array_push(inv_throwable_containers, _i);
	        else if (_category == 2) array_push(inv_plantable_containers, _i);
	        else if (_category == 3) array_push(inv_item_containers, _i);
	        
	    }
    
    }
    
}

// Handle container categories with no equipment:
if (array_length(inv_throwable_containers) == 0) array_push(inv_throwable_containers, EQ_EMPTY);	// If you have an empty category, add an empty container to each empty category.
if (array_length(inv_plantable_containers) == 0) array_push(inv_plantable_containers, EQ_EMPTY);
if (array_length(inv_item_containers) == 0) array_push(inv_item_containers, EQ_EMPTY);


inventory_retain_selection();                                                   // Retain the current inventory selection.

// Update the inventory equipment IDs
inv_update_firearm_index();														// Update the currently selected inventory indexes.
inv_update_throwable_index();
inv_update_plantable_index();
inv_update_item_index();



//-----------------------------------------
// Retain Inventory Selections
//-----------------------------------------
#define inventory_retain_selection												// Retain the inventory selection. Used after adding/removing an inventory item.

// Firearms
for (var i = 0; i < array_length(inv_firearm_containers); i++) {				// Loop through the firearm containers, and find the currently equipped firearm.
	
	if (inv_firearm_containers[i] == inv_firearm)								// If you find the previously equipped firearm index...
		inv_firearm_container = i;												// Set the current firearm container to this one.
	
	else if (i == array_length(inv_firearm_containers) - 1) {				    // If you haven't found your last equipped firearm...
		
		inv_firearm_container = clamp(inv_firearm_container, 0, i);				// Clamp the current container, in case it's over the array length.
		
	}
	
}

// Throwables
for (var i = 0; i < array_length(inv_throwable_containers); i++) {				// Loop through the throwable containers, and find the currently equipped throwable.
	
	if (inv_throwable_containers[i] == inv_throwable)							// If you find the previously equipped throwable index...
		inv_throwable_container = i;											// Set the current throwable container to this one.
	
	else if (i == array_length(inv_throwable_containers) - 1) {		// If you haven't found your last equipped throwable...
		
		inv_throwable_container = clamp(inv_throwable_container, 0, i);			// Clamp the current container, in case it's over the array length.
		
	}
	
}

// Plantables
for (var i = 0; i < array_length(inv_plantable_containers); i++) {				// Loop through the plantable containers, and find the currently equipped plantable.
	
	if (inv_plantable_containers[i] == inv_plantable)							// If you find the previously equipped plantable index...
		inv_plantable_container = i;											// Set the current plantable container to this one.
	
	else if (i == array_length(inv_plantable_containers) - 1) {		// If you haven't found your last equipped plantable...
		
		inv_plantable_container = clamp(inv_plantable_container, 0, i);			// Clamp the current container, in case it's over the array length.
		
	}
	
}

// Items
for (var i = 0; i < array_length(inv_item_containers); i++) {					// Loop through the item containers, and find the currently equipped item.
	
	if (inv_item_containers[i] == inv_item)										// If you find the previously equipped item index...
		inv_item_container = i;													// Set the current item container to this one.
	
	else if (i == array_length(inv_item_containers) - 1) {						// If you haven't found your last equipped item...
		
		inv_item_container = clamp(inv_item_container, 0, i);					// Clamp the current container, in case it's over the array length.
		
	}
	
}



//-----------------------------------------
// Initialize UI States
//-----------------------------------------
#define init_ui_state( _index, _state_length, _next_state)                      // Set up the state arrays for
ui_state[_index] = {
    state_length: _state_length,
    next_state: _next_state
};
