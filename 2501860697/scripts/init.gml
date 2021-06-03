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
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 12;		// 8    -  16
initial_dash_speed  = 6.25;		// 4    -  9
dash_speed          = 5.25;		// 5    -  9
dash_turn_time      = 16;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 9.75;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 5;		// 4    -  6
prat_land_time      = 22;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11

introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_example = sound_get("example"); // sounds/example.ogg

// VFX
vfx_example = hit_fx_create(spr_example, 54);

// Variables
rainbow_color = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.135;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.17;
dash_anim_speed     = 0.175;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 2;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 2;
techroll_recovery_frames    = 1;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 1;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 2;
roll_forward_recovery_frames    = 1;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 2;
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



// Hurtbox sprites
hurtbox_spr         = sprite_get("hurtbox");
crouchbox_spr       = sprite_get("crouch_hurt");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory")); // victory_theme.ogg

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

charge_max = 100;
charge = charge_max;
charge_drain_rate = 0.05;
charge_anim = 0;         //sub-image variable for meter animation
charge_prev = 1;   
venom_anim = 0;         //sub-image variable for meter animation
venom_prev = 1;   
stat_drain = 0.001;
venom = 3;
venom_min = 0;
venom1_boost = 1.125;
venom2_boost = 1.25;
venom3_boost = 1.15;
venom_timer = 0;
venom_timer_min = 0;
venom_drain_rate = .15;
venom_current = 0;
short = 0;
short_anim = 0;         //sub-image variable for meter animation
short_timer = 100;
short_drain = .185;
short_min = 0;
short_timer_min = 0;
venom_recharge = 0;
venom_recharge_active = false;
venom_recharge_rate = 0.1;
venom_recharge_max = 300;
venom_recharge_min = 0;
venom_stack = 0;

short_drain_min = .125;
short_drain_max = .185;

initial_dash_speed_base = 6.5;
initial_dash_speed_bonus = 1.5;
dash_speed_base = 5.5;
dash_speed_bonus = 2;
walk_speed_base = 3.25
walk_speed_bonus = 1.25;
moonwalk_accel_base = 1.35;
moonwalk_accel_bonus = .25;
max_jump_hsp_base = 6.25;
max_jump_hsp_bonus = 1.5;
air_max_speed_base = 4.25;
air_max_speed_bonus = 1;
air_dodge_speed_base = 7.65;
air_dodge_speed_bonus = .75;
roll_forward_max_base = 9;
roll_forward_max_bonus = 1;
roll_backward_max_base = 9;
roll_backward_max_bonus = 1;

initial_dash_speed_short = 5.5;
dash_speed_short = 4.5;
walk_speed_short = 2.5
moonwalk_accel_short = 1.15;
max_jump_hsp_short = 5.5;
air_max_speed_short = 3.5;
air_dodge_speed_short = 6;
roll_forward_max_short = 6;
roll_backward_max_short = 6;



//Uspecial
ztc_uspecial_angle = 90; //current direction

ztc_uspecial_speed = 14; //speed of launch
ztc_uspecial_angling = 3; //speed at which angling changes

footcharge_vfx = hit_fx_create( sprite_get( "vfx_footcharge" ), 9 );

lightning_fx1 = hit_fx_create( sprite_get( "lightning1" ), 15 );
lightning_fx2 = hit_fx_create( sprite_get( "lightning2" ), 15 );
fspecial_fx1 = hit_fx_create( sprite_get( "fspecial_proj2hit" ), 20 );


// Muno template: (don't change)

user_event(14); // General init
phone_practice = false;