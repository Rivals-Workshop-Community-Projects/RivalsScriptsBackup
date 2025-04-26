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
knockback_adj           = 1;		            // 0.9  -  1.2

// Ground movement
walk_speed              = 3.25;		            // 3    -  4.5
walk_accel              = 0.2;		            // 0.2  -  0.5
walk_turn_time          = 6;		            // 6
initial_dash_time       = 8;		            // 8    -  16       zetterburn's is 14
initial_dash_speed      = 7;		            // 4    -  9
dash_speed              = 6.5;		            // 5    -  9
dash_turn_time          = 14;		            // 8    -  20
dash_turn_accel         = 1.5;		            // 0.1  -  2
dash_stop_time          = 4;		            // 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.35;		            // 0.25 -  0.5
ground_friction         = 0.5;		            // 0.3  -  1
moonwalk_accel          = 1.3;		            // 1.2  -  1.4

// Air movement
leave_ground_max        = 6;		            // 4    -  8
max_jump_hsp            = 8;		            // 4    -  8
air_max_speed           = 4;  		            // 3    -  7
jump_change             = 3;		            // 3
air_accel               = 0.3;		            // 0.2  -  0.4
prat_fall_accel         = 0.85;		            // 0.25 -  1.5
air_friction            = 0.04;		            // 0.02 -  0.07
max_fall                = 10;		            // 6    -  11
fast_fall               = 14;		            // 11   -  16
gravity_speed           = 0.5;		            // 0.3  -  0.6
hitstun_grav            = 0.5;		            // 0.45 -  0.53

// Jumps
jump_start_time         = 5;		            // 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed              = 11;		            // 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 6;		            // 4    -  7.4
djump_speed             = 10;		            // 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = 0;		            // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time    = 0;                    //                  the amount of time that   djump_accel   is applied for
if (has_rune("E")) max_djumps             = 3;	// 0    -  3        the 0 is elliana because she has hover instead
else max_djumps                           = 1;
walljump_hsp            = 7;		            // 4    -  7
walljump_vsp            = 8;		            // 7    -  10
land_time               = 4;		            // 4    -  6
prat_land_time          = 12;		            // 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction           = 0.12;		            // 0    -  0.15
wave_land_time          = 8;		            // 6    -  12
wave_land_adj           = 1.3;		            // 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 9;		            // 7    -  11
roll_backward_max       = roll_forward_max;		// 7    -  11       always the same as forward
air_dodge_speed         = 7.5;		            // 7.5  -  8
techroll_speed          = 10;		            // 8    -  11



// Animation Info
// Misc. animation speeds
idle_anim_speed         = 0.15;
crouch_anim_speed       = 0.1;
walk_anim_speed         = 0.16;
dash_anim_speed         = 0.2;
pratfall_anim_speed     = 0.25;

// Crouch
crouch_startup_frames   = 4;
crouch_active_frames    = 10;
crouch_recovery_frames  = 5;
//a dan moment makes it so the last frame needs to be doubled, the strip actually has 3 frames but the last 2 are the same

// Jumps
double_jump_time        = 30;		// 24   -  40
walljump_time           = 18;		// 18   -  32
wall_frames             = 1;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 3;
dodge_active_frames     = 2;
dodge_recovery_frames   = 4;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 2;


// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 5;
roll_forward_recovery_frames    = 5;
roll_back_startup_frames        = roll_forward_startup_frames;
roll_back_active_frames         = roll_forward_active_frames;
roll_back_recovery_frames       = roll_forward_recovery_frames;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 4;

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
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//small_sprites = 1; //set this to 1 if you want to export sprites at a smaller size (only includes character sprites without hurtboxes)
//alternatively, you can set it up on config.ini

crystal_stun_resize = (small_sprites == 0 ? true : false); //automatically set to true if you disable small sprites
//if [crystal_stun_resize] is true, it means your character does NOT use small_sprites and it will run the code to fix crystal stun's effect for you

// setting to true will allow the character to cling by holding jump
// when clinging you usually need to manually set the image_index in animation.gml, but i did it for you
can_wall_cling = false;

