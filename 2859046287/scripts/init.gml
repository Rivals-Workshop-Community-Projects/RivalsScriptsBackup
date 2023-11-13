//init.gml
//every script that has the word "init" will run only for the first frame of the "update" of it
//this script is used to assign player variables
//init.gml runs at the start of the match

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
dash_stop_time          = 6;		            // 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.35;		            // 0.25 -  0.5
ground_friction         = 0.5;		            // 0.3  -  1
moonwalk_accel          = 1.3;		            // 1.2  -  1.4

// Air movement
leave_ground_max        = 6;		            // 4    -  8
max_jump_hsp            = 6;		            // 4    -  8
air_max_speed           = 4;  		            // 3    -  7
jump_change             = 3;		            // 3
air_accel               = 0.3;		            // 0.2  -  0.4
prat_fall_accel         = 0.85;		            // 0.25 -  1.5
air_friction            = 0.04;		            // 0.02 -  0.07
max_fall                = 9;		            // 6    -  11
fast_fall               = 14;		            // 11   -  16
gravity_speed           = 0.5;		            // 0.3  -  0.6
hitstun_grav            = 0.5;		            // 0.45 -  0.53

// Jumps
jump_start_time         = 5;		            // 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed              = 11;		            // 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 6;		            // 4    -  7.4
djump_speed             = 10;		            // 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = 0;		            // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time    = 0;		            //                  the amount of time that   djump_accel   is applied for
max_djumps              = 1;		            // 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp            = 7;		            // 4    -  7
walljump_vsp            = 8;		            // 7    -  10
land_time               = 4;		            // 4    -  6
prat_land_time          = 10;		            // 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

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
walk_anim_speed         = 0.2;
dash_anim_speed         = 0.2;
pratfall_anim_speed     = 0.25;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;
//a dan moment makes it so the last frame needs to be doubled, the strip actually has 3 frames but the last 2 are the same

// Jumps
double_jump_time        = 30;		// 24   -  40
walljump_time           = 18;		// 18   -  32
can_wall_cling          = false;    // lets the character cling onto walls, you can use [clinging] to check when the character is currently clinging
wall_frames             = 0;		// amount of animation frames to play while clinging, spread accross 60 frames

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 3;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 3;
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

small_djump = false;                // setting this to true gives characters the smaller double jump vfx from wrastor

wait_time = 0;                      // if wait_time is over 0, staying in idle for the amount of frames specified the character will do a wait animation
wait_length = 0;                    // this values sets how long the character is animated for in the wait animation
wait_sprite = sprite_get("wait");   // sets the wait animation sprite strip



//////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES ////////////////////////////////////////////////////////

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
//  - attack_update (case AT_FTILT)
//  - hit_player
//  - got_hit
//  - got_parried
//  - death

cur_loop_sound = noone; //you can use this to store a sound instance that you can silence later

plat_speed = 0.2; //controls the respawn platform's animation speed without it relying on the player's animation

//wall slide support (used for tester's rune A)
wall_slide_enabled = false; //adds a slide function to wall clinding
wall_slide_fric = 0.1;
//relevant scripts:
//  - update
//  - animation

//damage calculation that takes strong charge into consideration
true_dmg = 0;
//relevant scripts:
//  - hit_player
//  - got_hit
//  - parry
//  - got_parried

//custom window loop time (NOTE: this is a custom index that is created manually)
AG_WINDOW_LOOP_TIMES = 37;          //the number you put next to it is the amount to loop (starts at 1, includes written value, 0 lets you loop forever like normal)
AG_WINDOW_LOOP_REFRESH_HITS = 38;   //if true, it will refresh hitboxes so they can hit again
window_loops = 0;                   //decides the amount of times to loop
//usage: set_window_value(attack, window, AG_WINDOW_LOOP_TIMES, #loops)
//relevant scripts:
//  - attack_update

//projectile with melee hitbox behaviour
HG_PROJECTILE_MELEE = 65;               //if true, it makes it so the projectile applies hitpause and sets off hit player flags
//  set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_MELEE, true);
//relevant scripts:
//  - hitbox_init
//  - hitbox_update
//  - bair

//projectile multihit
HG_PROJECTILE_MULTIHIT = 58;            //hitbox grid index, the number of times the projectile should hit
HG_PROJECTILE_HITRATE = 59;             //the delay time between multihits
HG_MULTIHIT_DAMAGE = 60;                //overwrites damage for multihits
HG_MULTIHIT_VFX = 61;                   //overwrites HG_VISUAL_EFFECT for the multihits, putting -1 will not overwrite it
HG_MULTIHIT_SFX = 62;                   //overwrites HG_HIT_SFX for multihits, putting -1 will not overwrite it
//usage example:
//  set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MULTIHIT, 4);
//  set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MULTIHIT, 6);
//  set_hitbox_value(AT_FSPECIAL, 3, HG_MULTIHIT_DAMAGE, 3);
//  set_hitbox_value(AT_FSPECIAL, 3, HG_MULTIHIT_VFX, HFX_GEN_OMNI);
//  set_hitbox_value(AT_FSPECIAL, 3, HG_MULTIHIT_SFX, asset_get("sfx_blow_medium2"));
//relevant scripts:
//  - hitbox_init
//  - hitbox_update
//  - nspecial

