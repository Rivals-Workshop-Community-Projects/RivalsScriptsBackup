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
char_height         = 42;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 4;		// 3    -  4.5
walk_accel          = 0.45;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 10;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 8.5;		// 4    -  9
dash_speed          = 7.5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.0;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.9;		// 0.3  -  1
moonwalk_accel      = 1.35;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 5;		// 4    -  8
max_jump_hsp        = 6.5;		// 4    -  8
air_max_speed       = 4.5;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.25;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.05;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 15;		// 11   -  16
gravity_speed       = 0.525;		// 0.3  -  0.6
hitstun_grav        = 0.52;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 5;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 14;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 15;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.08;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 9;		// 8    -  11



// Character-specific assets init

// //Sprites
// spr_nspecial_proj = sprite_get("nspecial_proj");
// spr_example = sprite_get("example"); // sprites/example_stripX.png

// // SFX
// sfx_dbfz_kame_charge = sound_get("ARC_BTL_GKN_Kamehame_Chrg");
// sfx_dbfz_kame_fire = sound_get("ARC_BTL_GKN_Kamehame_Fire");
// sfx_dbfz_hit_weak = sound_get("ARC_BTL_CMN_Hit_Small-A");
// sfx_dbfz_hit_broken = sound_get("ARC_BTL_CMN_Hit_XLarge");
// sfx_dbfz_hit_jab3 = sound_get("ARC_BTL_GKN_Atk5A_3rd_Hit");

// // VFX
// vfx_ftilt_destroy = hit_fx_create(sprite_get("vfx_ftilt_destroy"), 12); // actually for nspecial, not ftilt
// vfx_nspecial_fire = hit_fx_create(sprite_get("vfx_nspecial_fire"), 16);

// // Variables
// has_goku_beam = true;
// doing_goku_beam = false;
// beam_newest_hbox = noone;



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.16;
crouch_anim_speed   = 0.16;
walk_anim_speed     = 0.22;
dash_anim_speed     = 0.38;
pratfall_anim_speed = 0.24;

// Jumps
double_jump_time    = 35;		// 24   -  40
walljump_time       = 30;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 5;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 6;
air_dodge_recovery_frames   = 4;

// Roll
roll_forward_startup_frames     = 2;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 2;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 3;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 8;
crouch_recovery_frames  = 2;

// That Voltorb that you can throw around.
voltorb_obj = noone;
/*

Muno's Words of Wisdom: Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation. Dan Moment

*/
charged_vfx = hit_fx_create(sprite_get("vfx"),21)
charged_vfx2 = hit_fx_create(sprite_get("vfx2"),24)
kamikaze_vfx = hit_fx_create(sprite_get("vfx_explosion"),27)

dair_shatter = hit_fx_create(sprite_get("dair_shatter"), 15)
lockon = hit_fx_create(sprite_get("vfx_lockon"), 20);
lockon_obj = noone;

fspecialfx = hit_fx_create(sprite_get("vfx_fspecial"), 21);
switchfx = hit_fx_create(sprite_get("vfx_switch"), 20);
thunderfx = hit_fx_create(sprite_get("ustrong_thunder_start"), 15);
thunderfx_obj = noone;

hit_sprites[0] = hit_fx_create(sprite_get("vfx_shatter_small"), 20);
hit_sprites[1] = hit_fx_create(sprite_get("vfx_shatter_medium"), 24);
hit_sprites[2] = hit_fx_create(sprite_get("vfx_shatter_large"), 24);
hit_sprites[3] = hit_fx_create(sprite_get("vfx_star_medium"), 24);
electricvfx = hit_fx_create(sprite_get("electricvfx"), 28);
electricvfx2 = hit_fx_create(sprite_get("electricvfx2"), 18);

uspec_held = 0;
uspec_parry_pressed = false;

strong_powered_up = false;
utilt_rekka = false;
dstrong_hitbox = noone;
dair_hitbox = noone;

galaxy_timer = 0;
nspec_taunt = false;
dspecial_used = false;

fspecial_used = false;
fspecial_charge = 0;
fspecial_max_charge = 60;
fspecial_speed_spark = 12;
fspecial_speed_wcharge = 16;
fspecial_damage = 5;
fspecial_max_damage = 12;

fspecial_ledgeforgiven = false;

dstrong_forgiveness = 0;
dstrong_forgiveness_threshold = 24;

set_hitbox_value(AT_FSPECIAL,2,HG_DAMAGE,fspecial_max_damage);

fspecial_charge_cut = 40;

var cur = get_player_color(player);
chargecol = make_color_rgb(get_color_profile_slot_r(cur,3),get_color_profile_slot_g(cur,3),get_color_profile_slot_b(cur,3))

introTimer = -4;
introTimer2 = 0;
introAnimFrameLength = 4;

// Hurtbox sprites
hurtbox_spr         = sprite_get("orb_hurtbox");
crouchbox_spr       = sprite_get("orb_crouch_hurtbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("electrode_victoryscreen")); // victory_background.png
set_victory_theme(sound_get("victory_music"));

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

//Support
Hikaru_Title = "Bomb Ball";
arena_title = "The Ball Pokemon";
battle_text = "A wild Electrode appears!"
ncode1 = "It stores an overflowing amount of electric"
ncode2 = "energy inside its body. Even a small shock"
ncode3 = "makes it explode. Approach with extreme caution"
miiverse_post = sprite_get("electrode_miiverse");
sprite_change_offset("electrode_miiverse", 60, 30);
feri_costume = sprite_get("feri");
otto_bobblehead_sprite = sprite_get("electrode_bobble"); 
plushForAmber = sprite_get("electrode_plush");
guiltySprite = sprite_get("guiltyDony");

//Pokemon Stadium
pkmn_stadium_back_img = sprite_get("electrode_back_sprite")
pkmn_stadium_front_img = sprite_get("electrode_front_sprite")

//Dracula
dracula_portrait = sprite_get("dialogue_electrode_portrait");
dracula_portrait2 = sprite_get("dialogue_electrode_portrait2");
dracula_portrait2 = sprite_get("dialogue_electrode_portrait3");
var page = 0;

//I will set this shit up later -Seer