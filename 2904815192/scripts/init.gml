// ==========
// custom vars start
// ==========

//Rune Stuff

//tier 1
property1HouseStartRune = has_rune("A");
dattackRune = has_rune("B");
incCashGainHitRune = has_rune("C");
strongPropertyProjRune = has_rune("D");
deathCashConvertRune = has_rune("E");
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