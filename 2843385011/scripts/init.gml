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
knockback_adj       = 0.95;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 10;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 6;		// 4    -  9
dash_speed          = 6.0;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6.5;		// 4    -  8
air_max_speed       = 5;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 9;		// 6    -  11
fast_fall           = 12;		// 11   -  16
gravity_speed       = 0.3;		// 0.3  -  0.6
hitstun_grav        = 0.45;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 8;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 4.5;		// 4    -  7.4
djump_speed         = -1;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = -1.1;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 12;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 16;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.06;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 6;		// 6    -  12
wave_land_adj       = 1.2;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Character-specific assets init

vfx_dair_reappear = hit_fx_create(sprite_get("vfx_dair_reappear"), 20);
vfx_dair_fade = hit_fx_create(sprite_get("dair_fade"), 24);
vfx_fstrong_hit = hit_fx_create(sprite_get("vfx_biglightning"), 32);
rainbow_med= hit_fx_create(sprite_get("vfx_rainbow_med"), 20);
rainbow_larg= hit_fx_create(sprite_get("vfx_rainbow_larg"), 20);
dark_smull= hit_fx_create(sprite_get("vfx_dark_smul"), 24);
dark_med= hit_fx_create(sprite_get("vfx_dark_med"), 24);
blob_tiny= hit_fx_create(sprite_get("vfx_blob_tiny"), 24);
blob_smull= hit_fx_create(sprite_get("vfx_blob_smull"), 24);
blob_med= hit_fx_create(sprite_get("vfx_blob_med"), 24);
blob2= hit_fx_create(sprite_get("vfx_blob2"), 24);
heart_med= hit_fx_create(sprite_get("vfx_heart_med"), 30);
heart_larg= hit_fx_create(sprite_get("vfx_heart_larg"), 30);

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.20;

// Jumps
double_jump_time    = 24;		// 24   -  40
walljump_time       = 20;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 5;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 4;

// Airdodge
air_dodge_startup_frames    = 2;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 4;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 4;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 4;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 1;

/*

Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just gltiches out at the end

of the standing up animation

*/



// Hurtbox sprites
hurtbox_spr         = sprite_get("matter_hurtbox");
crouchbox_spr       = sprite_get("matter_crouch_hurtbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("void_victoryscreen")); // victory_background.png

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_wra"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_hod_flip1");
air_dodge_sound     = asset_get("sfx_clairen_fspecial_dash");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

nspecial_trail1 = hit_fx_create(sprite_get("nspecial_proj_trail1"), 30);
nspecial_trail2 = hit_fx_create(sprite_get("nspecial_proj_trail2"), 30);
nspecial_trail3 = hit_fx_create(sprite_get("nspecial_proj_trail3"), 30);

dspecial_trail1 = hit_fx_create(sprite_get("dspecial_proj_trail1"), 10);
dspecial_trail2 = hit_fx_create(sprite_get("dspecial_proj_trail2"), 15);

dair_forgiveness = 0;
dair_forgiveness_threshold = 21

dspecial_orb = 0;
dspecial_orb_gather = false;
dspecial_enemy = noone;
enemy_dspecial_orb = 0;
enemy_dspecial_cont = 0;
enemy_dspecial_rot_cont = 50;
dspecial_target_x = 0;
dspecial_target_y = 0;

currentRot = 0;
orb_x1 = 0;
orb_y1 = 0;
orb_x2 = 0;
orb_y2 = 0;
orb_x3 = 0;
orb_y3 = 0;
orb_x4 = 0;
orb_y4 = 0;

minion = noone;
minion_controlling = false;
dspecial_orb_minion = false;
not_starting_strong = false;
was_hit = false;

//Intro Stuff
introTimer = -4;
introTimer2 = 0;
introAnimFrameLength = 4;

//Compatibility
kf_custom_icon = sprite_get("ability_dmb");
kf_hud_name = "Dark Matter Blade";


//Feri
feri_costume = sprite_get("Dark_Feri");



//Pokemon stadium
pkmn_stadium_name_override = "Dark swd."
pkmn_stadium_front_img = sprite_get("Dark_Matter_front")
pkmn_stadium_back_img = sprite_get("Dark_Matter_back")

//Trial Grounds
guiltySprite = sprite_get("Dark_Matter_Trial")

//Po and gumbo
 pot_compat_text = "Sweet-HEART cake"
 pot_compat_variable = sprite_get("Dark_Matter_Cake");
 
 //Mt Dedede

arena_title = "The blade of darkness.";

//Boxing arena

boxing_title = "Rainbow stealer";

//Soulbound Conflict message

battle_text = "* The darkness stares into you.";
//Snake interigations

sna_interrogated_line_01 = "'incomprehensible Screeching'";
//AgentN Codec

ncode1 = "Information on this creature is difficult to find"
ncode2 = "It is named 'Dark Matter' and is attempting to"
ncode3 = "cover the world in darkness. Eliminate at all cost"
//Henry Stickmin fail

has_fail = true;
fail_text = "Good luck Henry. Hopefully that sack has air holes.";
//unregistered HyperCam quotes

uhc_victory_quote = "I s dk mttr Kbys d a d :0 :0 :0?!";

//Pac man

Namco_Taunt = sprite_get("Dark_Pac")
Namco_Taunt_Sound = sound_get("Pac_Sword_Effect")

//Hikaru title

Hikaru_Title = "Possessed"; 

// Wall-E

walle_taunt_sound = sound_get("28 - vs. Dark Matter Blade")
walle_taunt_type = 1
