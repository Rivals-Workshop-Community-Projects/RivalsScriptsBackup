/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The commented-out numbers are the range of values the RoA
 * base cast has - e.g. it lists the slowest and fastest run speeds.
 * 
 * Replace Zetter's stats with whatever strengths/weaknesses your char should
 * have, e.g. change dash_speed to 8 or so if you want a fast character.
 *
 * Explanation of each stat:
 * https://rivalsofaether.com/player-variables/
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 * 
 * Base Cast Stats:
 * docs.google.com/spreadsheets/d/14JIjL_5t81JHqnJmU6BSsRosTe2JO8sFGUysM_9tDoU
 */

// STAT NAME		VALUE       BASECAST RANGE   NOTES

// Physical size
char_height         = 64;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.66;		// 3    -  4.5
walk_accel          = 0.33;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 10;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 6.85;		// 4    -  9
dash_speed          = 6.70;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 5.5;		// 4    -  8
max_jump_hsp        = 5.5;		// 4    -  8
air_max_speed       = 5.5;  	// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.35;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.06;		// 0.02 -  0.07
max_fall            = 9;		// 6    -  11
fast_fall           = 13;		// 11   -  16
gravity_speed       = 0.45;		// 0.3  -  0.6
hitstun_grav        = 0.45;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 9.5;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 14;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11

//-------------------------------------------------------------------------------------------

// Character-specific assets init

//	Sprites
spr_nspecial_proj 			= sprite_get("nspecial_proj");

//	SFX
sfx_ray_punch1              = sound_get("sfx_rayman_punch1");
sfx_ray_punch2              = sound_get("sfx_rayman_punch2");
sfx_ray_strongpunch1        = sound_get("sfx_rayman_strong_punch1");
sfx_ray_strongpunch2        = sound_get("sfx_rayman_strong_punch2");
sfx_ray_strongpunch3        = sound_get("sfx_rayman_strong_punch3");

//	VFX
vfx_nspecial_trail			= hit_fx_create(sprite_get("vfx_nspecial_trail"), 12);
vfx_nspecial_trail_REAL		= hit_fx_create(sprite_get("vfx_nspecial_trail_REAL"), 12);

vfx_dspec_pguard_trail_1    = hit_fx_create(sprite_get("vfx_dspec_pguard_trail1"), 12);
vfx_dspec_pguard_trail_2    = hit_fx_create(sprite_get("vfx_dspec_pguard_trail2"), 16);

vfx_dspec_pguard_trail_1R   = hit_fx_create(sprite_get("vfx_dspec_pguard_trail1_REAL"), 12);
vfx_dspec_pguard_trail_2R   = hit_fx_create(sprite_get("vfx_dspec_pguard_trail2_REAL"), 16);

//	Variables
muted 					    = false;		//	For those who hate Rayman's SFXs...?

is_crawling 		        = false;	    //	Crouch related

throttle_timer              = 0;            //  USPECIAL related

grapple_fist                = noone;        //  FSPECIAL related
grapple_grab                = noone;
grapple_obj					= false;
hand_x 						= 0;
hand_y 						= 0;
grapple_fist_pos_x 			= 0;
grapple_fist_pos_y 			= 0;
grapple_speed				= 15;
gpr_speed					= 20;			//	Rune Modifier

plunger_guard               = noone;        //  DSPECIAL related

floating 					= 0;			//	Glide Support
floatTimer 					= 0;			//	0
floatAnimTimer 				= 0;			//	0
jumpTimer 					= 0;			//	0
floatMax 					= 80; 			//	60
jumpMax 					= 5; 			//	5
gravSet 					= 0; 			//	0
vspSet 						= 0.98; 		//	0
hspSet 						= -1; 			//	-1

//-------------------------------------------------------------------------------------------

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.16;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.175;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 34;		// 24   -  40
walljump_time       = 26;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 6;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 2;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 6;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 6;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 5;
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

//	Hurtbox sprites
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

//	Victory
set_victory_theme(sound_get("victory")); 
set_victory_bg(sprite_get("victorybg")); 

//	Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 4;
bubble_y = 6;

//-------------------------------------------------------------------------------------------
//	Workshop stuff

//	PAC-MAN
Namco_Taunt 			= sprite_get("rayman_pacman");
Namco_Taunt_Sound 		= asset_get("sfx_gem_collect");

//	Hikaru
Hikaru_Title 			= "The Hero of Dreams";

//	Dedede Stage
arena_title 			= "The Glade of Dreams Hero";

//	Boxing Ring Stage
boxing_title 			= "The Glade of Dreams Hero";

