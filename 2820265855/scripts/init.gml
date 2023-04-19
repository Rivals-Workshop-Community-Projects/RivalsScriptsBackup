// ==================== GRAFFITI INIT ======================
// set up colors
graffiti_colors[0] = make_color_rgb(212, 69, 254); // outer outline
graffiti_colors[1] = make_color_rgb(183, 59, 219); // outline
graffiti_colors[2] = make_color_rgb(255, 255,255); // main text
graffiti_colors[3] = make_color_rgb(255, 187, 255); // text anti-aliasing

// default string if there is no player tag
graffiti_string_default = "Blaze" // default string if no player tag

// set which window / window_timer to spawn the graffiti article
graffiti_window = 2;
graffiti_window_timer = 1;


// ===== Please don't edit below here :) =====
// the fonts to use when drawing -- the array indexes match up with the graffiti_colors array indexes
graffiti_fonts[0] = font_get("_graffiti_outerline");
graffiti_fonts[1] = font_get("_graffiti_outline");
graffiti_fonts[2] = font_get("_graffiti");
graffiti_fonts[3] = font_get("_graffiti_aa");

// some variables to keep track of things
graffiti_id = noone; // keeps track of your old graffiti article
graffiti_tagging = false; // set true right before you spawn the graffiti, false immediately after

// get player tag
graffiti_string = string_lower(get_player_name(player));
// replace any tag containing special characters with the default string
if string_lettersdigits(graffiti_string) != string_replace_all(graffiti_string, " ", "") {
    graffiti_string = string_lower(graffiti_string_default);
}
// replace empty tags with default tag
switch graffiti_string {
    case "p1": case "p2": case "p3": case "p4": case "":
        graffiti_string = string_lower(graffiti_string_default);
        break;
}
// =========================================================


char_height = 52;
idle_anim_speed = 0;
crouch_anim_speed = .1;
walk_anim_speed = .1;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 9;
dash_speed = 5;//7
dash_turn_time = 9;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9;//11
short_hop_speed = 6;//7;
djump_speed = 9;//12
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5; //.65
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 8; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 5;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 8;
roll_back_recovery_frames = 1;
roll_forward_max = 10; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_cla");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//variables
swordfloat = 1

swordfollow = {x: 0, y:0};

combo = 0

hud_option = 1

powerpoints = 64

dspecial_sfx = 0

released = false;

powerpoints_regen = 0;

trigger_delay = -1;

stored_spell = false;

shield_hbox = noone;

aerial_fspecial = false;

fspecial_cooldown = 0;

blaze_fspecial_grab = noone;

blaze_uspecial_grab = noone;

//FX
fx_slice = hit_fx_create(sprite_get("slice"), 15);

fx_slice2 = hit_fx_create(sprite_get("slice2"), 15);

fx_slice3 = hit_fx_create(sprite_get("slice3"), 15);

fx_portal = hit_fx_create(sprite_get("introportal"), 68);

//In Init:
hue_offset=0;
hue_speed=1; //change this to change the speed of the hueshift

set_victory_theme(sound_get("Victory!"));

if (get_player_color(player) == 9){
    set_victory_theme(sound_get("Victorubies"));
}

set_victory_bg(sprite_get("victory_bg"))

 //Runes
 if has_rune("C") {
dash_speed = 10;
}

 if has_rune("E") {
jump_speed = 13;
} else {
jump_speed = 11;
}

//runes
if has_rune("D"){
land_time = 4
prat_land_time = 5;
wave_land_time = 4;
} else {
land_time = 8
prat_land_time = 14;
wave_land_time = 8;
}

 if has_rune("K") {
max_djumps = 2;
} else {
max_djumps = 1;
}

//Kirby Copy Ability
TCG_Kirby_Copy = 5;

// afterimages (thanks karu :3)
afterimage_array = 0;
afterimage_colour = make_colour_rgb(115, 0, 230);
//afterimage_colour = GetColourPlayer(0);

//drip
drippy = false;

//final smash
fs_portrait_x = 150;
fs_char_portrait_y = 100;
fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "NSPECIAL";
fs_char_attack_index = 49;
fs_charge = 0;

//pokemon stadium
pkmn_stadium_front_img = sprite_get("Blaze_PKMN");
pkmn_stadium_back_img = sprite_get("Blaze_PKMN_Back");