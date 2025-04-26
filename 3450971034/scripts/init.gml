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
knockback_adj           = .93;		            // 0.9  -  1.2

// Ground movement
walk_speed              = 3.25;		            // 3    -  4.5
walk_accel              = 0.2;		            // 0.2  -  0.5
walk_turn_time          = 6;		            // 6
initial_dash_time       = 12;		            // 8    -  16       zetterburn's is 14
initial_dash_speed      = 7.05;		            // 4    -  9
dash_speed              = 6.7;		            // 5    -  9
dash_turn_time          = 14;		            // 8    -  20
dash_turn_accel         = 1.5;		            // 0.1  -  2
dash_stop_time          = 6;		            // 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.35;		            // 0.25 -  0.5
ground_friction         = 0.5;		            // 0.3  -  1
moonwalk_accel          = 1.3;		            // 1.2  -  1.4

// Air movement
leave_ground_max        = 6;		            // 4    -  8
max_jump_hsp            = 6;		            // 4    -  8
air_max_speed           = 3.5;  		            // 3    -  7
jump_change             = 3;		            // 3
air_accel               = 0.25;		            // 0.2  -  0.4
prat_fall_accel         = 1;		            // 0.25 -  1.5
air_friction            = 0.04;		            // 0.02 -  0.07
max_fall                = 9;		            // 6    -  11
fast_fall               = 16;		            // 11   -  16
gravity_speed           = 0.6;		            // 0.3  -  0.6
hitstun_grav            = 0.5;		            // 0.45 -  0.53

// Jumps
jump_start_time         = 5;		            // 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed              = 11;		            // 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 7.4;		            // 4    -  7.4
djump_speed             = 11.5;		            // 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = 0;		            // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time    = 0;		            //                  the amount of time that   djump_accel   is applied for
max_djumps              = 1;		            // 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp            = 7;		            // 4    -  7
walljump_vsp            = 8;		            // 7    -  10
land_time               = 4;		            // 4    -  6
prat_land_time          = 8;		            // 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction           = 0.125;		            // 0    -  0.15
wave_land_time          = 8;		            // 6    -  12
wave_land_adj           = 1.3;		            // 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 9;		            // 7    -  11
roll_backward_max       = roll_forward_max;		// 7    -  11       always the same as forward
air_dodge_speed         = 7.5;		            // 7.5  -  8
techroll_speed          = 10;		            // 8    -  11



// Animation Info
// Misc. animation speeds
idle_anim_speed         = 0.12;
crouch_anim_speed       = 0.1;
walk_anim_speed         = 0.1;
dash_anim_speed         = 0.2;
pratfall_anim_speed     = 0.25;

// Crouch
crouch_startup_frames   = 4;
crouch_active_frames    = 3;
crouch_recovery_frames  = 4;
//a dan moment makes it so the last frame needs to be doubled, the strip actually has 3 frames but the last 2 are the same

// Jumps
double_jump_time        = 20;		// 24   -  40
walljump_time           = 20;		// 18   -  32
can_wall_cling          = false; //if true, allows the character to cling onto walls by holding jump
//wall_frames is a variable that usually doesn't work, so i have my own solution here (and in animation.gml)
cling_timer = 0; //custom var to help with animation on wall clinging
cling_frame = 0; //sets the frame the player should be on when wall clinging, any number higher than 0 will make it spread across the entire wall cling duration
cling_anim_time = 0; //similarly to variables like idle_anim_speed, it's the a value deciding the speed of the animation until it reaches the cling_frame

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 3;

// Airdodge
air_dodge_startup_frames    = 2;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = roll_forward_startup_frames;
roll_back_active_frames         = roll_forward_active_frames;
roll_back_recovery_frames       = roll_forward_recovery_frames;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 1;

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
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_kra"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

small_sprites = 0; //set this to 1 if you want to export sprites at a smaller size (only includes character sprites without hurtboxes)
//alternatively, you can set it up on config.ini

