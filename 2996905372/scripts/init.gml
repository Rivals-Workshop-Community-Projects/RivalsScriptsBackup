// init.gml

// ========= custom vars start =======

// which alt am i
alt_cur = get_player_color(player);

// nspec vars
nspecChargeTime = 0;
nspecStoredCharge = false;
nspecChargeShouldLoseOnParry = true; // self-explanatory. if its true, nspecials charge is lost on parry and vice verca
nspecOHKOVarOppDMG = 0; // this is for a rune. ignore it.
nspecChargeProg = 0;

// fspec vars
fspecTeleportAlongWall = false;
fspecTeleportDir = 0;
fspecShouldHavePratfall = true; // toggle this to true to enable pratfall on whiffed teleport, or if using an aerial out of side b and whiffing it.
fspecRuneTeleportToPlayerID = noone; // this is for a rune. ignore it.
fspecTeleToOpponent = false; // this is also for a rune. ignore it.
fspecUsedAerialOutOfMove = false; // this again is also for a rune. ignore it.
fspecTPdecayTimer = 0; // this also once again is also for a rune. ignore it.

// uspec stuff
uspecStartedOnGround = true;
uspecKiBlastTimer = 0; // ignore this
uspecKiBlastTimerSet = 3; // also ignore this
uspecKiBlastHasLooped = false;
uspecMoveUsedOutOfEndlag = false;
uspecLandedStrongHit = false;

// dspecial stuff
dspecChargeTime = 0;
dspecTimerVar = 0; // ignore this

// strong armor rune stuff
strongArmorRuneHasBeenHit = false;
strongArmorRuneActivated = false;

// ustrong
ustrongGrabbedPlayer = noone;

// dstrong stuff (mainly for the runes)
dstrongGroundSurroundLeft = [0, 0, 0, 0, 0];
dstrongGroundSurroundRight = [0, 0, 0, 0, 0];
dstrongCurrDetectedColl = noone;
dstrongTick = 0;
dstrongReleaseRuneTimer = 0;
dstrongStartedWhenAirborne = false;

// dair
dairChangedDir = false;

// combo count charge rune
comboRuneCounter = 0;
comboRuneCount = 0;

// "vfx" stuff
kiblast_hit_lrg = hit_fx_create(sprite_get("ki_large_hitfx"), 14);
kiblast_hit_sml = hit_fx_create(sprite_get("ki_sml_hitfx"), 14);
endlagUstrong_kiblast_vfx = hit_fx_create(sprite_get("ustrong_kiblast_vfx"), 12);

// rune stuff
// tier 1 runes
kiProjAttackRune = has_rune("A");
dairRune = has_rune("B");
tauntStoneRune = has_rune("C");
dattackChargeRune = has_rune("D");
nspecProjAimRune = has_rune("E");
solarFlareRangeRune = has_rune("F");

// tier 2 runes
dstrongBlastRune = has_rune("G");
comboChargeRune = has_rune("H");
uspecKiBlastRiseRune = has_rune("I");
strongsUseableInAirRune = has_rune("J");
extraJumpsRune = has_rune("K");

// tier 3 runes
fspecTeleportToOpponentRune = has_rune("L");
allGroundedJCRune = has_rune("M");
strongsArmorCounterRune = has_rune("N");
destructoDiscOHKORune = has_rune("O");

if (fspecTeleportToOpponentRune == true){
	fspecShouldHavePratfall = false;
}
// ========= custom vars end =========

// =======================================================================
// STAT NAME		    VALUE                   BASECAST RANGE      NOTES

// Physical size
char_height             = 54;                   //                  the height of the overhead hud - the arrow with your name and %
knockback_adj           = 1;		            // 0.9  -  1.2

// Ground movement
walk_speed              = 3.3;		            // 3    -  4.5
walk_accel              = 0.25;		            // 0.2  -  0.5
walk_turn_time          = 6;		            // 6
initial_dash_time       = 8;		            // 8    -  16       zetterburn's is 14
initial_dash_speed      = 7;		            // 4    -  9
dash_speed              = 6.5;		            // 5    -  9
dash_turn_time          = 10;		            // 8    -  20
dash_turn_accel         = 1.55;		            // 0.1  -  2
dash_stop_time          = 4;		            // 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.35;		            // 0.25 -  0.5
ground_friction         = 0.5;		            // 0.3  -  1
moonwalk_accel          = 1.35;		            // 1.2  -  1.4

