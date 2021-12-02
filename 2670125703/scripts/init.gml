/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The ATTACKS are still in their overpowered form in this
 * template, so be sure to make the ones for your character weaker.
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

// Physical size
char_height         = 52;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.96;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.20;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 10;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 7.5;		// 4    -  9
dash_speed          = 8.5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.30;		// 0.25 -  0.5
ground_friction     = 0.4;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 9;		// 6    -  11
fast_fall           = 12;		// 11   -  16
gravity_speed       = 0.4;		// 0.3  -  0.6
hitstun_grav        = 0.50;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10.5;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 5;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 15;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.25;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 8;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11

// Character-specific assets init

//	Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
//spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_dbfz_elbow_start 	= sound_get("ARC_BTL_GKN_HeavyElbow_Basa");

sfx_dbfz_kame_charge 	= sound_get("ARC_BTL_GKN_Kamehame_Chrg");
sfx_dbfz_kame_fire 		= sound_get("ARC_BTL_GKN_Kamehame_Fire");

sfx_dbfz_hit_weak 		= sound_get("ARC_BTL_CMN_Hit_Small-A");
sfx_dbfz_hit_medium 	= sound_get("ARC_BTL_CMN_Hit_Midle-A");
sfx_dbfz_hit_strong 	= sound_get("ARC_BTL_CMN_Hit_Large-A");
sfx_dbfz_hit_broken 	= sound_get("ARC_BTL_CMN_Hit_XLarge");
sfx_dbfz_hit_kidan 		= sound_get("ARC_BTL_CMN_Hit_kidan");
sfx_dbfz_hit_jab3 		= sound_get("ARC_BTL_GKN_Atk5A_3rd_Hit");

sfx_dbfz_swipe_sword1 	= sound_get("ARC_BTL_GBR_Enbuzan_Sword_1");
sfx_dbfz_swipe_sword2 	= sound_get("ARC_BTL_GBR_Enbuzan_Sword_2");
sfx_dbfz_swordhit1 		= sound_get("ARC_BTL_GBR_Sword_Furi");
sfx_dbfz_swordhit2 		= sound_get("ARC_BTL_GBR_Enbuzan_FinAttk");

sfx_dbfz_swipe_weak1 	= sound_get("ARC_BTL_CMN_Furi_Hook");
sfx_dbfz_swipe_weak2 	= sound_get("ARC_BTL_CMN_Furi_Short-A");
sfx_dbfz_swipe_medium1 	= sound_get("ARC_BTL_CMN_Furi_Hiji");
sfx_dbfz_swipe_medium2 	= sound_get("ARC_BTL_CMN_Furi_Keri");
sfx_dbfz_swipe_heavy1 	= sound_get("ARC_BTL_CMN_Furi_YokoKeri");

sfx_dbfz_crouch 		= sound_get("ARC_BTL_CMN_Crouch_Basa");

// VFX
vfx_nspecial_destroy 	= hit_fx_create(sprite_get("vfx_nspecial_destroy"), 12);
vfx_nspecial_fire 		= hit_fx_create(sprite_get("vfx_nspecial_fire"), 16);

// Variables
has_goku_beam = true;
doing_goku_beam = false;
beam_newest_hbox = noone;

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 40;		// 24   -  40
walljump_time       = 28;		// 18   -  32
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
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 1;
crouch_active_frames    = 1;
crouch_recovery_frames  = 1;

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
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = sprite_get("r_crouchbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Movement SFX
land_sound          = sound_get("sfx_dbz_land");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_ran"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = sound_get("sfx_dbz_jump");
djump_sound         = sound_get("ARC_BTL_CMN_GK_JumpAir");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//----------------------------------------------------------------------------------------------

//	Victory Themes 

if (get_player_color(player) == 1)
{
	set_victory_theme(sound_get("victory_snurple"));
	set_victory_bg(sprite_get("victorybgSNURPLE"));
} 

if (get_player_color(player) == 5)
{
	set_victory_theme(sound_get("victory_sonic"));
	set_victory_bg(sprite_get("victorybgSONIC"));
} 

if (get_player_color(player) == 6)
{
	set_victory_theme(sound_get("victory_shadow"));
	set_victory_bg(sprite_get("victorybgSHADOW"));
} 

if (get_player_color(player) == 7)
{
	set_victory_theme(sound_get("victory_bible"));
	set_victory_bg(sprite_get("victorybgLUGZ"));
} 

if (get_player_color(player) == 8)
{
	set_victory_theme(sound_get("victory_perfect"));
	set_victory_bg(sprite_get("victorybg"));
} 

if (get_player_color(player) == 9)
{
	set_victory_theme(sound_get("victory_ultra"));
	set_victory_bg(sprite_get("victorybg"));
} 

if (get_player_color(player) == 11)
{
	set_victory_theme(sound_get("victory_werehog"));
	set_victory_bg(sprite_get("victorybgWEREHOG"));
} 

if (get_player_color(player) == 12)
{
	set_victory_theme(sound_get("victory_mecha"));
	set_victory_bg(sprite_get("victorybgMECHA"));
} 

if (get_player_color(player) == 13)
{
	set_victory_theme(sound_get("victory_chaos"));
	set_victory_bg(sprite_get("victorybgCHAOS"));
} 

if (get_player_color(player) == 14)
{
	set_victory_theme(sound_get("victory_bdoom"));
	set_victory_bg(sprite_get("victorybgBDOOM"));
}

if (get_player_color(player) == 15)
{
	set_victory_theme(sound_get("victory_roger"));
	set_victory_bg(sprite_get("victorybgROGER"));
} 

if (get_player_color(player) == 18)
{
	set_victory_theme(sound_get("victory_gold"));
	set_victory_bg(sprite_get("victorybgGOLD"));
} 

if (get_player_color(player) == 29)
{
	set_victory_theme(sound_get("victory_dashly"));
	set_victory_bg(sprite_get("victorybgDASHLY"));
}

if (get_player_color(player) == 30)
{
	set_victory_theme(sound_get("victory_meph"));
	set_victory_bg(sprite_get("victorybgMEPH"));
} 

else if (get_player_color(player) != 1 && get_player_color(player) != 5 && get_player_color( player ) != 6 && 
get_player_color( player ) != 7 && get_player_color( player ) != 8 && get_player_color( player ) != 9 && 
get_player_color( player ) != 11 && get_player_color( player ) != 12 && get_player_color( player ) != 13 && 
get_player_color( player ) != 14 && get_player_color( player ) != 15 && get_player_color( player ) != 18 && 
get_player_color( player ) != 29 && get_player_color( player ) != 30)
{
	set_victory_theme(sound_get("victory"));
	set_victory_bg(sprite_get("victorybg"));
}

//----------------------------------------------------------------------------------------------

//	Workshop Support Zone


//----------------------------------------------------------------------------------------------

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);