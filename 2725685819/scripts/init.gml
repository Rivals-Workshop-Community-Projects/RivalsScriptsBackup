/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The commented-out numbers are the range of values the RoA
 * base cast has - e.g. it lists the slowest and fastest run speeds.
 * 
 * Replace Zetter's stats with whatever strengths/weaknesses your char should
 * have, e.g. change dash_speed to 8 or so if you want a fast character.
 *
 * Explanation of each stat:
 * https://rivalsofaether.com/player-variables/
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 * 
 * Base Cast Stats:
 * docs.google.com/spreadsheets/d/14JIjL_5t81JHqnJmU6BSsRosTe2JO8sFGUysM_9tDoU
 */

// STAT NAME		VALUE       BASECAST RANGE   NOTES

// Physical size
char_height         = 56;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.4;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 14;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 6;		// 4    -  9
dash_speed          = 5.7;		// 5    -  9
dash_turn_time      = 11;		// 8    -  20
dash_turn_accel     = 1.25;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.4;		// 0.3  -  1
moonwalk_accel      = 1.4;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 5;		// 4    -  8
air_max_speed       = 5;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.45;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.03;		// 0.02 -  0.07
max_fall            = 8.5;		// 6    -  11
fast_fall           = 12;		// 11   -  16
gravity_speed       = 0.35;		// 0.3  -  0.6
hitstun_grav        = 0.45;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 8.5;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 5;		// 4    -  7.4
djump_speed         = -3;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = -1.25;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 15;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 15;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.15;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_dbfz_kame_charge = sound_get("ARC_BTL_GKN_Kamehame_Chrg");
sfx_dbfz_kame_fire = sound_get("ARC_BTL_GKN_Kamehame_Fire");
sfx_dbfz_hit_weak = sound_get("ARC_BTL_CMN_Hit_Small-A");
sfx_dbfz_hit_broken = sound_get("ARC_BTL_CMN_Hit_XLarge");
sfx_dbfz_hit_jab3 = sound_get("ARC_BTL_GKN_Atk5A_3rd_Hit");

// VFX
vfx_slash = hit_fx_create(sprite_get("slash"), 15); 
vfx_slash_weak = hit_fx_create(sprite_get("slash_small"), 10); 
vfx_slash_strong = hit_fx_create(sprite_get("slash_big"), 30); 
vfx_slash_med = hit_fx_create(sprite_get("slash_med"), 30); 
vfx_slash_up_med = hit_fx_create(sprite_get("slashup_med"), 30); 
vfx_stab_strong = hit_fx_create(sprite_get("stab_big"), 30); 
vfx_stab_up_strong = hit_fx_create(sprite_get("stabup_big"), 35); 

vfx_jce_big = hit_fx_create(sprite_get("jce_big"), 60); 
vfx_jce_clone = hit_fx_create(sprite_get("jce_clone"), 20); 



vfx_ftilt_destroy = hit_fx_create(sprite_get("nspecial_dest"), 30); // actually for nspecial, not ftilt
vfx_nspecial_fire = hit_fx_create(sprite_get("vfx_nspecial_fire"), 16);
jc_destroyed = hit_fx_create( sprite_get("nspecial_dest"), 15 );
projectile_rb = noone;

// Variables

//inputs
ewgf = true;
start_dir[0] = 1;

dp = 0;
dp_timer = 0;
dp_temp = 0;


trick_lockout_max = 13;
trick_lockout = trick_lockout_max;

trick_range = 325;
trick_in_range = false;
nearest_dist = 0;
nearest_player = noone;

uspec_prev_x = x;
uspec_prev_y = y;
trick_fall = false;
uspec_buff = false;
dist_range = 150;
uspec_trickstun = 25;

jc_hit = false;
jc_buff = false;
jc_object = noone;
jc_pointblank = false;

scoop = false;
jce_loop = 0;
jce_buff_loop = 0;
jce_darken = false;
jce_sfx_loop = 0;


grabbed_player = noone;

cling_timer_default = 40; //40
cling_timer = cling_timer_default;
cling_limit = 2;

fair_angle = 0;

fair_no_fall = false;

//rune vars
trick_cancel = false;

just_jc = false;
just_jc_hold = false;
jc_range = false;
just_window = false;
just_timer_default = 10;
just_timer = just_timer_default;

fspec_charge = 0;

//hitbox grid indexes for chaos stuff
HG_CHAOS_LEVEL = 55; //-1 weak, 0 normal, 1 strong, 2 instant chaos
HG_CHAOS_EXCLUDE = 54; //0 normal, 1 will not add stacks
AG_WINDOW_IASA = 56;

//voices and misc
necoarc = false;
style_meter = false;
sync_bool = get_synced_var( player );
style_meter = false;

//sync vars
sparda = (2 & sync_bool) ? true:false;

vergil = ((1 & sync_bool) && (get_player_color(player) == 6)) ? true:false;

vergil_taunt = vergil;

dante =  ((1 & sync_bool) && (get_player_color(player) == 7)) ? true:false;

champ_button = ((4 & sync_bool) && (get_player_color(player) == 1)) ? true:false;


//neco
if (get_player_color(player) == 9){
    necoarc = true;
}

// Animation Info

//anim vars
intro_full = 60 * 2;
intro_timer = 0;
animtimer = 0;
chairtimer = 0;

saya_check_window = 0;

trick_path = 0;
walkstart = 0;
walkstart_speed = 0.125;
hue_offset=0;
hue_speed=1; //change this to change the speed of the hueshift
chaos_linked = noone;

//alt taunts
motivation = 60*26;
provoking = 0;
lightning_x = 0;
lightning_dir = 1;

//Settings for tablet
cpu_parry = false;
instant_chaos = false;













// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 20;		// 24   -  40
walljump_time       = 18;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 0;
dodge_active_frames     = 1;
dodge_recovery_frames   = 4;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 2;
techroll_active_frames      = 1;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 0;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = roll_forward_startup_frames;
roll_back_active_frames         = roll_forward_active_frames;
roll_back_recovery_frames       = roll_forward_recovery_frames;

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
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

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

user_event(14);