//init.gml

////////////////////////////////////////////////////// CHARACTER GENERAL VARIABLES //////////////////////////////////////////////////////

/* STAT NOTES
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

// STAT NAME		    VALUE                   BASECAST RANGE      NOTES

// Physical size
char_height             = 56;                   //                  the height of the overhead hud - the arrow with your name and %
//knockback_adj         = 1.2;		            // 0.9  -  1.2

// Ground movement
//walk_speed            = 1;		            // 3    -  4.5      value is dynamic for sonic (1 - 5)
//walk_accel            = 0.2;		            // 0.2  -  0.5
walk_turn_time          = 6;		            // 6
initial_dash_time       = 10;		            // 8    -  16       zetterburn's is 14
initial_dash_speed      = 6;		            // 4    -  9
//dash_speed            = 5;		            // 5    -  9        value is dynamic for sonic (5 - 9)
//dash_turn_time        = 14;		            // 8    -  20
dash_turn_accel         = 1;		            // 0.1  -  2
//dash_stop_time        = 10;		            // 4    -  6        zetterburn's is 4
//dash_stop_percent     = 0.5;		            // 0.25 -  0.5
//ground_friction       = 0.5;		            // 0.3  -  1
//moonwalk_accel        = 1.3;		            // 1.2  -  1.4

// Air movement
//leave_ground_max      = 8;                    // 4    -  8
//max_jump_hsp          = 8;                    // 4    -  8
//air_max_speed         = 3;  		            // 3    -  7
jump_change             = 3;		            // 3
//air_accel             = 0.3;		            // 0.2  -  0.4
prat_fall_accel         = 0.85;		            // 0.25 -  1.5
air_friction            = 0.04;		            // 0.02 -  0.07
//max_fall              = 9;		            // 6    -  11
//fast_fall             = 14;		            // 11   -  16
gravity_speed           = 0.5;		            // 0.3  -  0.6
hitstun_grav            = 0.5;		            // 0.45 -  0.53

// Jumps
jump_start_time         = 5;		            // 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
//jump_speed            = 10;		            // 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 5;		            // 4    -  7.4
//djump_speed           = 10;		            // 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = 0;		            // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time    = 0;		            //                  the amount of time that   djump_accel   is applied for
max_djumps              = 1;		            // 0    -  3        the 0 is elliana because she has hover instead
//walljump_hsp          = 5;		            // 4    -  7
//walljump_vsp          = 9;		            // 7    -  10
//land_time             = 4;		            // 4    -  6
//prat_land_time        = 16;		            // 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
//wave_friction         = 0.07;		            // 0    -  0.15
//wave_land_time        = 6;		            // 6    -  12
//wave_land_adj           = 1.3;		            // 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 7.5;		            // 7    -  11
roll_backward_max       = roll_forward_max;		// 7    -  11       always the same as forward
air_dodge_speed         = 7.5;		            // 7.5  -  8
techroll_speed          = 8;		            // 8    -  11



// Animation Info
// Misc. animation speeds
idle_anim_speed         = 0.15;
crouch_anim_speed       = 0.1;
//walk_anim_speed       = 0.2;
//dash_anim_speed       = 0.5;
pratfall_anim_speed     = 0.25;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;
//a dan moment makes it so the last frame needs to be doubled, the strip actually has 3 frames but the last 2 are the same

// Jumps
//double_jump_time      = 17;		// 24   -  40
//walljump_time         = 20;		// 18   -  32
wall_frames             = 2;

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 3;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 4;
roll_back_startup_frames        = roll_forward_startup_frames;
roll_back_active_frames         = roll_forward_active_frames;
roll_back_recovery_frames       = roll_forward_recovery_frames;

// Tech
tech_active_frames      = 1;
tech_recovery_frames    = 2;

// Tech roll
techroll_startup_frames     = roll_forward_startup_frames;
techroll_active_frames      = roll_forward_active_frames;
techroll_recovery_frames    = roll_forward_recovery_frames;


// Hurtbox sprites
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr


// Victory
set_victory_bg(sprite_get("winscreen")); // sprites\winscreen.png - name doesn't matter, the size has to be 480 x 270 pixels big, usually has this puple filter on it
set_victory_theme(sound_get("mus_victory")); // sounds\mus_victory.ogg - leave some silence in the file after the victory theme finishes

// Movement SFX
land_sound          = sound_get("sfx_land");
landing_lag_sound   = sound_get("sfx_land_lag");
waveland_sound      = sound_get("sfx_waveland");
jump_sound          = sound_get("sfx_jump");
djump_sound         = sound_get("sfx_djump");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

small_djump = false;                // setting this to true gives characters the smaller double jump vfx from wrastor

normal_wait_time = 300;             // if wait_time is over 0, staying in idle for the amount of frames specified the character will do a wait animation
wait_length = 286;                  // this values sets how long the character is animated for in the wait animation
wait_sprite = sprite_get("wait");   // sets the wait animation sprite strip
wait_time = normal_wait_time;
match_time = [0, 0];
waiting_time = 0;

//////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES ////////////////////////////////////////////////////////

debug_display = 0; //get_match_setting(SET_PRACTICE); //0 = no display | 1 = draw_hud display (will display in practice mode by default with this setup)
hbox_view = get_match_setting(SET_HITBOX_VIS);
attack_names = [ //has the names of all the attacks
    "0",
    "AT_JAB",
    "2 (custom intro default)",
    "3",
    "AT_FTILT",
    "AT_DTILT",
    "AT_UTILT",
    "AT_FSTRONG",
    "AT_DSTRONG",
    "AT_USTRONG",
    "AT_DATTACK",
    "AT_FAIR",
    "AT_BAIR",
    "AT_DAIR",
    "AT_UAIR",
    "AT_NAIR",
    "AT_FSPECIAL",
    "AT_DSPECIAL",
    "AT_USPECIAL",
    "AT_NSPECIAL",
    "AT_FSTRONG_2",
    "AT_DSTRONG_2",
    "AT_USTRONG_2",
    "AT_USPECIAL_GROUND",
    "AT_USPECIAL_2",
    "AT_FSPECIAL_2",
    "AT_FTHROW",
    "AT_UTHROW",
    "AT_DTHROW",
    "AT_NTHROW",
    "AT_DSPECIAL_2",
    "AT_EXTRA_1",
    "AT_DSPECIAL_AIR",
    "AT_NSPECIAL_2",
    "AT_FSPECIAL_AIR",
    "AT_TAUNT",
    "AT_TAUNT_2",
    "AT_EXTRA_2",
    "AT_EXTRA_3",
    "39",
    "40 (munophone default)",
    "AT_NSPECIAL_AIR",
    "42",
    "43",
    "44",
    "45",
    "46",
    "47",
    "48",
    "49 (final strong default)"
];

tempvar = 0; //repeat loops var
window_end = 0; //the last frame (including whifflag if it's there)
window_last = 0; //AG_NUM_WINDOWS
window_cancel_time = 0; //AG_WINDOW_CANCEL_FRAME
strong_pressed = 0;
hit_window = 0;

my_alt = get_player_color(player); //alt_cur is used for visual changes, my_alt is used for functional changes
init_shader();

playtest_active = false;
with (oTestPlayer) playtest_active = true;

is_dodging = false;
is_attacking = false;
game_time = 0; //checks get_gameplay_time() so we don't need to call the function all the time

//custom intro
AT_INTRO = 2; //the attack index the intro uses, 2 doesn't overwrite any other attack

cur_loop_sound = noone; //you can use this to store a sound instance that you can silence later

plat_speed = 0.2; //controls the respawn platform's animation speed without it relying on the player's animation

//custom window loop time (NOTE: this is a custom index that is created manually)
AG_WINDOW_LOOP_TIMES = 37;          //attack grid index, the number you put next to it is the amount to loop (starts at 0, includes written value)
AG_WINDOW_LOOP_REFRESH_HITS = 38;   //if true, it will refresh hitboxes so they can hit again
window_loops = 0;                   //decides the amount of times to loop
//usage: set_window_value(attack, window, AG_WINDOW_LOOP_TIMES, #loops)

AG_MUNO_ATTACK_EXCLUDE = 80;

/////////////////////////////////////////////////////// CUSTOM HITBOX COLOR SYSTEM //////////////////////////////////////////////////////

//Custom Hitbox Colors System (by @SupersonicNK)
// USAGE: set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[#])
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
//this array is for the hitbox color setup
hb_color[0] = 0;        //0 makes it the default red
hb_color[1] = $00FFFF;  //any color hex value works ($BBGGRR), using this one for sweetspots
hb_color[2] = $00FF00;  //rainbow ring collect

////////////////////////////////////////////////////// CHARACTER SPECIFIC VARIABLES //////////////////////////////////////////////////////

//synced var settings
var tmp_sync_vars = get_synced_var(player);
tempvar = 0;
repeat (2)
{
    var shift = (tempvar*4);
    synced_vars[tempvar] = tmp_sync_vars >> shift & 15;
    tempvar ++;
}

temp_O = array_create(array_length(static_colorO), 0);
temp_B = array_create(array_length(static_colorB), 0);

was_free = free;
is_bar_sonic = true;
force_vfx_depth = 0;
hugging_wall = false;
exist_timer = 0;
hit_player_lock = 0;

sonic_suicide = false; //outta here check
total_players = 0;
active_player_slots = [];

//fun alt
secret_active = (get_player_name(player) == "461225");

set_up_super_colors = synced_vars[1] && alt_cur != 20 && !secret_active; //if true, it will let sonic set up the super form colors instead
uses_super_sprites = false; //applies the super skin
used_super_sprites = false; //checks if the super sprites apply or not so it checks for 1 frame
uses_super_colors = set_up_super_colors && (was_reloaded || playtest_active); //applies the super sonic colors regardless of if sonic has a super form or not

hurt_rot_angle = 0; //basically spr_angle but doesn't forcefully gets reset
hurt_rot_degrees = 60; //the degrees to spin the sprite
hurt_rot_time = 2; //the time between rotations

new_hsp = 0;
new_vsp = 0;
keep_air_speed = 0;

enemy_count = 0;
enemy_invince_check = [99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99]; //i use 99 as my unset value
enemies_all_invince = false; //if true, sonic will not lose his boost meter to auto depletion

//TRICK MECHANIC
artc_trickring = noone;
can_spawn_trick_ring = true; //actually lets sonic throw out the ring

trick_ring_hue = 0; //controls the animation of the colors
trick_ring_value = 255;
trick_ring_saturation = 150;
trick_ring_colors = 7; //reffers to color spacing
//do_trickring_shader = false; //unused (for now?)

trick_input_time = 0;
trick_input_set = 30;
prev_trick = -1;
cur_trick = -1;
next_trick = -1;
//0 = neutral
//1 = up
//2 = right
//3 = down
//4 = left
trick_spam_penalty = -1;
trick_spam_penalty_time = 0;
trick_spam_penalty_set = 180;
trick_spam_penalty_mult = 0.2;

//BOOST MODE MECHANIC
boost_cur = 0;
boost_max = 300;
boost_mode = false;

test_boost = false; //debug boost
boost_trick_delay = 0;
boost_trick_delay_set = 60;

//boost trick math:
boost_combotrick_mult = [30, 40];   //multiplier added on ending a combo (with trick)       //6, 7
boost_comboend_mult = [20, 30];     //multiplier added on ending a combo (without trick)    //4, 5
boost_comboend_hit_mult = [10, 20]  //multiplier added on ending a combo (when sonic is hit)
boost_hitgain_mult = [0.75, 1.5];   //multiplier when hitting a single hit                  //2, 2
boost_parrygain = [60, 80];

boost_decrease_rate = [6, 3];       //passive decrease (divided by 60)                      //4, 2
boost_hitloss_mult = [0.5, 1.5];    //multiplier reducing when getting hit                  //0, 1
boost_parryloss = [20, 40];


walk_spd_mult = 0; //acceleration on walk
dash_spd_mult = 0; //acceleration on dash
min_walk_spd = 0; //slowest walk speed
min_dash_spd = 0; //speed where sonic transitions from walk to dash
max_dash_spd = 0; //maximum dash speed
//keep in mind some of the stats that change also change based on sonic's speed
//      variable                norm    boost   super
boost_stat_changes = [
    ["knockback_adj",           1.1,    1.2,    0.9],
    ["walk_accel",              0.2,    1,      "B"],
    ["ground_friction",         0.75,   0.5,    "B"],
    ["moonwalk_accel",          1.3,    2,      "B"],
    ["air_max_speed",           5,      8,      "B"],
    ["air_accel",               0.3,    0.4,    0.6],
    ["fast_fall",               14,     20,     "B"],
    ["land_time",               4,      6,      4],
    ["prat_land_time",          16,     24,     16],
    ["jump_speed",              10,     "",     12],
    ["djump_speed",             10,     "",     12],
    ["double_jump_time",        17,     "",     20],
    ["walljump_hsp",            5,      "",     8],
    ["walljump_vsp",            9,      "",     12],
    ["walljump_time",           20,     "",     24],
    ["max_fall",                9,      "",     11],
    ["wave_land_adj",           1.3,    "",     1.8],
    //acceleration mechanic
    ["walk_spd_mult",           1.014,  1.022,  1.026],
    ["dash_spd_mult",           1.017,  1.025,  1.03],
    ["min_walk_spd",            1.5,    2,      3],
    ["min_dash_spd",            5,      7,      9],
    ["max_dash_spd",            9,      11,     15]
];
tempvar = 0;
repeat(array_length(boost_stat_changes)) //stat translator
{
    if (boost_stat_changes[tempvar][3] == "B") boost_stat_changes[tempvar][@ 3] = boost_stat_changes[tempvar][@ 2]; //this super value takes from the boost
    if (boost_stat_changes[tempvar][2] == "S") boost_stat_changes[tempvar][@ 2] = boost_stat_changes[tempvar][@ 3]; //this boost value takes from super
    if (boost_stat_changes[tempvar][3] == "") boost_stat_changes[tempvar][@ 2] = boost_stat_changes[tempvar][@ 1]; //value doesn't exist on super so it defaults to normal
    if (boost_stat_changes[tempvar][2] == "") boost_stat_changes[tempvar][@ 2] = boost_stat_changes[tempvar][@ 1]; //value doesn't exist on boost so it defaults to normal

    tempvar ++;
}

afterimage = {
    spr: sprite_index,
    img: image_index,
    xpos: x + draw_x,
    ypos: y + draw_y,
    dir: spr_dir,
    rot: spr_angle
};
aftimg_refresh_rate = 8;
cur_aftimg = 0;

prev_attack = [0, 0];

//COMBO MECHANIC
combo_hits = 0;
combo_timer = 0;
combo_timer_full = 0;
combo_time_gain_hit = 45;
combo_time_gain_big = 90;
comboing = false;
trick_combo_end = false;
hurt_combo_end = false;

cur_combo_text = -1;
combo_text_display_time = 0;
combo_boost_display = [];
combo_display_time = [];
combo_display_time_max = 120;
combo_display_hits = [3, 5, 7, 9, 11, 13, 15, 17, 19, 21];
//3, 5, 7, 9, 10, 11, 12, 13, 14, 15 - if it's not common enough to have a 15 hit combo maybe the combos should go more like this

//attack specific
dattack_cancel_time_max = 15;
dattack_cancel_time = 0;

dstrong_hsp = [1.5, 35];
dstrong_loops = 0;
dstrong_loops_max = 2;
dstrong_tornado_xscale = [noone, noone]; //front, back
dstrong_tornado_hbox = noone;
check_can_hit = array_create(20, 1);
dstrong_size_offset = 0;
dstrong_drawn_size_offset = 1.7;

play_nair_fx = false;
nair_fx_time = -1;

fair_fx_on_landlag = false;

can_nspec = true;
homing_target = noone;
prev_homing_target = noone;
homing_values = [0, 0]; //distance, angle
homing_range = [60, -20]; //angle cut limit (up), angle cut limit (down)
homing_dist_set = 180;
homing_dist = homing_dist_set;
//negative numbers go behind sonic
var average = ((cur_colors[1][@ 0] + cur_colors[1][@ 1] + cur_colors[1][@ 2]) / 3);
nspec_reticle_line_col = (average > 128 ? [0, 0, 0] : [255, 255, 255]);
nspec_clash_id = noone;
nspec_early = false;
reticle_spr = sprite_get("fx_nspec_reticle");

fspec_speed = 0;
fspec_supercharge = 0;
fspec_supercharge_set = 2;
can_fspec = true;

dspec_jumps = 0;
dspec_jumps_max = 3;

//rune stuff
//sonic wave shot
runeA_lockout = 0;
runeA_lockout_set = 20;
runeA_rng_chance = 3;
runeA_proj_speed = 8;

//super sonic bolt of lightning
runeB_bolting = false;
runeB_hbox = noone;
runeB_hitlock = 0
runeB_hitlock_set = 10;
if (has_rune("B")) //rune B stat changes
{
    tempvar = 0;
    repeat (array_length(boost_stat_changes))
    {
        if (boost_stat_changes[tempvar][@ 0] == "walk_spd_mult") boost_stat_changes[tempvar][@ 1] = boost_stat_changes[tempvar][@ 2];
        if (boost_stat_changes[tempvar][@ 0] == "dash_spd_mult") boost_stat_changes[tempvar][@ 1] = boost_stat_changes[tempvar][@ 2];
        if (boost_stat_changes[tempvar][@ 0] == "min_walk_spd") boost_stat_changes[tempvar][@ 1] = boost_stat_changes[tempvar][@ 2];
        if (boost_stat_changes[tempvar][@ 0] == "min_dash_spd") boost_stat_changes[tempvar][@ 1] = boost_stat_changes[tempvar][@ 2];
        if (boost_stat_changes[tempvar][@ 0] == "max_dash_spd") boost_stat_changes[tempvar][@ 1] = boost_stat_changes[tempvar][@ 2];
        tempvar ++;
    }
}

//spin jump
runeC_spinjump = false;
runeC_hbox = noone;
runeC_hitlock = 0
runeC_hitlock_set = 30;

//trick spam rune
trick_rune_active = has_rune("G");
trick_rune_count = 0;
doing_trick_combo_chain = false;

has_multihome_rune = has_rune("H");
if (has_multihome_rune)
{
    multihome_limit = 0; //it should start as 1 and increase up to 3
    multihome_limit_max = 3;
    multihome_targets_temp = [];
    multihome_grid = ds_grid_create(2, 0);
    next_multihome_target = 0; //scrolls between the grid items avoiding garbage data
    homing_dist_rune = 400;
}

//sonic overdrive (final smash)
has_blast = has_rune("L");
can_teamblast = false;
blast_cur = 0;
blast_max = 200;
blast_meter_ready_img = 1;
blast_meter_go_down = false; //for the weird anim it does
blast_meter_anim_timer = 0;
blast_meter_anim_length = 20;
blast_post_cur = 200; //post final smash effect - sonic stops losing boost in the duration it's active
blast_post_deplete_time = 10 * 60; //10 seconds
blast_post_timer = 0;

fs_bg_effect = noone;
start_fs_x = x;
start_fs_y = y;
prev_fs_x = x;
prev_fs_y = y;
fs_blast = [x, y, 2, 16, 0, 16]; //pos x, pos y, min, max, timer, timer set
fs_timer_offset = 0;
fs_trapped_player = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
//ease types:
/*
    //  linear
    //  in_circ     out_circ    in_out_circ
    //  in_cube     out_cube    in_out_cube
    //  in_expo     out_expo    in_out_expo
    //  in_quad     out_quad    in_out_quad
    //  in_quart    out_quart   in_out_quart
    //  in_sine     out_sine    in_out_sine
    //  in_back     out_back    in_out_back
*/
//destination x (offset from start_fs_x), destination y (offset from start_fs_y), easetype x, easetype y, end, overshoot x?, overshoot y?
//note: overshoot doesn't actually work lol

