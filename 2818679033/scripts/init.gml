
//AI stuff
showing_thoughts = false;
is_ai = false;

fspec_hitbox = noone;

dattack_loop = 0;


//character support stuff
tcoart = sprite_get("tcoart");
otto_bobblehead_sprite = sprite_get("otto");

//pokemon stadium stuff
pkmn_stadium_front_img = sprite_get("pkmn_front");
pkmn_stadium_back_img = sprite_get("pkmn_back");

cancelled = false;


spawn_lots_of_stars = false; // probably a rune



uspec_speed_max = 2;

nspecial_thing = 11;

thingy_type = 0;
bababooey = false;

fspec_speed = 12.5;
should_clamp = true;

hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = sprite_get("hitstun_hurtbox");

char_height = 45;
idle_anim_speed = .125;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .15;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 0.05;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 5.5;
dash_speed = 5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .05;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 2.5; //ranno is 4  //was 2.5 //old 4.5 //the maximum hsp you can have when jumping from the ground
air_max_speed = 3; //ranno is 3 //was 2.5 //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3; // was .25
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .1;
max_djumps = 2;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .53;
knockback_adj = .95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 8;
wave_land_adj = 1.4//1.32; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .001; //grounded deceleration when wavelanding

wall_frames = 1;

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 5 

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1; 

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8.0;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("plop");
landing_lag_sound = sound_get("plop");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("jump");
djump_sound = sound_get("djump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

star__init()



#define assert_equal(first, second) {
    var equal = null
    if is_array(first) {
        equal = array_equals(first, second)
    } else {
        equal = first == second
    }
    if not equal {
        prints("ASSERT ERROR", first, "not equal to", second)
    }
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define prints // Version 0
    // Prints each parameter to console, separated by spaces.
    var _out_string = string(argument[0])
    for (var i=1; i<argument_count; i++) {
        _out_string += " "
        _out_string += string(argument[i])
    }
    print(_out_string)

#define star__init // Version 0
    star_cooldown = 0;
    star_cooldown_time = 320;
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion