
#macro GRAPPLE_DISABLED 0
#macro GRAPPLE_ACTIVE 1
#macro GRAPPLE_RETURNING 2
#macro GRAPPLE_PLAYER_MOUNTED 3
#macro GRAPPLE_WALL_MOUNTED 4
#macro GRAPPLE_ARTICLE_MOUNTED 5

//=-(                     ~~//** CUSTOM VARIABLES **//~~                     )-=//

// Constants
nspec_max_drones = has_rune("C") ? 3 : 2;
nspec_drone_cd_max = 180;

fspec_init_hsp = 20;
fspec_active_decel_factor = 1/12; // grapple hook velocity reduced by this * gh_timer each frame while active
fspec_return_vel_factor = 2/3;    // grapple hook velocity set to this * gh_timer each frame while returning
fspec_player_mount_accel = 0.6;   // player velocity increased by this each frame while moving toward a grappled player
fspec_object_mount_accel = 0.6;   // player velocity increased by this each frame while moving toward an article or wall

fspec_mount_limit_grounded = 2; // absolute ninimum sfec speed while grounded and moving towards article or wall. enforced even before min_time has elapsed. More of a failsafe, really.
fspec_mount_limit_min_time = 15; // frames elapsed before scaling minimum speed requirements kick in while moving toward an article or wall
fspec_mount_limit_coefficient = 0.12 // minimum speed requirement = this * gh_timer while moving toward an article or wall

gh_x_origin = 0;
gh_x_offset = 28; // offset for firing
gh_y_origin = -32;
gh_y_offset = -4; // offset for firing

// Drone vars
nspec_num_drones = 0;
nspec_drone_cd = 0
// Parachute vars
parachute_active = false;
parachute_stats = false;
vis_parachute_angle = 0;
vis_parachute_frame = 0;

// Grapple hook vars
gh_state = GRAPPLE_DISABLED;
gh_x = x;
gh_y = y;
gh_aim_obj = noone;
gh_target = noone;
gh_hsp = 0;
gh_vsp = 0;
gh_end_hsp = 0;
gh_stored_hsp = 0;
gh_stored_vsp = 0;
gh_dir = spr_dir;
gh_timer = 0;
gh_hitbox = noone;
gh_hboxless = false; // used for safety on kragg/ranno articles

use_stored_vsp = false;

// Air limits
uspec_used = false;
fspec_used = false;
dspec_used = false;

// Other vars

dspec_article_cooldown = 0;
dspec_max_article_cooldown = 90;
dspec_parry_article_cooldown = 500;

button_obj = noone; // Mainly used for rune K, can be either article1 or 2

ustrong_smear = noone;
dstrong_boom = noone;

dstrong_parried_time = -1;
dstrong_cancel_parry_stun = 0;

taunt_loops = 0;

plat_active = 0;




// Colors
is_default = (get_player_color(player) == 0 || get_player_color(player) == 13);
is_ea = (get_player_color(player) == 6);

// Runes
rune_a_alpha = 1;
if (has_rune("A")) {
    rune_a_handler = instance_create(x, y, "obj_article3");
    rune_a_handler.state = 10;
}


// Galaxy sfx
hit_last_frame = array_create(noone, 20);
num_hit_last_frame = 0;
stinger_cooldown = 0;

// See also: parachute-labeled stats under "aerial movement stats"

// For USpec parachute:
strap_anim_list = [
    "bair",
    "dair",
    "doublejump",
    "fair",
    "jump",
    "nair",
    "nspecial_air",
    "uair",
    "fspec_air",
    "dspecial_air"
    // fspec swing handled manually anyway, so...
    ];


//                           ATTACK/WINDOW INDEXES                            //

/*
- free attack data indexes technically start at 24 up to 99, went with 30 to
make it look cleaner
*/

// might add ai indexes here later so you can tell the cpu when to use certain
// moves

/*
- free window data indexes technically start at 61 up to 99, went with 70 to
make it look cleaner
*/