//	Soulbound Conflict Stage
battle_text 			= "* make him write bad checks...";
battle_text2 			= "* poke him in the eyes..."
battle_text3 			= "* stick bamboo under his nails..."

//	Last Resort Stage
resort_portrait 		= sprite_get("lastresortportrait");

//	Miiverse Stage
miiverse_post 			= sprite_get("miiverse");

//	Wily Castle Stage
wily_robotmaster_img 	= sprite_get("Wily_Castle");

//	Henry Stickmin
has_fail 				= true;
fail_text 				= "I take it you wanna be limbless too?";

//	Future Ducky
fducky_intro1 			= "Consider this... Your";
fducky_intro2 			= "nightmare, Rayman!!";

//	Kirby Fighter Buddy	
copy_ability_id 		= 26;
kf_hud_offset 			= -23;

//	Solid Snake support
sna_interrogated_line_01 = "Rayman... 4";
sna_interrogated_line_02 = "H-Hey! Get off me!";
sna_interrogated_line_03 = "I'm sorry! I-I-I didn't-I didn't mean to!";

//	Kirby Copy Ability
TCG_Kirby_Copy 			= 4;

//	Bar-Kun Chao Buddy
//	I'll do a custom chao later
chao_type 				= 1;
chao_sound_type			= 1;

//	Reiga's The Knight
knight_compat_dream = 
[
    "Bravo me!",
    "I think I have an idea.",
    "Alright, Ladies and Gents! Let's roll!"
]

//	Yooka Laylee Win Quote
//	Because I have no enemies.
laylee_win_quote 			= "Bugger off, Big Nose!";

//	Nintendo Wii Stage
wiimote_compat_sprite 		= sprite_get("wiimote_rayman"); 

//-------------------------------------------------------------------------------------------
//	Workshop Bosses

//	Dracula Support
dracula_portrait 			= sprite_get("dracportrait1");
dracula_portrait2 			= sprite_get("dracportrait2");

var page 					= 0;

//	Page 1
dracula_speaker[page] 		= 0;
dracula_text[page] 			= "Another fool wanders into my castle. Speak... What manner of creature are you?";
page++;

//  Page 2
dracula_speaker[page] 		= 1;
dracula_text[page] 			= "Name's Rayman! Nightmare to creeps like you and a big punching enthusiast! Well, depending on who you ask.";
page++;

//  Page 3
dracula_speaker[page] 		= 0;
dracula_text[page] 			= "Your appearance is... Most unnatural. But yet, I sense no fear. Here you stand, at the seat of darkness.";
page++;

//  Page 4
dracula_speaker[page] 		= 1;
dracula_text[page] 			= "How fitting. And I thought Mr. Dark was... dark. You? You certainly need to lighten up.";
page++;

//  Page 5
dracula_speaker[page] 		= 0;
dracula_text[page] 			= "You jest in the face of your doom. Few dare to mock me and leave with their spirit intact.";
page++;

//  Page 6
dracula_speaker[page] 		= 2;
dracula_text[page] 			= "What can I say? I've fought living rocks, robot pirates and nightmare-ish lums. [taunt] You're just missing a bit of colour, that's all.";
page++;

//  Page 7
dracula_speaker[page] 		= 0;
dracula_text[page] 			= "You are either very brave, or very foolish. Soon, it will not matter.";
page++;

//  Page 8
dracula_speaker[page] 		= 1;
dracula_text[page] 			= "Mind if we skip the evil monologue and get to the part where you try to bite me?";
page++;

//  Page 9
dracula_speaker[page] 		= 0;
dracula_text[page] 			= "So be it. [glass] The night is long, and your end will be most... enlightening.";
page++;
 

//	Daroach dialogue
daroach_portrait 			= sprite_get("dracportrait1");
daroach_portrait2 			= sprite_get("dracportrait2");

var page 					= 0;

//	Page 1
daroach_speaker[page] 		= 0;
daroach_text[page] 			= "Careful, Eggplant. These treasures belong to the Squeak Squad!";
page++;

//	Page 2
daroach_speaker[page] 		= 2;
daroach_text[page] 			= "You'll need fast paws to swipe these fists";
page++;

//	Page 3
daroach_speaker[page] 		= 0;
daroach_text[page] 			= "Ooh, I love a good challenge and a bit of chaos doesn't hurt either.";
page++;

//	Page 4
daroach_speaker[page] 		= 1;
daroach_text[page] 			= "Lucky for you, I bring both in spades!";
page++;

//	Page 5
daroach_speaker[page] 		= 0;
daroach_text[page] 			= "Let's see which of us disappears first.";
page++;

//-------------------------------------------------------------------------------------------

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);