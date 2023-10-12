// init is a script that creates variables when the player is created on the stage.
/*
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

// Physical size
char_height         = 64;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.98;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.2;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 4;	    // 6
initial_dash_time   = 14;		// 8    -  16
initial_dash_speed  = 5;		// 4    -  9
dash_speed          = 4.5;		// 5    -  9
dash_turn_time      = 7;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.8;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 4;		// 4    -  8
max_jump_hsp        = 4;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 5;		// 3
air_accel           = 0.2;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 9;		// 6    -  11
fast_fall           = 16;		// 11   -  16
gravity_speed       = 0.6;		// 0.3  -  0.6
hitstun_grav        = 0.6;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 9;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 5;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 6;		// 4    -  6
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
sfx_example = sound_get("isaac_ui_colorchange"); // sounds/isaac_ui_colorchange.ogg
sfx_example = sound_get("isaac_ui_select"); // sounds/isaac_ui_select.ogg


// Movement

sfx_example = sound_get("isaac_jump"); // sounds/isaac_jump.ogg
sfx_example = sound_get("isaac_thruster_jump"); // sounds/isaac_thruster_jump.ogg
sfx_example = sound_get("isaac_thruster_fly"); // sounds/isaac_thruster_fly.ogg

sfx_example = sound_get("isaac_swing_02"); // sounds/isaac_swing_02.ogg
sfx_example = sound_get("isaac_thruster_swing"); // sounds/isaac_thruster_swing.ogg

// Weapon Sounds

sfx_example = sound_get("isaac_plasmacutter_shot"); // sounds/isaac_plasmacutter_shot.ogg
sfx_example = sound_get("isaac_ripperblade_shot"); // sounds/isaac_ripperblade_shot.ogg
sfx_example = sound_get("isaac_ripperblade_hit"); // sounds/isaac_ripperblade_hit.ogg
sfx_example = sound_get("isaac_pulserifle_shot"); // sounds/isaac_pulserifle_shot.ogg
sfx_example = sound_get("isaac_pulserifle_grenade_shot"); // sounds/isaac_pulserifle_grenade_shot.ogg
sfx_example = sound_get("isaac_pulserifle_grenade_explode"); // sounds/isaac_pulserifle_grenade_explode.ogg
sfx_example = sound_get("isaac_pulserifle_grenade_reload"); // sounds/isaac_pulserifle_grenade_reload.ogg
sfx_example = sound_get("isaac_forcegun_shot"); // sounds/isaac_forcegun_shot.ogg
sfx_example = sound_get("isaac_contactbeam_tink"); // sounds/isaac_contactbeam_tink.ogg
sfx_example = sound_get("isaac_contactbeam_explode"); // sounds/isaac_contactbeam_explode.ogg

// Impact Sounds

sfx_example = sound_get("isaac_punch_01"); // sounds/isaac_punch_01.ogg
sfx_example = sound_get("isaac_punch_02"); // sounds/isaac_punch_02.ogg
sfx_example = sound_get("isaac_punch_03"); // sounds/isaac_punch_03.ogg
sfx_example = sound_get("isaac_kick_01"); // sounds/isaac_kick_01.ogg
sfx_example = sound_get("isaac_kick_02"); // sounds/isaac_kick_02.ogg
sfx_example = sound_get("isaac_kick_03"); // sounds/isaac_kick_03.ogg
sfx_example = sound_get("isaac_stomp_01"); // sounds/isaac_stomp_01.ogg
sfx_example = sound_get("isaac_stomp_02"); // sounds/isaac_stomp_02.ogg
sfx_example = sound_get("isaac_thruster_kick"); // sounds/isaac_thruster_kick.ogg

sfx_example = sound_get("isaac_stasis_hit"); // sounds/isaac_stasis_hit.ogg


// Voice Clips
sfx_death = sound_get("isaac_deathscream");

sfx_example = sound_get("isaac_grunt_1"); // sounds/isaac_grunt_1.ogg
sfx_example = sound_get("isaac_grunt_2"); // sounds/isaac_grunt_2.ogg
sfx_example = sound_get("isaac_grunt_3"); // sounds/isaac_grunt_3.ogg
sfx_example = sound_get("isaac_grunt_4"); // sounds/isaac_grunt_4.ogg

sfx_example = sound_get("isaac_taunt_bang"); // sounds/isaac_taunt_bang.ogg
sfx_example = sound_get("isaac_taunt_blow"); // sounds/isaac_taunt_blow.ogg


gruntSound[1] = "isaac_grunt_1";
gruntSound[2] = "isaac_grunt_2";
gruntSound[3] = "isaac_grunt_3";
gruntSound[4] = "isaac_grunt_4";

hurtSound[1] = "isaac_hurt_01";
hurtSound[2] = "isaac_hurt_02";

introSound[1] = "isaac_intro_01";
introSound[2] = "isaac_intro_02";

introTimer = -4;
introTimer2 = 0;

sfx_thinkfast = sound_get("isaac_stasis_thinkfast"); // sounds/isaac_stasis_thinkfast.ogg

// VFX
vfx_example = hit_fx_create(spr_example, 54);

// Variables
rainbow_color = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.07;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.130;
dash_anim_speed     = 0.27;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 18;		// 24   -  40
walljump_time       = 32;		// 18   -  32
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
air_dodge_startup_frames    = 2;
air_dodge_active_frames     = 2;
air_dodge_recovery_frames   = 1;

// Roll
roll_forward_startup_frames     = 3;
roll_forward_active_frames      = 6;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 3;
roll_back_active_frames         = 6;
roll_back_recovery_frames       = 3;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 2;
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

// Trail

trail_effect = sprite_get("isaac_grenade_trail");

// Hurtbox sprites
hurtbox_spr         = sprite_get("isaac_hurt");
crouchbox_spr       = sprite_get("crouch_hurt");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("isaac_victoryscreen")); // victory_background.png
set_victory_theme(sound_get("isaac_victorytheme")); // victory_theme.ogg

// Movement SFX
land_sound          = sound_get("isaac_land");
landing_lag_sound   = sound_get("isaac_land");
waveland_sound      = asset_get("sfx_waveland_ran"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = sound_get("isaac_jump");
djump_sound         = sound_get("isaac_thruster_jump");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

small_sprites = true

//#regioncharacter variables

//nspecial
ammo = 6;

//dspecial
detonator = noone;



//#endregion

// EXTERNAL SUPPORT //

// Dedede Arena
arena_title = "The Visceral Engineer";

//Pokemon stadium

pkmn_stadium_front_img = sprite_get("isaac_stadium_f")
pkmn_stadium_back_img = sprite_get("isaac_stadium_b")

// Amber
plushForAmber = sprite_get("isaac_plush");

// Muno template: (don't change)

user_event(14); // General init