// adds looping frames to an attack's charge window, while charging
AG_WINDOW_HAS_CHARGE_LOOP       = 70;   // if the window has a charge anim loop
AG_WINDOW_CHARGE_FRAME_START    = 71;   // anim frame of the start of the loop
AG_WINDOW_CHARGE_FRAMES         = 72;   // total number of frames
AG_WINDOW_CHARGE_LOOP_SPEED     = 73;   // speed of the loop animation

AG_WINDOW_CAN_WALLJUMP          = 77;   // if the player can walljump out of the
                                        // window



//                               HITBOX INDEXES                               //

/*
- free hitbox data indexes technically start at 54 up to 99, went with 60 to
make it look cleaner
*/

HG_HAS_LERP                     = 64;   // if the hitbox has lerp properties
HG_LERP_PERCENT                 = 65;   // how much pull the lerp has
                                        // from 0.0~1.0
HG_LERP_POS_X                   = 66;   // x position that the lerp pulls to
HG_LERP_POS_Y                   = 67;   // y position that the lerp pulls to


// if you're making custom indexes for your character, I recommend starting at
// 80 or 90, as slots up to 79 may be filled in future updates

/*
if you're using multihit properties, be sure to check if the projectile goes 
through enemies, otherwise it might just despawn on hit
*/


//=-(                    ~~//** CUSTOM VARIABLES **//~~                    )-=//

//                               PRE-SET STUFF                                //

// animation stuff [TODO: these are from template, check if they're in use]
idle_air_loops                  = false;// whether idle air has a looping 
                                        // animation or not
idle_air_looping                = false;// checks if the loop is happening
jump_frames                     = 5;    // how many animation frames the jump 
                                        // has, the loop starts there
idle_air_loop_speed             = 0.25;  // animation speed of the loop
idle_air_platfalls              = false; // if the character has an animation for
                                        // dropping from platforms
idle_air_platfalling            = false;// checks if platfall is happening
idle_air_platfall_speed         = 0.25; // platfall animation speed
idle_air_platfall_frames        = 7;    // how many frames the platfall anim has
                                        // when finished goes to air idle
dash_moonwalks                  = false; // if the character has a moonwalk anim

//=-(                     ~~//** CUSTOM EFFECTS **//~~                     )-=//

//                           --sound effects--                                //
//a

//                           --visual effects--                               //
// full vfx

fx_ustrong1                     = hit_fx_create(sprite_get("ustrong_vfx"), 12);
//fx_ustrong2                     = hit_fx_create(sprite_get("ustrong_vfx2"), 12);


fx_dstrong                      = hit_fx_create(sprite_get("dstrong_vfx"), 20);
fx_medium_circle1               = hit_fx_create(sprite_get("fx_medium_circle1"),20);

fx_parry_flash                  = hit_fx_create(asset_get("new_dodge_spr"), 26);

hfx_null                        = hit_fx_create(sprite_get("null"), 1);

hfx_fstrong1                    = hit_fx_create(sprite_get("fstrong_hfx1"), 16);
hfx_fstrong2                    = hit_fx_create(sprite_get("fstrong_hfx2"), 16);

vfx_dspec_button                = hit_fx_create(sprite_get("vfx_dspec_button"), 14);
vfx_dspec_explode               = hit_fx_create(sprite_get("dspec_explode"), 16);
vfx_dspec_explode_gr            = hit_fx_create(sprite_get("dspec_explode_gr"), 16);

//custom intro
AT_INTRO_1 = 2; //the attack index the intro uses, 1 doesn't overwrite any other attack
AT_INTRO_2 = 3; //the attack index the intro uses, 2 doesn't overwrite any other attack

// NOTE !!!
// while the vfx tool is still a work in progress, I recommend keeping it simple
// and not doing too many effect variants like this, it'll be an absolute hassle 
// to work with otherwise

// plus there's some effects here that I'm gonna remove, and others that need to
// be polished, so you should probs delete those and their sprites and make your
// own

