// init.gml

// ========= custom vars start =======

// important
isJamBuild = false;

// Checks which current color the player has
alt_cur = get_player_color(player);
curr_alt_costume = 0;

// crawl
crawlImageIndex = 0;

// dstrong
dstrongShouldLoopTwice = true;
dstrongHasLoopedYet = false;

// nair
lastHitNairHitbox = 0;
nairWasGrounded = false;


// nspec stuff (important)
carryingShell = false;
canThrowShellUp = true;			// doing all this so i can remove the ability to do so if i feel like it
canThrowShellDown = true;		// see above comment
canZDropShell = true;			// see above comment

grabbedShellFromNSpec = false;
jumpedOnShell = false;
specialShellRegrabTimer = 0;
shellGrabCancelStoredHSP = 0;
shellGrabCancelStoredVSP = 0;

shellCarryTimer_Y = 0;
shellCarryTimer_N = 0;

currKoopaShell = noone;

prevHoldShellHSP = 0;
prevHoldShellVSP = 0;

numShellTimeRebound = 0;

// fspec
fspecMinChargeTime = 4;
fspecTimeCharging = 0;
fspecMaxChargeTimeAllowed = 60;
fspecChargeAmtGot = 0;
fspecActiveFrameWindowLoopedYet = false;
fspecUsedAtMaxCharge = false;
fspecBounceOffWall = false;
fspecImpactLoopTimes = 0;
fspecImpactLoopTimesMax = 3;
fspecReboundMaxChargeTimesBounced = 0;
fspecReboundMaxChargeTimesBouncedMAX = 1;
tauntStylishTimesSpun = 0;
tauntStylishMaxSpinTimes = 3;

fspecStylishIndicator = false;

// uspecial
uspecLockedUpRiseDir = 90;

uspecHoverLoops = 0;
uspecMaxHoverLoops = 4;

uspecSkyDive_wasPadIdle = false;

uspec_dir_sin = 0;
uspec_dir_cos = 0;

// go to update to properly adjust
uspecPityStompX1Coord = x - 16;
uspecPityStompY1Coord = y - 10;
uspecPityStompX2Coord = x + 16;
uspecPityStompY2Coord = y - 26;

uspecWasStompedOn = false;
uspecCanBeStomped = true;

// HEEEEEEEELP MEEEEEE
dir_actual = 0;
dir_joy = 0;
dir_joy_remember = 0;
dir_sin = 0;
dir_cos = 0;
dir_joy_direction = spr_dir;
dir_joy_direction_vert = spr_dir;
dir_joy_remember_direction_vert = spr_dir;
ranger_aim_hand_shoot_offset = 0;

// other minor stuff
test_horiz_speed_mult = 0;	// note to self: fstrong base movement speed is 12.5

// custom vfx
vfx_shell_hit_lrg = hit_fx_create(sprite_get("vfx_shell_hit_lrg"), 7*4);
vfx_shell_hit_med = hit_fx_create(sprite_get("vfx_shell_hit_med"), 7*4);
vfx_shell_hit_sml = hit_fx_create(sprite_get("vfx_shell_hit_sml"), 7*4);

vfx_stylish = hit_fx_create(sprite_get("vfx_stylish"), floor(40 * 2.5));

// ========= custom vars end =========

// =======================================================================
// STAT NAME		    VALUE                   BASECAST RANGE      NOTES

// Physical size
char_height             = 56;                   //                  the height of the overhead hud - the arrow with your name and %
knockback_adj           = 0.975;		        // 0.9  -  1.2

// Ground movement
walk_speed              = 3;		            // 3    -  4.5
walk_accel              = 0.2;		            // 0.2  -  0.5
walk_turn_time          = 6;		            // 6
initial_dash_time       = 9;		            // 8    -  16       zetterburn's is 14
initial_dash_speed      = 6.5;		            // 4    -  9
dash_speed              = 6;		            // 5    -  9
dash_turn_time          = 14;		            // 8    -  20
dash_turn_accel         = 1.5;		            // 0.1  -  2
dash_stop_time          = 6;		            // 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.35;		            // 0.25 -  0.5
ground_friction         = 0.375;		            // 0.3  -  1
moonwalk_accel          = 1.3;		            // 1.2  -  1.4

