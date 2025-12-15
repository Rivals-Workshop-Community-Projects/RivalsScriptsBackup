// ==========
// custom vars start
// ==========

//Rune Stuff

//tier 1
property1HouseStartRune = has_rune("A");
dattackRune = has_rune("B");
incCashGainHitRune = has_rune("C");
strongPropertyProjRune = has_rune("D");
//deathCashConvertRune = has_rune("E");
passiveCashGainRune = has_rune("E");
uspecialBoostRune = has_rune("F");
//------
//tier 2
propertyAutoUpgradeRune = has_rune("G");
strongProjRune = has_rune("H");
pureDoublesRune = has_rune("I");
fstrongRune = has_rune("J");
//
//------
//tier 3
propertyAutoAttackRune = has_rune("L");
propertyWidthRune = has_rune("M");
propertyMagnetRune = has_rune("N");
thirdPropRune = has_rune("O");

//-------

hud_color = get_player_hud_color(player);

currCash = 200 + (thirdPropRune * 200);

cashGainMultInc = 0;

//dattack vars
dattackInitHitboxHit = false;
dattack_taunt_input = false;
dattackTouchingPropertiesDuringStartup = false;

fstrongRuneTimesThrough = 0;

didDStrongHit = 0;

//nspecial vars
nspecialShouldBeDoubles = false;
nspecialDice1Value = 0;
nspecialDice2Value = 0;
dice1Landed = false;
dice2Landed = false;
diceLifetime = 0;
killDice = false;
calculateDoubles = false;
doublesCount = 0;
doublesSameValueManip = 0;
doublesBoostTimer = 0;
doublesBoostTimerLength = 240;
doublesUsage = false;
inJail = false;
diceParried = 0;
diceAfterimages = 0;
diceAfterimagesMaxTimer = 5;
dice1 = noone;
dice2 = noone;

//doubles stats
doublesWalkSpeedInc = 0;
doublesDashStartSpeedInc = 0;
doublesDashSpeedInc = 0;
doublesAirAccelInc = 0;
doublesAirMaxSpeedInc = 0;
doublesLeaveGroundMaxInc = 0;

//fspecial vars
fspecialCashRequired = 40;
fspecialNoCashTextTimer = 0;
fspecProj_speedChange = 0;

fspec_grabbed_property = 0;
fspec_grabbed_property_housesNum = 0;
fspec_didAlreadyThrow = false;

touchingAnyPropFSpec = false;

//uspecial
uspecial_attacked_out_of = false;
dontSpawnUSpecWJvfx = true;
dontSpawnUSpecADvfx = true;

//property stuff
propertyBuildCashRequired = 100;
propertyUpgradeCashRequired = 40;

maxPropertiesAllowed = 2 + thirdPropRune;

property1 = noone;
property2 = noone;
property3 = noone;

property1Exists = false;
property2Exists = false;
property3Exists = false;

totalPropertiesExist = 0;
all_properties_exist = false;

touchingProperty1 = false;
touchingProperty2 = false;
touchingProperty3 = false;

touchingPropertyNumber = 0;

// hit fx

money_hit_fx_lrg = hit_fx_create(sprite_get("hit_fx_money_lrg"), 27);
money_hit_fx_sml = hit_fx_create(sprite_get("hit_fx_money_sml"), 27);

// ==========
// custom vars end
// ==========

