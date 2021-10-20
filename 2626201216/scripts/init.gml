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
walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 9;		// 8    -  16
initial_dash_speed  = 5;		// 4    -  9
dash_speed          = 6.25;		// 5    -  9
dash_turn_time      = 8;		// 8    -  20
dash_turn_accel     = 1.75;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.7;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4

    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4.5;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.4;		// 0.25 -  1.5
air_friction        = 0.05;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 16;		// 11   -  16
gravity_speed       = 0.4;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 9.99;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 5.5;		// 4    -  7.4
djump_speed         = 10.5;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 6;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 11;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.4;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 7;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11





// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_example = sound_get("example"); // sounds/example.ogg

// VFX
vfx_example = hit_fx_create(spr_example, 54);

plunger = hit_fx_create(sprite_get("plunger"), 60);

rotate = hit_fx_create(sprite_get("rotate"), 7);

watersplash = hit_fx_create(sprite_get("watersplash"), 56);
initialsplash = hit_fx_create(sprite_get("initialsplash"), 56);

puddle_spawn = hit_fx_create(sprite_get("puddle_spawn"), 15);

load = hit_fx_create(sprite_get("load"), 28);

bubble = hit_fx_create(sprite_get("bubble"), 56);

fstrong_fx = hit_fx_create(sprite_get("fstrong_fx"), 24);

ustrong_thunder1 = hit_fx_create(sprite_get("ustrong_thunder1"), 29);
ustrong_thunder2 = hit_fx_create(sprite_get("ustrong_thunder2"), 17);

noclip = hit_fx_create(sprite_get("noclip"), 0);


//VFX VARIABLES

parry_timer = 0;
roll_timer = 0;
// Variables
rainbow_color = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)

conditional_add = 0;


// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.2;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 30;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 6;
dodge_active_frames     = 3;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 2;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 2;
techroll_recovery_frames    = 3;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 2;
roll_forward_recovery_frames    = 3;


roll_back_startup_frames        = 1;
roll_back_active_frames         = 1;
roll_back_recovery_frames       = 1;

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

//
spark_timer = 0;


// Hurtbox sprites
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = sprite_get("crouch_hurt");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_ran"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Zany code stuff

spark = 0;
unteleported = 0;


//Variables

total_spray = 9;



//Puddle code
water_collided = noone;


puddle_anim_timer = 0;
article_image_index = 0;

death_amount = 1000;

//temp_max_x = -1000000;
//temp_min_x = 10000000;
splash_count = 0;
puddle_i = 0;
current_y = 0;

//Victory
set_victory_bg(sprite_get("victory"));
set_victory_theme(sound_get("goodcall5"));

//walk code
cloned = 0;
copy = noone;
death_timer = 0;
big_chungus = 0;

bigchungus = 0;

hitbox_timer = 10;
banana = noone;

rechecking = 0;
rechecking_timer = 0;

chomp_timer = 0;
pratfall_debt = 0;

// Muno template: (don't change)

user_event(14); // General init

launch_dir = noone;

phone_practice = false;

taunt_active = 0;
taunt_timer = 0;