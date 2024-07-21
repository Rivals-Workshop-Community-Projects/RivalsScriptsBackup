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
char_height         = 48;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 12;		// 8    -  16
initial_dash_speed  = 6;		// 4    -  9
dash_speed          = 6;		// 5    -  9
dash_turn_time      = 8;		// 8    -  20
dash_turn_accel     = 1;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6
dash_stop_percent   = 0.3;		// 0.25 -  0.5
ground_friction     = 0.3;		// 0.3  -  1
moonwalk_accel      = 1.2;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 5;		// 4    -  8
max_jump_hsp        = 5;		// 4    -  8
air_max_speed       = 6;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.2;		// 0.2  -  0.4
prat_fall_accel     = 0.7;		// 0.25 -  1.5
air_friction        = 0.03;		// 0.02 -  0.07
max_fall            = 8;		// 6    -  11
fast_fall           = 12;		// 11   -  16
gravity_speed       = 0.3;		// 0.3  -  0.6
hitstun_grav        = 0.45;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 8;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 5;		// 4    -  7.4
djump_speed         = 8;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 6;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 12;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.2;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 9;       // 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png


// Variables
rainbow_color = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)

//Victory Theme
set_victory_theme(sound_get("Victory"));


// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.07;
crouch_anim_speed   = 0.07;
walk_anim_speed     = 0.115;
dash_anim_speed     = 0.1;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 40;		// 24   -  40
walljump_time       = 40;		// 18   -  32
wall_frames         = 1;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
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

//Timer variables
timer_intro=-4;
timer_intro_2=0;
intro_done=0;



// Hurtbox sprites
hurtbox_spr         = sprite_get("Koffing_hurt");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = sprite_get("Koffing_hurt_air");
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("Victory_BG")); // victory_background.png


// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_abs");
waveland_sound      = asset_get("sfx_waveland_ran"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


anim_timer= 0 +player*15;
crouch_offset =0;
pick = 1;
pick2 = 1;
arrow = 0;
absorb = 0;
smoke_counter=0;
dust_pos3 = 0;
boost_timer = 0;
prat_alt = 0;
arrow_cooldown = 0;
Fcancel=0;
kill_smoke = 0;

kirbyability = 6;

pkmn_stadium_front_img = sprite_get("PSF");
pkmn_stadium_back_img = sprite_get("PSB");

//Compatibility
Hikaru_Title = "Dogars lover";
arena_title = "The Poison Gas Pokemon";
boxing_title = "Volatile Fellow ";
battle_text = "*A wild Koffing has appeared!";

guiltySprite = sprite_get("Monokuma")
sprite_change_offset("Monokuma", 31, 0);

resort_portrait = sprite_get("last_resort");
sprite_change_offset("last_resort", 27, 39);

otto_bobblehead_sprite = sprite_get("koffing_bobble_head");

wily_robotmaster_img = sprite_get("Wily_Castle");

miiverse_post = sprite_get("miiverse");
sprite_change_offset("miiverse", 60, 30);

steve_death_message = "Steve fainted! Send next figther?";
///codec
ncode1 = "Koffing: The Poison Gas Pokemon. "
ncode2 = "Quite mobile in the air. Able to do air Strongs. "
ncode3 = "Can set up to 6 flammable gas clouds."


//HIT EFFECTS
sprite_change_offset("will_hit", 47, 45);
will_effect = hit_fx_create( sprite_get( "will_hit" ), 21 );

//OFFICIAL RUNES WTF

runeA = has_rune("A");
runeB = has_rune("B");
runeC = has_rune("C");
runeD = has_rune("D");
runeE = has_rune("E");
runeF = has_rune("F");
runeG = has_rune("G");
runeH = has_rune("H");
runeI = has_rune("I");
runeJ = has_rune("J");
runeK = has_rune("K");
runeL = has_rune("L");
runeM = has_rune("M");
runeN = has_rune("N");
runeO = has_rune("O");
