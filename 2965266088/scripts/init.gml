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
char_height             = 54;                   //                  the height of the overhead hud - the arrow with your name and %
knockback_adj           = 0.94; //0.97		    // 0.9  -  1.2

// Ground movement
walk_speed              = 3;		            // 3    -  4.5
walk_accel              = 0.2;		            // 0.2  -  0.5
walk_turn_time          = 6;		            // 6
initial_dash_time       = 12;		            // 8    -  16       zetterburn's is 14
initial_dash_speed      = 5.5;		            // 4    -  9
dash_speed              = 5;		            // 5    -  9
dash_turn_time          = 14;		            // 8    -  20
dash_turn_accel         = 1;		            // 0.1  -  2
dash_stop_time          = 8;		            // 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.5;		            // 0.25 -  0.5
ground_friction         = 0.3;		            // 0.3  -  1
moonwalk_accel          = 1.2;		            // 1.2  -  1.4

// Air movement
leave_ground_max        = 5;		            // 4    -  8
max_jump_hsp            = 5;		            // 4    -  8
air_max_speed           = 3.5;  		        // 3    -  7
jump_change             = 3;		            // 3
air_accel               = 0.2;		            // 0.2  -  0.4
prat_fall_accel         = 0.85;		            // 0.25 -  1.5
air_friction            = 0.03;		            // 0.02 -  0.07
//max_fall                = 0;		            // 6    -  11
//fast_fall               = 0;		            // 11   -  16
//gravity_speed           = 0;		            // 0.3  -  0.6
hitstun_grav            = 0.53;		            // 0.45 -  0.53

// Jumps
jump_start_time         = 5;		            // 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
//jump_speed              = 0;		            // 7.6  -  12       okay, zetter's is actually 10.99 but... come on
//short_hop_speed         = 0;		            // 4    -  7.4
//djump_speed             = 0;		            // 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = 0;		            // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time    = 0;		            //                  the amount of time that   djump_accel   is applied for
max_djumps              = 1;		            // 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp            = 5;		            // 4    -  7
walljump_vsp            = 9;		            // 7    -  10
land_time               = 6;		            // 4    -  6
prat_land_time          = 12;		            // 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction           = 0.09;		            // 0    -  0.15
wave_land_time          = 6;		            // 6    -  12
wave_land_adj           = 1.15;		            // 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 8;		            // 7    -  11
roll_backward_max       = roll_forward_max;		// 7    -  11       always the same as forward
air_dodge_speed         = 7.5;		            // 7.5  -  8
techroll_speed          = 8;		            // 8    -  11



// Animation Info
// Misc. animation speeds
idle_anim_speed         = 0.1;
crouch_anim_speed       = 0.1;
walk_anim_speed         = 0.15;
dash_anim_speed         = 0.2;
pratfall_anim_speed     = 0.35;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;
//a dan moment makes it so the last frame needs to be doubled, the strip actually has 3 frames but the last 2 are the same

// Jumps
double_jump_time        = 4;		// 24   -  40
walljump_time           = 18;		// 18   -  32
wall_frames             = 2;		// may or may not actually work... dan pls

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
tech_active_frames      = 2;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = roll_forward_startup_frames;
techroll_active_frames      = roll_forward_active_frames;
techroll_recovery_frames    = roll_forward_recovery_frames;


// Hurtbox sprites
hurtbox_spr         = sprite_get("rumia_hurtbox");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = sprite_get("rumia_hurtbox_hit"); // -1 = use hurtbox_spr


// Victory
set_victory_bg(sprite_get("winscreen")); // sprites\winscreen.png - name doesn't matter, the size has to be 480 x 270 pixels big, usually has this puple filter on it
set_victory_theme(sound_get("mus_victory")); // sounds\mus_victory.ogg - leave some silence in the file after the victory theme finishes

// Movement SFX
//land_sound          = 0;
//landing_lag_sound   = 0;
//waveland_sound      = 0; // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

