//init.gml
is_pastelle_DE = true;

//Player Variables
ink_hold = 1; //Red, Blue, Yellow
past_ink_owner = noone;
past_ink_r = 0;
past_ink_b = 0;
past_ink_y = 0;
past_ink_time_max = 300;
uspec_grab_id = noone;
ink_colors = [$2C1DE8, $FF871A, $49BDF8]; //these are BGR (blue, green, red) values

ink_drip_r = hit_fx_create(sprite_get("ink_status_r"), 20);
ink_drip_b = hit_fx_create(sprite_get("ink_status_b"), 20);
ink_drip_y = hit_fx_create(sprite_get("ink_status_y"), 20);
ink_react_g = hit_fx_create(sprite_get("ink_reaction_g"), 68); //32 / 68
ink_react_p = hit_fx_create(sprite_get("ink_reaction_p"), 68); //32 / 68
ink_react_o = hit_fx_create(sprite_get("ink_reaction_o"), 68); //32 / 68
nspec_fire = [hit_fx_create(sprite_get("nspecial_fire"), sprite_get_number(sprite_get("nspecial_fire"))*5), 4, 5];

past_fspec_used = false;
past_nspec_used = false;
past_ff_nspec = false;

created_smear = false;
ink_smear = array_create(50, -1);
ink_smear[@ AT_JAB] = create_smear_effects("fx_jab_ink", 4, 16, 1);
ink_smear[@ AT_FTILT] = create_smear_effects("fx_ftilt_ink", 4, 2, 1);
ink_smear[@ AT_USTRONG] = create_smear_effects("fx_ustrong_ink", 4, 4, 999);
ink_smear[@ AT_FSTRONG] = create_smear_effects("fx_fstrong_ink", 4, 5, 3);
ink_smear[@ AT_DSTRONG] = create_smear_effects("fx_dstrong_ink", 4, 4, 7);
ink_smear[@ AT_FAIR] = create_smear_effects("fx_fair_ink", 4, 16, 1);
ink_smear[@ AT_BAIR] = create_smear_effects("fx_bair_ink", 4, 3, 1);
ink_smear[@ AT_FSPECIAL] = create_smear_effects("fx_boot_ink", 4, 0, 5);
ink_smear[@ AT_USPECIAL] = create_smear_effects("fx_uspecial_ink", 4, 2, 7);

fx_nspecial_ink_r = [hit_fx_create(sprite_get("fx_nspecial_ink_r"), sprite_get_number(sprite_get("fx_nspecial_ink_r"))*4), 4, 7];
fx_nspecial_ink_b = [hit_fx_create(sprite_get("fx_nspecial_ink_b"), sprite_get_number(sprite_get("fx_nspecial_ink_b"))*4), 0, 5];
fx_nspecial_ink_y = [hit_fx_create(sprite_get("fx_nspecial_ink_y"), sprite_get_number(sprite_get("fx_nspecial_ink_y"))*4), 0, 5];

fx_hit_pen1 = hit_fx_create(sprite_get("fx_hit_pen1"), 16);
fx_hit_pen_ink1 = hit_fx_create(sprite_get("fx_hit_pen_ink1"), 16); //the different name but same exact hit effect will make it so we can add ink effects on top of this
fx_hit_ink1 = hit_fx_create(asset_get("empty_sprite"), 2);
fx_hit_ink_col1 = [
    hit_fx_create(sprite_get("fx_hit_r1"), 24),
    hit_fx_create(sprite_get("fx_hit_b1"), 24),
    hit_fx_create(sprite_get("fx_hit_y1"), 24)
];
fx_hit_pen2 = hit_fx_create(sprite_get("fx_hit_pen2"), 20);
fx_hit_pen_ink2 = hit_fx_create(sprite_get("fx_hit_pen_ink2"), 20); //the different name but same exact hit effect will make it so we can add ink effects on top of this
fx_hit_ink2 = hit_fx_create(asset_get("empty_sprite"), 2);
fx_hit_ink_col2 = [
    hit_fx_create(sprite_get("fx_hit_r2"), 32),
    hit_fx_create(sprite_get("fx_hit_b2"), 32),
    hit_fx_create(sprite_get("fx_hit_y2"), 32)
];
init_shader();
set_hit_particle_sprite(1, sprite_get("fx_ink_r_part"));
set_hit_particle_sprite(2, sprite_get("fx_ink_b_part"));
set_hit_particle_sprite(3, sprite_get("fx_ink_y_part"));
set_hit_particle_sprite(4, sprite_get("fx_pen_part"));

