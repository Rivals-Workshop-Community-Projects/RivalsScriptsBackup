/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The ATTACKS are still in their overpowered form in this
 * template, so be sure to make the ones for your character weaker.
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES
small_sprites = true;
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 128;
// Physical size
char_height         = 46;       //not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 8;		// 8    -  16
initial_dash_speed  = 7.5;		// 4    -  9
dash_speed          = 6.25;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.63;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 8;		// 4    -  8
air_max_speed       = 6;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.4;		// 0.2  -  0.4
prat_fall_accel     = 0.8;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 8;		// 6    -  11
fast_fall           = 12;		// 11   -  16
gravity_speed       = 0.3;		// 0.3  -  0.6
hitstun_grav        = 0.45;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 7.6;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 4.5;		// 4    -  7.4
djump_speed         = -1;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = -1.4;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 9;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 6;		// 4    -  7
walljump_vsp        = 7;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 24;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0;		// 0    -  0.15
roll_forward_max    = 9.5;        // 9    -  11
roll_backward_max   = 9.5;        // 9    -  11       always the same as forward
wave_land_time      = 6;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 8;      // 7.5  -  8
techroll_speed      = 8;       // 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_example = sound_get("example"); // sounds/example.ogg

// VFX
emblem_small = hit_fx_create(sprite_get("emblem_small"), 20);
emblem_big = hit_fx_create(sprite_get("emblem_big"), 25);
orb_trail = hit_fx_create(sprite_get("orb_trail"), 15);

firework_y = hit_fx_create(sprite_get("firework_y"), 20);
firework_b = hit_fx_create(sprite_get("firework_b"), 20);
firework_r = hit_fx_create(sprite_get("firework_r"), 20);
gem_apple_glow = hit_fx_create(sprite_get("gem_apple_glow"), 20);


flame_trail = hit_fx_create(sprite_get("flame_trail"), 10);

flame_despawn = hit_fx_create(sprite_get("flame_despawn"), 20);

// Variables
rainbow_color = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.12;
crouch_anim_speed   = 0.2;
walk_anim_speed     = 0.12;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 34;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 2;

// Tech roll
techroll_startup_frames     = 2;
techroll_active_frames      = 1;
techroll_recovery_frames    = 3;

// Airdodge
air_dodge_startup_frames    = 2;
air_dodge_active_frames     = 1;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 2;
roll_forward_active_frames      = 1;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 2;
roll_back_active_frames         = 1;
roll_back_recovery_frames       = 3;

// Crouch
crouch_startup_frames   = 1;
crouch_active_frames    = 3;
crouch_recovery_frames  = 2;

/*

Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation.

*/

hit_effect_index = 0;

// Hurtbox sprites
hurtbox_spr         = sprite_get("hurtbox");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_bg")); // victory_background.png
set_victory_theme(sound_get("mus_magolor_wins")); // victory_theme.ogg

// Movement SFX
land_sound          = sound_get("sfx_land_nolag");
landing_lag_sound   = sound_get("sfx_land");
waveland_sound      = sound_get("magolor_tele_out"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = sound_get("sfx_jump");
djump_sound         = sound_get("sfx_djump");
air_dodge_sound     = sound_get("magolor_tele_in");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

started_free = false;
soul = false;
fspecial_angle = 0;
fspecial_teleported = false;
fspecial_hsp = 13;
fspecial_vsp = 0;
fspecial_timer = 0;
fspecial_id = noone;
fspecial_portal = 0;

uspecial_angle = 0;
uspecial_angle_sprite = sprite_get("uspecial_2_default_angled");
nspecial_gague = 0;
nspecial_charge = 0;

portal1_dir = 0;
portal2_dir = 0;
portal1 = noone;
portal2 = noone;
portal1_x = 0;
portal1_y = 0;
portal2_x = 0;
portal2_y = 0;
portals_active = false;
portal_cooldown = 0;

apple = noone;
apple2 = noone;
apple3 = noone;
laugh_cancel = false;

zetter_hit = hit_fx_create( sprite_get( "zetter_hit1" ), 25 );

intro_toggle = true;
Hikaru_Title = "Stellar Deceptor";
arena_title = "The Stellar Deceptor";
battle_text = "Magalor gives you a shifty look"
kf_custom_icon = sprite_get("kf_icon");
kf_hud_offset = -20;
superMove = 14;

if (get_player_color( player ) == 8 or get_player_color( player ) == 5 or get_player_color( player ) == 6){
magolor_scream = sound_get("sfx_magolor_scream_soul");
}else{
magolor_scream = sound_get("sfx_magolor_scream");
}
fs_char_portrait_y = 85;
fs_portrait_x = 85;

ustrong_proj_angle = 0;

lor = noone;
introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;
nname = "Magolor";

ncode1 = "Guilty of stealing the Lor Starcutter and once";
ncode2 = "tried to control a universe. Approach carefully,";
ncode3 = "for he wields abilities greater than most.";