fs_anim_pos = [
    [7, -70, "", "", 0],
    [80, -48, "in_sine", "out_sine", 5],
    [100, -88, "out_sine", "in_sine", 12],
    [-100, -104, "in_out_sine", "out_sine", 25],
    [100, -200, "in_out_sine", "linear", 39],
    [-60, -210, "in_sine", "in_out_sine", 49],
    [-200, -130, "out_sine", "in_sine", 53],
    [-180, 0, "in_sine", "linear", 56],
    [-16, -200, "in_sine", "out_sine", 64],
    [140, 0, "out_sine", "in_sine", 72],
    [0, -100, "linear", "out_quad", 80],
    [-120, 0, "out_sine", "in_sine", 86],
    [-32, -64, "out_sine", "in_sine", 92],
    [-64, -120, "in_sine", "linear", 94],
    [32, -200, "in_sine", "out_quad", 100],
    [180, -100, "out_sine", "in_sine", 107],
    [15, 0, "linear", "out_quad", 115],
    [-140, -100, "out_sine", "in_sine", 120],
    [-48, -150, "in_sine", "out_sine", 126],
    [32, -64, "out_quad", "linear", 130],
    [160, 0, "in_sine", "out_sine", 133],
    [200, -32, "out_sine", "in_sine", 138],
    [-120, -180, "linear", "out_cube", 149],
    [-180, -160, "out_sine", "in_sine", 153],
    [-80, 0, "in_sine", "out_sine", 160],
    [-16, -250, "in_sine", "out_cube", 175],
    [0, 0, "out_sine", "in_sine", 190],
];

