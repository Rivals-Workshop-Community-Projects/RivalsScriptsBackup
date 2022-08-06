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
char_height         = 27;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 14;		// 8    -  16
initial_dash_speed  = 6;		// 4    -  9
dash_speed          = 5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6
dash_stop_percent   = 0.8;		// 0.25 -  0.5
ground_friction     = 0.3;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 5;  		// 3    -  7
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
short_hop_speed     = 7;		// 4    -  7.4
djump_speed         = 9;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 2;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
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

// Variables
rainbow_color = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)

ustrong_grounded_timer = 0; // used for land sfx on ustrong

dstrong_hspChange = 0;
dstrong_vspChange = 0;
dstrong_fall_timer = 0;


// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.15;
dash_anim_speed     = 0.3;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 34;		// 24   -  40
walljump_time       = 32;		// 18   -  32
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
techroll_recovery_frames    = 1;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 1;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 1;

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
hurtbox_spr         = sprite_get("gooey_hurtbox");
crouchbox_spr       = sprite_get("gooey_crouchbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Movement SFX
sfx_dashstop        = sound_get("sfx_dashstop");
land_sound          = sound_get("sfx_land");
landing_lag_sound   = sound_get("sfx_landinglag");
waveland_sound      = sound_get("sfx_waveland"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = sound_get("sfx_jump");
djump_sound         = sound_get("sfx_doublejump");
air_dodge_sound     = sound_get("sfx_airdodge");
sfx_parry           = sound_get("sfx_parry");
sfx_death           = sound_get("sfx_death");

//VFX
slashy = hit_fx_create(sprite_get("nspecial_proj_smear"),18);
slashyafter = hit_fx_create(sprite_get("nspecial_projbig_after"),6);
slashyfaster = hit_fx_create(sprite_get("nspecial_projbig_after"),4);
slashyAfter2 = hit_fx_create(sprite_get("nspecial_proj_after"),6);

gooey_dstrong_hit_strong = hit_fx_create( sprite_get( "vfx_gooey_dstrong_hit" ), 21 );
gooey_dstrong_hit_fall = hit_fx_create( sprite_get( "vfx_gooey_dstrong_hit_fall" ), 24 );

gooey_fspec_fire_lrg = hit_fx_create( sprite_get( "vfx_gooey_fspecial_big" ), 16 );
gooey_fspec_fire_med = hit_fx_create( sprite_get( "vfx_gooey_fspecial_normal" ), 18 );

//sfx init
sfx_canvas_curse_needle = sound_get("sfx_canvas_curse_needle");
sfx_death = sound_get("sfx_death");
sfx_dspec_grab_start = sound_get("sfx_dspec_grab_start");
sfx_krdl_sword_blow1 = sound_get("sfx_krdl_sword_blow1");
sfx_krdl_fire_hit = sound_get("sfx_krdl_fire_hit");
sfx_krdl_ice_breath = sound_get("sfx_krdl_ice_breath");
sfx_krdl_ice_hit = sound_get("sfx_krdl_ice_hit");
sfx_krdl_inhale_grab = sound_get("sfx_krdl_inhale_grab");
sfx_krdl_parasol_twirl = sound_get("sfx_krdl_parasol_twirl");
sfx_krdl_spark_hit = sound_get("sfx_krdl_spark_hit");
sfx_krdl_spark_wave = sound_get("sfx_krdl_spark_wave");
sfx_krdl_spit = sound_get("sfx_krdl_spit");
sfx_krdl_stone_exit = sound_get("sfx_krdl_stone_exit");
sfx_krdl_stone_form = sound_get("sfx_krdl_stone_form");
sfx_krdl_stone_land = sound_get("sfx_krdl_stone_land");
sfx_star_allies_gooey_burning = sound_get("sfx_star_allies_gooey_burning");
sfx_star_allies_gooey_dark_laser = sound_get("sfx_star_allies_gooey_dark_laser");
sfx_star_allies_gooey_dark_laser_flare = sound_get("sfx_star_allies_gooey_dark_laser_flare");
sfx_star_allies_gooey_flicker_lick = sound_get("sfx_star_allies_gooey_flicker_lick");
sfx_star_allies_gooey_flicker_lick_cut = sound_get("sfx_star_allies_gooey_flicker_lick_cut");
sfx_star_allies_gooey_friend_bag = sound_get("sfx_star_allies_gooey_friend_bag");
sfx_star_allies_gooey_friend_bag_open = sound_get("sfx_star_allies_gooey_friend_bag_open");
sfx_star_allies_gooey_lick_1 = sound_get("sfx_star_allies_gooey_lick_1");
sfx_star_allies_gooey_lick_2 = sound_get("sfx_star_allies_gooey_lick_2");
sfx_star_allies_gooey_parasol = sound_get("sfx_star_allies_gooey_parasol");
sfx_stomp = sound_get("sfx_stomp");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Compatibility
Hikaru_Title = "Who, Me?";
arena_title = "Oblivious Tongue Twsiter";
battle_text = "Gooey stares at you... MENACINGLY!"
otto_bobblehead_sprite = sprite_get("gooey_bobble_head"); 
kf_custom_icon = sprite_get("ability_goo");
kf_hud_name = "Gooey";

draw1 = 0;
draw1_x = 0;
draw1_y = 0;
draw1_index = 0;
draw2 = 0;
draw2_x = 0;
draw2_y = 0;
draw2_index = 0;
draw3 = 0;
draw3_x = 0;
draw3_y = 0;
draw3_index = 0;
draw4 = 0;
draw4_x = 0;
draw4_y = 0;
draw4_index = 0;
draw5 = 0;
draw5_x = 0;
draw5_y = 0;
draw5_index = 0;
trail_effect = sprite_get("fspecial_trail");

strong_fspecial = false;

grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.
with(oPlayer){
gooeyOpponentShouldBeVisisbleTimer = 0;
}
gooeyPPLHit = 0;
cutter_proj_dir_selected = 0;

// Muno template: (don't change)

user_event(14); // General init
