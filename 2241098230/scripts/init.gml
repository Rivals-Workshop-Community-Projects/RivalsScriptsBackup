hurtbox_spr = sprite_get("ryk_hurtbox");
crouchbox_spr = sprite_get("ryk_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 58;
idle_anim_speed = .15;
crouch_anim_speed = .15;
walk_anim_speed = .15;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3.0;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 5;
dash_speed = 5.75;
dash_turn_time = 15;
dash_turn_accel = 1;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7.4;
djump_speed = 10.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .6;
hitstun_grav = .53;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 11;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 6;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_med");
waveland_sound = asset_get("sfx_waveland_fors");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
speedboost_timer = 0;

//Local variables
hat_start = false;
hat_fx = hit_fx_create(sprite_get("riptide_hat_d"), 30)

grabbedid = noone;
grab_timer = 0;
grab_time_min = 30;
grab_time_max = 60;

dspecial_charge = 0;
dspecial_djump = false;

smoked_fx = hit_fx_create(sprite_get("smoke_debuff"), 12)
smoked = false; //The smoked status effect
smoke_hit_cooldown = 0;
smoke_consumed = noone; //Smoke consumption
smoke_timer_max = 600; //10 seconds

max_fall_def = max_fall;
walk_speed_def = walk_speed;
dash_speed_def = dash_speed;
air_max_speed_def = air_max_speed;
smokeconsume_fx_bot = hit_fx_create(asset_get("fire_consume_top_spr"), 18)
smokeconsume_fx_top = hit_fx_create(asset_get("fire_consume_bot_spr"), 18)
rounds_left = 12;

genesis_smoke_id = noone;
genesis_taunt = 0;
fspecial_hit = 0;
fspecial_hit_timer = 0;

set_victory_bg(sprite_get("victory_bg"));
set_victory_theme(sound_get("victory_theme"));

//Attacks with status effects
hbox_apply_smoke = [[AT_FSTRONG, 1], [AT_USTRONG, 1], [AT_DSTRONG, 1], [AT_EXTRA_1, 1], [AT_EXTRA_1, 2], [AT_EXTRA_1, 3], [AT_DSPECIAL, 1], [AT_DSPECIAL, 2],[AT_DSPECIAL_AIR, 1], [AT_DSPECIAL_AIR, 2], [AT_DSPECIAL_AIR, 3]];
hbox_apply_smoke_consume = [[AT_UAIR, 3], [AT_FTHROW, 2], [AT_UTHROW, 2], [AT_FSPECIAL, 5], [AT_USPECIAL, 6]];
hbox_throws = [[AT_UAIR, 2], [AT_UAIR, 3], [AT_FTHROW, 1], [AT_FTHROW, 2], [AT_UTHROW, 1], [AT_UTHROW, 2],
[AT_FSPECIAL, 3],
[AT_FSPECIAL, 4],
[AT_FSPECIAL, 5],
[AT_FSPECIAL, 6],
[AT_USPECIAL, 6],
[AT_USPECIAL, 7]]; //These will only affect the player it can damage.

//haha fune
// racism_install = false;
// can_racism = true;

//COMPATIBILITY
//Adventure Mode
hit_player_event = 0;
//Mt. Dedede
arena_title = "The Smokescreen Powerhouse"
arena_short_name = "Rykenburn"

//Miiverse
miiverse_post = sprite_get("miiverse");
sprite_change_offset("miiverse", 60, 30);

//Soulbound Conflict
battle_text = "*Smoke clouds your vision...";

//Pokemon Stadium
pkmn_stadium_front_img = sprite_get("pokemon_front")
pkmn_stadium_back_img = sprite_get("pokemon_back")

//TCO
tcoart = sprite_get("rykenburntcoart");

//Dracula
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = asset_get("empty_sprite");
var page = 0;
dracula_speaker[page] = 0;
dracula_text[page] = "Another animal from the Fire Captial?";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "Not just any animal, Dracula. You're face to face with the great Rykenburn!";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "Loxodont's orders say that I have to take you out of this world...";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "...and back to the depths of Hell!";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "You Fire Capitol freaks are more annoying than I thought.[glass] Prepare to die, bull!";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "Bull?! [shake]I'M A BUFFALO!!";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "IT'S ON NOW, SUCKER!";
page++;

//Daroach
daroach_portrait = sprite_get("dracula_portrait");
daroach_portrait2 = asset_get("empty_sprite")
daroach_portrait3 = asset_get("empty_sprite")
var page = 0;
daroach_speaker[page] = 0;
daroach_text[page] = "Those flames... you must be from the Fire Capitol.";
page++;
daroach_speaker[page] = 1;
daroach_text[page] = "That's right, you mouse. Our army is the best in Aether!";
page++;
daroach_speaker[page] = 0;
daroach_text[page] = "Your army will be no match for my Squeak Squad! You're clearly outmatched!";
page++;
daroach_speaker[page] = 1;
daroach_text[page] = "Ha! Do you think a bunch of rodents are going to outclass us?";
page++;
daroach_speaker[page] = 1;
daroach_text[page] = "We eat suckers like you for breakfast!";
page++;
daroach_speaker[page] = 0;
daroach_text[page] = "You're a persistent one, arent you?[laugh] Once I'm done with you, your city's riches will be mine!";
page++;

//Pojumbo
pot_compat_variable = sprite_get("big_beef");
pot_compat_text = "Big Beef"

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