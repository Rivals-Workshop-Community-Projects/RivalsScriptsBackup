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
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 5;		// 5    -  9
dash_turn_time      = 12;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 5;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.7;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.2;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 4;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 12;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.13;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 7;		// 6    -  12
wave_land_adj       = 1.4;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 20;		// 24   -  40
walljump_time       = 20;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 3;
dodge_recovery_frames   = 1;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 1;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 1;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 3;
roll_back_recovery_frames       = 1;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;

can_wall_cling = true;
clingtime = 0;

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
hurtbox_spr         = sprite_get("idle_hurtbox");
crouchbox_spr       = sprite_get("crouch_hurtbox");
dashbox_spr            = sprite_get("dash_hurtbox");
air_hurtbox_spr     = sprite_get("jump_hurtbox");
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory")); // victory_theme.ogg

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

debug_text = false;

// idle anims???
spr_idle_gro = sprite_get("idle");
spr_idle_air = sprite_get("jump");
spr_idle_cro = sprite_get("crouch");

// HUD stuff
spr_hud = sprite_get("meter_idle"); // 1 frame
spr_meter = sprite_get("meter_filler"); // 1 frame
spr_full = sprite_get("meter_full"); // 16 frames
spr_empty = sprite_get("meter_empty"); // 4 frames
spr_change = sprite_get("meter_change"); // 3 frames
spr_icons = sprite_get("meter_icons"); // 3 frames
spr_cost = sprite_get("cost_ind");

// Custom sounds
sfx_swinglight1 = sound_get("sfx_swordswing1");
sfx_swinglight2 = sound_get("sfx_swordswing2");
sfx_swinglight3 = sound_get("sfx_swordswing3");
sfx_swingheavy1 = sound_get("sfx_swordswingheavy1");
sfx_swingheavy2 = sound_get("sfx_swordswingheavy2");
sfx_swingheavy3 = sound_get("sfx_swordswingheavy3");

sfx_lightningheavy = sound_get("sfx_lightningheavy");
sfx_exhaust = sound_get("sfx_huddeplete");
sfx_pillar_spawn = sound_get("sfx_flamepillarspawn");
sfx_pillar = sound_get("sfx_flamepillar");

sfx_fe_hit1 = sound_get("sfx_fe_hit1");
sfx_fe_hit2 = sound_get("sfx_fe_hit2");
sfx_fe_hit3 = sound_get("sfx_fe_hit3");
sfx_fe_hit4 = sound_get("sfx_fe_hit4");

sfx_aa_stab = sound_get("sfx_aa_stab");
sfx_alleyoop = sound_get("reyn_ALLEYOOP");

vc_dust_attack1 = sound_get("vc_1");
vc_dust_attack2 = sound_get("vc_2");
vc_dust_attack3 = sound_get("vc_3");
vc_dust_attack4 = sound_get("vc_4");
vc_dust_hurt1 = sound_get("vc_hurt1");
vc_dust_hurt2 = sound_get("vc_hurt2");
vc_dust_hurt3 = sound_get("vc_hurt3");
vc_dust_hurt4 = sound_get("vc_hurt4");
vc_dust_bhurt = sound_get("vc_bighurt1");
vc_dust_death1 = sound_get("vc_death1");
vc_dust_death2 = sound_get("vc_death2");
vc_dust_fspecial1 = sound_get("vc_fspecial1");
vc_dust_fspecial2 = sound_get("vc_fspecial2");
vc_dust_uspecial1 = sound_get("vc_uspecial1");
vc_dust_uspecial2 = sound_get("vc_uspecial");
vc_dust_dstrong = sound_get("vc_dstrong");
vc_dust_fstrong = sound_get("vc_fstrong");
vc_dust_ustrong = sound_get("vc_ustrong");
vc_dust_jump = sound_get("vc_jump");
vc_dust_wjump = sound_get("vc_walljump");
vc_dust_edge = sound_get("sfx_cssvoiceselect");
vc_dust_dust = sound_get("vc_dust");
vc_dust_dust2 = sound_get("vc_dust2");

vc_fid_light1 = sound_get("vc_batlight1");
vc_fid_light2 = sound_get("vc_batlight2");
vc_fid_shot1 = sound_get("vc_batshot1");
vc_fid_shot2 = sound_get("vc_batshot2");
vc_fid_shot3 = sound_get("vc_batshot3");


// Custom VFX
vfx_icon_change = hit_fx_create(spr_change, 12);
vfx_light = hit_fx_create(sprite_get("vfx_light"), 12);
vfx_pillar_spawn = hit_fx_create(sprite_get("pillar_spawn"), 20); // 4 frames
vfx_pillar_fade = hit_fx_create(sprite_get("pillar_despawn"), 12);
fx_sonic = hit_fx_create( sprite_get("fx_sonic"), 18 );

// Fidget's Stuff
fidget = noone;
spr_fidget_idle = sprite_get("bat_idle");
spr_fidget_turn = sprite_get("bat_turn");
spr_fidget_scream = sprite_get("bat_scream");
spr_fidget_shot = sprite_get("bat_lightshot");
spr_fidget_light = sprite_get("bat_lightning");
spr_fidget_fire = sprite_get("bat_fireshot");

spr_proj_light = sprite_get("light");
spr_proj_fire = sprite_get("fireball");
spr_proj_lightning1 = sprite_get("lightning_weak");
spr_proj_lightning1s = sprite_get("lightning_weakstart");
spr_proj_lightning1e = sprite_get("lightning_weakend");
spr_proj_lightning2 = sprite_get("lightning_strong");
spr_proj_lightning2s = sprite_get("lightning_strongstart");
spr_proj_lightning_pop = sprite_get("lightning_pop");
spr_proj_pillar = sprite_get("pillar_idle");
spr_proj_target = sprite_get("target");

// Grab Mechanics
grabbed_id = noone
ungrab_timer = 4;
ftilt_grab = false;
fair_grab = false;

//Stamina Mechanics
max_stamina = 70;
stamina = 70;
exhausted = false;
exhausted_time = 0;
exhausted_index = 0;
max_exhausted_time = 600;

fspecial_loops = 0;

// Spells
active_spell = 0;
spell_change_timer = 0;
spell_change_anim = false;

spell_one_cost = 20;
spell_two_cost = 30;
spell_three_cost = 40;
fspecial_gro_cost = 10;
fspecial_air_cost = 20;

pillar_create = false;
pillar_create_time = 0;
pillar_create_max = 10;
pillar_create_x = 0;
pillar_create_y = 0;

voiced = get_synced_var(player);
dust_mode_ready = false;
dust_mode = false;

bigiron = false;

//lightning_start = noone;
//lightning_end = noone;
//lightning_nodes = [];