has_superform = has_rune("M");
if (has_superform) set_up_super_colors = false;

is_super = false;
super_transform_time = 0; //transformation state timer just in case
super_time = 0;
super_col_lerp_time = 0;
super_col_lerp_time_max = 0; //set in super_transform.gml
super_glow = 0;
super_glow_max = 60;
super_glow_up = true;
switch (alt_cur) //glow intensity setup - it just adds this much color on all 3 color channels
{
    default: super_glow_intensity = 60; break;
    case 4: super_glow_intensity = 40; break; //amy
    case 1: super_glow_intensity = 20; break; //eggman
    case 13: super_glow_intensity = -40; break; //abyss
    case 5: case 14: case 20: super_glow_intensity = 0; break; //chaos, gameboy, dark sonic
}
rings_cur = 0;
rings_max = 999;
//ring_life_caps_reached = [false, false, false, false, false, false, false, false, false];

super_theme_loop_started = false;
super_theme_loop_start_set = 2.835;
super_theme_loop_start = super_theme_loop_start_set;
super_theme_playing = false;

ring_col = [$ffffff, $8281fd];
ring_col_output = $ffffff;
ring_col_time = 0;
ring_col_time_max = 60;
ring_col_up = true;
ring_combo_gain = [1, 5, 10, 15, 20, 25, 30, 40, 50, 100];


