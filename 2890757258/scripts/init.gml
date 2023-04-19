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
char_height         = 60;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.22;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 10;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 6.5;		// 4    -  9
dash_speed          = 6.5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.45;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.35;		// 0.2  -  0.4
prat_fall_accel     = 0.83;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 12;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 13;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11


// Character-specific assets init

//	Sprites
spr_nspecial_proj 	= sprite_get("nspecial_proj");
spr_monke_cling 	= sprite_get("monke_wallcling");

//	SFX
sfx_crawl			= sound_get("sfx_shantae_crawlsqueak");

sfx_hair_whip1 		= sound_get("sfx_shantae_hairwhip1");
sfx_hair_whip2 		= sound_get("sfx_shantae_hairwhip2");
sfx_hair_whip3 		= sound_get("sfx_shantae_hairwhip3");

sfx_transform 		= sound_get("sfx_shantae_transform");

sfx_monkey_charge 	= sound_get("sfx_shantae_monkey_charge");
sfx_monkey_cling 	= sound_get("sfx_shantae_monkey_cling");
sfx_monkey_drop 	= sound_get("sfx_shantae_monkey_drop");

sfx_shantae_fball	= sound_get("sfx_shantae_fireball");
sfx_shantae_fball_3	= sound_get("sfx_shantae_fireball_triple");

//	VFX
vfx_transform 		= hit_fx_create(sprite_get("vfx_transformation_poof"), 16);

//	Variables
muted 				= false;				//	For those who don't like Smash ULT ;-;

wait_time 			= 440;
wait_length 		= 100;
wait_sprite 		= sprite_get("wait");	//	Alt Idles

magic_meter 		= 0;					//	Meter
is_crawling 		= false;				//	Crouch

monke_count			= 0;					//	FSPECIAL & EXTRA

stormy_puff			= noone;				//	DSPECIAL

ele_loop 			= 0;					//	DSPECIAL_AIR


// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.120;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.145;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 28;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 2;
dodge_active_frames     = 1;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 6;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 1;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 6;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 6;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 4;
crouch_active_frames    = 4;
crouch_recovery_frames  = 2;

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
hurtbox_spr         = sprite_get("sh_hurtbox");
crouchbox_spr       = sprite_get("sh_crouchbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victorybg")); 		// victory_background.png
set_victory_theme(sound_get("victory")); 		// victory_theme.ogg

// Movement SFX
land_sound          = sound_get("sfx_shantae_land");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = sound_get("sfx_shantae_jump"); //	asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//-------------------------------------------------------------------------------------------

//	Workshop stuff

//	Dialogue Buddy correction
if (get_player_color(player) == 0)
{
	diag_portrait = sprite_get("portrait proper colours"); 
}

//	Feri Costume
feri_costume 		= sprite_get("feri_costume_shantae");

//	PAC-MAN
Namco_Taunt 		= sprite_get("shantae_pacman");
Namco_Taunt_Sound 	= asset_get("sfx_gem_collect");

//	Hikaru
Hikaru_Title 		= "A Half-Genie Hero";

//	Dedede Stage
arena_title 		= "Guardian Genie";

//	Boxing Ring Stage
boxing_title 		= "A Half-Genie Hero";

//	Soulbound Conflict Stage
battle_text 		= "* you tried dancing through the danger";
battle_text2 		= "* but you felt something off with your steps"
battle_text3 		= "* and now you feel yourself slipping away..."

//	Last Resort Stage
resort_portrait 	= sprite_get("lastresortportrait");

//	Miiverse Stage
miiverse_post 		= sprite_get("miiverse");

//	Wily Castle Stage
wily_robotmaster_img = sprite_get("Wily_Castle");

//	Henry Stickmin
has_fail 	= true;
fail_text 	= "No wishes for you!";

//	Future Ducky
fducky_intro1 = "Your dancing days";
fducky_intro2 = "are coming to an end!";

//	Kirby Fighter Buddy	
copy_ability_id = 3;
kf_hud_offset 	= -23;

//	Solid Snake support
sna_interrogated_line_01 = "Lemme... lemme go!";
sna_interrogated_line_02 = "You're not getting anything out from me!";
sna_interrogated_line_03 = "T-Transform!";

//	Kirby Copy Ability
TCG_Kirby_Copy = 1;

//----------------------------------------------------------------------------

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);