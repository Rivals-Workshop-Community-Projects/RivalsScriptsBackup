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
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 14;		// 8    -  16
initial_dash_speed  = 6;		// 4    -  9
dash_speed          = 6;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 1;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 11;		// 6    -  11
fast_fall           = 16;		// 11   -  16
gravity_speed       = 0.6;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 7;		// 4    -  7.4
djump_speed         = 4;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = -0.8;     // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 15;       //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 4;		// 4    -  7
walljump_vsp        = 7;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.15;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 12;		// 6    -  12
wave_land_adj       = 1.2;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11

// Version 2 of djump
djump_speed = 10;
djump_accel = 0;



// Character-specific assets init

//Sprites
spr_intro = sprite_get("intro");
spr_fspecial2 = sprite_get("fspecial2");
spr_dspecial_air = sprite_get("dspecial_air");
spr_vfx_dattack_cart = sprite_get("vfx_dattack_cart");
spr_vfx_warp_box = sprite_get("vfx_warp_box");
spr_nspecial_wiimote = sprite_get("nspecial_wiimote");
spr_nspecial_overlay = sprite_get("nspecial_overlay");
spr_nspecial_beam = sprite_get("nspecial_beam");
spr_uspecial_ui = sprite_get("uspecial_ui");
spr_dstrong_proj = sprite_get("dstrong_proj");
spr_dspecial_proj = sprite_get("dspecial_proj");
spr_vfx_pow = sprite_get("vfx_pow");
spr_vfx_pow_shockwave = sprite_get("vfx_pow_shockwave");
spr_vfx_sparkles = sprite_get("vfx_sparkles");
spr_vfx_sparkles_up = sprite_get("vfx_sparkles_up");
spr_vfx_sparkle = sprite_get("vfx_sparkle");
spr_vfx_pollen = sprite_get("vfx_pollen");

var luma_suffix = (get_player_color(player) == 13) ? "_polari" : "";

spr_luma_hurtbox = sprite_get("luma_hurtbox");
spr_luma_idle = sprite_get("luma_idle" + luma_suffix);
spr_luma_proj = sprite_get("luma_proj");
spr_luma_spawn = sprite_get("luma_spawn" + luma_suffix);
spr_luma_die = sprite_get("luma_die" + luma_suffix);
spr_luma_fspecial = sprite_get("luma_fspecial" + luma_suffix);
spr_luma_nspecial = sprite_get("luma_nspecial" + luma_suffix);
spr_luma_spin_flourish = sprite_get("luma_spin_flourish" + luma_suffix);

// SFX
sfx_mario_2_jump = sound_get("mario_2_jump");
sfx_mario_2_pull = sound_get("mario_2_pull");
sfx_mario_2_throw = sound_get("mario_2_throw");
sfx_mario_coin = sound_get("mario_coin");
sfx_mario_flip = sound_get("mario_flip");
sfx_mario_flip_slam = sound_get("mario_flip_slam");
sfx_mario_galaxy_bee = sound_get("mario_galaxy_bee");
sfx_mario_galaxy_cursor_ready = sound_get("mario_galaxy_cursor_ready");
sfx_mario_galaxy_luma_ready = sound_get("mario_galaxy_luma_ready");
sfx_mario_galaxy_powerup_get = sound_get("mario_galaxy_powerup_get");
sfx_mario_galaxy_powerup_lose = sound_get("mario_galaxy_powerup_lose");
sfx_mario_galaxy_pull_star = sound_get("mario_galaxy_pull_star");
sfx_mario_galaxy_spin = sound_get("mario_galaxy_spin");
sfx_mario_galaxy_starbit_shoot = sound_get("mario_galaxy_starbit_shoot");
sfx_mario_poof_1 = sound_get("mario_poof_1");
sfx_mario_pop_1 = sound_get("mario_pop_1");
sfx_mario_roll = sound_get("mario_roll");
sfx_mario_swoosh_1 = sound_get("mario_swoosh_1");
sfx_mario_swoosh_2 = sound_get("mario_swoosh_2");
sfx_mario_swoosh_3 = sound_get("mario_swoosh_3");
sfx_mario_warp_box_enter = sound_get("mario_warp_box_enter");
sfx_mario_warp_box_exit = sound_get("mario_warp_box_exit");
sfx_minecraft_minecart = sound_get("minecraft_minecart");
sfx_ssbu_bow_charge = sound_get("ssbu_bow_charge");
sfx_ssbu_luma_ding = sound_get("ssbu_luma_ding");
sfx_ssbu_luma_pop = sound_get("ssbu_luma_pop");
sfx_ssbu_luma_shoot = sound_get("ssbu_luma_shoot");
sfx_ssbu_rosa_swing_1 = sound_get("ssbu_rosa_swing_1");
sfx_ssbu_rosa_swing_2 = sound_get("ssbu_rosa_swing_2");
sfx_ssbu_rosa_swing_3 = sound_get("ssbu_rosa_swing_3");
sfx_yoshi_ground_pound_flip = sound_get("yoshi_ground_pound_flip");
sfx_yoshi_ground_pound_slam = sound_get("yoshi_ground_pound_slam");

// VFX
vfx_dattack_cart = hit_fx_create(spr_vfx_dattack_cart, 12);
vfx_pow = hit_fx_create(spr_vfx_pow, 12);
vfx_pow_shockwave = hit_fx_create(spr_vfx_pow_shockwave, 20);
vfx_warp_box = hit_fx_create(spr_vfx_warp_box, 30);
vfx_sparkles = hit_fx_create(spr_vfx_sparkles, 25);
vfx_sparkles_up = hit_fx_create(spr_vfx_sparkles_up, 20);
vfx_sparkle = hit_fx_create(spr_vfx_sparkle, 25);
vfx_pollen = hit_fx_create(spr_vfx_pollen, 16);

// Variables
rainbow_color = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)
toadette = 0;
luma = noone;
stopped_sounds = [];
bee_time_max = 120;
bee_time = bee_time_max;
bee_moment = 0;
bee_ui_alpha = 0;
luma_pop_timer = 0;
luma_pop_timer_max = 7 * 3;
spin_refreshed = 1;

swapped_sprite_names = [
    "idle", 
    "crouch", 
    "walk", 
    "walkturn", 
    "dash", 
    "dashstart", 
    "dashstop", 
    "dashturn", 
    
    "hurt", 
    "bighurt", 
    "hurtground", 
    "bouncehurt", 
    "spinhurt", 
    "uphurt", 
    "downhurt", 
    
    "jumpstart", 
    "jump", 
    "doublejump", 
    "walljump", 
    "pratfall", 
    "land", 
    "landinglag", 
    
    "parry", 
    "roll_forward", 
    "roll_backward", 
    "airdodge", 
    "waveland", 
    "tech", 
    
    "jab", 
    "dattack", 
    "ftilt", 
    "dtilt", 
    "utilt", 
    "nair", 
    "fair", 
    "bair", 
    "uair", 
    "dair", 
    "fstrong", 
    "ustrong", 
    "dstrong", 
    "nspecial", 
    "fspecial", 
    "fspecial2", 
    "uspecial", 
    "dspecial", 
    "dspecial_air", 
    "phone_open",
    "intro"
    ];



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.2;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.2;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 40;		// 24   -  40
walljump_time       = 24;		// 18   -  32
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
techroll_active_frames      = 3;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 3;
roll_back_recovery_frames       = 2;

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
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_frog_uspecial_cast");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;



// Muno template: (don't change)

user_event(14); // General init