bar_ss_array = [noone, noone];
with (oPlayer) bar_ss_array = other.bar_ss_array;
super_theme = noone;


//visual effects
//set_hit_particle_sprite(1-6, sprite_get("sprite")); //create hit particles

intro_plane_img = 0;
intro_plane_x = 0;
intro_plane_y = 0;

fx_windhit = [
    hit_fx_create(sprite_get("fx_windhit1"), 24),
    hit_fx_create(sprite_get("fx_windhit2"), 32)
];
//fx_boost_active = hit_fx_create(sprite_get("fx_boost_active"), 24);
fx_airdash_trail = hit_fx_create(sprite_get("fx_airdash_trail"), 32);
fx_airdash_aura = [
    hit_fx_create(sprite_get("fx_airdash_aura1"), 12),
    hit_fx_create(sprite_get("fx_airdash_aura2"), 10),
    hit_fx_create(sprite_get("fx_airdash_aura2"), 10) //bolt of lightning
];
airdash_stats = [1, 0, 0, -1]; //type, x offset, y offset, time

tornado_spr = sprite_get("fx_dstrong_tornado");
if (!secret_active) switch (alt_cur) //swaps tornado's color to a different color for certain alts
{
    case 6: case 7: case 8: case 11: case 12: case 13: case 14: case 22:
        tornado_spr = sprite_get("fx_dstrong_tornado_alt");
        break;
}
fx_fair = hit_fx_create(sprite_get("fx_fair"), 16);

