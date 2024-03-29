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
char_height         = 45;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.9;		// 0.9  -  1.2

// Ground movement
walk_speed          = 2.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 6;		// 4    -  9
dash_speed          = 5.45;		// 5    -  9
dash_turn_time      = 8;		// 8    -  20
dash_turn_accel     = 0.75;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 4.5;		// 4    -  8
max_jump_hsp        = 5;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.4;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.03;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 15;		// 11   -  16
gravity_speed       = 0.65;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 7;		// 4    -  7.4
djump_speed         = 12;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 5;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 24;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.09;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.1;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 9;		// 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("fspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_example = sound_get("example"); // sounds/example.ogg

// VFX
vfx_example = hit_fx_create(spr_example, 54);
smoke = hit_fx_create(sprite_get("uspecial_smoke"), 12);
stones = hit_fx_create(sprite_get("fstrong_proj"), 20);
rock_s = hit_fx_create(sprite_get("hfx_rock_small"), 16);
rock_m = hit_fx_create(sprite_get("hfx_rock_large"), 24);
rock_l = hit_fx_create(sprite_get("hfx_rock_big"), 28);

// Variables
has_goku_beam = false;
doing_goku_beam = false;
beam_newest_hbox = noone;

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.2;
crouch_anim_speed   = 0.2;
walk_anim_speed     = 0.2;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 26;		// 24   -  40
walljump_time       = 16;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 0;
dodge_recovery_frames   = 4;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 3;

// Tech roll
techroll_startup_frames     = 3;
techroll_active_frames      = 5;
techroll_recovery_frames    = 3;

// Airdodge
air_dodge_startup_frames    = 4;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 3;
roll_forward_active_frames      = 5;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 3;
roll_back_active_frames         = 5;
roll_back_recovery_frames       = 3;

// Crouch
crouch_startup_frames   = 3;
crouch_active_frames    = 11;
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



// Hurtbox sprites
hurtbox_spr         = sprite_get("hurtbox");
crouchbox_spr       = sprite_get("hurtbox_crouch");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Movement SFX
land_sound          = sound_get("step_xl_run");
landing_lag_sound   = sound_get("step_xl_run");
waveland_sound      = sound_get("step_xl_slide"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Gameplay Stuff
nspecial_rand = 0;
fspecial_charge = 0;
fspecial_cont = 0;
fspecial_speed = 3;

stealth_rock = 0;
stealth_rock_aux = 0;

punch_charge = 0;

point_1 = make_colour_rgb(255, 255, 0); 
point_2 = make_colour_rgb(242, 101, 34); 

//Compatibilies
//Pokémon Stadium
pkmn_stadium_front_img = sprite_get("ps_front");
pkmn_stadium_back_img = sprite_get("ps_back");
pkmn_stadium_name_override = "Golem";

//Mt. Dedede Stadium
arena_short_name = "Golem";
arena_title = "The Rock Blaster";

//Boxing Ring
boxing_short_name = "Golem";
boxing_title = "The Mud Slapper";

//Hikaru
Hikaru_Title2 = "The Megaton Pokémon";

//Henry Stickmin
has_fail = true;
fail_text = "Henry panicked and whited out!";

//Assist Buddy
assistAttack = AT_FSTRONG; //The attack to use as the assist
assistOffsetX = -32; //The horizontal distance they spawn from the player
assistOffsetY = 0; //The vertical distance they spawn from the player
assistVelX = 0; //The horizontal velocity applied when the assist is called
assistVelY = 0; //The vertical velocity applied when the assist is called
assistGroundOnly = true; //Whether or not they are forced to the ground
assistFloat = false; //Whether or not they stay in place vertically
assistCool = 60; //The time it takes for the assist to recharge

//Agent N & Lynk
nname = "Golem"
ncode1 = "The Megaton Pokémon, capable of manipulating"
ncode2 = "rocks to create a layer of armor or explode."
ncode3 = "Doesn't like moving much."

//Wall-E
walle_taunt_sound = sound_get("cry")
walle_taunt_type = [2]

//Soulbound Conflict
battle_text = "Keep rollin', rollin', rollin', rolling.";

//Miiverse
miiverse_post = sprite_get("miiverse");

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 0;
user_event(14);