small_djump = false;                // setting this to true gives characters the smaller double jump vfx from wrastor

wait_time = 500;                     // if wait_time is over 0, staying in idle for the amount of frames specified the character will do a wait animation
wait_anim_lengths = [180, 160, 220, 140, 140];  // this values sets how long the character is animated for in the wait animation
wait_sprite = sprite_get("wait0");   // sets the wait animation sprite strip, wait0 is there because there are multiple animations, setup in update.gml


//////////////////////////////////////////////////////// SAYA INIT ////////////////////////////////////////////////////////
is_sparking = false;
is_guardian = false;
is_super = false;
djump_used = false;
can_be_grounded = true;

uspecial_timer = 0;
uspecial_max_timer = 60;
new_formula = 0;

grabbed_target = noone;
fspc_hit_timer = 0;
used_in_air = false; //For when Install Dspecial is used in the air, it leads to pratfall.
was_airborne = false;


uspc_grabicide = false;

//Meter stuff
meter = 0;
if has_rune("L") meter_decrease_rate = 3; //passive decrease (divided by 60)  
else meter_decrease_rate = 2; //passive decrease (divided by 60)   
meter_max = 1000;
meter_decrease = false;
charge_dmg_tick = 1;
sparking_threshold = meter_max * 0.3;

//Super Stuff
super_teleport = false;
super_teleport_active = false;

float_timer = 0;        // Timer for the sine wave
float_speed = 0.1;      // Speed of the floating motion
float_amplitude = 2;    // Maximum vertical displacement
base_draw_y = draw_y;   // Store the initial `draw_y` position

//article stuff
artc_count = 0;
artc_ground = noone;
max_articles = has_rune("I") ? 4 : 2; // Determine the maximum number of articles allowed based on the rune
fspc_bounce = false;
artc_lockout = 0;
artc_parried_timer = 0;

// Initialize a ds_list to keep track of active article instances
article_list = ds_list_create(); // Create a list for managing article instances



//Thousand-Blows Rune
marked_players = ds_list_create(); // Initialize a ds_list to track marked players and their stacks. Each entry will store [player_id, marks_count]
mark_animations = ds_list_create(); // List to track animations for all marks
marks_consumed = 0;   // Initialize the marks consumed for the attack
spawned_hitboxes = 0; // Initialize the counter for hitboxes
hitbox_timer = 0;     // Initialize frame counter
mark_sprite = sprite_get("vfx_mark");
mark_anim = 0;
mark_angle = 0;

detonating_marks = ds_list_create(); // Track detonation animations
detonation_sprite = sprite_get("vfx_mark_detonate");


//Charged Dstrong
can_spawn_1 = 0;
can_spawn_2 = 0;
can_spawn_1_plat = 0;
can_spawn_2_plat = 0;

exist_timer = 0;
enemy_count = 0;
enemy_invince_check = [99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99]; //bar uses 99 as his unset value
enemies_all_invince = false; //if true, saya will not lose her meter to auto depletion

// Initialize voice settings
meter_voice = false;
voice = 0;
voice = get_synced_var(player)%10;
cur_voiceclip = [noone, noone];
voice_cooldown = 0;
voice_cooldown_set = 30;  // Cooldown for regular voice clips
voice_cooldown_set_100 = 120; // Cooldown for high % lines

/*
voice = 0;
voice = get_synced_var(player)%10;

voice_playing_sound = noone;

VC_ATK_SMALL        = 0;
VC_ATK_MED          = 1;
VC_ATK_BIG          = 2;
VC_ATK_HUGE         = 3;
VC_DEATH            = 4;
VC_CHARGE           = 5;
VC_HURT             = 6;
VC_TAUNT            = 7;
VC_TRANSFORM        = 8;
VC_ATK_DASH         = 9;
VC_INTRO            = 10;
VC_TECH             = 11;
VC_MAX_METER        = 12;
VC_GRAB             = 13;
VC_PARRY            = 14;

vcs = [
    [5], // VC_ATK_SMALL
    [6], // VC_ATK_MED
    [5], // VC_ATK_BIG
    [5], // VC_ATK_HUGE
    [6], // VC_DEATH 
    [1], // VC_CHARGE
    [7], // VC_HURT
    [4], // VC_TAUNT
    [3], // VC_TRANSFORM
];*/



