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
char_height         = 92;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = .9;		// 0.9  -  1.2

// Ground movement
walk_speed          = 2.25;		// 3    -  4.5
walk_accel          = 0.15;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 4;		// 4    -  9
dash_speed          = 4;		// 5    -  9
dash_turn_time      = 15;		// 8    -  20
dash_turn_accel     = .4;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 4;		// 4    -  8
max_jump_hsp        = 5;		// 4    -  8
air_max_speed       = 3;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.25;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 6;		// 6    -  11
fast_fall           = 12;		// 11   -  16
gravity_speed       = 0.3;		// 0.3  -  0.6
hitstun_grav        = 0.4;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 8;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 7;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 24;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = .95;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 8;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.115;
dash_anim_speed     = 0.15;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 35;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 4;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 2;

// Tech roll
techroll_startup_frames     = 4;
techroll_active_frames      = 1;
techroll_recovery_frames    = 4;

// Airdodge
air_dodge_startup_frames    = 3;
air_dodge_active_frames     = 1;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 4;
roll_forward_active_frames      = 1;
roll_forward_recovery_frames    = 4;
roll_back_startup_frames        = 4;
roll_back_active_frames         = 1;
roll_back_recovery_frames       = 4;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 4;
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
hurtbox_spr         = sprite_get("hurtbox_idle");
crouchbox_spr       = sprite_get("hurtbox_crouch");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_hcr")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = sound_get("sfx_cape_swipe_hard1");
air_dodge_sound     = asset_get("sfx_forsburn_disappear");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


////////////////////////////////////////////////////// CHARACTER SPECIFIC VARIABLES //////////////////////////////////////////////////////

//temp dialogue
dialogue_test = 0; //make this 1 to make dialogue pop up

//Dracula support
dracula_portrait = sprite_get("drac_portrait");
dracula_portrait2 = asset_get("empty_sprite"); //or asset_get("empty_sprite")
dracula_portrait3 = asset_get("empty_sprite"); //or asset_get("empty_sprite")
page = 0;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "Ha so I finally found you, you decided to turn against your own master, Doppelganger?";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = "Oh but the thrill, the power of sitting in this throne, commanding the forces of darkness, now I know why you return every 100 years.";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "You fool, do you take this for a simple game to me? Now stand tall and face me, I will end this pathetic charade[taunt]";
page++;

//Page 3
dracula_speaker[page] = 0;
dracula_text[page] = "Well but enough talk![glass] Have at you!";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "...";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "I always wanted to say that";
page++;

//vfx
plat_test = 0;

fx_darkness_hit1 = hit_fx_create(sprite_get("fx_darkness_rapidjab"), 8);
fx_darkness_hit2 = hit_fx_create(sprite_get("fx_darkness_hit2"), 18);
fx_fire_hit1 = hit_fx_create(sprite_get("fx_fire_hit1"), 15);
fx_fatal_ray_big = hit_fx_create(sprite_get("fx_fatal_ray_big"), 20);
fx_smash_grab = hit_fx_create(sprite_get("fx_smash_grab"), 15);
fx_blood_hit1 = hit_fx_create(sprite_get("fx_blood_hit1"), 12);
fx_blood_hit2 = hit_fx_create(sprite_get("fx_blood_hit2"), 20);
fx_blood_drip = hit_fx_create(sprite_get("fx_blood_drip"), 30);