// Air movement
leave_ground_max        = 4.5;		            // 4    -  8
max_jump_hsp            = 4.75;		            // 4    -  8
air_max_speed           = 3.75;		            // 3    -  7
jump_change             = 3;		            // 3
air_accel               = 0.2;		            // 0.2  -  0.4
prat_fall_accel         = 0.85;		            // 0.25 -  1.5
air_friction            = 0.05;		            // 0.02 -  0.07
max_fall                = 9;		            // 6    -  11
fast_fall               = 14;		            // 11   -  16
gravity_speed           = 0.5;		            // 0.3  -  0.6
hitstun_grav            = 0.5;		            // 0.45 -  0.53

// Jumps
jump_start_time         = 5;		            // 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed              = 11;		            // 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 6;		            // 4    -  7.4
djump_speed             = 10;		            // 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = 0;		            // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time    = 0;		            //                  the amount of time that   djump_accel   is applied for
max_djumps              = 1;		            // 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp            = 5.75;		            // 4    -  7
walljump_vsp            = 8.75;		            // 7    -  10
land_time               = 4;		            // 4    -  6
prat_land_time          = 12;		            // 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction           = 0.15;		            // 0    -  0.15
wave_land_time          = 8;		            // 6    -  12
wave_land_adj           = 1.15;		            // 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 9;		            // 7    -  11
roll_backward_max       = roll_forward_max;		// 7    -  11       always the same as forward
air_dodge_speed         = 7.5;		            // 7.5  -  8
techroll_speed          = 10;		            // 8    -  11