crystal_stun_resize = (small_sprites == 0 ? true : false); //automatically set to true if you disable small sprites
//if [crystal_stun_resize] is true, it means your character does NOT use small_sprites and it will run the code to fix crystal stun's effect for you

small_djump = false;                // setting this to true gives characters the smaller double jump vfx from wrastor

wait_time = 0;                      // if wait_time is over 0, staying in idle for the amount of frames specified the character will do a wait animation
wait_length = 0;                    // this values sets how long the character is animated for in the wait animation
wait_sprite = sprite_get("wait");   // sets the wait animation sprite strip



//////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES ////////////////////////////////////////////////////////

//sfx interruptions
interruptable_sfx = noone;

//footstool attack
force_crouch = false;
footstool_x = -10;
footstool_y = -50;
footstool_w = 20;
footstool_h = 30;
footstool_start = 5; // First frame of crouch where footstool detection is active

//ptooie
ptooie_obj = noone;
ptooie_raise_time = 50;
ptooie_high_time = 10; // slightly misleading, as the easing functions contribute to a lot of the high-position time
ptooie_descend_time = 50;
ptooie_low_time = 0;
ptooie_near_hsp = 7.5;
ptooie_near_vsp = -3.2;
ptooie_far_hsp = 3.5;
ptooie_far_vsp = -4.5;

pt_r = ptooie_raise_time;
pt_h = pt_r + ptooie_high_time;
pt_d = pt_h + ptooie_descend_time;
pt_total = pt_d + ptooie_low_time;

pt_hsp_base = ptooie_near_hsp;
pt_hsp_scale = ptooie_far_hsp - ptooie_near_hsp;
pt_vsp_base = ptooie_near_vsp;
pt_vsp_scale = ptooie_far_vsp - ptooie_near_vsp;

//fspecial
fspecial_level = 0;
fspecial_charge = 0;
fspecial_reversed = 0;
fspecial_flash = 0;
prev_outline = [0, 0, 0];
charge_outline = [60, 0, 100];
poison_outline = [106, 0, 194];
poison_color = make_color_rgb(148, 52, 229);
//constants. arrays are ordered [small, medium, large]
fspecial_mid_charge = 40;
fspecial_large_charge = 100;
fspecial_release_charge = 120;
fspecial_lifetime = [6, 50, 110]
fspecial_hbox_rate = [0, 10, 10]; // i.e. how many frames between hitboxes. Ignored for small.
fspecial_ground_hsp = [-2, -4, -7];
fspecial_air_hsp = [-4, -6, -8];
fspecial_air_vsp = [-2, -6, -10];
poison_ground_x = [90, 90, 90];
poison_ground_y = [-40, -40, -40];
poison_ground_hsp = [3, 1, .4];
poison_air_x = [70, 70, 70];
poison_air_y = [10, 10, 10];
poison_air_angle = -30;
poison_air_hsp = [2, 1.3, 1];
poison_air_vsp = [1.5, 0.7, 0.7];
poison_status_damage = [3, 5, 7];
poison_tick_time = 60;
fspecial_cooldown = 70; // counted from the moment that the poison is released
//status vars. most are mirrored in other_init
spider_plant_poison_damage = 0;
spider_plant_poison_timer = 0;
spider_plant_poison_owner = noone;

//dspecial (thank you VForce)
dspecial_rot = 0;
dspecial_hold_time = 0;
dspecial_distance = 0;
dspecial_distance_min = 40;
dspecial_distance_true_min = 20; // minimum distance head can extend by
dspecial_distance_max = 190;
dsp_mult = 2.75;
dsp_start = 60;

dspecial_distance_true = 0;
dspecial_oof = false;

dspecial_shortest_distance = [noone, 0];

dspecial_stem_hitboxes = ds_list_create();

// How many degrees away the opponent can be and the toilet will auto target
dspecial_lockon_degrees = 15;
dspecial_max_time = 40;



