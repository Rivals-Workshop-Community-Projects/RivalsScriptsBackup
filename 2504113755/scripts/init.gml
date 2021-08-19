/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The ATTACKS are still in their overpowered form in this
 * template, so be sure to make the ones for your character weaker.
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

small_sprites = 1


// Physical size
char_height         = 52;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.05;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.0;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 14;		// 8    -  16
initial_dash_speed  = 7.25;		// 4    -  9
dash_speed          = 6.5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.3;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 1;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 15;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 11.5;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 4;		// 4    -  7
walljump_vsp        = 11;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 14;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 9;       // 8    -  11



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
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0.15;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.15;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 33;		// 24   -  40
walljump_time       = 45;		// 18   -  32
wall_frames         = 1;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 2;

// Tech roll
techroll_startup_frames     = 2;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 2;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 2;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 2;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 1;
crouch_active_frames    = 6;
crouch_recovery_frames  = 0;

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
crouchbox_spr       = sprite_get("idle_hurtbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(CH_CLAIREN); // victory_background.png
set_victory_theme(CH_CLAIREN); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = sound_get("Dodge"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


            has_hit_article = false


blink_hsp = 0
blink_vsp = 0
blink_countdown = 0
blink_state_timer = 20
can_blink = true


 x_offset = 0
 y_offset = 0


walking_backward_counter = 0
direction = 1
swords_merged = false
dspecial_not_used_yet_in_air = true
dspecial_started_from_ground = false
has_cancelled = false
old_y_offset = 0

slower_hsp = false

blink_start_frame = 5 //sorry suckers!


wavebounced_downspec = false


intro_time = 30 + random_func(current_second+current_minute + player, 50, true)
sword_start_variant = random_func(current_second + player, 2, true)



set_hit_particle_sprite( 1, sprite_get( "hfx_part_plasma" ) );
set_hit_particle_sprite( 2, sprite_get( "hfx_part_plasma_white" ) );

plasma_x = hit_fx_create( sprite_get( "plasma_x" ), 21 );
plasma_x_circle_small = hit_fx_create( sprite_get( "plasma_x_circle_small" ), 21 );
plasma_x_circle_big = hit_fx_create( sprite_get( "plasma_x_circle_big" ), 21 );
plasma_t_small = hit_fx_create( sprite_get( "plasma_t_small" ), 21 );
plasma_t_big = hit_fx_create( sprite_get( "plasma_t_big" ), 21 );
plasma_line = hit_fx_create( sprite_get( "plasma_line" ), 21 );
plasma_x_big = hit_fx_create( sprite_get( "plasma_x_big" ), 21 );
plasma_circle_big = hit_fx_create( sprite_get( "plasma_circle" ), 20 );


trainingMode = 0

num_articles = 0
nair_used = 0

// afterimage
afterImageTimer = 0;
afterImageMax = 16;
afterImage = array_create(afterImageMax, -1);

nes_enabled = false

x_blah = 0

//rainboW UWU code
hue_offset=0;
hue_speed=1; //change this to change the speed of the hueshift




// Muno template: (don't change)

user_event(14); // General init