// Air movement
leave_ground_max        = 6;		            // 4    -  8
max_jump_hsp            = 6;		            // 4    -  8
air_max_speed           = 5;  		            // 3    -  7
jump_change             = 3;		            // 3
air_accel               = 0.3;		        // 0.2  -  0.4
prat_fall_accel         = 0.8;		            // 0.25 -  1.5
air_friction            = 0.02;		            // 0.02 -  0.07
max_fall                = 10;		            // 6    -  11
fast_fall               = 14;		            // 11   -  16
gravity_speed           = 0.5;		            // 0.3  -  0.6
hitstun_grav            = 0.5;		            // 0.45 -  0.53

// Jumps
jump_start_time         = 5;		            // 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed              = 11;		            // 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 6.5;		            // 4    -  7.4
djump_speed             = 10;		            // 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = 0;		            // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time    = 0;		            //                  the amount of time that   djump_accel   is applied for
max_djumps            = 1+(extraJumpsRune * 3); // 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp            = 7;		            // 4    -  7
walljump_vsp            = 10;		            // 7    -  10
land_time               = 4;		            // 4    -  6
prat_land_time          = 16;		            // 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate
double_jump_time        = 30;					// 24   -  40
walljump_time           = 32;					// 18   -  32
wall_frames             = 2;					// may or may not actually work... dan pls

// Shield-button actions
wave_friction           = 0.15;		            // 0    -  0.15
wave_land_time          = 8;		            // 6    -  12
wave_land_adj           = 1.3;		            // 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 9;		            // 7    -  11
roll_backward_max       = roll_forward_max;		// 7    -  11       always the same as forward
air_dodge_speed         = 7.5;		            // 7.5  -  8
techroll_speed          = 10;		            // 8    -  11

// Animation speeds
idle_anim_speed = .11;
crouch_anim_speed = .1;
walk_anim_speed = .1;
dash_anim_speed = .215;
pratfall_anim_speed = .225;

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

// Crouch
crouch_startup_frames = 3;
crouch_active_frames = 20;
crouch_recovery_frames = 3;

// Parry
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

// Tech (who cares about this?)
tech_active_frames = 2;
tech_recovery_frames = 2;
techroll_startup_frames = 2;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

// Airdodge
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

// Rolls (Forward AND Backward)
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Basic SFX Init
land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

// Custom SFX Init
sfx_dbfz_blow_heavy2 = sound_get("sfx_dbfz_blow_heavy2");
sfx_dbfz_charge = sound_get("sfx_dbfz_charge");
sfx_dbfz_kksne = sound_get("sfx_dbfz_kksne");
sfx_dbfz_krillin_ddisk_charge = sound_get("sfx_dbfz_krillin_ddisk_charge");
sfx_dbfz_krillin_ddisk_fire = sound_get("sfx_dbfz_krillin_ddisk_fire");
sfx_dbfz_krillin_ddisk_start = sound_get("sfx_dbfz_krillin_ddisk_start");
sfx_dbfz_krillin_kishot = sound_get("sfx_dbfz_krillin_kishot");
sfx_dbfz_superdash = sound_get("sfx_dbfz_superdash");
sfx_dbfz_teleport = sound_get("sfx_dbfz_teleport");
sfx_dbfz_teleport_end = sound_get("sfx_dbfz_teleport_end");
sfx_dbfz_teleport_start = sound_get("sfx_dbfz_teleport_start");
sfx_smash_bros_crack = sound_get("sfx_smash_bros_crack");

// Victory Theme
set_victory_theme(sound_get("victory"));

//minor compatability
TCG_Kirby_Copy = 4; // Fighter
steve_death_message = "Steve couldn't fight hand-to-hand";
link_spear_drop = 7; // Thunderspear (yea idk what to do for this. thunderspear because ki???????? maybe???? i dont know)
Hikaru_Title = "Strongest Human";
arena_title = "One of Humanity's Strongest";
arena_short_name = "Krillin";
// ...idk add more stuff here

// idk shit about dbz LOL

// Setting Portrait for alts that change Krillin's outline color
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

// end of init.gml