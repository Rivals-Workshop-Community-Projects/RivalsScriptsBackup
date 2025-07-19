/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The ATTACKS are still in their overpowered form in this
 * template, so be sure to make the ones for your character weaker.
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// Custom Variable
uspec_soul_length = 200;
uspec_dir = 0; // direction the player used up special in

dstrong_jump_height = 0;
dstrong_start_pos = y;

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

// Physical size
char_height         = 64;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = .95;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.05;		// 3    -  4.5
walk_accel          = 0.3;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 10;		// 8    -  16
initial_dash_speed  = 7.5;		// 4    -  9
dash_speed          = 6.5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.4;		// 0.3  -  1
moonwalk_accel      = 1.2;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 8;		// 4    -  8
max_jump_hsp        = 7;		// 4    -  8
air_max_speed       = 5;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 13;		// 11   -  16
gravity_speed       = 0.56;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 11;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 10;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.1;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.25;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11



// Character-specific assets init

//Sprites
spr_example = sprite_get("example"); // sprites/example_stripX.png
spr_fstrong_smear = sprite_get("fstrong_smear");

// Summons
spr_noelle = sprite_get("fstrong_noelle");       // FStrong
spr_susie = sprite_get("ustrong_susie");        // UStrong
//spr_burghley;     // DStrong
spr_lancer = sprite_get("uspecial_lancer")

// VFX
//vfx_example = hit_fx_create(spr_example, 54);

// Variables
stronghit_col = c_white;
do_soul_rgb_check = false;

soul_cooldown = 0;
soul_cool_max = 40;

//dstrong hit stuff
for (var i = 0; i < 4; i++) {
    dstrong_hit_list[i,0] = noone;
    dstrong_hit_list[i,1] = 0;
}

soul = noone;

// Easter Egg
classicshading = false;

// Sounds
sfx_swipe_left = sound_get("sfx_swipe_l")
sfx_swipe_right = sound_get("sfx_swipe_r")
sfx_swipe_fair = sound_get("sfx_swipe_fair")
sfx_swipe_bair = sound_get("sfx_swipe_bair")
sfx_stab_dair = sound_get("sfx_stab_dair")
sfx_spellcast = sound_get("sfx_spellcast")
sfx_fstrong = sound_get("sfx_fstrong")
sfx_fstrong_end = sound_get("sfx_fstrong_finalhit")

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.25;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 4;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 3;
roll_back_recovery_frames       = 3;

// Crouch
crouch_startup_frames   = 4;
crouch_active_frames    = 1;
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
hurtbox_spr         = sprite_get("kris_hurt_box");
crouchbox_spr       = sprite_get("kris_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("krisvictorybg")); // victory_background.png
set_victory_theme(sound_get("music_win_kris")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_med");
landing_lag_sound   = asset_get("sfx_land");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

//Colours
resetcolours = 1
hue = 0

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

vfx_dstrongcharge = hit_fx_create(sprite_get("vfx_dstrongcharge"), 44);

// Training+ Buddy
has_tplus_support = false;
for(var b = 0; b < 50; b++){
    char_fdata[b, 0] = "This character is supported.";
    char_fdata[b, 1] = " ";
    char_fdata[b, 2] = " ";
    char_fdata[b, 3] = " "; 
}

switch(get_player_color(player)){
    case 19:
        set_ui_element(UI_WIN_PORTRAIT, sprite_get("stardrop_portrait"));
        break;
    default:
        set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait"));
        break;
}