//////////////////////////////////////////////////////// SAYA VFX ////////////////////////////////////////////////////////

//Sparking Idle VFX
vfx_sparking_big = hit_fx_create(sprite_get("vfx_sparking_big"), 20);
vfx_sparking_small1 = hit_fx_create(sprite_get("vfx_sparking_small1"), 20);
vfx_sparking_small2 = hit_fx_create(sprite_get("vfx_sparking_small2"), 20);

//Sparking Run VFX
vfx_sparking_run = hit_fx_create(sprite_get("vfx_sparking_run"), 25);


//Guardian Idle VFX
vfx_guardian_big1 = hit_fx_create(sprite_get("vfx_guardian_big1"), 35);
vfx_guardian_big2 = hit_fx_create(sprite_get("vfx_guardian_big2"), 35);
vfx_guardian_small1 = hit_fx_create(sprite_get("vfx_guardian_small1"), 35);
vfx_guardian_small2 = hit_fx_create(sprite_get("vfx_guardian_small2"), 25);

//Guardian Run VFX
vfx_guardian_run = hit_fx_create(sprite_get("vfx_guardian_run"), 25);

//HUD
meter_ready_timer = 0;
guardian_hud_timer_start = 35;
guardian_hud_timer = guardian_hud_timer_start;
guardian_hud_start_frame = 0;


//Hit FX
hfx_small =  hit_fx_create(asset_get("empty_sprite"), 1)
hfx_small_r = hit_fx_create(sprite_get("hfx_small_fg"), 16);

hfx_medium =  hit_fx_create(asset_get("empty_sprite"), 1)
hfx_medium_r = hit_fx_create(sprite_get("hfx_medium_fg"), 16);

hfx_big =  hit_fx_create(asset_get("empty_sprite"), 1)
hfx_big_r = hit_fx_create(sprite_get("hfx_big_fg"), 16);

hfx_grab =  hit_fx_create(asset_get("empty_sprite"), 1)
hfx_grab_r = hit_fx_create(sprite_get("hfx_grab"), 16);

hfx_tb_1 = hit_fx_create(sprite_get("hfx_tb_1"), 16);
hfx_tb_2 = hit_fx_create(sprite_get("hfx_tb_2"), 16);
hfx_tb_3 = hit_fx_create(sprite_get("hfx_tb_3"), 16);
hfx_tb_4 = hit_fx_create(sprite_get("hfx_tb_4"), 16);
hfx_tb_5 = hit_fx_create(sprite_get("hfx_tb_5"), 16);


//Misc
vfx_shine = hit_fx_create(sprite_get("vfx_shine"), 20);
vfx_utilt = hit_fx_create(sprite_get("vfx_utilt"), 10);
vfx_fstrong = hit_fx_create(sprite_get("vfx_fstrong"), 20);
vfx_dattack1 = hit_fx_create(sprite_get("vfx_dattack1"), 12);
vfx_dattack2 = hit_fx_create(sprite_get("vfx_dattack2"), 12);
vfx_uspecial = hit_fx_create(sprite_get("vfx_uspecial"), 20);
vfx_ustrong = hit_fx_create(sprite_get("vfx_ustrong_end"), 20);
vfx_dstrong_uncharged = hit_fx_create(sprite_get("vfx_dstrong_uncharged"), 32);
vfx_dstrong_charged = hit_fx_create(sprite_get("vfx_dstrong_charged"), 32);
vfx_dstrong_charged_multi = hit_fx_create(sprite_get("vfx_dstrong_charged_multi"), 32);
vfx_dspecial_burst = hit_fx_create(sprite_get("vfx_dspecial_burst"), 24);
vfx_dspecial_burst2 = hit_fx_create(sprite_get("vfx_dspecial_burst2"), 24);
vfx_dspecial_shine = hit_fx_create(sprite_get("vfx_dspecial_shine"), 16);
vfx_dspecial_charge_end = hit_fx_create(sprite_get("vfx_dspecial_charge_end"), 16);
vfx_teleport = hit_fx_create(sprite_get("vfx_teleport"), 16);