fx_roll = hit_fx_create(sprite_get("fx_roll"), 24);
fx_roll_end = hit_fx_create(sprite_get("fx_roll_end"), 18);
fx_airdodge = hit_fx_create(sprite_get("fx_airdodge"), 24);
fx_airdodge_end = hit_fx_create(sprite_get("fx_airdodge"), 18);
fx_mist_cloud = hit_fx_create(sprite_get("fx_mist_cloud"), 24);
fx_mist_cloud_hit = hit_fx_create(sprite_get("fx_mist_cloud_hit"), 30);
fx_bat_moon = hit_fx_create(sprite_get("fx_bat_moon"), 6);
fx_bat_moon2 = hit_fx_create(sprite_get("fx_bat_moon2"), 12);
fx_bat_moon_glow = hit_fx_create(sprite_get("fx_bat_moon_glow"), 8);
fx_bat_small = hit_fx_create(sprite_get("fx_bat_small"), 10);
fx_darkness_rift = [hit_fx_create(sprite_get("fx_darkness_rift1"), 34), hit_fx_create(sprite_get("fx_darkness_rift2"), 34), hit_fx_create(sprite_get("fx_darkness_rift3"), 34)];
fx_darkness_spark = [hit_fx_create(sprite_get("fx_darkness_spark_small"), 6),hit_fx_create(sprite_get("fx_darkness_spark"), 8)];
fx_darkness_rapidjab = hit_fx_create(sprite_get("fx_darkness_rapidjab"), 8);
fx_dust_leap = hit_fx_create(sprite_get("fx_dust_leap"), 8);
fx_hitsurface_bg = hit_fx_create(sprite_get("fx_hitsurface_bg"), 12);
fx_hitsurface_fg = hit_fx_create(sprite_get("fx_hitsurface_fg"), 12);
fx_shockwave_sparks = hit_fx_create(sprite_get("fx_shockwave_sparks"), 6);
fx_fatal_ray_trail = hit_fx_create(sprite_get("fx_fatal_ray_trail"), 20);
fx_fatal_ray_debris = hit_fx_create(sprite_get("fx_fatal_ray_debris"), 5);
fx_fatal_ray_debris_longer = hit_fx_create(sprite_get("fx_fatal_ray_debris"), 10);
fx_fatal_ray_impact = hit_fx_create(sprite_get("ustrong_proj2_impact"), 20);
fx_demonic_megiddo_impact = hit_fx_create(sprite_get("fx_demonic_megiddo_impact"), 90);
fx_demonic_megiddo_debris = [hit_fx_create(sprite_get("fx_demonic_megiddo_debris1"), 30), hit_fx_create(sprite_get("fx_demonic_megiddo_debris2"), 30), hit_fx_create(sprite_get("fx_demonic_megiddo_debris3"), 30)];
fx_glass_part = [hit_fx_create(sprite_get("fx_glass_part1"), 25), hit_fx_create(sprite_get("fx_glass_part2"), 20), hit_fx_create(sprite_get("fx_glass_part3"), 15)];

fx_nspecial = hit_fx_create(sprite_get("fx_nspecial"), 10);
fx_nspecial_trail = hit_fx_create(sprite_get("fx_nspecial_trail"), 15);
fx_nspecial_destroy = hit_fx_create(sprite_get("fx_nspecial_destroy"), 30);
fx_nspecial_swirl = hit_fx_create(sprite_get("fx_nspecial_swirl"), 18);
fx_nspecial2_trail = hit_fx_create(sprite_get("fx_nspecial_trail"), 15);
fx_nspecial2_glow = hit_fx_create(sprite_get("fx_nspecial2_glow"), 10);
fx_fspecial = hit_fx_create(sprite_get("fx_fspecial"), 24);
fx_uspecial = hit_fx_create(sprite_get("fx_uspecial_tiled"), 24);
fx_uspecialglow = hit_fx_create(sprite_get("fx_uspecialglow_tiled"), 24);
fx_uspecial_air = hit_fx_create(sprite_get("fx_uspecial_tiled"), 24);
fx_uspecial_airglow = hit_fx_create(sprite_get("fx_uspecialglow_tiled"), 24);
fx_uspecial_impact = hit_fx_create(sprite_get("fx_uspecial_impact"), 16);
fx_uspecial_air_impact = hit_fx_create(sprite_get("fx_uspecial_impact"), 16);
fx_uspecial_sparks = hit_fx_create(sprite_get("fx_uspecial_sparks"), 14);
fx_dspecial = hit_fx_create(sprite_get("fx_nspecial"), 10);
fx_dspecial_end = hit_fx_create(sprite_get("fx_nspecial_destroy"), 13);
fx_dspecial_trail = hit_fx_create(sprite_get("fx_dspecial_trail"), 15);
fx_dspecial_ember = hit_fx_create(sprite_get("fx_nspecial_trail"), 8);
fx_dspecial_sparks = hit_fx_create(sprite_get("fx_dspecial_sparks"), 25);

set_hit_particle_sprite( 1, sprite_get( "hfx_part_darkness" ) );
set_hit_particle_sprite( 2, sprite_get( "hfx_part_fire" ) );
set_hit_particle_sprite( 3, sprite_get( "hfx_part_ray" ) );

roll_pos = [x,y];
armorhit_shake_pos = [x,y];
armorhit_shake_timer = 0;

portrait_fade = 0;

//Gameplay stuff
head_hurtbox = noone;
head_hit = false;
extra_hitpause = 0;
got_hit_cooldown = 0;

dattack_hit = 0;
dattack_has_hit = 0;
utilt_hit = false;

fstrong_laser = 0;
fstrong_laser_trail = 0;
fstrong_firex = 0;
fstrong_prev_firex = 0;
fstrong_fire_count = 0;