fx_sparkle = hit_fx_create(sprite_get("fx_sparkle"), 12);
fx_trickring_col = hit_fx_create(sprite_get("fx_trickring_col"), 18);
fx_trickring_dirspark = hit_fx_create(sprite_get("fx_trickring_dirspark"), 24);
fx_trickring_circspark = hit_fx_create(sprite_get("fx_trickring_circspark"), 24);

fx_fs_elecring = hit_fx_create(sprite_get("fx_fs_elecring"), 16);
fx_fs_charge = hit_fx_create(sprite_get("fx_fs_charge"), 12);
fx_fs_charge_afterimage = hit_fx_create(sprite_get("fx_fs_charge_afterimage"), 16);

fx_runeD_charge = hit_fx_create(sprite_get("fx_runeD_charge"), 12);
fx_runeD_charge_afterimage = hit_fx_create(sprite_get("fx_runeD_charge_afterimage"), 16);

fx_emeralds = hit_fx_create(sprite_get("fx_emeralds"), 27);


//used to make certain projectiles not get recolored
if (has_rune("F") || has_superform)
{
    start_shader_artc = instance_create(-99999, -99999, "obj_article3");
    start_shader_artc.start_shader = true;
    start_shader_artc.depth = -8;

    if (has_superform) //repurposing the shader article to play the super sonic music too
    {
        start_shader_artc.super_theme_player = true;
        start_shader_artc.x = view_get_xview() + view_get_hview()/2;
        start_shader_artc.t = view_get_yview() + view_get_wview()/2;
    }

    end_shader_artc = instance_create(-99999, -99999, "obj_article3");
    end_shader_artc.start_shader = false;
    end_shader_artc.depth = -10;
}