fx_ashe_trail = hit_fx_create(sprite_get("fx_ashe_trail"), 20);
fx_bubble_trail = hit_fx_create(sprite_get("fx_bubble_trail"), 20);

draw_article = instance_create(0, 0, "obj_article1");


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
knockback_adj           = 1.05;		            // 0.9  -  1.2

// Ground movement
walk_speed              = 3.25;		            // 3    -  4.5
walk_accel              = 0.2;		            // 0.2  -  0.5
walk_turn_time          = 6;		            // 6
initial_dash_time       = 10;		            // 8    -  16       zetterburn's is 14
initial_dash_speed      = 7;		            // 4    -  9
dash_speed              = 6.5;		            // 5    -  9
dash_turn_time          = 10;		            // 8    -  20
dash_turn_accel         = 1.5;		            // 0.1  -  2
dash_stop_time          = 4;		            // 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.35;		            // 0.25 -  0.5
ground_friction         = 0.40;		            // 0.3  -  1
moonwalk_accel          = 1.3;		            // 1.2  -  1.4

// Air movement
leave_ground_max        = 6;		            // 4    -  8
max_jump_hsp            = 6;		            // 4    -  8
air_max_speed           = 5;  		            // 3    -  7
jump_change             = 3;		            // 3
air_accel               = 0.3;		            // 0.2  -  0.4
prat_fall_accel         = 0.85;		            // 0.25 -  1.5
air_friction            = 0.04;		            // 0.02 -  0.07
max_fall                = 9;		            // 6    -  11
fast_fall               = 13;		            // 11   -  16
gravity_speed           = 0.45;		            // 0.3  -  0.6
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
prat_land_time          = 14;		            // 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction           = 0.08;		            // 0    -  0.15
wave_land_time          = 8;		            // 6    -  12
wave_land_adj           = 1.3;		            // 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 9;		            // 7    -  11
roll_backward_max       = roll_forward_max;		// 7    -  11       always the same as forward
air_dodge_speed         = 7.5;		            // 7.5  -  8
techroll_speed          = 10;		            // 8    -  11



// Animation Info
// Misc. animation speeds
idle_anim_speed         = 0.15;
crouch_anim_speed       = 0.12;
walk_anim_speed         = 0.2;
dash_anim_speed         = 0.2;
pratfall_anim_speed     = 0.25;

// Crouch
crouch_startup_frames   = 6;
crouch_active_frames    = 5;
crouch_recovery_frames  = 2;
//a dan moment makes it so the last frame needs to be doubled, the strip actually has 3 frames but the last 2 are the same

// Jumps
double_jump_time        = 30;		// 24   -  40
walljump_time           = 18;		// 18   -  32
wall_frames             = 1;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 3;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 2;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 2;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = roll_forward_startup_frames;
roll_back_active_frames         = roll_forward_active_frames;
roll_back_recovery_frames       = roll_forward_recovery_frames;