dstrong_hitbox_ground = noone;
dstrong_hitbox_air = noone;
dstrong_x = 0;
dstrong_y = 0;
dstrong_timer_ground = 0;
dstrong_timer_air = 0;
dstrong_pos = 0;

teleport_dist = 300;
ledge_leniency = 100;
hellfire_frame = 0;
dark_inferno_frame = 0;

fspecial_grab = false;
fspecial_teleport = false;
blood_glow = 0;

flame_pillar = noone;
dspecial_plat = false;

ai_transition = 0;

var tmp_sync_vars = get_synced_var(player);
for (var i = 0; i < 2; i++)
{
    var shift = (i*4);
    synced_vars[i] = tmp_sync_vars >> shift & 15;
}
//voice
switch (synced_vars[0])
{
	default: //no voice

	break;
	case 1: //voice
	voice = 1;
    nspecial_voice = sound_get("judg_burn");
    dark_inferno_voice = sound_get("ooe_dark_inferno");
    soul_steal_voice = sound_get("ooe_soul_steal");
    fspecial_teleport_voice1 = sound_get("fspecial_teleport1");
    fspecial_teleport_voice2 = sound_get("fspecial_teleport2");
    dspecial_voice = sound_get("dspecial_voice");
    dstrong_charge_voice = sound_get("vo_HAAAHHH");
    demonic_megiddo_voice = sound_get("judg_demonic_meggido");
    fatal_ray_voice = sound_get("ooe_fatal_ray");
    bat_moon_voice = sound_get("grim_bat_moon");
    utilt_voice = sound_get("utilt_voice");
    parry_voice = sound_get("dxc_what");
    
    uspecial_laugh1 = sound_get("ooe_laugh1_short");
    uspecial_laugh2 = sound_get("ooe_laugh2_short");
    uspecial_laugh3 = sound_get("dxc_laugh_short");
    uspecial_laugh4 = sound_get("judg_laugh1");
    uspecial_laugh5 = sound_get("judg_laugh2");
    uspecial_laugh6 = sound_get("judg_laugh3");
    
    grunt1 = sound_get("ooe_grunt1");
    grunt2 = sound_get("ooe_grunt2");
    grunt3 = sound_get("ooe_grunt3");
    grunt4 = sound_get("ooe_grunt4");
    grunt5 = sound_get("ooe_grunt5");
    grunt6 = sound_get("dxc_grunt1");
    grunt7 = sound_get("dxc_grunt2");
    grunt8 = sound_get("dxc_grunt3");
    grunt9 = sound_get("judg_grunt1");
    grunt10 = sound_get("judg_grunt2");
    
    damage1 = sound_get("ooe_damage1");
    damage2 = sound_get("ooe_damage2");
    damage3 = sound_get("ooe_damage3");
    damage4 = sound_get("ooe_damage4");
    damage5 = sound_get("ooe_damage5");
    damage6 = sound_get("ooe_damage6");
    damage7 = sound_get("dxc_damage1");
    damage8 = sound_get("dxc_damage2");
    damage9 = sound_get("dxc_damage3");
    damage10 = sound_get("judg_damage1");
    damage11 = sound_get("judg_damage2");
    damage12 = sound_get("judg_damage3");
    damage13 = sound_get("judg_damage4");
    
    death1 = sound_get("dxc_death");
    death2 = sound_get("dxc_death2");
    death3 = sound_get("judg_death1");
    death4 = sound_get("judg_death2");
    death5 = sound_get("ooe_death1");
    death6 = sound_get("ooe_death2");
    
    taunt_voice1 = sound_get("taunt_vo4");
    taunt_voice2 = sound_get("taunt_vo8");
    taunt_voice3 = sound_get("taunt_vo16");
    taunt_voice4 = sound_get("taunt_vo28");
    taunt_voice5 = sound_get("taunt_vo29");
    taunt_voice6 = sound_get("taunt_vo30");
    taunt_voice7 = sound_get("taunt_vo31");
    taunt_voice8 = sound_get("taunt_vo32");
    taunt_voice9 = sound_get("taunt_vo33");
    taunt_voice10 = sound_get("taunt_vo34");
    taunt_voice11 = sound_get("taunt_vo35");
    taunt_voice12 = sound_get("taunt_vo36");
    taunt_voice13 = sound_get("taunt_vo37");
    taunt_voice14 = sound_get("taunt_vo38");
    taunt_voice15 = sound_get("taunt_vo39");
    taunt_ditto = sound_get("dracula_ditto2");
	break;
}

//alucard afterimage
alucard_afterimage_array = 0;

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