//misc
plat_stat = [
    [sprite_get("plat_windy"), 0.15],
    [sprite_get("plat_speed"), 0.1],
    [sprite_get("plat_cave"), 0.17],
    [sprite_get("plat_rush"), 0.22],
    [sprite_get("plat_seaside"), 0.15],
    [sprite_get("plat_canyon"), 0]
];
cur_plat = random_func(2, array_length(plat_stat), true); //random respawn platform

//lord X alt
is_fake_x = (my_alt == 16 && get_match_setting(SET_SEASON) == 3 && !playtest_active && !secret_active);
is_lord_x = is_fake_x;
if (is_lord_x) super_glow_intensity = 0;

if (is_fake_x)
{
    fake_x_idle_speed = 0.1;
    lord_x_decaying = false; //set up in update instead

    tempvar = 0;
    repeat (16)
    {
        lord_x_fake_col[tempvar] = [
            get_color_profile_slot_r(16, tempvar),
            get_color_profile_slot_g(16, tempvar),
            get_color_profile_slot_b(16, tempvar)
        ];
        tempvar ++;
    }

    lord_x_decay_col = [
        [[56, 0, 82], [56, 0, 82]],             //0
        [[120, 120, 175], [57, 38, 87]],        //1
        [[245, 30, 15], [245, 15, 134]],        //2
        [[240, 226, 163], [199, 167, 175]],     //3
        [[103, 103, 103], [20, 20, 20]],        //4
        [[255, 255, 255], [233, 207, 237]],     //5
        [[0, 0, 0], [0, 0, 0]] //6
    ];
    lord_x_decay_over = false;
    lord_x_decay_time = 0;
}

