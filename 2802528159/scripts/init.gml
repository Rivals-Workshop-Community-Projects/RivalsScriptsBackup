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
char_height         = 100;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.7;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 30;		// 6
initial_dash_time   = 14;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 6;		// 4    -  9
dash_speed          = 6.5;		// 5    -  9
dash_turn_time      = 30;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 12;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 6;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 5;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 5;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 7;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 12;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 8;		// 4    -  7.4
djump_speed         = 12;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 10;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 22;		// 24   -  40
walljump_time       = 18;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 3;
dodge_active_frames     = 2;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 4;
tech_recovery_frames    = 2;

// Tech roll
techroll_startup_frames     = 2;
techroll_active_frames      = 5;
techroll_recovery_frames    = 1;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 5;
air_dodge_recovery_frames   = 1;

// Roll
roll_forward_startup_frames     = 2;
roll_forward_active_frames      = 5;
roll_forward_recovery_frames    = 1;
roll_back_startup_frames        = 2;
roll_back_active_frames         = 5;
roll_back_recovery_frames       = 1;

// Crouch
crouch_startup_frames   = 4;
crouch_active_frames    = 1;
crouch_recovery_frames  = 4;

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
hurtbox_spr         = sprite_get("hurtboxxy");
crouchbox_spr       = sprite_get("hurtboxxy_crouch");
air_hurtbox_spr     = sprite_get("hurtboxxy_air");
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


//emmi variables 
plate_state = 0;
grain_timer = 0;

wall = 0; //0 = ground, 1 = right wall, 2 = left wall, 3 = ceiling
special_anim_timer = 0;
climbing = false;
climb_timer = 0;
wall_gauge = 1000;

anger_state = 0; //0 = blue light, 1 = yellow light, 2 = red light
anger_value = 0; //max 100
hud_timer = 0;
bar_glow = 1;

prev_dir = spr_dir;
prevprev_dir = 0;
crawling = false;

//sound variables
sound_effect = 0;
sound_text = [
"[EMMI]",
"[TURRET]",
"[MUTE]"
];
sound_select = 0;
radar_sound = 0;
beep_sound = 0;
beep_timer = 0;

radar_turret = ["tur_I_see_you", "tur_target_aquired", "tur_hi"];
beep_turret = ["tur_come_closer", "tur_would_you_come_over_here", "tur_hello_friend", "tur_helloo"];
beep_turret_timer = 60;
hurt_turret = ["tur_something's_wrong", "tur_oooww", "tur_oow", "tur_ow"];
hit_turret = 0;
dead_turret = ["tur_I'm_afraid_of_heights", "tur_noooo", "tur_weeeee", "tur_failure", "tur_critical_error"];

//nspecial variables
random_timing = 0; //0-3
x_pos = x;
timing = false;
victim = 0;
grab_x = 0;
grab_y = 0;
hit = false;
fog_alpha = 0;
opp_timing = 0;
opp_timed = 0;
pratcancel = 1;

//fspecial variables
ice_victim = noone;
ice_size = false;
ice_1 = 0;
move_cooldown[AT_FSPECIAL] = 60;
ice_sprite = sprite_get("ice_particle");

//ftilt variables
ftilt_cancel = 0;

//dspecial variables
orb_level = 0;
fire = 0;
hit_small = hit_fx_create(sprite_get("orb_hit_small"), 12);
hit_med = hit_fx_create(sprite_get("orb_hit_med"), 14);
hit_big = hit_fx_create(sprite_get("orb_hit_big"), 20);
shock_victim = noone;
emmi_shock_timer = 0;

//uspecial variables
head_rot = 0;
stored_head = 0;
temp_wall = 0;
on_cooldown = 0;

//dattack variables
stored_spark = false;
spark_shader = -1;
spark_timer = 300;

//ustrong
ustrong_whiff = true;

//radar variables
radar_img = 9;
radar_x = 46;
radar_y = -72;
radar_angle = 0;
radar_state = 0; //0-inactive, 1-active
radar_hbox_x = 0;
radar_hbox_y = 0;
radar_hit = hit_fx_create(sprite_get("empty"), 1);
set_hit_particle_sprite(2, sprite_get("empty"));

//turn
turned = 0;

/*empty attack list
AT_NSPECIAL_2
AT_NSPECIAL_AIR
AT_FSPECIAL_2
AT_FSPECIAL_AIR
AT_USPECIAL_2
AT_DSPECIAL_2
AT_FSTRONG_2
AT_USTRONG_2
AT_DSTRONG_2  used particle_effects.gml
AT_FTHROW
AT_UTHROW
AT_DTHROW  used ceilingjump.gml
AT_NTHROW  used walljump.gml
AT_TAUNT_2
AT_EXTRA_1 used climb_1.gml
AT_EXTRA_2 used climb_2.gml
AT_EXTRA_3
*/
