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
knockback_adj       = 0.95;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.12;		// 3    -  4.5
walk_accel          = 0.45;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 10;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 7.45;		// 5    -  9
dash_turn_time      = 20;		// 8    -  20
dash_turn_accel     = 1.85;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.45;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 5.75;		// 4    -  8
max_jump_hsp        = 5.75;		// 4    -  8
air_max_speed       = 5.75;  	// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.28;		// 0.2  -  0.4
prat_fall_accel     = 0.90;		// 0.25 -  1.5
air_friction        = 0.03;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 15;		// 11   -  16
gravity_speed       = 0.65;		// 0.3  -  0.6		//	You forgot Olympia
hitstun_grav        = 0.52;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11.99;	// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6.5;		// 4    -  7.4
djump_speed         = 10.99;	// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 6;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
land_time           = 5;		// 4    -  6
prat_land_time      = 15;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.05;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.35;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 8;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11


// Character-specific assets init

//	Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
//spr_example = sprite_get("example"); // sprites/example_stripX.png

//	SFX
sfx_kodiak_jab1 		= sound_get("jab 1");
sfx_kodiak_jab2 		= sound_get("jab 2");
sfx_kodiak_jab3 		= sound_get("jab 3");

sfx_kodiak_ftilt 		= sound_get("FTilt");
sfx_kodiak_dtilt 		= sound_get("Down_Tilt_spin_kicking");

sfx_nspecial2_start		= sound_get("n special start");
sfx_nspecial2_hit		= sound_get("N special ball");

sfx_fspecial_tap		= sound_get("Side Special tap");
sfx_fspecial_held		= sound_get("Side Special held");

sfx_kodiak_nair 		= sound_get("Nair");

sfx_kodiak_fspec_tap 	= sound_get("Side Special tap");
sfx_kodiak_fspec_held 	= sound_get("Side Special held");

sfx_kodiak_dspec_start 	= sound_get("Down Special Start up Fist");
sfx_kodiak_dspec_hit 	= sound_get("Down special fist connect");

//	VFX
vfx_ki_impact 			= hit_fx_create(sprite_get("nspecial_projhit"), 16);
vfx_ki_trail 			= hit_fx_create(sprite_get("nspecial_proj_trail"), 16);
vfx_ki_uspecial			= hit_fx_create(sprite_get("uspecial_proj"), 24);

//	Variables
energy_meter 		= 0;		//	The gimmick

direction_flipper 	= false;	//	FSPECIAL

dairdj 				= 0;		//	DAIR
dairad 				= 0;

taunt_time			= 0;		//	Taunt3 Related

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.135;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.130;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 30;		// 24   -  40
walljump_time       = 22;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 2;
dodge_active_frames     = 7;
dodge_recovery_frames   = 2;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 3;

// Tech roll
techroll_startup_frames     = 2;
techroll_active_frames      = 5;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 3;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 2;
roll_forward_active_frames      = 5;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 2;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 3;
crouch_active_frames    = 3;
crouch_recovery_frames  = 3;

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
hurtbox_spr         = sprite_get("k_hurtbox");
crouchbox_spr       = sprite_get("k_crouchbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

//	Victory
set_victory_bg(sprite_get("victorybg")); 
set_victory_theme(sound_get("victory"));

//	Movement SFX
land_sound          = sound_get("Steppy");
landing_lag_sound   = asset_get("sfx_land_heavy");
waveland_sound      = sound_get("Waveland"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = sound_get("Jumpin");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//----------------------------------------------------------------------------------------------

//	Victory Themes

if (get_player_color(player) == 3)
{
	set_victory_theme(sound_get("victory"));
	set_victory_bg(sprite_get("victorybgWONDER"));
}

if (get_player_color(player) == 29)
{
	set_victory_theme(sound_get("victory_pizzamaiden"));
	set_victory_bg(sprite_get("victorybgPIZZA"));
}

else if (get_player_color(player) != 3 && get_player_color(player) != 29)
{
	set_victory_theme(sound_get("victory"));
	set_victory_bg(sprite_get("victorybg"));
}

//----------------------------------------------------------------------------------------------

//	Workshop Support

//	PAC-MAN
Namco_Taunt = sprite_get("kodiak_pacman");
Namco_Taunt_Sound = asset_get("sfx_gem_collect");

//	Hikaru
Hikaru_Title = "Overdriver";

//	Dedede Stage
arena_title = "Pizza-@#$%";

//	Boxing Ring Stage
boxing_title = "The Overdriver";

//	Greenflower Zone Stage
gfzsignspr = sprite_get("kodiak_sign");

//	Pokemon Stadium Stage
pkmn_stadium_front_img = sprite_get("KodiakMon");
pkmn_stadium_back_img = sprite_get("KodiakMon2");

//	Soulbound Conflict Stage
battle_text = "* you can't outrun time.";
battle_text2 = "* it will eventually catch up to you.";
battle_text3 = "* tread lightly on that...";

//	Last Resort Stage
resort_portrait = sprite_get("lastresortportrait");

//	Henry Stickmin
has_fail = true;
fail_text = "Maybe next time, don't 
mess with time and pizza.";

//	Agent N
nname = "Kodiak N Route"
ncode1 = "A time patroller from a distant future realm."
ncode2 = "Subject can overcharge his energy at dangerous levels."
ncode3 = "But he'll be left wide open if he wastes all of his energy."

//	Future Ducky
fducky_intro1 = "Time travel all you like...";
fducky_intro2 = "You can't escape!";

//	Solid Snake support
sna_interrogated_line_01 = "Alright, alright! The secrets to the Pizza is-!";
sna_interrogated_line_02 = "Hey hey! Easy with the bow tie!";
sna_interrogated_line_03 = "No.";

//	Kirby Copy Ability
TCG_Kirby_Copy = 2;

//----------------------------------------------------------------------------------------------

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);