// vfx parts for spawning multiple at a time, for more complex visuals
/*
fx_small_circle1                = hit_fx_create(sprite_get("fx_small_circle1"),14);
fx_small_circle2                = hit_fx_create(sprite_get("fx_small_circle2"),14);
fx_small_circle3                = hit_fx_create(sprite_get("fx_small_circle3"),14);
fx_small_circle4                = hit_fx_create(sprite_get("fx_small_circle4"),14);

fx_small_circle_angled1         = hit_fx_create(sprite_get("fx_small_circle_angled1"),14);

fx_medium_circle1               = hit_fx_create(sprite_get("fx_medium_circle1"),14);

fx_medium_circle_angled1        = hit_fx_create(sprite_get("fx_medium_circle_angled1"),14);
fx_medium_circle_angled2        = hit_fx_create(sprite_get("fx_medium_circle_angled2"),14);

fx_large_circle1                = hit_fx_create(sprite_get("fx_large_circle1"),16);

fx_large_circle_angled1         = hit_fx_create(sprite_get("fx_large_circle_angled1"),16);

fx_small_flare1_0               = hit_fx_create(sprite_get("fx_small_flare1_0"),8);
fx_small_flare1_1               = hit_fx_create(sprite_get("fx_small_flare1_1"),8);
fx_small_flare1_2               = hit_fx_create(sprite_get("fx_small_flare1_2"),8);
fx_small_flare1_3               = hit_fx_create(sprite_get("fx_small_flare1_3"),8);

fx_small_spark1_0               = hit_fx_create(sprite_get("fx_small_spark1_0"),10);
fx_small_spark1_1               = hit_fx_create(sprite_get("fx_small_spark1_1"),10);
fx_small_spark1_2               = hit_fx_create(sprite_get("fx_small_spark1_2"),10);
fx_small_spark1_3               = hit_fx_create(sprite_get("fx_small_spark1_3"),10);

fx_small_centershine            = hit_fx_create(sprite_get("fx_small_centershine"),10);

fx_small_shine0                 = hit_fx_create(sprite_get("fx_small_shine0"),8);
fx_small_shine1                 = hit_fx_create(sprite_get("fx_small_shine1"),8);
fx_small_shine2                 = hit_fx_create(sprite_get("fx_small_shine2"),8);
fx_small_shine3                 = hit_fx_create(sprite_get("fx_small_shine3"),8);

fx_small_flashlight1            = hit_fx_create(sprite_get("fx_small_flashlight1"),14);

// arrays with vfx parts, useful if you want to draw a random one
fx_array_circle_small           = [
                                fx_small_circle1,
                                fx_small_circle2,
                                fx_small_circle3,
                                fx_small_circle4,
                                ];

fx_array_circle_medium          = [
                                fx_medium_circle1
                                ];

fx_array_circle_large           = [
                                fx_large_circle1
                                ];

fx_array_circle_small_angled    = [
                                fx_small_circle_angled1
                                ];

fx_array_circle_medium_angled   = [
                                fx_medium_circle_angled1,
                                fx_medium_circle_angled2,
                                ];

fx_array_circle_large_angled    = [
                                fx_large_circle_angled1
                                ];

fx_array_flare                  = [
                                fx_small_flare1_0,
                                fx_small_flare1_1,
                                fx_small_flare1_2,
                                fx_small_flare1_3
                                ];
                                
fx_array_spark                  = [
                                fx_small_spark1_0,
                                fx_small_spark1_1,
                                fx_small_spark1_2,
                                fx_small_spark1_3
                                ];

fx_array_shine                  = [
                                fx_small_shine0,
                                fx_small_shine1,
                                fx_small_shine2,
                                fx_small_shine3
                                ];

fx_array_flashlight             = [
                                fx_small_flashlight1
                                ];
*/



//=-(                      ~~//** BASE STATS **//~~                        )-=//

//                              --hurtboxes--                                 //
hurtbox_spr                     = asset_get("ex_guy_hurt_box"); //wow thats convenient
crouchbox_spr                   = sprite_get("crouchbox");
air_hurtbox_spr                 = -1;
hitstun_hurtbox_spr             = -1;


//                  --animation speeds + %-arrow offset--                     //
base_char_height                = 46;
char_height                     = base_char_height
idle_anim_speed                 = 0.1;
crouch_anim_speed               = 0.1;
walk_anim_speed                 = 0.125;
dash_anim_speed                 = 0.3;
pratfall_anim_speed             = 0.25;