//dark sonic alt
is_darksonic = my_alt == 20 && !secret_active;

//UI setup
set_ui_element(UI_HUD_ICON, sprite_get("hud_sonic_norm"));
set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_sonic_hurt"));
set_ui_element(UI_OFFSCREEN, sprite_get("hud_sonic_offscreen"));
set_ui_element(UI_CHARSELECT, sprite_get("charselect"));
switch (alt_cur)
{
	case 5: //chaos
		set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_ex1"));
		set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small_ex1"));
		break;
	case 14: //early access
		set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_ex2"));
		set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small_ex2"));
		break;
	case 15: //milestone
		set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_ex4"));
		set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small_ex4"));
		break;
	default:
		set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait"));
		set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small"));
	case 16: //seasonal
		if (get_match_setting(SET_SEASON) == 3) //lord X
		{
			set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_ex3"));
            set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small_ex3"));
		}
		break;
}
if (secret_active)
{
    set_ui_element(UI_WIN_PORTRAIT, sprite_get("461225_portrait"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("461225_result_small"));
}

//voice clips
switch (synced_vars[0])
{
    default: lang = 0; break;
    case 1: lang = "en"; break;
    case 2: lang = "jp"; break;
}
reached_100_damage = false;
cur_voiceclip = [noone, noone];
voice_cooldown = 0;
voice_cooldown_set = 40; //cooldown for regular voiceclips
voice_cooldown_set_100 = 120; //cooldown for high % lines
combo_voiceline = 0;

//Ducky Stuff
load_shade = true; //This var will decide if the init should run, so you dont lag as much.
stats_old = 1; //HOLD STATE
stats_cur = 0; // CHECK IF BOOST OR SUPER :3
stats_state = 0; //IF 1 CHANGE STATS, IF NOT DONT RUN

//////////////////////////////////////////////////////// WORKSHOP COMPATIBILIES ////////////////////////////////////////////////////////

//compatibility with other characters
tails_grabbed_sonic = false;
tails_grab_player = noone;
tails_grab_cd = 0;
tails_grab_cd_set = 60;
tails_grab_anim_speed = 0.2;
can_djump_off_tails = true;

homing_dist_knux = 350;

//character detection - ricE tails and Spam knuckles
team_players = [[noone, "char"], [noone, "char"], [noone, "char"], [noone, "char"]];
with (oPlayer) if (get_match_setting(SET_TEAMS) && "url" in self && get_player_team(player) == get_player_team(other.player))
{
    if (url == 2545216686) other.team_players[player-1] = [self, "tails"]; //ricE tails
    if (url == 2924948563) other.team_players[player-1] = [self, "knuckles"]; //Spam knuckles (DE)
}

/////////////////////////////////////////////////////

//adventure mode hit_player redirect
hit_player_event = 13;

//draw_hud redirect
draw_hud_event = 14;

//greenwood stage compatibility
greenwood_cheer = 2;

//demon horde overwrite (USE WITH DRAW_HUD REDIRECT)
demonhorde_hud_overwrite = true;

if (set_up_super_colors) demonhorde_portrait = sprite_get("s_portrait");
demonhorde_custom_color = make_color_rgb(
    clamp(get_color_profile_slot_r(alt_cur, 1 + set_up_super_colors*8) + 70 * set_up_super_colors, 0, 255),
    clamp(get_color_profile_slot_g(alt_cur, 1 + set_up_super_colors*8) + 70 * set_up_super_colors, 0, 255),
    clamp(get_color_profile_slot_b(alt_cur, 1 + set_up_super_colors*8) + 70 * set_up_super_colors, 0, 255)
);

//mamizou compat
var eyewhite_col = make_color_rgb(cur_colors[6][@ 0], cur_colors[6][@ 1], cur_colors[6][@ 2]);
mamizou_transform_spr = sprite_get(eyewhite_col == c_white ? "mamizou_chao" : "mamizou_chao_alt");

//po & gumbo compat
pot_compat_variable = sprite_get("gumbo_food");
pot_compat_text = "Chilidog & Rings";

//kirby copy ability (2022 version)
TCG_Kirby_Copy = 9;

//final smash
fs_portrait_x = 148;
fs_char_portrait_y = 120;
switch (alt_cur)
{
    case 5: //chaos
        fs_char_portrait_override = sprite_get("portrait_ex1");
        break;
    case 14: //early access
        fs_char_portrait_override = sprite_get("portrait_ex2");
        break;
    case 15: //milestone
        fs_char_portrait_override = sprite_get("portrait_ex4");
        break;
    case 16: //seasonal - lord X
        if (get_match_setting(SET_SEASON) == 3) fs_char_portrait_override = sprite_get("portrait_ex3");
        break;
}
fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "custom";
fs_char_attack_index = 49;
fs_hide_meter = true; //it doesn't work for some reason???
fs_meter_y = 6; //because i can't hide it for some reason
fs_charge_mult = 0;
fs_portrait_updated = false;

//green flower zone
gfzsignspr = sprite_get("gfz_signpost");

//Miiverse posts
miiverse_post = sprite_get("miiverse");

//steve death messeges
steve_death_message = "Steve underestimated sonic speed.";

//soulbound conflict text
battle_text = (has_superform || set_up_super_colors) ? "* Pure chaos fills the air." : "* Smells like grass and chili.";

//dedede stadium
arena_title = (has_superform || set_up_super_colors) ? "Unifyier of Chaos" : "Hypersonic Hedgehog";
arena_short_name = "Sonic";

//dracula
dracula_portrait = sprite_get("dracula_port");
dracula_portrait2 = sprite_get("dracula_port_super");

//pokemon stadium
pkmn_stadium_front_img = sprite_get(set_up_super_colors ? "pokemon_front_super" : "pokemon_front");
pkmn_stadium_back_img = sprite_get(set_up_super_colors ? "pokemon_back_super" : "pokemon_back");
pkmn_stadium_name_override = "sonic";

//chaos emeralds
super_form_transformation_attack = 48;
super_form_music = has_superform ? noone : sound_get("mus_super_loop");
super_form_music_start = has_superform ? noone : sound_get("mus_super_intro");
super_form_music_length = super_theme_loop_start_set;
super_form_aura = make_color_rgb(
    clamp(cur_colors[8][0] + super_glow_intensity, 0, 255),
    clamp(cur_colors[8][1] + super_glow_intensity, 0, 255),
    clamp(cur_colors[8][2] + super_glow_intensity, 0, 255)
);

//wiimote
wiimote_compat_sprite = sprite_get("wiimote_sonic");

//funky stage boost deplete enabler
bar_sonic_boost_down = false;
switch(get_stage_data(SD_ID))
{
    case "2787758723": //mario world 1
    case "2634489514": //hallowflame
        bar_sonic_boost_down = true;
        break;
}
rank_override = -1; //overwrites the rank on specific stages, -1 means it acts as normal