normal_wait_time    = 270;                    //how long it takes for the animation to be done
wait_length         = 120;                    //amount of frames the wait animation takes
wait_sprite         = sprite_get("wait");
wait_time = normal_wait_time;

//////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES ////////////////////////////////////////////////////////

window_end = 0; //the last frame (including whifflag if it's there)
window_last = 0; //AG_NUM_WINDOWS
window_cancel_time = 0; //AG_WINDOW_CANCEL_FRAME
total_window_time = 0;
prev_window = 0;

alt_cur = get_player_color(player);

playtest_active = false;
with (oTestPlayer) playtest_active = true;

is_dodging = false;
is_attacking = false;
game_time = 0; //checks get_gameplay_time() so we don't need to call the function all the time
was_free = false;
hit_player_lock = 0; //if above a certain threshhold, hit_player will exit the script
hit_player_lockthresh = 1;

//custom intro
AT_INTRO = 2; //the attack index the intro uses, 2 doesn't overwrite any other attack

//grab code
my_grab_id = noone; //grabbed player ID, the game has it's own way of setting up the grabs but this is easier
grab_time = 0; //timer for grabbing, works as a state_timer of sorts

cur_loop_sound = noone; //you can use this to store a sound instance that you can silence later

plat_speed = 0.2; //controls the respawn platform's animation speed without it relying on the player's animation

//custom window loop time (NOTE: this is a custom index that is created manually)
AG_WINDOW_LOOP_TIMES = 37;          //attack grid index, the number you put next to it is the amount to loop (starts at 0, includes written value)
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
hb_color[1] = $FF00FF;  //darkness transfer
hb_color[2] = $FF0019;  //darkness transfer + consume

////////////////////////////////////////////////////// CHARACTER SPECIFIC VARIABLES //////////////////////////////////////////////////////

is_rumia = true;
hbox_view = get_match_setting(SET_HITBOX_VIS);
rumia_debug_view = 0;
hud_color = [
    color_get_red(get_player_hud_color(player)),
    color_get_green(get_player_hud_color(player)),
    color_get_blue(get_player_hud_color(player))
];
true_dmg = 0;
down_held_time = 0;

//crawl stuff
crawl_time = 0;
crawl_speed = 1.5;
crawl_anim_speed = 0.15;
crawl_sound = noone;
fake_img = 0;

//dark orb mechanic
dark_state = -1; //-1 = inactive | 0 = activating | 1 = active | 2 = deactivate | 3 = transfer | 4 = dark consume | 5 = transfer from a death
dark_state_prev = -1;
dark_timer = 0;
dark_img = 0;
dark_target = noone; //the player affected
dark_target_prev = noone; //used by the transfer animation to know who to transfer from
dark_owner = noone; //the player that owns the darkness (should also locks other rumias from overwriting darkness)
dark_last_coords = [x, y];
dark_last_is_enemy_article = false;

dark_hp_cur = 0;
dark_hp_max = 30 + 20 * has_rune("G");
dark_hp_temp = 0; //used by dspec
dark_hp_prev = -1; //used for stats changing
dark_cd = 0;
dark_cd_set = 180;

dark_spr[0] = {spr: sprite_get("fx_darkorb_start"), anim_type: "lerp", anim_spd: 12};
dark_spr[1] = {spr: sprite_get("fx_darkorb_loop"), anim_type: "loop", anim_spd: 0.2};
dark_spr[3] = {spr: sprite_get("fx_darkorb_transfer"), anim_type: "lerp", anim_spd: 20};
dark_spr[5] = {spr: sprite_get("fx_darkorb_transfer"), anim_type: "lerp", anim_spd: 20};
dark_alpha = {cur: 0, min: 0.25, max: 0.75, time: 0, time_max: 30, increment: true};
darkness_col = $7b1837;
hud_frame_col = c_white;

