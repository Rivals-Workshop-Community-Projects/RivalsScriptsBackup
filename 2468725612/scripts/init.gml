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
char_height         = 76;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.85;		// 0.9  -  1.2


// Ground movement
walk_speed          = 2.5;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 4;		// 8    -  16
initial_dash_speed  = 3.5;		// 4    -  9
dash_speed          = 4.5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 5;		// 4    -  8
air_max_speed       = 3.5;  		// 3    -  7
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
jump_speed          = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 5;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 24;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_example = sound_get("example"); // sounds/example.ogg

// VFX
vfx_example = hit_fx_create(spr_example, 54);

// Variables
rainbow_color = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.1;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 36;		// 24   -  40
walljump_time       = 36;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 2;
techroll_active_frames      = 3;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 2;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 2;
roll_back_active_frames         = 3;
roll_back_recovery_frames       = 2;

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

small_sprites = true;

// Hurtbox sprites
hurtbox_spr         = sprite_get("hurtbox_idle");
crouchbox_spr       = sprite_get("hurtbox_crouch");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_heavy");
landing_lag_sound   = asset_get("sfx_land_heavy");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//MOTION BLUR CODE
blur = array_create(10);

introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked 
//by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

// My Stuff
step_sound = 0;
walk_cont = 0;
dash_cont = 0;
djump = 1;

lockout_timer = 0;
can_command = false;
im_the_clone = false;

hologram_exists = false;
hologram_phone = false;

hologram_is_alive = false;  //Hologram active
hologram_live = false;      //Hat start Hologram
hologram = noone;
hologram_dir = 1;
hologram_start = true;      //Hologram Start of the match
hologram_act = false;
hologram_parry = false;
hologram_parry_cont = 0;

attack_meu = AT_JAB;
attack_nome = "";
attack_icon = 0;
attack_size = -12;
attack_hologram = AT_JAB;
attack_holo_nome = "Jab";
attack_holo_icon = 0;
attack_holo_size = -12;
hologram_icon = 1;

shotgun_cont = 0;
shotgun_shot = false;
shotgun_bair = false;
shotgun_ammo = 0;
shotgun_empty = false;

grab_ground = false;
grab_air = false;
grab_ground_clone = false;
grab_air_clone = false;
grabbing_clone = false;

hat_x = 0;
hat_y = 0;
hat_on = true;              //Postdraw Hat
hat_out = false;

fspecial_cont = 0;
fspecial_hit = -1;

dspecial_hit = false;
dspecial_air_hit = false;
dspecial_cont = 0;
dspecial_air_cont = 0;
dspecial_dj = false;
dspecial_rune = false;

pratfall_cont = false;

my_x = 0;
my_y = 0;

col_R1 = get_color_profile_slot_r( get_player_color(player), 0);
col_G1 = get_color_profile_slot_g( get_player_color(player), 0);
col_B1 = get_color_profile_slot_b( get_player_color(player), 0);


col_R2 = get_color_profile_slot_r( get_player_color(player), 1);
col_G2 = get_color_profile_slot_g( get_player_color(player), 1);
col_B2 = get_color_profile_slot_b( get_player_color(player), 1);

col_arrow = get_player_hud_color( player );

spr_nspecial2 = sprite_get("nspecial2");
spr_jab_holo = sprite_get("jab_hologram");
spr_idle_holo = sprite_get("idle_hologram");
spr_blast = sprite_get("blast");
spr_dstrong_holo = sprite_get("dstrong_hologram");
spr_fspecial_air = sprite_get("fspecial_air");
spr_fspecial_hit = sprite_get("fspecial_hit"); 
spr_dspecial_air = sprite_get("dspecial_air");
spr_dspecial_effect = sprite_get("dspecial_effect"); 
spr_parry_holo = sprite_get("parry_hologram"); 




//asset_get("empty_sprite"))


// Muno template: (don't change)

user_event(14); // General init