// Tech
tech_active_frames      = 2;
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
waveland_sound      = asset_get("sfx_waveland_ran"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Quote
pastelle_victory_quote = "A fake me?! W-wow, we should draw together more often!";
pastelle_handled_victory_quote = false;
victoryicon_subimg = 0;

//small_sprites = 1; //set this to 1 if you want to export sprites at a smaller size (only includes character sprites without hurtboxes)
//alternatively, you can set it up on config.ini

crystal_stun_resize = (small_sprites == 0 ? true : false); //automatically set to true if you disable small sprites
//if [crystal_stun_resize] is true, it means your character does NOT use small_sprites and it will run the code to fix crystal stun's effect for you

// setting to true will allow the character to cling by holding jump
// when clinging you usually need to manually set the image_index in animation.gml, but i did it for you
can_wall_cling = false;

small_djump = false;                // setting this to true gives characters the smaller double jump vfx from wrastor

wait_time = 0;                      // if wait_time is over 0, staying in idle for the amount of frames specified the character will do a wait animation
wait_length = 0;                    // this values sets how long the character is animated for in the wait animation
wait_sprite = sprite_get("wait");   // sets the wait animation sprite strip

//secret 
motion_input = false;
motion_state = 0;
motion_state2 = 0;
secretalt = 0;
motion_timer = 0;
galaxy_sfx = false;


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
//relevant scripts:
//  - update
//  - attack_update (case 2)

cur_loop_sound = noone; //you can use this to store a sound instance that you can silence later

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
hb_color[1] = $D894FF;  //any color hex value works ($BBGGRR), using this one for sweetspots


////////////////////////////////////////////////////// CHARACTER SPECIFIC VARIABLES //////////////////////////////////////////////////////

//hit_fx_create(sprite_get("sprite"), time in frames); //create hit effect
//set_hit_particle_sprite(1-6, sprite_get("sprite")); //create hit particles

var tmp_sync_vars = split_synced_var(2, 2, 2);
voice_init(tmp_sync_vars[0]);
ink_hold = tmp_sync_vars[2];

//////////////////////////////////////////////////////// WORKSHOP COMPATIBILIES ////////////////////////////////////////////////////////

//adventure mode hit_player redirect
hit_player_event = 13;

//draw_hud redirect
draw_hud_event = 14;

//Kirby Copy Ability
TCG_Kirby_Copy = -1;

//Po and Gumbo
pot_compat_variable = sprite_get("pastelle_food");
pot_compat_text = "Rainbow Gelatin";

//Pokemon Stadium
pkmn_stadium_front_img = sprite_get("pkmn_pastelle_front");
pkmn_stadium_back_img = sprite_get("pkmn_pastelle_back");
pkmn_stadium_name_override = "Pastelle";

//Mt. Dedede Stadium
arena_title = "The Colorful One";

//Boxing Ring
boxing_title = "The Colorful One";

//Hollow Knight
knight_compat_dream = 
    [
        "Aww... this bug is kinda cute... I should draw them!",
        "Wait... something's wrong here...",
        "Nah just kidding! I got all my inks this time!"
    ]

if(get_match_setting(SET_PRACTICE)){
    //print("In Training Mode - Initiaizing Woodcock variables");
    // Attack Indexes
    AG_MUNO_ATTACK_EXCLUDE = 80;
    AG_MUNO_ATTACK_REFRESH = 81;
    AG_MUNO_ATTACK_NAME = 82;
    AG_MUNO_ATTACK_FAF = 83;
    AG_MUNO_ATTACK_ENDLAG = 84;
    AG_MUNO_ATTACK_LANDING_LAG = 85;
    AG_MUNO_ATTACK_MISC = 86;
    AG_MUNO_ATTACK_MISC_ADD = 87;
    
    //Hitbox Indexes
    HG_MUNO_HITBOX_EXCLUDE = 80;
    HG_MUNO_HITBOX_NAME = 81;
    HG_MUNO_HITBOX_ACTIVE = 82;
    HG_MUNO_HITBOX_DAMAGE = 83;
    HG_MUNO_HITBOX_BKB = 84;
    HG_MUNO_HITBOX_KBG = 85;
    HG_MUNO_HITBOX_ANGLE = 86;
    HG_MUNO_HITBOX_PRIORITY = 87;
    HG_MUNO_HITBOX_GROUP = 88;
    HG_MUNO_HITBOX_BHP = 89;
    HG_MUNO_HITBOX_HPG = 90;
    HG_MUNO_HITBOX_MISC = 91;
    HG_MUNO_HITBOX_MISC_ADD = 92;
}

#define create_smear_effects(sprite_name, frame_duration, spawn_img, stuck_img_frames)
{
    var red = sprite_get(sprite_name+"_r")
    var blue = sprite_get(sprite_name+"_b")
    var yellow = sprite_get(sprite_name+"_y")
    return [
        hit_fx_create(red, sprite_get_number(red)*frame_duration), 
        hit_fx_create(blue, sprite_get_number(blue)*frame_duration), 
        hit_fx_create(yellow, sprite_get_number(yellow)*frame_duration),
        spawn_img, stuck_img_frames
        ]
}

#define voice_init(_lang_var)
lang = 0; 
//Voice clips
switch (_lang_var)
{
    default: lang = 0; break;
    case 1: lang = "en"; break;
    case 2: lang = "jp"; break;
}
cur_voiceclip = [noone, noone];
voice_cooldown = 0;
voice_cooldown_set = 30; //cooldown for regular voiceclips
voice_cooldown_set_100 = 120; //cooldown for high % lines

#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var player = (room == 113) ? 0 : self.player;
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
print(chunk_arr);
return chunk_arr;