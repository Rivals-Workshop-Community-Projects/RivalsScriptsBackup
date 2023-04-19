// THIS IS EVERYTHING SANDBERT NEEDS FOR A FINAL SMASH, GAMEPLAY-SIDE:
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 106;
// EVERYTHING AFTER IS JUST 'SANDBERT WITH A PHONE' by MUNO
// I MADE NONE OF THIS! I ONLY MADE THE FINAL SMASH!
// GO GIVE BOTH THANKS AND CREDIT TO THEM!

// Runes
// tier 1
double_rocket_time = has_rune("A");
increased_charges = has_rune("B");
aerial_fstrong_enabled = has_rune("C");
fstrong_recoil_enabled = has_rune("D");
lightweight = has_rune("E");
// tier 2
accellerated_jump_kick = has_rune("G");
can_store_dspecial_charge = has_rune("H");
//uspecial_rework = true; //has_rune("I"); // Remove
//remap_specials = false; //has_rune("I"); // Remove
//rune I desc="Old experimental tweaks to specials, will remove"
energy_floor_on_hit_enemy = has_rune("I");
can_dstrong_cancel_dspecial = has_rune("J");
// tier 3
hi_jump_kick = has_rune("L");
titanium_ally = has_rune("M");
special_cancels_enabled = has_rune("N");
targeting_enabled = has_rune("O");

// Info passed in from CSS
var synced_var = get_synced_var(player);
tournament_legal_mode_active = (synced_var & 0x1) != 0;
party_mode_active = (synced_var & 0x2) != 0;
special_alt_number = synced_var >> 2;

// Alt-specific things
// Have macros representing which alt is which for switch statements
#macro codename_default_number      0
#macro codename_mega_number         7
#macro codename_metroid_number      8
#macro codename_halo_number         9
#macro codename_dva_number          10
#macro codename_rob_number          11
#macro codename_emerl_number        12
#macro codename_aperture_number     13
#macro codename_ironman_number      14
#macro codename_cyborg_number       15
#macro codename_mischeif_number     16
#macro codename_ugh_number          17
#macro codename_ea_number           20
#macro codename_wireframe_number    21
#macro codename_mettaton_number     22
#macro codename_queen_number        23
#macro codename_cabinet_number      24
#macro codename_rotom_number        25
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
codename_mettaton_active   = false;
codename_queen_active      = false;
codename_cabinet_active    = false;
codename_rotom_active      = false;

recolor_default = false;
recolor_queen   = false;
recolor_rotom   = false;

selected_player_color = get_player_color(player);
switch (selected_player_color) {
    case codename_default_number :
        recolor_default = true;
        codename_default_active = true;
        break;
    case codename_queen_number :
        recolor_queen = true;
        break;
    case codename_rotom_number :
        recolor_rotom = true;
        break;
    default :
        break;
}

