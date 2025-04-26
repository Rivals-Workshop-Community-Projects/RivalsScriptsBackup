hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .12;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .18;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 6.5;
dash_speed = 5.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 7;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 12;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 6;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 3;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 6;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

small_sprites = 1;

splat_effect = hit_fx_create( sprite_get("splat"), 18 );
splat_effect2 = hit_fx_create( sprite_get("splat_small"), 12 );

umbrellaleaf_recharge = 0;
alert_text_timer = 0;

swing_throw_type = 1;
dair_fall_timer = 0;
umbrellaleaf_dair_bounces = 0;
umbrellaleaf_glide_used = false;
pult_di = 0;
fspecial_charge = 0;
melonpult_fspecial_grabbed = 0;
melonpult_uspecial_grabbed = 0;
melonpult_grabbed_type = 1;

practice_mode = false;
playtest = (object_index == oTestPlayer);

copy_ability_id = 25;
TCG_Kirby_Copy = 10;
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 200;
fs_portrait_x = 80;
opptarget = [];
pot_compat_variable = sprite_get("food");
pot_compat_text = "Watermelon Arrangement"
arena_title = "The Homeowner's Last Stand";
knight_compat_dream = 
    [
        "*melon noises*",
        "So, when do we get to cracking skulls?",
        "Some weird lookin imp? I'll smash 'em flat!"
    ]

//thank you mr nart
// ==================== GRAFFITI INIT ======================
// set up colors
graffiti_colors[0] = make_color_rgb(0, 255, 204); // outer outline
graffiti_colors[1] = make_color_rgb(0, 220, 176); // outline
graffiti_colors[2] = make_color_rgb(255, 255,255); // main text
graffiti_colors[3] = make_color_rgb(118, 251, 255); // text anti-aliasing

// default string if there is no player tag
graffiti_string_default = "infamous" // default string if no player tag

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