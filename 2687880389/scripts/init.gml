// Runes
// tier 1
double_rocket_time = has_rune("A");
increased_charges = has_rune("B");
aerial_fstrong_enabled = has_rune("C");
fstrong_recoil_enabled = !has_rune("D");
lightweight = has_rune("E");
// tier 2
accellerated_jump_kick = has_rune("G");
can_store_dspecial_charge = has_rune("H");
remap_specials = false; //has_rune("I"); // Remove
//rune I desc="Old experimental tweaks to specials, will remove"
//rune I type="A"
// tier 3
hi_jump_kick = has_rune("L");
titanium_ally = has_rune("M");
targeting_enabled = has_rune("O");

// Alt-specific things
// Have macros representing which alt is which for switch statements
#macro codename_default_number     0
#macro codename_mega_number        7
#macro codename_metroid_number     8
#macro codename_halo_number        9
#macro codename_dva_number        10
#macro codename_rob_number        11
#macro codename_emerl_number      12
#macro codename_aperture_number   13
#macro codename_ironman_number    14
#macro codename_cyborg_number     15
#macro codename_mischeif_number   16
#macro codename_ugh_number        17
#macro codename_ea_number         20
#macro codename_wireframe_number  21
#macro codename_silhouette_number 22
// Have a bool that can be queried for each alt
codename_default_active    = false;
codename_mega_active       = false;
codename_metroid_active    = false;
codename_halo_active       = false;
codename_dva_active        = false;
codename_rob_active        = false;
codename_emerl_active      = false;
codename_aperture_active   = false;
codename_ironman_active    = false;
codename_cyborg_active     = false;
codename_mischeif_active   = false;
codename_ugh_active        = false;
codename_ea_active         = false;
codename_wireframe_active  = false;
codename_silhouette_active = false;

selected_player_color = get_player_color(player);
switch (selected_player_color) {
    case codename_default_number :
        codename_default_active = true;
        break;
    case codename_mega_number :
        codename_mega_active = true;
        break;
    case codename_metroid_number :
        codename_metroid_active = true;
        break;
    case codename_halo_number :
        codename_halo_active = true;
        break;
    case codename_dva_number :
        codename_dva_active = true;
        break;
    case codename_rob_number :
        codename_rob_active = true;
        break;
    case codename_emerl_number :
        codename_emerl_active = true;
        break;
    case codename_aperture_number :
        codename_aperture_active = true;
        break;
    case codename_ironman_number :
        codename_ironman_active = true;
        break;
    case codename_cyborg_number :
        codename_cyborg_active = true;
        break;
    case codename_mischeif_number :
        codename_mischeif_active = true;
        break;
    case codename_ugh_number :
        codename_ugh_active = true;
        break;
    case codename_ea_number :
        codename_ea_active = true;
        break;
    case codename_wireframe_number :
        codename_wireframe_active = true;
        break;
    case codename_silhouette_number :
        codename_silhouette_active = true;
        break;
    default :
        break;
}

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
char_height         = 68;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = lightweight? 1.2 : 0.95;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.1;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 8;		// 8    -  16
initial_dash_speed  = 6.5;		// 4    -  9
dash_speed          = 5.5;		// 5    -  9
dash_turn_time      = 24;		// 8    -  20
dash_turn_accel     = 1.75;		// 0.1  -  2
dash_stop_time      = 8;		// 4    -  6
dash_stop_percent   = 0.30;		// 0.25 -  0.5
ground_friction     = 0.7;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = lightweight? 7 : 6;		// 4    -  8
max_jump_hsp        = lightweight? 7 : 6;		// 4    -  8
air_max_speed       = lightweight? 4.5 : 3.5;  		// 3    -  7
jump_change         = lightweight? 6 : 3;		// 3
air_accel           = lightweight? 0.5 : 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = lightweight? 0.03 : 0.06;		// 0.02 -  0.07
max_fall            = lightweight? 8 : 10;		// 6    -  11
fast_fall           = lightweight? 17 : 16;		// 11   -  16
gravity_speed       = lightweight? 0.3 : 0.5;		// 0.3  -  0.6
hitstun_grav        = lightweight? 0.3 : 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10.5;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 7;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

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
//spr_nspecial_proj = sprite_get("nspecial_proj");
//spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
//sfx_example = sound_get("example"); // sounds/example.ogg

