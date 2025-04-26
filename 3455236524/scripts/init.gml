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
char_height         = 64;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.95;		// 0.9  -  1.2

// Ground movement
walk_speed          = 4;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 16;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 6.75;		// 5    -  9
dash_turn_time      = 20;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 8;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6.5;		// 4    -  8
max_jump_hsp        = 6.5;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.55;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 12;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 5;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 14;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

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
vfx_dattack = hit_fx_create(sprite_get("vfx_dattack"), 15);

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.15;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 30;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 4;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 2;
techroll_active_frames      = 5;
techroll_recovery_frames    = 3;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 2;
roll_forward_active_frames      = 5;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 2;
roll_back_active_frames         = 5;
roll_back_recovery_frames       = 3;

// Crouch
crouch_startup_frames   = 2;
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
hurtbox_spr         = sprite_get("funky_hurtbox");
crouchbox_spr       = sprite_get("funky_crouch_hurtbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_hod"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_ori_stomp_spin");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//voice
var tmp_sync_vars = get_synced_var(player);
for (var i = 0; i < 2; i++)
{
    var shift = (i*4);
    synced_vars[i] = tmp_sync_vars >> shift & 15;
}

switch (synced_vars[0])
{
	default: //no voice

	break;
	case 1: //voice
	voice_attack[1] = sound_get("funky_attack1");
	voice_attack[2] = sound_get("funky_attack2");
	voice_attack[3] = sound_get("funky_attack3");
	voice_attack[4] = sound_get("funky_attack4");
	voice_attack[5] = sound_get("funky_attack5");
	voice_attack[6] = sound_get("funky_attack6");
	voice_attack[7] = sound_get("funky_attack7");
	voice_attack[8] = sound_get("funky_attack8");
	voice_attack[9] = sound_get("funky_attack9");
	voice_attack_long[1] = sound_get("funky_attack_long1");
	voice_attack_long[2] = sound_get("funky_attack_long2");
	voice_attack_long[3] = sound_get("funky_attack_long3");
	voice_attack_long[4] = sound_get("funky_attack_long4");
	voice_attack_long[5] = sound_get("funky_attack_long5");
	voice_hit[1] = sound_get("funky_hit1");
	voice_hit[2] = sound_get("funky_hit2");
	voice_hit[3] = sound_get("funky_hit3");
	voice_hit[4] = sound_get("funky_hit4");
	voice_hit_strong[1] = sound_get("funky_hit_strong1");
	voice_hit_strong[2] = sound_get("funky_hit_strong2");
	voice_hit_strong[3] = sound_get("funky_hit_strong3");
	voice_hit_strong[4] = sound_get("funky_hit_strong4");
	voice_hit_strong[5] = sound_get("funky_hit_strong5");
	voice_hit_strong[6] = sound_get("funky_hit_strong6");
	voice_hit_strong[7] = sound_get("funky_hit_strong7");
	voice_hit_strong[8] = sound_get("funky_hit_strong8");
	voice_damage[1] = sound_get("funky_yell1");
	voice_damage[2] = sound_get("funky_yell2");
	voice_damage[3] = sound_get("funky_yell3");
	voice_death[1] = sound_get("funky_death1");
	voice_death[2] = sound_get("funky_death2");
	voice_death[3] = sound_get("funky_death3");
	voice_death[4] = sound_get("funky_death4");
	voice_death[5] = sound_get("funky_death5");
	voice_death[6] = sound_get("funky_death6");
	break;
}
voice_cooldown = 0;

//Gameplay variables
nspecial_grab = false;
nspecial_turn = false;

nspecial_proj = false;
nspecial_proj_hitbox = noone;
nspecial_proj_hsp = noone;
nspecial_proj_damage = noone;
nspecial_proj_kb_value = noone;
nspecial_proj_kb_scale = noone;

wheelie_grab = false;
uspecial_charge = 0;
uspecial_length = 20;

fair_charge = 0;

intro_y = y - 280
intro_x = x - 60

//Custom Hitbox Colors System (by @SupersonicNK)
HG_HITBOX_COLOR = 79; //This can be any number above 57 and below 100. It is recommended that you put this number below Munophone's starting_hg_index value, to prevent conflicts.

//Sprite Setup
//knockback arrow sprite
__kb_arrow_spr = asset_get("knock_back_arrow_spr")
//actual hitbox sprites
var w = 100
__hb_circle_t = sprite_get("hitbox_circle_trans");
    sprite_change_offset("hitbox_circle_trans",w,w);
    sprite_change_collision_mask("hitbox_circle_trans",false,0,0,0,0,0,0);
__hb_rect_t = sprite_get("hitbox_square_trans");
    sprite_change_offset("hitbox_square_trans",w,w);
    sprite_change_collision_mask("hitbox_square_trans",false,0,0,0,0,0,0);
__hb_r_rect_t = sprite_get("hitbox_rounded_rectangle_trans");
    sprite_change_offset("hitbox_rounded_rectangle_trans",w,w);
    sprite_change_collision_mask("hitbox_rounded_rectangle_trans",false,0,0,0,0,0,0);
__hb_hd_spr = [__hb_circle_t, __hb_rect_t, __hb_r_rect_t];
//drawn hitbox sprite
__hb_draw_spr = sprite_get("hitbox_shapes");
    sprite_change_offset("hitbox_shapes",w,w);