//projectile homing
HG_PROJECTILE_HOMING = 63;              //if true, allow projectile to use the homing code
HG_PROJECTILE_HOMING_TURN = 64;         //how sharp the angle for the homing is, and only applies if homing is true (make sure it's a number between 0 and 1)
//usage example:
//  set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HOMING, true);
//  set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HOMING_TURN, 0.4);
//relevant scripts:
//  - hitbox_init
//  - hitbox_update
//  - nspecial

//particle system
artc_partc = instance_create(x, y, "obj_article3"); //used for layer 0 for the particle system
artc_partc.depth = 5; //use this to set the custom depth
artc_partc.uses_shader = false; //keep this false so it will not always use the shader for every particle
fx_part = [];
/* particle struct info
    var new_part = { //new_part is set as a temporary variable to store all the information
        spr:        sprite_get("???")   //particle's sprite
        xpos:       #number             //x position
        ypos:       #number             //y position
        hsp:        #number             //horizontal speed
        vsp:        #number             //vertical speed
        dir:        -1 / 0 / 1          //0 means it will default to the object's spr_dir, otherwise you can put either 1 or -1 to set a specific spr_dir for it
        angle:      0 - 360             //the angle to draw the particle with
        torque:     #number             //rotation speed, negative numbers rotate clockwise, positive numbers rotate counter-clockwise
        xscale:     #number             //the sprite's horizontal scale
        yscale:     #number             //the sprite's vertical scale
        alpha:      #number             //numbers between 0 to 1 have visual changes
        anim_alpha: -1 / 0 / 1          //0 means it will not change the transperency, 1 will make it fade in, -1 will make it fade out
        color:      #number             //the color of the particle - note that without "filled" the particle will be tinted with this color instead
        filled:     true / false        //if true, the sprite's color will be a single color based on "color"
        shader:     true / false        //if true, the particle will use the player's shaders
        layer:      1 / 0 / -1          //0 means it will use article3 to set the depth, 1 uses pre_draw and -1 uses post_draw
        length:     #number             //for how long should the particle play
        img:        #number             //reffers to the particle's image index, if "anim_img" is false it will stick to that image for the duration of the particle
        anim_img:   true / false        //if true, the particle's sprites will animate
        timer:      0                   //increments in update, sets the start time of the particle (no need to change)
    };
    array_push(fx_part, new_part); //this pushes our new particle out to the particle system
*/
//alternatively, you can use the function in attack_update that is used for dspecial and play around with the arguments (it's the same code)
//scripts used by tester:
//  - update
//  - pre_draw
//  - post_draw
//  - article3_post_draw
//  - attack_update


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

//this section is mostly used by tester's specific attack variables, for your own character you probably don't need this
fair_cd = false;

test_status_owner = noone;
test_status_timer = 0;
test_status_time_set = 180;

nspec_charge = 1;
nspec_charge_rate = 0.02;
nspec_charge_max = 3;
nspec_charge_stored = false;
nspec_charge_sound = asset_get("sfx_frog_fspecial_charge_loop");
nspec_shoot_delay_time_max = 10; //changes according to charge level
nspec_shoot_delay_time = 0; //counts up to [nspec_shoot_delay_time_max] when the projectile is released

uspec_angle = 90;
uspec_was_free = false;

fspec_aim = 0; //-1 = up | 0 = mid | 1 = down
fspec_speed = 0;
fspec_angle = 20;
fspec_found_target = false;
fspec_tether_pos = [0, 0]; //x, y - should be used for the drawing stuf, as well as the positions the hitbox should spawn

artc_dspec = noone;

//rune F needs 2 players only to work
runeF_player_amount = 0; //needs to be 2 players
runeF_face_dir = spr_dir; //to support facing back
if (has_rune("F")) with (oPlayer) if (is_player_on(player)) other.runeF_player_amount += 1;



//effects
fx_pow_hit = [ //we are storing this in an array so we won't need seperate variables for it
    hit_fx_create(sprite_get("fx_pow_hit1"), 20),
    hit_fx_create(sprite_get("fx_pow_hit2"), 30),
    hit_fx_create(sprite_get("fx_pow_hit3"), 40)
];
set_hit_particle_sprite(1, sprite_get("fx_pow_part")); //this function allows us to create our own hit particles, the number is the particle slot (we have 6 slots)
fx_fstrong_pop = hit_fx_create(sprite_get("fx_fstrong_pop"), 12);
fx_pow_sparks = hit_fx_create(sprite_get("fx_pow_sparks"), 12); //this effect spawns when someone is affected by tester's u-air status aswell as the d-spec teleport

//////////////////////////////////////////////////////// WORKSHOP COMPATIBILIES ////////////////////////////////////////////////////////

//on tester, all compatibilities are in [ user_event1.gml ] but they can run from various places based on the compatibility, usually here in init.gml
user_event(1);

//used by final smash compatibility
start_y_off = 0;
end_y_off = 0;