// VFX
//vfx_example = hit_fx_create(spr_example, 54);

// Variables
rainbow_color = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)
rainbow_activate = false;
infinite_energy = false; // Used for Sandbert phone cheat


// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0.15;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = lightweight? 60 : 32;		// 24   -  40
walljump_time       = lightweight? 60 : 32;		// 18   -  32
wall_frames         = 1;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 3;
techroll_recovery_frames    = 2;

// Airdodge
//air_dodge_startup_frames    = 1;
//air_dodge_active_frames     = 4;
//air_dodge_recovery_frames   = 2;
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 1;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 3;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 2;
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
hurtbox_spr         = sprite_get("hurtbox");
crouchbox_spr       = sprite_get("churtbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_med2");
landing_lag_sound   = asset_get("sfx_land_heavy");
waveland_sound      = asset_get("sfx_waveland_ran"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Misc. character mechanics
blast_hit_effect = hit_fx_create(sprite_get("blast_hit"), 42);

// crawl
crawl_speed = 17; // 20
crawl_accel = 0.8;
crouch_time = 0;
crouch_time_max = 4;
driving = false;
driving_prev = false;
car_roof = noone;
crouching = false;
crouching_prev = false;
// Become car
transform_down_sound = sound_get("transform_down");
// Become robot
transform_up_sound = sound_get("transform_up");
// Passive sound as car
engine_idling_sound = sound_get("engine_idle_loop");
engine_idle_time = 0;
engine_idle_time_max = 20;
// Start moving as car
engine_vroom_sound = sound_get("engine_vroom");
spr_dir_prev = spr_dir;
crouch_anim_timer = 0;
crouch_anim_timer_max = 8;
// Dust puff creation interval while driving
driving_dust_timer = 0;
driving_dust_timer_max = 4;
// Countdown to animate turning
tire_screech_sound = sound_get("tire_screech");
crouch_turning_timer_max = 8;
crouch_turning_timer = crouch_turning_timer_max;
// Countdown to only play vroom sound every now and then
//vroom_cooldown_max = 200;
//vroom_cooldown = 0;
vroom_allowed = true;

marker_sprite = sprite_get("marker");
// Get colors for marker
//hud_color = get_player_hud_color(player);
//hud_color = [color_get_red(hud_color_old), color_get_green(hud_color_old), color_get_blue(hud_color_old)];
/*
var energy_color_slot = selected_player_color;
energy_r = get_color_profile_slot_r(energy_color_slot, 0);
energy_g = get_color_profile_slot_g(energy_color_slot, 0);
energy_b = get_color_profile_slot_b(energy_color_slot, 0);
*/

// uspecial fuel
//var rocket_seconds = remap_specials ? 3 : 0.6;
//var rocket_seconds = 1.0;
var rocket_seconds = 1.2;
//rocket_seconds *= double_rocket_time ? 2 : 1;
fuel_consumption_rate = 4; // keep this as a multiple of 2
airborne_fuel_recovery_rate = 2;
grounded_fuel_recovery_rate = 3;
fuel_recovery_active = true;
max_rocket_fuel = rocket_seconds * 60 * fuel_consumption_rate;
fuel_consumption_rate = double_rocket_time ? fuel_consumption_rate / 2 : fuel_consumption_rate;
pity_fuel_amount = max_rocket_fuel / 8;
rocket_fuel = max_rocket_fuel;
//uspecial sound
rocket_sound = sound_get("rocket_effect");
current_rocket_sound = 0;
meter_sprite = sprite_get("meter");
meter_fill_sprite = sprite_get("meter_fill");

// fspecial charges
//max_booster_rush_charges = increased_charges ? 2 : 1;
//booster_rush_charges = max_booster_rush_charges;
booster_rush_cost = increased_charges ? max_rocket_fuel / 3 : max_rocket_fuel / 2;
charge_button_sprite = sprite_get("charge_button");

// nspecial grab
holding_someone = false;
RETROBLAST_HOLDER_ID = noone;
grab_hitbox = noone;
created_grab_hitbox = false;
// Different throw sounds
fthrow_sound_effect = codename_mischeif_active ? sound_get("marina_ha") : asset_get("sfx_clairen_nspecial_grab_success");
bthrow_sound_effect = codename_mischeif_active ? sound_get("marina_yah") : asset_get("sfx_clairen_nspecial_grab_success");
dthrow_sound_effect = codename_mischeif_active ? sound_get("marina_hooah") : sound_get("mechanical_startup");

// dspecial
engine_revving_up_sound = sound_get("engine_revving");
driving_dash_sound = sound_get("engine_dash");
armor_available = false;
driving_dash_duration = 18;
driving_dash_stored = false;
change_hurtbox_sprite_to_crouch_next_frame = false;

// Afterimages
//num_afterimages_max = 11;
num_afterimages_max = 5;
afterimage_countdown = 0;
//afterimages = array_create(num_afterimages, noone);
afterimages = ds_list_create();

// Use this to detect whether this is the first frame of wall jump
previously_wall_jumping = false;

// fstrong
fstrong_upward_angle = 30;
fstrong_downward_angle = -fstrong_upward_angle;
smash_flash_timer = 0;
smash_flash_timer_max = 10;
first_run_through_fstrong = true;
current_effect_sound = noone;

// ustrong
sliding_speed = 0;
sliding_friction = 0.05;
sliding_speed_accel = sliding_friction + 0.05;
takeoff_start_sound = sound_get("takeoff_charge");

// dstrong
dstrong_max_speed = 7; // 4
dstrong_accel = 1; // 0.5
num_dstrong_spins = 2;
looping_dust_timer = 0;
tire_screech_burnout_start_sound = sound_get("tire_screech_burnout_start");
tire_screech_burnout_end_sound = sound_get("tire_screech_burnout_end");

// Laser sounds
laser_charge_sound = sound_get("laser_charge");
laser_blast_sound = sound_get("laser_blast2");

// Car horn sounds
active_horn = sound_get("horn");
if (codename_halo_active) {
    active_horn = sound_get("horn_warthog");
}
/*
switch (selected_player_color) {
    case codename_mega_number :
        active_horn = sound_get("horn_megaman");
        break;
    case codename_metroid_number :
        active_horn = sound_get("horn_samus");
        break;
    case codename_halo_number :
        active_horn = sound_get("horn_warthog");
        break;
    case codename_dva_number :
        active_horn = sound_get("horn_dva");
        break;
    case codename_rob_number :
        active_horn = sound_get("horn_rob");
        break;
    case codename_emerl_number :
        active_horn = sound_get("horn_emerl");
        break;
    case codename_ironman_number :
        active_horn = sound_get("horn_ironman");
        break;
    case codename_cyborg_number :
        active_horn = sound_get("horn_booyah");
        break;
    case codename_mischeif_number :
        active_horn = sound_get("horn_shake_shake");
        break;
    case codename_ugh_number :
        active_horn = sound_get("horn_ugh");
        break;
    default :
        break;
}
*/

// Set different victory/loss portraits depending on alt selected
if (codename_default_active) { // Default win/loss portraits are miscolored, replace them
    set_victory_portrait(sprite_get("portrait_original"));
    set_victory_sidebar(sprite_get("result_small_original"));
} else if (codename_wireframe_active) {
    set_victory_portrait(sprite_get("portrait_hologram"));
    set_victory_sidebar(sprite_get("result_small_hologram"));
} else {
    set_victory_portrait(sprite_get("portrait"));
    set_victory_sidebar(sprite_get("result_small"));
}

// Decide if the shanding needs to be flat
flat_shading_selected = false;
if (codename_ea_active || codename_wireframe_active || codename_silhouette_active) {
    flat_shading_selected = true;
}

// Change outline color if needed
if (codename_wireframe_active) {
    outline_color = [0, 255, 0]
}

// Rune-specific
titanium_armor_value = 20;
shield_icon = sprite_get("shield_icon");
// Track if anyone is currently performing a garb on this player
RETROBLAST_HOLDER_ID = noone;
// Track if this character is being targetted, share stacks
RETROBLAST_TARGETTING_ME = noone;
RETROBLAST_TARGET_STACKS = 0;

// Muno template: (don't change)

user_event(14); // General init