dark_kb_mult = 0;
dark_hit_angle = 0;
dark_hit_dir = 0;
dark_consume_kb_mult = 0;
dark_consume_kb = 0;
//format: [var name, normal, darkness]
dark_rec_vars = [
    ["max_fall", 9, 13],
    ["fast_fall", 14, 18],
    ["gravity_speed", 0.5, 0.8],
    ["jump_speed", 10.5, 14],
    ["short_hop_speed", 6, 8],
    ["djump_speed", 10, 12],
    ["dark_kb_mult", 1, 0.75], //wasn't dynamic - 0.85
    ["dark_consume_kb_mult", 1, 1.2], //wasn't dynamic - 1.1
    ["land_sound", asset_get("sfx_land_light"), asset_get("sfx_land_med")],
    ["landing_lag_sound", asset_get("sfx_land_med"), asset_get("sfx_land_heavy")],
    ["waveland_sound", asset_get("sfx_waveland_may"), asset_get("sfx_waveland_ran")]
];
update_stats = was_reloaded;

//grazing
graze_state = 0; //0 = can graze | 1 = grazing | can't graze = 2
graze_pos = [0, 0];
grazing_time = 0;
grazing_time_max = 30;
graze_lockout_max = 30;
graze_lockout = 0;

graze_dist_cur = 44; //the actual graze range
graze_dist_max = 200; //how far away the graze range can be seen
graze_size = [graze_dist_cur, 64]; //the different scales of the graze range, based on if rumia is crouching or not
graze_size_change_delay = 20;
graze_size_change_speed = 0.15;
//old graze range values: 48/80

graze_alpha = 0;
graze_alpha_bigger = 0;
graze_hold_alpha = 0.5;
graze_disable_redc_alpha = 0.05;
graze_sound = noone;

grazable_condition = true; //used by the debug draw lol


//attack specific
uair_hbox_pos = [0, 0];
uair_vfx = noone;
uair_sfx = noone;
spec_stall_hsp = 3;
nspec_turned = false;
dspec_done = false; //when true, it will not let rumia charge up anymore
dspec_rate = !has_rune("G") ? 10 : 5; //smaller number = faster
taunt_pose = 0;

intro_land_start = 0;

//runes
taunt_charge_rune = has_rune("D");
dark_blast_rune = has_rune("E");
flutter_nair_rune = has_rune("F");
all_dark_consume_rune = has_rune("K");

has_misfired = false;
fx_runeM = HFX_WRA_WIND_HUGE;

stats_rune = has_rune("J");
runeN_ignore_val = 0;
if (stats_rune)
{
    for (var i = 0; i < array_length(dark_rec_vars); i++)
    {
        if (dark_rec_vars[i][0] == "dark_kb_mult")
        {
            runeN_ignore_val = i;
            break;
        }
    }
}

//final smash/strong stuff
PS_TEMP_PRATFALL = 52;
temp_prat_anim_speed = 0.15;
temp_prat_end = 40; //not including the extra dissolve time
temp_prat_dissolve_time = 20;
spell_bg_alpha = 0;
spell_bg_alpha_inc = 0.05;
spell_bg = false;
spell_bg_obj = noone;
fade_to_black = 0;

has_superspell = has_rune("L");
can_superspell = false;
superspell_cur = 0;
superspell_max = 250;

fx_fs_amulet = hit_fx_create(sprite_get("fx_fs_amulet"), 24);
fx_fs_charge = hit_fx_create(sprite_get("fx_fs_charge"), 60);
fx_fs_release = hit_fx_create(sprite_get("fx_fs_release"), 48);
fx_fs_bighit = hit_fx_create(sprite_get("fx_fs_bighit"), 32);



//effects
msg_counter = hit_fx_create(sprite_get("hud_msg1"), 60);
msg_graze = hit_fx_create(sprite_get("hud_msg2"), 60);

set_hit_particle_sprite(1, sprite_get("fx_dark_hit_part")); //this function allows us to create our own hit particles, the number is the particle slot (we have 6 slots)

