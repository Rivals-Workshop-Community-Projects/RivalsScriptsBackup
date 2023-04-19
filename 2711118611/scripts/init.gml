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
initial_dash_time   = 14;		// 8    -  16
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 7.0;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 2;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.5;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10.5;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 11.5;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 5;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.7;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");

// Variables
rainbow_color_one = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)
rainbow_color_two = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.2;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 2;

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
roll_forward_active_frames      = 2;
roll_forward_recovery_frames    = 1;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 2;
roll_back_recovery_frames       = 1;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;

//draw_x = 1000;
/*

Muno's Words of Wisdom: Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation. Dan Moment

*/


sfx_bigexplosion = sound_get("sfx_cs_bigexplosion");
sfx_bleep = sound_get("sfx_cs_bleep");                  // Cave Story Level up Bleep
sfx_blockexplosion = sound_get("sfx_cs_blockexplosion");// Cave Story Block Explosion
sfx_bonk = sound_get("sfx_cs_bonk");                    // Cave Story Head Bonk
sfx_death = sound_get("sfx_cs_death");                  // Cave Story Death Noise
sfx_fire = sound_get("sfx_cs_fire");                    // Cave Story Fireball Noise
sfx_hurt = sound_get("sfx_cs_hurt");                    // Cave Story Quote Damage Noise
sfx_enemyhurt = sound_get("sfx_cs_enemyhurt");          // Cave Story Enemy Damage Noise
sfx_damage = sound_get("sfx_cs_enemydamage");           // Cave Story Enemy Damage Noise
sfx_mimiga = sound_get("sfx_cs_mimigahurt");           // Cave Story Enemy Damage Noise
sfx_landing = sound_get("sfx_cs_landing");              // Cave Story Jump Land
sfx_bigcrash = sound_get("sfx_cs_bigcrash");            // Cave Story Big Crash
sfx_littlecrash = sound_get("sfx_cs_littlecrash");      // Cave Story Little Crash
sfx_quotejump = sound_get("sfx_cs_quotejump");          // Cave Story Jump Noise
sfx_switch = sound_get("sfx_cs_switch");                // Cave Story Click
sfx_teleporter = sound_get("sfx_cs_teleporter");        // Cave Story Teleporter Noise
sfx_walk = sound_get("sfx_cs_walk");                    // Cave Story Walking
sfx_weaponswitch = sound_get("sfx_cs_weaponswitch");    // Cave Story Weapon Switch
sfx_polar1 = sound_get("sfx_cs_polarl1");               // Cave Story Polar Star Level 1 shot
sfx_polar2 = sound_get("sfx_cs_polarl3");               // Cave Story Polar Star Level 3 shot
sfx_charge = sound_get("sfx_cs_curlycharge");           // Cave Story Curly Machine Gun Charge Sound
sfx_throw = sound_get("sfx_cs_throw");                  // Cave Story Sword Throw
sfx_hitsound = sound_get("sfx_cs_hitsound");            // Cave Story Hit 1
sfx_hitcool = sound_get("sfx_cs_hitcool");              // Cave Story Hit 2
sfx_stab = sound_get("sfx_aa_stab");                    // Ace Attourney Stab noise
sfx_bat = sound_get("sfx_tf_bat");                      // TF2 Bat Hit noise
sfx_hit1 = sound_get("sfx_fe_hit1");                    // Fire Emblem Hit noise
sfx_hit2 = sound_get("sfx_fe_hit2");                    // Fire Emblem Hit noise
sfx_hit3 = sound_get("sfx_fe_hit3");                    // Fire Emblem Hit noise
sfx_hit4 = sound_get("sfx_fe_hit4");                    // Fire Emblem Hit noise
sfx_msg = sound_get("sfx_cs_msg");                      // Text Scroll

sfx_alleyoop = sound_get("reyn_ALLEYOOP");                    // Fire Emblem Hit noise
sfx_hello = sound_get("sfx_sw_hello");                        //Hello There

//Hit FX
large_hit = hit_fx_create(sprite_get("bigslash_fx"), 20);
fx_sonic = hit_fx_create( sprite_get("fx_sonic"), 18 );

// Hurtbox sprites
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Movement SFX
land_sound          = sfx_landing;
landing_lag_sound   = sfx_bonk;
waveland_sound      = sfx_polar1; // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = sfx_quotejump;
//jump_sound          = sfx_alleyoop;
djump_sound         = sfx_quotejump;
air_dodge_sound     = sfx_polar2;

// Visual offsets for when you're in Ranno's bubble
bubble_x = -12;
bubble_y = 0;

// King Sword Tracking
sword_one = noone;
sword_two = noone; // Marked Player
sword_two_timer = 0;
sword_three = noone;

bigiron = false;

// UAir Staling
base_height = -5;
uair_height = base_height;
stale_amount = 2.5;

//Bair hit flag, to trigger upward boost in attack_update
bair_hit = false;

//Dattack hit flag, to trigger upward boost in attack_update
djump_base = 11.5;

//Dair loop count
dair_loop = 0;

// FSpecial hold variable
fspecial_hold_loop = 0;
hsp_storage = 0;
vsp_storage = 0;
ease_timer = 0;
spr_fspecial_arrow = sprite_get("aimarrow");
fspecialed = false;

// USpecial variables
hbox = noone;
hbox_x = 0;
hbox_y = 0;

dspecial_hit = false;

spr_sword_air = sprite_get("sword_air");
spr_sword_idle = sprite_get("sword_idle");
spr_sword_impact = sprite_get("sword_impact");

spr_sword_proj = sprite_get("sawblade");
spr_sword_dest = sprite_get("sawblade_disappear");
//spr_sword_mirage = sprite_get("mirage");
spr_sword_mirage = sprite_get("sword_mirage");

spr_nspecial_icon = sprite_get("nspecial_icon");
spr_dspecial_icon = sprite_get("dspecial_icon");
spr_fspecial_icon = sprite_get("fspecial_icon");

spr_textbox = sprite_get("textbox");

str_taunt_text_one = "You know exactly what I'll do with"
str_taunt_text_two = "this sword."
//int_taunt_length = string_length(str_taunt_text);
int_line_one_length = string_length(str_taunt_text_one);
int_line_two_length = string_length(str_taunt_text_two);
int_total_length = int_line_one_length + int_line_two_length;

// Textbox stuff
int_text_pos = 0;
str_line_one_text = "";
str_line_two_text = "";

templel = ""