hurtbox_spr = sprite_get("mrMonopoly_hurtbox");
crouchbox_spr = sprite_get("mrMonopoly_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 64;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .21;
pratfall_anim_speed = .25;

walk_speed = 3; //keep this variable (note to myself)
walk_accel = 0.15;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6.85;
dash_speed = 5.5;
dash_turn_time = 18;
dash_turn_accel = 1.2;
dash_stop_time = 9;
dash_stop_percent = .02; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.05;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 5.2; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3.5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 7;
walljump_time = 26;
wall_frames = 2;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier >

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 8;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 4;
techroll_recovery_frames = 4;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 7;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 4;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//SFX Init
sfx_minecraft_minecart = sound_get("sfx_minecraft_minecart");
sfx_monopoly_ds_cash = sound_get("sfx_monopoly_ds_cash");
sfx_monopoly_ds_dice_shake = sound_get("sfx_monopoly_ds_dice_shake");
sfx_monopoly_ds_doubles = sound_get("sfx_monopoly_ds_doubles");
sfx_monopoly_pc_chat = sound_get("sfx_monopoly_pc_chat");
sfx_monopoly_pc_dice_bounce1 = sound_get("sfx_monopoly_pc_dice_bounce1");
sfx_monopoly_pc_dice_bounce2 = sound_get("sfx_monopoly_pc_dice_bounce2");
sfx_monopoly_pc_jail = sound_get("sfx_monopoly_pc_jail");
sfx_monopoly_pc_jail_leave = sound_get("sfx_monopoly_pc_jail_leave");
sfx_monopoly_pc_property_buy = sound_get("sfx_monopoly_pc_property_buy");
sfx_monopoly_pc_property_improve = sound_get("sfx_monopoly_pc_property_improve");
sfx_monopoly_pc_taxi_move = sound_get("sfx_monopoly_pc_taxi_move");
sfx_monopoly_pc_taxi_start = sound_get("sfx_monopoly_pc_taxi_start");
sfx_monopoly_pc_taxi_stop = sound_get("sfx_monopoly_pc_taxi_stop");
sfx_smash_ult_snake_uspec_1 = sound_get("sfx_smash_ult_snake_uspec_1");
sfx_smash_ult_snake_uspec_2 = sound_get("sfx_smash_ult_snake_uspec_2");
victory_theme = sound_get("victory");
victory_theme_infomaniac = sound_get("victory_infomaniac");
victory_theme_layton = sound_get("victory_layton");

//Victory Theme (Pulled from Monopoly PLUS: "Game Over")
set_victory_theme(victory_theme);

//Portrait Setting Stuff
set_victory_portrait( sprite_get( "portrait" ));
set_victory_sidebar( sprite_get( "result_small" ));

gb_alt = (get_player_color(player) == 7);
gold_alt = (get_player_color(player) == 17);

switch (get_player_color( player )){
	case 7:
		set_victory_portrait( sprite_get( "portrait_ea" ));
		set_victory_sidebar( sprite_get( "result_small_ea" ));
		break;
	case 17:
		set_victory_portrait( sprite_get( "portrait_gold" ));
		set_victory_sidebar( sprite_get( "result_small_gold" ));
		break;
	case 21:
		set_victory_theme(victory_theme_infomaniac);
		break;
	case 25:
		set_victory_theme(victory_theme_infomaniac);
		break;
}

//Compatability
TCG_Kirby_Copy = 7; //Leaf
otto_bobblehead_sprite = sprite_get("otto");
steve_death_message = "Steve went bankrupt";
link_spear_drop = 1;
Hikaru_Title = "Monopolizing Creep";
//personaQuips[10] = "GOAL!";
//tcoart = sprite_get("tco_sketch");
ncode1 = "An old man obsessed with cash and monopolies.";
ncode2 = "Somehow is successful with bankrupting people.";
ncode3 = "Prepare to gamble your savings away.";
arena_title = "The Monopolizing Buisnessman";
arena_short_name = "Mr. Monopoly";
battle_text = "* Your wallet suddenly begins to feel heavy.";
has_fail = true;
fail_text = "Of course you had to land on Boardwalk!";
//gfzsignspr = sprite_get("gfz")
user_event(7); //Palutena's Guidance Codec

// home stage stuff
isOnMonopolyCity = false;
if (get_stage_data( SD_ID ) == 2904815440){
	isOnMonopolyCity = true;
}

// The Knight (Reiga) Dream Nail Dialogue
knight_compat_dream = 
    [
        "This filthy bug needs to go! It's lowering my property rent!",
        "You'll make a fine investment on my lands...",
        "Don't think you can just waltz away without giving me some rent for seeing me!"
    ]

isOnRivalsRogue = false;
if (get_stage_data( SD_ID ) == 3556602243){
	isOnRivalsRogue = true;
}

// rivals rogue stuff 
ror_card_fast_movement = 0;
ror_card_air_control = 0;
ror_card_higher_airspeed = 0;

ror_card_install_black_jack = 0;
ror_install_timer = 0;
ror_luck = 0;
ror_card_install_slow_start = 0;
ror_card_install_burst = 0;
ror_card_funny_dash = 0;
ror_tidal_mult = 0;
ror_card_gold_rush = 0;

if (isOnRivalsRogue){
	sandstorm_thing = obj_stage_main.sandstorm_active;
} else {
	sandstorm_thing = 1;
}




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