vfx_fspecial =  hit_fx_create(sprite_get("vfx_fspecial"), 16);
vfx_fspecial_air =  hit_fx_create(sprite_get("vfx_fspecial_air"), 16);
vfx_big_ring =  hit_fx_create(sprite_get("vfx_ringbig"), 16);
vfx_small_ring =  hit_fx_create(sprite_get("vfx_ringsmall"), 10);
vfx_big_ring_air =  hit_fx_create(sprite_get("vfx_ringbig_air"), 16);
vfx_small_ring_air =  hit_fx_create(sprite_get("vfx_ringsmall_air"), 10);
vfx_slam =  hit_fx_create(sprite_get("vfx_slam"), 23);
vfx_slam_behind =  hit_fx_create(sprite_get("vfx_slam_behind"), 23);
vfx_slide =  hit_fx_create(sprite_get("vfx_slide"), 16);

//////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES ////////////////////////////////////////////////////////

debug_display = 1;//get_match_setting(SET_PRACTICE); //0 = no display | 1 = draw_hud display (will display in practice mode by default with this setup)
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

alt_cur = get_player_color(player);

playtest_active = false;
with (oTestPlayer) playtest_active = true;

is_dodging = false;
is_attacking = false;
game_time = 0; //checks get_gameplay_time() so we don't need to call the function all the time

//custom intro
AT_INTRO = 2; //the attack index the intro uses, 2 doesn't overwrite any other attack
has_intro = true; //change to false if you don't have one/don't want it active
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

cur_loop_sound = noone; //you can use this to store a sound instance that you can silence later
cur_loop_sound2 = noone; //you can use this to store a sound instance that you can silence later

plat_speed = 0.2; //controls the respawn platform's animation speed without it relying on the player's animation

//wall cling support
cling_timer = 0; //custom var to help with animation on wall clinging
cling_frame = 0; //sets the frame the player should be on when wall clinging

wall_slide_enabled = false; //adds a slide function to wall clinding
wall_slide_fric = 0.1;

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
//  - update
//  - attack_update (case AT_DSTRONG)

//projectile with melee hitbox behaviour
HG_PROJECTILE_MELEE = 65;               //if true, it makes it so the projectile applies hitpause and sets off hit player flags
//relevant scripts:
//  - hitbox_init
//  - hitbox_update

//projectile multihit
HG_PROJECTILE_MULTIHIT = 58;            //hitbox grid index, the number of times the projectile should hit
HG_PROJECTILE_HITRATE = 59;             //the delay time between multihits
HG_MULTIHIT_DAMAGE = 60;                //overwrites damage for multihits
HG_MULTIHIT_VFX = 61;                   //overwrites HG_VISUAL_EFFECT for the multihits, putting -1 will not overwrite it
HG_MULTIHIT_SFX = 62;                   //overwrites HG_HIT_SFX for multihits, putting -1 will not overwrite it
//relevant scripts:
//  - hitbox_init
//  - hitbox_update

//projectile homing
HG_PROJECTILE_HOMING = 63;              //if true, allow projectile to use the homing code
HG_PROJECTILE_HOMING_TURN = 64;         //how sharp the angle for the homing is, and only applies if homing is true (make sure it's a number between 0 and 1)
//  - hitbox_init
//  - hitbox_update

//custom "dust" effect support
uses_custom_dusts = false;