//                      --grounded movement stats--                           //
walk_speed                      = 4.25;
walk_accel                      = 0.2;
walk_turn_time                  = 6;
crawl_speed                     = 3;
crawl_accel                     = 0.15;
crawl_turn_time                 = 6;
initial_dash_time               = 8;
initial_dash_speed              = 9;
dash_speed                      = 8.5;
dash_turn_time                  = 6;
dash_turn_accel                 = 1.5;
dash_stop_time                  = 4;
dash_stop_percent               = 0.35;
base_ground_friction            = 0.9;
reduced_ground_friction         = 0.4;
ground_friction                 = base_ground_friction;  // Changes dynamically for fspec slides
moonwalk_accel                  = 1.4;

//                       --aerial movement stats--                            //
jump_start_time                 = 5;
base_jump_speed                 = 14;
parachute_jump_speed            = 10;    // only comes into play on sliding fspec, so can be a little strong
jump_speed                      = base_jump_speed;
base_sh_speed                   = 7.5;
parachute_sh_speed              = 4;
short_hop_speed                 = base_sh_speed;
base_djump_speed                = 14;
parachute_djump_speed           = 9;
djump_speed                     = base_djump_speed;

leave_ground_max                = 7;
max_jump_hsp                    = 8;
air_max_speed                   = 6;
jump_change                     = 3;

base_air_accel                  = 0.2;
parachute_air_accel             = 0.3;
air_accel                       = base_air_accel;
prat_fall_accel                 = 0.85;
air_friction                    = 0.02;

max_djumps                      = 1;
double_jump_time                = 25;

walljump_hsp                    = 7;
walljump_vsp                    = 11;
walljump_time                   = 20;

base_max_fall                   = 13;
base_fast_fall                  = 16;
base_parachute_fall             = 4;
max_fall                        = base_max_fall;
fast_fall                       = base_fast_fall;
gravity_speed                   = 0.7;
base_gravity_speed              = gravity_speed;
parachute_gravity_speed         = 0.3;
hitstun_grav                    = 0.51;


//                    --character knockback adjustment--                      //
/* 
- higher num = 'lighter' character; 
- lower num = 'heavier' character 
*/
knockback_adj                   = 1.15;

//                           --landing stats--                                //
land_time                       = 4; 
prat_land_time                  = 10;
wave_land_time                  = 8;
wave_land_adj                   = 1.35;
wave_friction                   = 0.4;

//                          --animation frames--                              //
crouch_startup_frames           = 3;
crouch_active_frames            = 1;
crouch_recovery_frames          = 2;

// Crouch Animation Start/End Customization by @SupersonicNK
crouch_start_time = 6; // time in frames it takes for crouch start to stop.
crouch_end_time = 6; // time in frames it takes for crouch stop to stop. interruptable.
// Custom Crouch Internal Variables (managed by the code)
ccrouch_playing = false; // whether the custom crouch animation is playing
ccrouch_phase = 0; // 0 = start, 1 = loop, 2 = uncrouch
ccrouch_timer = 0; // timer for the crouch anim
ccrouch_percent = 0; // 0-1, used to calculate what frame to use when rapidly crouching and uncrouching

dodge_startup_frames            = 1;
dodge_active_frames             = 1;
dodge_recovery_frames           = 2;

tech_active_frames              = 1;
tech_recovery_frames            = 1;

techroll_startup_frames         = 2;
techroll_active_frames          = 2;
techroll_recovery_frames        = 2;


air_dodge_startup_frames        = 2;
air_dodge_active_frames         = 2;
air_dodge_recovery_frames       = 3;

roll_forward_startup_frames     = 2;
roll_forward_active_frames      = 2;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 2;
roll_back_active_frames         = 2;
roll_back_recovery_frames       = 2;

//                        --defensive action speed--                          //
techroll_speed                  = 10;

air_dodge_speed                 = 7.5;

roll_forward_max                = 9; 
roll_backward_max               = 9;

//                      --base movement sound effects--                       //
land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_bg( sprite_get("perry_victorybg") )
set_victory_portrait( sprite_get("portrait") )
set_victory_theme( sound_get("perry_victory") )

//                       --ranno bubble visual offset--                       //
bubble_x                        = 0;
bubble_y                        = 8;