// Hurtbox Setup
// hurtbox_spr = sprite_get("_koopa_hurtbox");
hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = sprite_get("_koopa_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

// Animation Speeds
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

// Crouch Animation Frames
crouch_startup_frames = 2;
crouch_active_frames = 2;
crouch_recovery_frames = 2;

// Jumps
double_jump_time        = 28;		// 24   -  40
walljump_time           = 32;		// 18   -  32
wall_frames             = 2;		// may or may not actually work... dan pls

// Parry Animation Frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

// Tech Animation Frames
tech_active_frames = 2;
tech_recovery_frames = 1;

// Airdodge Animation Frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

// Roll Animation Frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = roll_forward_startup_frames;
roll_back_active_frames = roll_forward_active_frames;
roll_back_recovery_frames = roll_forward_recovery_frames;
roll_forward_max = 9; //roll speed
roll_backward_max = roll_forward_max;

// Tech Roll Animation Frames
techroll_startup_frames = roll_forward_startup_frames;
techroll_active_frames = roll_forward_active_frames;
techroll_recovery_frames = roll_forward_recovery_frames;
techroll_speed = 11.5;	// :torl:

// Custom SFX Init

//sfx_customTemp = sound_get("sfx_customTemp");
sfx_ML_bis_brosattack = sound_get("sfx_ML_bis_brosattack");
sfx_nsmbds_crouch = sound_get("sfx_nsmbds_crouch");
sfx_nsmbds_death = sound_get("sfx_nsmbds_death");
sfx_nsmbds_groundpound_land = sound_get("sfx_nsmbds_groundpound_land");
sfx_nsmbds_groundpound_landshell = sound_get("sfx_nsmbds_groundpound_landshell");
sfx_nsmbds_groundpound_start = sound_get("sfx_nsmbds_groundpound_start");
sfx_nsmbds_hitblock = sound_get("sfx_nsmbds_hitblock");
sfx_nsmbds_kick = sound_get("sfx_nsmbds_kick");
sfx_nsmbu_bah = sound_get("sfx_nsmbu_bah");
sfx_nsmbwii_bah = sound_get("sfx_nsmbwii_bah");
sfx_nsmbwii_player_jump = sound_get("sfx_nsmbwii_player_jump");
sfx_nsmbwii_player_jump2 = sound_get("sfx_nsmbwii_player_jump2");
sfx_nsmbwii_player_spinonce = sound_get("sfx_nsmbwii_player_spinonce");
sfx_nsmbwii_propeller_down = sound_get("sfx_nsmbwii_propeller_down");
sfx_nsmbwii_propeller_loop = sound_get("sfx_nsmbwii_propeller_loop");
sfx_sm3dw_pop = sound_get("sfx_sm3dw_pop");
sfx_sm3dw_roll = sound_get("sfx_sm3dw_roll");
sfx_smashult_item = sound_get("sfx_smashult_item");
sfx_smashult_mario_dattack = sound_get("sfx_smashult_mario_dattack");
sfx_smb3_skid = sound_get("sfx_smb3_skid");
sfx_smb3_superleaf_get = sound_get("sfx_smb3_superleaf_get");
sfx_ttyd_stylish = sound_get("sfx_ttyd_stylish");
sfx_ttydR_koops_field_return = sound_get("sfx_ttydR_koops_field_return");
sfx_ttydR_koops_field_shoot = sound_get("sfx_ttydR_koops_field_shoot");
sfx_ttydR_koops_field_spin = sound_get("sfx_ttydR_koops_field_spin");
sfx_ttydR_mario_field_hammer_spinfast = sound_get("sfx_ttydR_mario_field_hammer_spinfast");
sfx_ttydR_mario_field_hammer_spinslow = sound_get("sfx_ttydR_mario_field_hammer_spinslow");
sfx_ttydR_mario_field_hammer_swipe1 = sound_get("sfx_ttydR_mario_field_hammer_swipe1");
sfx_ttydR_mario_field_hammer_swipe2 = sound_get("sfx_ttydR_mario_field_hammer_swipe2");
sfx_ttydR_mario_field_hammer_swipe3 = sound_get("sfx_ttydR_mario_field_hammer_swipe3");
sfx_ttydR_menu_close = sound_get("sfx_ttydR_menu_close");
sfx_ttydR_menu_confirm = sound_get("sfx_ttydR_menu_confirm");
sfx_ttydR_menu_move = sound_get("sfx_ttydR_menu_move");
sfx_ttydR_menu_open = sound_get("sfx_ttydR_menu_open");


// Base SFX Init
land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
// jump_sound = asset_get("sfx_jumpground");
jump_sound = sfx_nsmbwii_player_jump;
// djump_sound = asset_get("sfx_jumpair");
djump_sound = sfx_nsmbwii_player_jump2;
air_dodge_sound = asset_get("sfx_quick_dodge");

// Setting Portrait for alts that change outline color
// Resetting portrait and result_small back to normal
set_victory_portrait( sprite_get( "portrait" ));
set_victory_sidebar( sprite_get( "result_small" ));

set_ui_element( UI_HUD_ICON, sprite_get( "_ui_hud" ) );
set_ui_element( UI_HUDHURT_ICON, sprite_get( "_ui_hurt" ) );
set_ui_element( UI_OFFSCREEN, sprite_get( "_ui_offscreen" ) );

// also charselect thats important too
set_ui_element( UI_CHARSELECT, sprite_get( "charselect" ));

curr_alt_costume = 0;

// victory theme
set_victory_theme(sound_get("victory"));

if (alt_cur == 15){
	set_victory_theme(sound_get("victory_classic"));
}

// RESETTING THESE VALUES HERE (VERY IMPORTANT)
// eye whites, pants
set_color_profile_slot( 0, 6, 249, 249, 240 );
set_color_profile_slot_range( 6, 6, 4, 22 );

// eye col, scarf, hoodie
set_color_profile_slot( 0, 7, 77, 97, 91 );
set_color_profile_slot_range( 7, 11, 17, 49 );

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
		
	case 20:
	case 21:
	case 22:
	case 23:
		curr_alt_costume = 1;	// for roving racer
		set_victory_portrait( sprite_get( "portrait_racer" ));
		set_victory_sidebar( sprite_get( "result_small_racer" ));
		set_ui_element( UI_HUD_ICON, sprite_get( "_ui_hud_racer" ) );
		set_ui_element( UI_HUDHURT_ICON, sprite_get( "_ui_hurt_racer" ) );
		set_ui_element( UI_OFFSCREEN, sprite_get( "_ui_offscreen_racer" ) );
		user_event(7);	// so shit gets changed
		
		set_ui_element( UI_CHARSELECT, sprite_get( "charselect_racer" ));
		
		set_victory_theme(sound_get("victory_racer"));
		
		break;
	case 24:
	case 25:
	case 26:
	case 27:
		curr_alt_costume = 2;	// for kooper
		
		// eye whites, pants
		set_color_profile_slot( 0, 6, 249, 249, 240 );
		set_color_profile_slot_range( 6, 6, 4, 22 );
		
		// eye col, scarf, hoodie
		set_color_profile_slot( 0, 7, 93, 192, 244 );
		set_color_profile_slot_range( 7, 1, 31, 46 );
		
		set_victory_portrait( sprite_get( "portrait_kooper" ));
		set_victory_sidebar( sprite_get( "result_small_kooper" ));
		set_ui_element( UI_HUD_ICON, sprite_get( "_ui_hud_kooper" ) );
		set_ui_element( UI_HUDHURT_ICON, sprite_get( "_ui_hurt_kooper" ) );
		set_ui_element( UI_OFFSCREEN, sprite_get( "_ui_offscreen_kooper" ) );
		user_event(7);	// so shit gets changed
		
		set_ui_element( UI_CHARSELECT, sprite_get( "charselect_kooper" ));
		
		set_victory_theme(sound_get("victory_kooper"));
		
		break;
	case 28:
	case 29:
	case 30:
	case 31:
		curr_alt_costume = 3;	// for koops
		
		// eye whites, pants
		set_color_profile_slot( 0, 6, 21, 111, 225 );
		set_color_profile_slot_range( 6, 1, 7, 44 );

		// eye col, scarf, hoodie
		set_color_profile_slot( 0, 7, 93, 192, 244 );
		set_color_profile_slot_range( 7, 1, 31, 46 );
		
		set_victory_portrait( sprite_get( "portrait_koops" ));
		set_victory_sidebar( sprite_get( "result_small_koops" ));
		set_ui_element( UI_HUD_ICON, sprite_get( "_ui_hud_koops" ) );
		set_ui_element( UI_HUDHURT_ICON, sprite_get( "_ui_hurt_koops" ) );
		set_ui_element( UI_OFFSCREEN, sprite_get( "_ui_offscreen_koops" ) );
		user_event(7);	// so shit gets changed
		
		set_ui_element( UI_CHARSELECT, sprite_get( "charselect_koops" ));
		
		set_victory_theme(sound_get("victory_koops"));
		
		break;
}

// Compatability (add more as needed.)
TCG_Kirby_Copy = 15; 										// Kirby (Dream Collection) - Drill
steve_death_message = "Steve got stomped"; 					// Steve (Muno)
link_spear_drop = 2; 										// Link (Muno) idk what this is idgaf about this compat
Hikaru_Title = "Shellcreeper";								// Hikaru Title
arena_title = "The Shelled Trooper";						// Mt. Dedede
arena_short_name = "Koopa Troopa";							// see above but ye
otto_bobblehead_sprite = sprite_get("otto");				// Otto Bobblehead
miiverse_post = sprite_get("miiverse");						// Miiverse
user_event(9); 												// Palutena's Guidance

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