//  - to add an effect, use hit_fx_create as normal on the correct array placement (use the list next to it to know which effect goes where)
//  - to use a default effect, add a 0
//  - if you want to make an effect not show, add a 1 (it's the hit_fx ID for "no effect")
//  - if you want a to replace an effect with one from the list, it doesn't matter what you put cuz you can just change it on update.gml
dust_effect = [
    hit_fx_create(sprite_get("sprite_name"), 24),        //0  = land
    hit_fx_create(sprite_get("sprite_name"), 24),        //1  = bigger landing
    hit_fx_create(sprite_get("sprite_name"), 21),        //2  = djump
    hit_fx_create(sprite_get("sprite_name"), 21),        //3  = dash start
    hit_fx_create(sprite_get("sprite_name"), 16),        //4  = dash
    hit_fx_create(sprite_get("sprite_name"), 12),        //5  = walk
    hit_fx_create(sprite_get("sprite_name"), 18),        //6  = tech
    hit_fx_create(sprite_get("sprite_name"), 10),        //7  = hit bounce - back
    hit_fx_create(sprite_get("sprite_name"), 15),        //8  = hit bounce - front
    hit_fx_create(sprite_get("sprite_name"), 18),        //9  = parry shockwave
    hit_fx_create(sprite_get("sprite_name"), 16),        //10 = "fx_parry_bg" (i think this is unused)
    hit_fx_create(sprite_get("sprite_name"), 12),        //11 = jump
    hit_fx_create(sprite_get("sprite_name"), 21),        //12 = dash attack dust
    hit_fx_create(sprite_get("sprite_name"), 18),        //13 = knockback smoke
    hit_fx_create(sprite_get("sprite_name"), 18),        //14 = bigger knockback smoke
    hit_fx_create(sprite_get("sprite_name"), 21),        //15 = dash turn
    hit_fx_create(sprite_get("sprite_name"), 21),        //16 = wrastor djump
    hit_fx_create(sprite_get("sprite_name"), 12),        //17 = fastfall
    hit_fx_create(sprite_get("sprite_name"), 10),        //18 = small hit bounce - back
    hit_fx_create(sprite_get("sprite_name"), 15),        //19 = small hit bounce - front
    hit_fx_create(sprite_get("sprite_name"), 18),        //20 = tech big
    hit_fx_create(sprite_get("sprite_name"), 30),        //21 = kill spark
    hit_fx_create(sprite_get("sprite_name"), 20),        //22 = kill speedlines
    hit_fx_create(sprite_get("sprite_name"), 24),        //23 = kill "slash"
    hit_fx_create(sprite_get("sprite_name"), 34)         //24 = kill star particles
];


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
hb_color[2] = $FF00FF;  //status effect hitbox



////////////////////////////////////////////////////// CHARACTER SPECIFIC VARIABLES //////////////////////////////////////////////////////

//hit_fx_create(sprite_get("sprite"), time in frames); //create hit effect
//set_hit_particle_sprite(1-6, sprite_get("sprite")); //create hit particles

//////////////////////////////////////////////////////// WORKSHOP COMPATIBILIES ////////////////////////////////////////////////////////

//chaos emeralds
super_form_transformation_attack = 48;

//Bar Sonic Trick
sonic_rainbowring_atk = 46;

//Hollow Knight
knight_compat_dream = 
    [
        "I can't stop looking now...",
        "With him on the loose, this world is in danger...",
        "Torian... Wherever you are, I will stop you..."
    ]

//Mt. Dedede Stadium
arena_title = "The Last Guardian";

//Boxing Ring
boxing_title = "The Last Guardian";

//Mamizou
mamizou_transform_spr = sprite_get("wsc_mamizoutransform");


//win quotes
victory_quote = "Too easy!"; //this quote usually appears if you get to the results screen alone
victory_emote = 0; //emotes are just individual frames on a strip of emotes, you choose emotes based on the frame they are on said strip
was_in_stage = get_stage_data(SD_ID); //checks the ID of the stage you were in, allows you to have win quotes for specific stages
handled_victory_quote = false; //don't change it here, when true it will let the game know to use your winquotes and not someone else's
//relevant scripts:
//  - unload
//  - results_draw_portrait
//relevant sprites:
//  - wsc_win_emote
//  - wsc_win_quote_bg