if (!tournament_legal_mode_active) {
    switch (selected_player_color) {
        //case codename_default_number :
            //codename_default_active = true;
            //break;
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
        case codename_mettaton_number :
            codename_mettaton_active = true;
            break;
        case codename_queen_number :
            codename_queen_active = true;
            break;
        case codename_cabinet_number :
            codename_cabinet_active = true;
            break;
        case codename_rotom_number :
            codename_rotom_active = true;
            break;
        default :
            break;
    }
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
short_hop_speed     = 6; // 7		// 4    -  7.4
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
crawl_speed = 12; // 13 15 17
crawl_accel = 0.8 // 0.85 0.8
gradual_crawl_accel = 0.005;
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
// Incur a penalty before starting certain actions to slightly disincentivieze driving
penalty_frames = 0;
max_penalty_frames = 5;
penalty_window = 25;

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

// uspecial
//var rocket_seconds = remap_specials ? 3 : 0.6;
//var rocket_seconds = 1.0;
var rocket_seconds = 0.7; // 1.1 1.2
max_rocket_rising_speed = -5; // -5.5 -6
//rocket_seconds *= double_rocket_time ? 2 : 1;
fuel_consumption_rate = 10; // 4 (doesn't matter since everything scales off of this)
max_rocket_fuel = rocket_seconds * 60 * fuel_consumption_rate;
pity_ratio = 0.3; // 1/5 1/4 1/8
energy_floor = true;
var airborne_recovery_seconds = energy_floor ? 4.5 * (1 + pity_ratio) : 4.5; // 3+(2/3);
var grounded_recovery_seconds = energy_floor ? 2.0 * (1 + pity_ratio) : 2.0; // 1.5 1+(3/8);
airborne_fuel_recovery_rate = max_rocket_fuel / (airborne_recovery_seconds * 60); //1.2 2
grounded_fuel_recovery_rate = max_rocket_fuel / (grounded_recovery_seconds * 60); //3.2 3
fuel_recovery_active = true;
fuel_consumption_rate = double_rocket_time ? fuel_consumption_rate / 2 : fuel_consumption_rate;
pity_fuel_amount = max_rocket_fuel * pity_ratio;
//pity_available = true; // Only give pity energy once per airtime
rocket_fuel = max_rocket_fuel;
rocket_fuel_prev = rocket_fuel;
//uspecial sound
rocket_sound = sound_get("rocket_effect");
current_rocket_sound = 0;
// Manage the meter tracking energy
meter_sprite = sprite_get("meter");
meter_fill_sprite = sprite_get("meter_fill");
white_flash_timer = 0;
white_flash_duration = 8;
recharge_twinkle = hit_fx_create(sprite_get("recharge_twinkle"), 9);
fill_fraction = rocket_fuel / max_rocket_fuel;
//meter_sprite_x = temp_x + 7;
//meter_sprite_y = temp_y + 3;
//meter_fill_sprite_x = temp_x + 9;
//meter_fill_sprite_y = temp_y + 1;
ember_effect = hit_fx_create(sprite_get("uspecial_ember"), 18);
uspecial_smoke_effect = hit_fx_create(sprite_get("uspecial_finale_smoke"), 12);
uspecial_ember_countdown = 0;
uspecial_ember_countdown_max = 3;
uspecial_ember_countdown_variance = 2;
djumping = false;
djumping_prev = false;

// fspecial charges
fspecial_leap_hsp = 8.5; // 9 11;
fspecial_leap_vsp = -6.5; // -7.5
fspecial_endlag = 16; // 14
//max_booster_rush_charges = increased_charges ? 2 : 1;
//booster_rush_charges = max_booster_rush_charges;
//fspecial_damping = 1;
booster_rush_cost_percent = increased_charges ? 0.4 : 0.7;
booster_rush_cost = max_rocket_fuel * booster_rush_cost_percent;
indicator_offset = 10 + (188 * booster_rush_cost_percent);
charge_indicator_sprite = sprite_get("meter_marker");
charge_button_sprite = sprite_get("charge_button");
//charge_indicator_sprite_x = temp_x + indicator_offset;
//charge_indicator_sprite_y = temp_y + 1;
//charge_button_sprite_x = temp_x + indicator_offset;
//charge_button_sprite_x = temp_y - 9;

// nspecial grab
holding_someone = false;
RETROBLAST_HOLDER_ID = noone;
grab_hitbox = noone;
created_grab_hitbox = false;
// Different throw sounds
fthrow_sound_effect = asset_get("sfx_clairen_nspecial_grab_success");
bthrow_sound_effect = asset_get("sfx_clairen_nspecial_grab_success");
dthrow_sound_effect = sound_get("mechanical_startup");
if (codename_mischeif_active) {
    fthrow_sound_effect = sound_get("marina_ha");
    bthrow_sound_effect = sound_get("marina_yah");
    dthrow_sound_effect = sound_get("marina_hooah");
}
draw_big_arrow_timer = 0;
draw_big_arrow_timer_max = 42;
draw_big_arrow_timer_x = 0;
draw_big_arrow_timer_y = 0;
draw_big_arrow_drift = 0;
draw_big_arrow_angle = 0;

// dspecial
engine_revving_up_sound = sound_get("engine_revving");
driving_dash_sound = sound_get("engine_dash");
armor_available = false;
dspecial_grounded = false;
dspecial_charged_speed = 14.5; // 14
dspecial_uncharged_speed = 10.5; // 10.5
dspecial_descent_angle = -60;
dspecial_charged_angled_x = lengthdir_x(dspecial_charged_speed, dspecial_descent_angle);
dspecial_charged_angled_y = lengthdir_y(dspecial_charged_speed, dspecial_descent_angle);
dspecial_uncharged_angled_x = lengthdir_x(dspecial_uncharged_speed, dspecial_descent_angle);
dspecial_uncharged_angled_y = lengthdir_y(dspecial_uncharged_speed, dspecial_descent_angle);
driving_dash_duration = 18;
driving_dash_stored = false;
change_hurtbox_sprite_to_crouch_next_frame = false;
dspecial_twinkle = hit_fx_create(sprite_get("dspecial_twinkle"), 20);
dspecial_dust_deployed = false;
//dspecial_duration = get_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH) + get_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH);

// Afterimages
//num_afterimages_max = 11;
num_afterimages_max = 5;
afterimage_countdown = 0;
//afterimage_countdown_prev = 0;
//afterimages = array_create(num_afterimages, noone);
afterimages = ds_list_create();

// Use this to detect whether this is the first frame of wall jump
previously_wall_jumping = false;

// fstrong
fstrong_upward_angle = 25; // 30
fstrong_downward_angle = -fstrong_upward_angle;
smash_flash_timer = 0;
smash_flash_timer_max = 10;
first_run_through_fstrong = true;
current_effect_sound = noone;

// ustrong
sliding_speed = 0;
sliding_friction = 0.3; // 0.05
sliding_speed_accel = sliding_friction + 0.05;
takeoff_start_sound = sound_get("takeoff_charge");
takeoff_charge2_sound = sound_get("takeoff_charge2");
takeoff_active_sound = sound_get("takeoff_ascent");
//ustrong_num_rising_loops = 4;
//ustrong_loop_count = 0;
//ustrong_rising_loop_duration = 6;
ustrong_rising_duration = 20; // 30 40
ustrong_rising_count = 0;
ustrong_num_rising_hits = 5; // 6 8
//ustrong_loop_count = 0;
//ustrong_loop_max = ustrong_num_rising_hits;
ustrong_stored_charge = 0;
ustrong_rising_hitbox_duration = ceil(ustrong_rising_duration / ustrong_num_rising_hits);
ustong_base_v_speed = -2.5; // -2.5 -3
ustong_min_v_speed = -3.5; // -2.75 -4
ustong_max_v_speed = -9.5; // -5.5 -5
ustrong_stored_charge = 0;
ustring_drift = 4.0 // 3.0

// dstrong
dstrong_max_speed = 5; // 6 7 4
dstrong_accel = 0.8; // 1 0.5
num_dstrong_spins = 1; // 2
looping_dust_timer = 0;
tire_screech_burnout_start_sound = sound_get("tire_screech_burnout_start");
tire_screech_burnout_end_sound = sound_get("tire_screech_burnout_end");

// Laser sounds
laser_charge_sound = sound_get("laser_charge");
laser_blast_sound = sound_get("laser_blast2");
laser_stomp_supplemental_sound = asset_get("sfx_swipe_medium1");
laser_blast_supplemental_sound = asset_get("sfx_burnapplied");
current_aerial_laser_sound = noone;

// Car horn sounds
active_horn = sound_get("horn");
if (codename_halo_active) {
    active_horn = sound_get("horn_warthog");
} else if (codename_mischeif_active) {
    active_horn = sound_get("horn_shake_shake");
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

// Can use different images for special taunt
transformed_taunt_sprite = codename_rotom_active ? sprite_get("taunt_filling_rotom") :
                           codename_wireframe_active ? sprite_get("taunt_filling_hologram") : sprite_get("taunt_filling");
mettaton_arm_sprite = codename_wireframe_active ? sprite_get("taunt_filling_mettaton_arm_hologram") : sprite_get("taunt_filling_mettaton_arm");
mettaton_leg_sprite = codename_wireframe_active ? sprite_get("taunt_filling_mettaton_leg_hologram") : sprite_get("taunt_filling_mettaton_leg");
mettaton_torso_sprite = codename_wireframe_active ? sprite_get("taunt_filling_mettaton_torso_hologram") : sprite_get("taunt_filling_mettaton_torso");
cabinet_sprite = codename_wireframe_active ? sprite_get("taunt_filling_cabinet_hologram") : sprite_get("taunt_filling_cabinet");
highest_random_transformation_option = codename_rotom_number;
specific_taunt_transformation_required = ((selected_player_color > codename_default_number) && (selected_player_color <= codename_ugh_number))
                                            || ((selected_player_color >= codename_mettaton_number) && (selected_player_color <= codename_rotom_number));
color_select_skip_begin = codename_ugh_number + 1;
color_select_skip_count = 4;
selected_taunt_transformation = 0;
// Randomly selected parts for Mettaton transformation
mettaton_max_arm_index = 6;
mettaton_left_arm = 0;
mettaton_right_arm = 0;
mettaton_max_leg_index = 4;
mettaton_left_leg = 0;
mettaton_right_leg = 0;
mettaton_max_mouth_index = 7;
mettaton_mouth = 0;
mettaton_max_eye_index = 7;
mettaton_eye = 0;
// Mettaton moves around a bit, re-roll random parts every cycle
mettaton_cycle_max_y = 39; // wanted to use 40, but would get into a loop of the same 15 poses because the random numbers loop every 10 seconds
mettaton_cycle_max_x = mettaton_cycle_max_y * 2;
mettaton_x_variance = 4;
mettaton_y_variance = 8;
// Track audio clips for Cabinet Man song
cabinet_song_clip_max = 8;
cabinet_song_clip_current = cabinet_song_clip_max - 1; // increments before displaying
cabinet_flicker_version_current = 0; // Alternate between 0 and 1 slower than default frame rate
cabinet_flicker_duration = 4;
horn_current = noone;

// Set different victory/loss portraits depending on alt selected
fs_char_portrait_override = sprite_get("portrait");

if (recolor_default) {
    set_victory_portrait(sprite_get("portrait_original"));
    set_victory_sidebar(sprite_get("result_small_original"));
} else if (recolor_queen) {
    set_victory_portrait(sprite_get("portrait_queen_scrubbed"));
} else if (recolor_rotom) {
    set_victory_portrait(sprite_get("portrait_rotom_scrubbed"));
}

if (codename_default_active) { // Default win/loss portraits are miscolored, replace them
    set_victory_portrait(sprite_get("portrait_original"));
    set_victory_sidebar(sprite_get("result_small_original"));
} else if (codename_wireframe_active) {
    set_victory_portrait(sprite_get("portrait_hologram"));
    set_victory_sidebar(sprite_get("result_small_hologram"));
    fs_char_portrait_override = sprite_get("portrait_hologram");
} else if (codename_queen_active) {
    set_victory_portrait(sprite_get("portrait_queen"));
    set_victory_sidebar(sprite_get("result_small_queen"));
    fs_char_portrait_override = sprite_get("portrait_queen_clean");
} else if (codename_rotom_active) {
    set_victory_portrait(sprite_get("portrait_rotom"));
    set_victory_sidebar(sprite_get("result_small_rotom"));
    var rotom_recolor_slot = 0;
    aura_color = make_color_rgb(get_color_profile_slot_r(codename_rotom_number, rotom_recolor_slot),
                                get_color_profile_slot_g(codename_rotom_number, rotom_recolor_slot),
                                get_color_profile_slot_b(codename_rotom_number, rotom_recolor_slot));
} else {
    set_victory_portrait(sprite_get("portrait"));
    set_victory_sidebar(sprite_get("result_small"));
}

// Decide if the shanding needs to be flat
flat_shading_selected = false;
if (codename_ea_active || codename_wireframe_active) {
    flat_shading_selected = true;
}

// Change outline color if needed
if (codename_wireframe_active) {
    outline_color = [0, 255, 0]
}

// If a special alt is chosen, define/select it here
switch (special_alt_number) {
    case 1: // Robot
        special_color_profile_slot_0 = make_color_rgb(255, 221, 0); //energy
        special_color_profile_slot_1 = make_color_rgb(255, 0, 0); //helmet
        special_color_profile_slot_2 = make_color_rgb(255, 233, 92); //visor
        special_color_profile_slot_3 = make_color_rgb(207, 207, 207); //flesh
        special_color_profile_slot_4 = make_color_rgb(255, 0, 0); //torso
        special_color_profile_slot_5 = make_color_rgb(255, 0, 0); //hands
        special_color_profile_slot_6 = make_color_rgb(207, 207, 207); //connectors
        special_color_profile_slot_7 = make_color_rgb(255, 0, 0); //feet
        break;
    case 2: // Nori
        special_color_profile_slot_0 = make_color_rgb(255, 71, 172); //energy
        special_color_profile_slot_1 = make_color_rgb(146, 25, 78); //helmet
        special_color_profile_slot_2 = make_color_rgb(255, 71, 172); //visor
        special_color_profile_slot_3 = make_color_rgb(251, 245, 229); //flesh
        special_color_profile_slot_4 = make_color_rgb(115, 69, 83); //torso
        special_color_profile_slot_5 = make_color_rgb(115, 69, 83); //hands
        special_color_profile_slot_6 = make_color_rgb(146, 25, 78); //connectors
        special_color_profile_slot_7 = make_color_rgb(115, 69, 83); //feet
        break;
    case 3: // Jordan
        special_color_profile_slot_0 = make_color_rgb(111, 0, 255); //energy
        special_color_profile_slot_1 = make_color_rgb(57, 54, 60); //helmet
        special_color_profile_slot_2 = make_color_rgb(91, 199, 53); //visor
        special_color_profile_slot_3 = make_color_rgb(133, 87, 64); //flesh
        special_color_profile_slot_4 = make_color_rgb(239, 229, 231); //torso
        special_color_profile_slot_5 = make_color_rgb(163, 66, 184); //hands
        special_color_profile_slot_6 = make_color_rgb(57, 54, 60); //connectors
        special_color_profile_slot_7 = make_color_rgb(205, 45, 112); //feet
        break;
    default: // 0 falls here
        break;
}

// Rune-specific
titanium_armor_value = 20;
shield_icon = sprite_get("shield_icon");
// Track if this character is being targetted, share stacks
RETROBLAST_TARGETTING_ME = noone;
RETROBLAST_TARGET_STACKS = 0;

// Final Smash hurtbox doesn't seem to update properly
final_smash_hurtbox_spr = sprite_get("final_smash_hurt");
layered_sound_1 = noone;
layered_sound_2 = noone;
layered_sound_3 = noone;

// Compatibility
// Kirby
kirbyability = 16;
swallowed = 0;
// Break the targets (not yet supported)
pho_has_btt_layout = false;
// Hikaru
Hikaru_Title = "Transformed";
// Rat
personaQuips[10] = "You're not getting away!";
// Agent N
nname = "Retroblast";
ncode1 = "A shape-changing robot from the future of the past.";
ncode2 = "Able to fire high-energy blasts from its extremities.";
ncode3 = "It's fast, but not fast enough.";
// Mt. Dedede
arena_title = "Shape-Changing Challenger";
arena_short_name = "Retroblast";
// Soulbound Conflict
battle_text = "* Retroblast wants to see who's faster!";
// Trial Grounds
sprite_change_offset("trial_grounds", 31, 0);
guiltySprite = sprite_get("trial_grounds");
// Pokemon Stadium
pkmn_stadium_front_img = sprite_get("pkmn_front");
pkmn_stadium_back_img = sprite_get("pkmn_back");
pkmn_stadium_name_override = "Retroblst";
// Greenwood Town
greenwood_cheer = 3;
// Po and Gumbo
pot_compat_variable = sprite_get("robot_food");
pot_compat_text = "Chocolate Bar";
// Henry Stickmin
has_fail = true;
fail_text = "Try to keep up!";
// Mamizou
mamizou_transform_spr = sprite_get("robot_toy");
// Future Ducky
fducky_intro1 = "Piece of junk. Stand down"
fducky_intro2 = "or you'll get scrapped."

// Muno template: (don't change)
// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

// Only do most Munophone stuff if we're in training mode
enable_munophone = (get_training_cpu_action() != CPU_FIGHT);
// Still need to initialize it though
muno_event_type = 0;
user_event(14);