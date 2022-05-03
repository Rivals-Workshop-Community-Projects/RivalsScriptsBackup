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
char_height         = 60;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.1;		// 0.9  -  1.2
maxspd = 70;
// Ground movement
walk_speed          = 4.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 5;		// 4    -  9
dash_speed          = 9;		// 5    -  9
dash_turn_time      = 8;		// 8    -  20
dash_turn_accel     = 4;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.25;		// 0.25 -  0.5
ground_friction     = 0.2;		// 0.3  -  1
moonwalk_accel      = 1.4;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = maxspd;		// 4    -  8
max_jump_hsp        = maxspd-1;		// 4    -  8
air_max_speed       = maxspd;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.2;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.03;		// 0.02 -  0.07
max_fall            = 11;		// 6    -  11
fast_fall           = 16;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.45;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 4;		// 4    -  7
walljump_vsp        = 10;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.1;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 9;		// 7.5  -  8
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
fx_dust_sharp = hit_fx_create(sprite_get("dust_sharp"), 20);
fx_dust_sharp_big = hit_fx_create(sprite_get("dust_sharp_big"), 20);
fx_dash = hit_fx_create(sprite_get("dash_trail"), 12);
fx_dodge = hit_fx_create(sprite_get("airdodge_trail"), 12);
fx_marker = hit_fx_create(sprite_get("hit_marker"), 15);
fx_uspecialtrail = hit_fx_create(sprite_get("uspecialtrail"), 15);
fx_sound_wave = hit_fx_create(sprite_get("sound_wave"), 10);
fx_bullet = hit_fx_create(sprite_get("dspecial_bullet"), 4);
fx_fire2_small = hit_fx_create(sprite_get("fx_fire2_small"), 15);
fx_fire2_small_slow = hit_fx_create(sprite_get("fx_fire2_small"), 40);

bullet_fx = noone;
// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.05;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 20;		// 24   -  40
walljump_time       = 18;		// 18   -  32
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
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 3;
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
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_bg")); // victory_background.png
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

ringcooldown = 0;
upb = false;
upbtimer = 0;
curspd = 0;
curspd_override = false;
going_up = false;
going_down = false;
sanic_uspec_count = 0;
fspec_launch = 0;
yeth = false;
dspec_stall = false;
killcam_timer = 0;
trigger_warning = false;
need_to_reload = false;
airhorn_sfx = noone;
sanic_throw_hb = noone;
nspec_stall = false;
dorito_hb = noone;
shrek_door = noone;
dat_boi = noone;
doge = noone;
spring = noone;
fspec_init_x = x;
has_wrapped = false;
current_summon = noone;//Yeah idk why I just didn't do one of these but oh well
charged_summon = false;
random_scream = 0;
dspecial_hits = 0;
is_crawling = false;
stupid_sound_shit = noone;
just_played_scream = false;
grab_target = noone;
respawnplat = 0;
is_Sanic = true;
grabbed_Proj = false;
random_dash = 0;
dash_turn_hsp = hsp;
dash_hsp = 0;
san_has_played = false;
current_taunt = 0;
weegee_face = get_player_color(player) == 15;
//hyper
hue_offset=0;
hue_speed=1;
//dtilt
dtilt_mash = 0;
spin_sound = noone;
fs_char_portrait_y = 94;
fs_char_chosen_final_smash = "custom";
    
//Credit to Bar-Kun, Frtoud, and Mr. Nart!
trail_cur_num = 0;
trail_total_size = 10;
trail_draw_size = 1;

is_fest = false;

trail_pos = [0];
t = 0;
repeat (trail_total_size)
{
        trail_pos[t] = {
            sprite: sprite_index,
            subimg: image_index,
            x: x,
            y: y,
            xscale: image_xscale,
            yscale: image_yscale,
            rot: image_angle,
            col: image_blend
        }
    t++;
}
    
    
//Rune Support
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = false;
ab_hud_x = 0;
ab_hud_y = 0;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}
abyssMods = array_create(16,[-1,"Not Implemented."]);
abyssMods[@ runes.H] = [3, "Gives Sanic his old FAIR"];
abyssMods[@ runes.F] = [3, "Allows DTilt to mash up to 69 times."];
    
// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);