debug_display = get_match_setting(SET_PRACTICE); //0 = no display | 1 = draw_hud display (will display in practice mode by default with this setup)
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
    "AT_EXTRA_4",
    "AT_EXTRA_5 (munophone default)",
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

window_end = 0; //the last frame (including whifflag if it's there)
window_last = 0; //AG_NUM_WINDOWS
window_cancel_time = 0; //AG_WINDOW_CANCEL_FRAME
cur_loop_sound = noone; //you can use this to store a sound instance that you can silence later

alt_cur = get_player_color(player);

playtest_active = false;
with (oTestPlayer) playtest_active = true;

bairvfx = hit_fx_create(sprite_get("bair_explosion_vfx"), 15);
fx_explosion = hit_fx_create(sprite_get("fx_explosion"), 23);
nspecial_vfx_full = hit_fx_create(sprite_get("nspecial_vfx_full"), 12);
nspecial_vfx_half = hit_fx_create(sprite_get("nspecial_vfx_half"), 12);
nspecial_vfx_spit = hit_fx_create(sprite_get("nspecial_vfx_spit"), 12);
ptooie_trail_vfx = hit_fx_create(sprite_get("ptooie_trail_vfx"), 9);
uspecial_trail_vfx = hit_fx_create(sprite_get("uspecial_trail"), 9);
poison_small_vfx = hit_fx_create(sprite_get("poison_small_dissipate"), floor(fspecial_lifetime[0]/2));
poison_status_vfx = hit_fx_create(sprite_get("poison_status_vfx"), 16);
fx_poisonhit = hit_fx_create(sprite_get("fx_poisonhit"), 15);
fx_leaf = hit_fx_create(sprite_get("fx_leaf"), 15);
fx_bigleaf = hit_fx_create(sprite_get("fx_bigleaf"), 30);
fx_bite = hit_fx_create(sprite_get("fx_bite"), 15);
fx_bigbite = hit_fx_create(sprite_get("fx_bigbite"), 25);



is_dodging = false;
is_attacking = false;
game_time = 0; //checks get_gameplay_time() so we don't need to call the function all the time
exist_time = 0; //allows you to check how long the character is functioning
plat_speed = 0.2; //controls the respawn platform's animation speed without it relying on the player's animation

//custom intro
AT_INTRO = 2; //the attack index the intro uses, 2 doesn't overwrite any other attack
has_intro = false; //change to false if you don't have one/don't want it active
AG_MUNO_ATTACK_EXCLUDE = 80; //this is used to exclude the intro attack from the framedata woodcock buddy, letting you see the stats of the character instead
//relevant scripts:
//  - update
//  - attack_update (case 2)

//grab code
my_grab_id = noone; //grabbed player ID, the game has it's own way of setting up the grabs but this is easier
grab_time = 0; //timer for grabbing, works as a state_timer of sorts
//relevant scripts:
//  - update
//  - hit_player
//  - got_hit
//  - got_parried
//  - death

//damage calculation that takes strong charge into consideration
true_dmg = 0;
//relevant scripts:
//  - hit_player
//  - got_hit
//  - parry
//  - got_parried

//custom window loop time (NOTE: this is a custom index that is created manually)
AG_WINDOW_LOOP_TIMES = 37;          //attack grid index, the number you put next to it is the amount to loop (starts at 0, includes written value)
AG_WINDOW_LOOP_REFRESH_HITS = 38;   //if true, it will refresh hitboxes so they can hit again
window_loops = 0;                   //decides the amount of times to loop
//usage: set_window_value(attack, window, AG_WINDOW_LOOP_TIMES, #loops)
//relevant scripts:
//  - attack_update

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


////////////////////////////////////////////////////// CHARACTER SPECIFIC VARIABLES //////////////////////////////////////////////////////

//hit_fx_create(sprite_get("sprite"), time in frames); //create hit effect
//set_hit_particle_sprite(1-6, sprite_get("sprite")); //create hit particles

//////////////////////////////////////////////////////// WORKSHOP COMPATIBILIES ////////////////////////////////////////////////////////