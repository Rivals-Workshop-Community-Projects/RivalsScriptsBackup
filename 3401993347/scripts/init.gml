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
char_height         = 65;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.15;		// 0.9  -  1.2

// Ground movement
walk_speed          = 6;		// 3    -  4.5
walk_accel          = 0.5;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 10;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 8.5;		// 5    -  9
dash_turn_time      = 16;		// 8    -  20
dash_turn_accel     = 1.2;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.25;		// 0.25 -  0.5
default_ground_friction = 0.4;
ground_friction     = default_ground_friction;		// 0.3  -  1
moonwalk_accel      = 1.5;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8

air_max_speed       = 5.65;  		// 3    -  7
jump_change         = 4;		// 3
default_air_accel   = 0.3; //gets reduced when charging nspecial
air_accel           = default_air_accel;		// 0.2  -  0.4
prat_fall_accel     = 0.95;		// 0.25 -  1.5
air_friction        = 0.05;		// 0.02 -  0.07
max_fall            = 8;		// 6    -  11
fast_fall           = 13;		// 11   -  16
default_gravity_speed = 0.4;
gravity_speed       = default_gravity_speed;		// 0.3  -  0.6
hitstun_grav        = 0.45;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 7;		// 4    -  7.4

djump_speed         = -1.2;		// 6    -  12       absa's is -1 because of her floaty djump
base_djump_accel = -1.2; //-2.4
djump_accel         = base_djump_accel;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 17; //10		//                  the amount of time that   djump_accel   is applied for
djump_accel_start_time = 2;

max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 10;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 16;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9.5;		// 9    -  11
roll_backward_max   = 9.5;		// 9    -  11       always the same as forward
wave_land_time      = 6;		// 6    -  12
wave_land_adj       = 1.2;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 8;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Character-specific assets init

//Sprites
// spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
// sfx_dbfz_kame_charge = sound_get("ARC_BTL_GKN_Kamehame_Chrg");

// VFX
dstrongsplosion = hit_fx_create( sprite_get( "dstrongsplosion" ), 39 );
sprite_change_offset("dstrongsplosion", 130, 125); 

jabbyfx = hit_fx_create( sprite_get( "jabbyfx" ), 8 );
sprite_change_offset("jabbyfx", 160, 100); 

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.2;
crouch_anim_speed   = 0.333;
walk_anim_speed     = 0.333;
dash_anim_speed     = 0.333;
pratfall_anim_speed = 0.333;

// Jumps
double_jump_time    = 23*2;		// 24   -  40
walljump_time       = 16*2;		// 18   -  32
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
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 3;
roll_forward_active_frames      = 8;
roll_forward_recovery_frames    = 5;
roll_back_startup_frames        = 3;
roll_back_active_frames         = 8;
roll_back_recovery_frames       = 5;

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



// Hurtbox sprites
hurtbox_spr         = sprite_get("hurt_hurt");
crouchbox_spr       = sprite_get("crouch_hurt");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_abs"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = sound_get("djump");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

vNairDrag = 7; //how far to drag the enemy for nair
hNairDrag = 40;
aboveNairDragOffset = 10;

myFall = false; //custom fast fall on low hitpause moves
nairDragHsp = 0; //velocity to drag enemy with
nairDragVsp = 0;

grabDuration = 24;
grabbedRecently = 0;
target = noone;

maxOrbsStacks = 6;

trapX = 0;
trapY = 0;
trapOrbStacks = [];
trapbox = noone;
trapboxCollectable = noone;
trapboxSetupTime = 30;
trapboxCurrentTime = 0;

//makes traps fade out nicely and exploding orbs continue exploding
fadingTrapX = 0;
fadingTrapY = 0;
fadingTrapOrbStacks = [];
fadingTrapbox = noone;

sbSFX = [0,1];

shadowBallCharge = 0;
shadowBallChargeMax = 15;

attackChargeMult = 0.3; //how much damage charges the orb

projDamageEaten = 0; //eaten in the current counter

consumeModifier = 1.5; //gain this much shadowball damage per damage eaten

renderer = instance_create(0,0,"obj_article3");

renderer2 = instance_create(0,0,"obj_article3");
renderer2.trapRenderer = true;

recentShadowBallChange = 0;
recentShadowBallChangeTimer = 0;

shadowBallReverse = false;

lastHitPurpled = false;
deathMark = false;

meleeCounter = false;

slowmo = 0;

ledgeCancelling = false;

moved_up = false;

epinel_grav_jump = 0;

orb_warning_frames = 50;

lastTrapCollect = false;

ballClankMult = 1;
count = 0;

reactionTime = 0;

dstrongReversed = false;
time = 0;
timeTarget = 0;
 
dspecialStall = false;
utiltReverse = false;

jabalternate = 0;

isMewtwo = true;

randomer = 1;
fairfx = noone;
// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);