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
char_height         = 55;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = .97;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 6.5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6.5;		// 4    -  8
max_jump_hsp        = 7;		// 4    -  8
air_max_speed       = 4.5;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.25;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.06;		// 0.02 -  0.07
max_fall            = 11;		// 6    -  11
fast_fall           = 15;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10.5;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 5;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Character-specific assets init

//Sprites

// SFX

// VFX
fx_smokepoof = hit_fx_create(sprite_get("smokepoof"), 20);
fx_poof = hit_fx_create(sprite_get("poof"), 30);
fx_smoke_pink = hit_fx_create(sprite_get("smoke_pink"), 30);
fx_dust_dark = hit_fx_create(sprite_get("dust_effect_dark"), 20);
fx_fire = hit_fx_create(sprite_get("fx_fire"), 20);
fx_fire_fast = hit_fx_create(sprite_get("fx_fire"), 10);
fx_uspecialtrail = hit_fx_create(sprite_get("uspecialtrail"), 15);
fx_shine_small = hit_fx_create(sprite_get("shine_small"), 10);
fx_shine_small_slow = hit_fx_create(sprite_get("shine_small"), 15);
fx_explosion = hit_fx_create(sprite_get("explosion"), 30);
fx_spray = hit_fx_create(sprite_get("nspecial_spray"), 30);
fx_cloud = hit_fx_create(sprite_get("nspecial_cloud"), 25);

// Variables



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0.1;
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
dodge_recovery_frames   = 4;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 2;

// Tech roll
techroll_startup_frames     = 2;
techroll_active_frames      = 7;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 2;
roll_forward_active_frames      = 7;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 2;
roll_back_active_frames         = 7;
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

alt = get_player_color(player);

// Hurtbox sprites
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("Hotel_Mario_Victory"));
if(alt == 9)set_victory_theme(sound_get("hotel mario win")); // victory_theme.ogg

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

is_KOB = true;
upb = false;
upbtimer = 0;
muted = get_synced_var(player);
voice = noone;
dspec_invinc = 0;
downspecialcharge = 0;
pig_hit_cooldown = 0;
meatball_hit_cooldown = 0;
pig_hb = noone;
uspec_pipe = noone;
grab_target = noone;
pipesprite = sprite_get("pipe")
peach_sprite = sprite_get("useless creature");
meatball_sprite = sprite_get("meatball")
playercount = 0;
meatball_fill = 0;
meatball_angle = 0;
meatball = noone;
fspecial_stall = 0;
dattack_projectile_cooldown = 0;
dairhold = true;
dairholdbounce = false;
dair_whereami = false;
dairhitbox = noone;
bairtoast = false;
nspec_cloud = noone;
can_uspecial = false;
respawnplat = 0;
peach = noone;
lookuptime = 0;
kob_sleep_sprite = sprite_get("sleep");
kob_sleep_sprite_air = sprite_get("hurt");
walk_music_timer = 0;
walk_music = noone;
walk_music_blocked = false;

if(alt != 0){
    fx_spray = hit_fx_create(sprite_get("nspecial_spray_alts"), 30);
    fx_cloud = hit_fx_create(sprite_get("nspecial_cloud_alts"), 25);    
    set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_alts"));
    pipesprite = sprite_get("pipe_alts");
    set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, pipesprite);
    meatball_sprite = sprite_get("meatball_alts")
    set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair_alts"));
    set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("stupidasspig_alts"));
    peach_sprite = sprite_get("useless creature_alts");set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("useless creature_alts"));
    if(alt == 2){peach_sprite = sprite_get("useless creature_alts2");set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("useless creature_alts2"));}
    if(alt != 1 && alt != 4){
        set_hitbox_value(AT_UAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("coin_alts"));
        set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt_alts"));
    }
    if(alt != 4){
        set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack_alts"));
        set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_SPRITE, sprite_get("fireball_alts"));
        fx_fire = hit_fx_create(sprite_get("fx_fire_alts"), 20);
        fx_fire_fast = hit_fx_create(sprite_get("fx_fire_alts"), 10); 
    }
    if(alt == 12 || alt == 18 || alt == 22 || alt == 29 || alt == 31){
        set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack_alts2"));
        fx_fire = hit_fx_create(sprite_get("fx_fire_alts2"), 20);
        fx_fire_fast = hit_fx_create(sprite_get("fx_fire_alts2"), 10);    
        set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_SPRITE, sprite_get("fireball_alts2"));
    }    
    if(alt == 8){
        set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack_smb"));
        set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_SPRITE, sprite_get("fireball_smb"));
        fx_fire = hit_fx_create(sprite_get("fx_fire_smb"), 20);
        fx_fire_fast = hit_fx_create(sprite_get("fx_fire_smb"), 10); 
        pipesprite = sprite_get("pipe_smb");
        set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, pipesprite);  
        peach_sprite = sprite_get("useless creature_smb");set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("useless creature_smb"));
    }
}
//Rune Support
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false;
ab_hud_x = 0;
ab_hud_y = 0;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
runesUpdated = false;
var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++) {
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}
abyssMods = array_create(16,[-1,"Not Implemented."]);
abyssMods[@ runes.B] = [3, "The NSpecial cloud lasts longer"];

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);