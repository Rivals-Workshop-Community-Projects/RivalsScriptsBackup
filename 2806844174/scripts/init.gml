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
char_height         = 46;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.5;		// 3    -  4.5
walk_accel          = 0.4;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 7.5;		// 5    -  9
dash_turn_time      = 20;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 7;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.65;		// 0.25 -  1.5
air_friction        = 0.03;		// 0.02 -  0.07
max_fall            = 8;		// 6    -  11
fast_fall           = 13;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 5;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 5.5;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 15;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.1;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 8;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11

// Character-specific assets init

//compat stuff

pot_compat_variable = sprite_get("plate");
pot_compat_text = "Flying Dutchman";

mamizou_transform_spr = sprite_get("mamizou");

//idk how to do this better. fixes endless abyss crashing
if get_player_team(1) == get_player_team(2) && get_player_team(2) == get_player_team(3) && get_player_team(3) == get_player_team(4) {
    probably_in_abyss = true;
} else probably_in_abyss = false;

is_timed = clamp(get_game_timer(), 0, 1);
draw_color = c_white;

poggers_alt = get_player_color(player) == 1;
hell_alt = get_player_color(player) == 4;
with oTestPlayer hell_alt = false;

if poggers_alt {
    colorSet(get_player_color(player), 0, $828282);
    colorSet(get_player_color(player), 3, $828282);
    colorSet(get_player_color(player), 4, $5e5e5e);
    colorSet(get_player_color(player), 5, $828282);
}

hitfx1 = hit_fx_create(sprite_get("hitfx1"), 30);
hitfx2 = hit_fx_create(sprite_get("hitfx1"), 30);
hitfx3 = hit_fx_create(sprite_get("hitfx3"), 30);
bubble_fx = hit_fx_create(sprite_get("bubble_fx"), 12);
sparkle = hit_fx_create(sprite_get("sparkle"), 8);

dspecial_fx = hit_fx_create(sprite_get("dspecial_fx"), 21);

uspecial_used = false;

wing_x = x;
wing_y = y;

phone_offscreen = [];

//early_up_down = false;
//early_right_down = false;
//early_left_down = false;
//early_special_down = false;

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.125;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.175;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 29;		// 24   -  40
walljump_time       = 29;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 2;

// Tech roll
techroll_startup_frames     = 2;
techroll_active_frames      = 2;
techroll_recovery_frames    = 3;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 1;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 2;
roll_forward_active_frames      = 2;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 2;
roll_back_active_frames         = 2;
roll_back_recovery_frames       = 3;

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
hurtbox_spr         = asset_get("orca_hurtbox");
crouchbox_spr       = asset_get("orca_crouchbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory")); // victory_background.png
//set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;



// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);

#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));