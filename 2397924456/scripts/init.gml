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
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 12;		// 8    -  16
initial_dash_speed  = 6;		// 4    -  9
dash_speed          = 5.5;		// 5    -  9
dash_turn_time      = 9;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6
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
max_fall            = 11;		// 6    -  11
fast_fall           = 16;		// 11   -  16
gravity_speed       = 0.6;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 12;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 7;		// 4    -  7.4
djump_speed         = 11;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 24;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.15;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 12;		// 6    -  12
wave_land_adj       = 1.2;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_chain_segment = sprite_get("chain_segment");
spr_chain_segment_hitbox = sprite_get("chain_segment_hitbox");
spr_legion_halo = sprite_get("legion_halo");
spr_legion_mask = sprite_get("legion_mask");
spr_legion_fade = sprite_get("legion_fade");
spr_legion_idle = sprite_get("legion_idle");
spr_legion_walk = sprite_get("legion_walk");
spr_legion_turn = sprite_get("legion_turn");
spr_legion_hurt = sprite_get("legion_hurt");
spr_legion_projectile_forward = sprite_get("legion_projectile_forward");

spr_hud_legion_hp = sprite_get("hud_legion_hp");
spr_hud_hotbar = sprite_get("hud_hotbar");

spr_jab1 = sprite_get("jab1");
spr_jab1_air = sprite_get("jab1_air");
spr_jab2 = sprite_get("jab2");
spr_jab3 = sprite_get("jab3");
spr_ftilt_proj = sprite_get("ftilt_proj");
spr_fstrong_proj = sprite_get("fstrong_proj");
spr_fthrow = sprite_get("fthrow");
spr_intro = sprite_get("intro");

spr_vfx_jab3_afterimage = sprite_get("vfx_jab3_afterimage");
spr_vfx_gunshot_blast = sprite_get("vfx_gunshot_blast");
spr_vfx_legion_afterimage = sprite_get("vfx_legion_afterimage");
spr_vfx_legion_reticle = sprite_get("vfx_legion_reticle");
spr_vfx_timed_hit = sprite_get("vfx_timed_hit");
spr_vfx_arrow_afterimage = sprite_get("vfx_arrow_afterimage");
spr_vfx_hit_big = sprite_get("vfx_hit_big");
spr_vfx_hit_small = sprite_get("vfx_hit_small");

// SFX
sfx_astral_chain_ding_1 = sound_get("astral_chain_ding_1");
sfx_astral_chain_gunshot = sound_get("astral_chain_gunshot");
sfx_astral_chain_gunshot_charged = sound_get("astral_chain_gunshot_charged");
sfx_astral_chain_gunshot_triple = sound_get("astral_chain_gunshot_triple");
sfx_astral_chain_legion_ability = sound_get("astral_chain_legion_ability");
sfx_astral_chain_legion_beast = sound_get("astral_chain_legion_beast");
sfx_astral_chain_legion_dismiss = sound_get("astral_chain_legion_dismiss");
sfx_astral_chain_legion_summon = sound_get("astral_chain_legion_summon");
sfx_astral_chain_normal_swipe_1 = sound_get("astral_chain_normal_swipe_1");
sfx_astral_chain_select_1 = sound_get("astral_chain_select_1");
sfx_astral_chain_swipe_1 = sound_get("astral_chain_swipe_1");
sfx_astral_chain_swipe_2 = sound_get("astral_chain_swipe_2");
sfx_astral_chain_swipe_3 = sound_get("astral_chain_swipe_3");
sfx_astral_chain_swipe_big_1 = sound_get("astral_chain_swipe_big_1");
sfx_astral_chain_timed_hit_1 = sound_get("astral_chain_timed_hit_1");
sfx_splatoon_click = sound_get("splatoon_click");
sfx_sonic_swipe_1 = sound_get("sonic_swipe_1");
sfx_sonic_swipe_2 = sound_get("sonic_swipe_2");
sfx_sonic_swipe_3 = sound_get("sonic_swipe_3");
sfx_sonic_swipe_4 = sound_get("sonic_swipe_4");
sfx_sonic_swipe_5 = sound_get("sonic_swipe_5");
sfx_sonic_swipe_double = sound_get("sonic_swipe_double");
sfx_ssbu_elec_swipe_1 = sound_get("ssbu_elec_swipe_1");
sfx_ssbu_elec_swipe_2 = sound_get("ssbu_elec_swipe_2");
sfx_ssbu_elec_swipe_3 = sound_get("ssbu_elec_swipe_3");
sfx_ssbu_elec_swipe_4 = sound_get("ssbu_elec_swipe_4");
sfx_ssbu_elec_hit_1 = sound_get("ssbu_elec_hit_1");
sfx_ssbu_elec_hit_2 = sound_get("ssbu_elec_hit_2");
sfx_ssbu_elec_hit_3 = sound_get("ssbu_elec_hit_3");
sfx_ssbu_shock = sound_get("ssbu_shock");
sfx_ssbu_shock_big = sound_get("ssbu_shock_big");

// VFX
vfx_jab3_afterimage = hit_fx_create(spr_vfx_jab3_afterimage, 12);
vfx_gunshot_blast = hit_fx_create(spr_vfx_gunshot_blast, 20);
vfx_legion_afterimage = hit_fx_create(spr_vfx_legion_afterimage, 12);
vfx_arrow_afterimage = hit_fx_create(spr_vfx_arrow_afterimage, 12);
vfx_reticle = hit_fx_create(spr_vfx_legion_reticle, 12);
vfx_timed_hit = hit_fx_create(spr_vfx_timed_hit, 32);
vfx_hit_big = hit_fx_create(spr_vfx_hit_big, 32);
vfx_hit_small = hit_fx_create(spr_vfx_hit_small, 32);

// Variables
rainbow_color = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)
legion = noone;
chain_length_const = 32;
chain_length = chain_length_const;
chain_nodes_const = 7;
chain_nodes = chain_nodes_const;
chain = [];
prev_sync = 0;
jab_progress = 0;
jab_moves = [AT_JAB, AT_NAIR, AT_NTHROW];
jab_timer = 0;
nspecial_stall = 1;
blue_color = make_color_rgb(
    get_color_profile_slot_r(get_player_color(player), 0),
    get_color_profile_slot_g(get_player_color(player), 0),
    get_color_profile_slot_b(get_player_color(player), 0)
    );
stopped_sounds = [];



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 1 / 6;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.2;
dash_anim_speed     = 0.25;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 36;		// 24   -  40
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
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
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
waveland_sound      = asset_get("sfx_waveland_ran"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;



// Muno template: (don't change)

user_event(14); // General init