fx_dark_hit = [
    hit_fx_create(sprite_get("fx_dark_hit1"), 30),
    hit_fx_create(sprite_get("fx_dark_hit2"), 40),
    hit_fx_create(sprite_get("fx_dark_hit3"), 50)
];
fx_darkness_end = hit_fx_create(sprite_get("fx_darkorb_end"), 20);
fx_darkness_consume = hit_fx_create(sprite_get("fx_darkorb_consume"), 40);
fx_graze = hit_fx_create(sprite_get("fx_graze"), 20); //HFX_OLY_GEM_SHINE

fx_darksplash = hit_fx_create(sprite_get("fx_darksplash"), 32);
fx_darkcharge = hit_fx_create(sprite_get("fx_darkcharge"), 24);
fx_fstrong_smear = hit_fx_create(sprite_get("fx_fstrong_smear"), 32);
fx_dstrong_smash = hit_fx_create(sprite_get("fx_dstrong_smash"), 20);
fx_nspec = hit_fx_create(sprite_get("fx_nspec"), 40);
fx_fspec_proj_end = hit_fx_create(sprite_get("fx_fspec_proj_end"), 20);
fx_dspec_part = hit_fx_create(sprite_get("fx_dspec_charge_part"), 24);
fx_dspec_indc = hit_fx_create(sprite_get("fx_dspec_charge_indc"), 16);

sfx_dspec_charge = noone;

fx_uspec_wings = [
    hit_fx_create(sprite_get("fx_uspec_wings1"), 0), //appear (timing is set up when it spawns)
    hit_fx_create(sprite_get("fx_uspec_wings2"), 24), //attack
    hit_fx_create(sprite_get("fx_uspec_wings3"), 16) //vanish when getting hit
];
fx_uspec_wings_length = 0;

fx_death = [
    hit_fx_create(sprite_get("fx_death_cpu"), 90),
    hit_fx_create(sprite_get("fx_death_p1"), 90),
    hit_fx_create(sprite_get("fx_death_p2"), 90),
    hit_fx_create(sprite_get("fx_death_p3"), 90),
    hit_fx_create(sprite_get("fx_death_p4"), 90)
];
fx_death_dir = 0;
to_death_spd = [0, 0];

fx_lancer = hit_fx_create(sprite_get("fx_lancer"), 40);

//portrait stuff
if (alt_cur == 14)
{
    set_victory_portrait(sprite_get("gb_portrait"));
    set_victory_sidebar(sprite_get("gb_result_small"));
}

//halloween alt hat
koa_hat = (alt_cur == 16 && get_match_setting(SET_SEASON) == 3);

//guilty gear VA enabled for may alt
guilty_gear_va = (alt_cur == 20 && !playtest_active);
if (guilty_gear_va) sound_play(sound_get("ggsfx_intro1"));

//TAS alt
is_tas_alt = (alt_cur == 19);
if (is_tas_alt) darkness_col = make_color_rgb(255, 255, 255);

//////////////////////////////////////////////////////// WORKSHOP COMPATIBILIES ////////////////////////////////////////////////////////

//adventure mode hit_player redirect
hit_player_event = 13;

//draw_hud redirect
draw_hud_event = 14;

//mamizou
mamizou_transform_spr = sprite_get("mamizou_le_fishe");

//greenwood stage compatibility
greenwood_cheer = 1;

//final smash
fs_portrait_x = 148;
fs_char_portrait_y = 40;
fs_char_portrait_override  = sprite_get(alt_cur == 14 ? "fs_port2" : "fs_port1");
fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "custom";
fs_char_attack_index = 49;
fs_hide_meter = true; //it doesn't work for some reason???
fs_meter_y = 6; //because i can't hide it for some reason
fs_charge_mult = 0;

//kirby copy ability (2022 version)
TCG_Kirby_Copy = 12;

//dracula
dracula_portrait = sprite_get("dracula_port1");
dracula_portrait2 = sprite_get("dracula_port2");

//pokemon stadium
pkmn_stadium_front_img = sprite_get("pokemon_front");
pkmn_stadium_back_img = sprite_get("pokemon_back");
pkmn_stadium_name_override = "rumia";

//sonic rainbow ring trick
sonic_rainbowring_atk = 46;

//Miiverse posts
miiverse_post = sprite_get("miiverse");