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
char_height             = 60;                   //                  the height of the overhead hud - the arrow with your name and %
knockback_adj           = 1.08;		            // 0.9  -  1.2

// Ground movement
walk_speed              = 3;		            // 3    -  4.5
walk_accel              = 0.4;		            // 0.2  -  0.5
walk_turn_time          = 6;		            // 6
initial_dash_time       = 10;		            // 8    -  16       zetterburn's is 14
initial_dash_speed      = 7;		            // 4    -  9
dash_speed              = 6.5;		            // 5    -  9
dash_turn_time          = 12;		            // 8    -  20
dash_turn_accel         = 1.5;		            // 0.1  -  2
dash_stop_time          = 6;		            // 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.5;		            // 0.25 -  0.5
ground_friction         = 0.4;		            // 0.3  -  1
moonwalk_accel          = 1.25;		            // 1.2  -  1.4

// Air movement
leave_ground_max        = 6;		            // 4    -  8
max_jump_hsp            = 6;		            // 4    -  8
air_max_speed           = 4.5;      		    // 3    -  7
jump_change             = 3;		            // 3
air_accel               = 0.3;		            // 0.2  -  0.4
prat_fall_accel         = 1;		            // 0.25 -  1.5
air_friction            = 0.06;		            // 0.02 -  0.07
max_fall                = 9;		            // 6    -  11
fast_fall               = 13;		            // 11   -  16
gravity_speed           = 0.5;		            // 0.3  -  0.6
hitstun_grav            = 0.5;		            // 0.45 -  0.53

// Jumps
jump_start_time         = 5;		            // 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed              = 10;		            // 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 6;		            // 4    -  7.4
djump_speed             = 10;		            // 6    -  12       absa's is -1 because of her floaty djump
max_djumps              = 1;		            // 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp_norm       = 7;		            // 4    -  7
walljump_vsp_norm       = 8;		            // 7    -  10
wallkick_hsp            = 2;
wallkick_vsp            = 11;
wallslide_fric          = 0.07;
wallslide_initial_speed = 0.5;
max_slide_speed = (60 * wallslide_fric + wallslide_initial_speed + gravity_speed);

walljump_hsp            = walljump_hsp_norm;
walljump_vsp            = walljump_vsp_norm;

land_time               = 4;		            // 4    -  6
prat_land_time          = 10;		            // 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction           = 0.14;		            // 0    -  0.15
wave_land_time          = 8;		            // 6    -  12
wave_land_adj           = 1.4;		            // 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 9;		            // 7    -  11
roll_backward_max       = roll_forward_max;		// 7    -  11       always the same as forward
air_dodge_speed         = 7.5;		            // 7.5  -  8
techroll_speed          = 10;		            // 8    -  11



// Animation Info
// Misc. animation speeds
idle_anim_speed         = 0.14;
crouch_anim_speed       = 0.1;
walk_anim_speed         = 0.18;
dash_anim_speed         = 0.3;
pratfall_anim_speed     = 0.25;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;
//a dan moment makes it so the last frame needs to be doubled, the strip actually has 3 frames but the last 2 are the same

// Jumps
double_jump_time        = 18;		// 24   -  40
walljump_time_norm      = 18;		// 18   -  32
wallkick_time           = 24;
wall_frames             = 1;
used_wallkick = false;

walljump_time = walljump_time_norm;

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 3;

// Airdodge
air_dodge_startup_frames    = 2;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 4;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 6;
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
hurtbox_spr         = sprite_get("hurtbox_idle");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr


// Victory
set_victory_bg(sprite_get("winscreen")); // sprites\winscreen.png - name doesn't matter, the size has to be 480 x 270 pixels big, usually has this puple filter on it
set_victory_theme(sound_get("mus_victory")); // sounds\mus_victory.ogg - leave some silence in the file after the victory theme finishes

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_may"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//set this to 1 if you want to export sprites at a smaller size (only includes character sprites without hurtboxes)
//alternatively, you can set it up on config.ini
small_sprites = 1;

// setting to true will allow the character to cling by holding jump
// when clinging you usually need to manually set the image_index in animation.gml, but i did it for you
can_wall_cling = true;
spawned_wall_dust = false;

normal_wait_time = 280;             // if wait_time is over 0, staying in idle for the amount of frames specified the character will do a wait animation
wait_length = 140;                  // this values sets how long the character is animated for in the wait animation
wait_sprite = sprite_get("wait");   // sets the wait animation sprite strip

wait_time = normal_wait_time;



//////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES ////////////////////////////////////////////////////////

debug_display = 0//get_match_setting(SET_PRACTICE); //0 = no display | 1 = draw_hud display (will display in practice mode by default with this setup)
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
    "AT_EXTRA_5",
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
real_image_index = 0;

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
AG_MUNO_ATTACK_EXCLUDE = 80;

plat_speed = 0.15; //platform anim speed
true_dmg = 0; //damage calculation that takes strong charge into consideration
last_sound_to_stop = noone;

//custom window loop time (NOTE: this is a custom index that is created manually)
AG_WINDOW_LOOP_TIMES = 37;          //loop amount
AG_WINDOW_LOOP_REFRESH_HITS = 38;   //refresh hits every loop
window_loops = 0;                   //var for AG_WINDOW_LOOP_TIMES

AG_WINDOW_CANCEL_FRAME_TOTAL = 39;
window_cancel_total = 0;

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

dashstop_frame = 0;
dashstop_time_max = 16;
dashstop_time = dashstop_time_max;
reset_dash_anim = false;

is_venus_t = true;
angles_debug = false;
angles_debug_key = 9; //tab key
last_rune_hit = noone;

venus_reflected = false;
charge_cur = 0;
charge_max = 300; //every 100 corresponds to a single rune charge
charge_reach_to = charge_max/3;
charge_hud_flash = 0;
meter_length = 46; //segment length
meter_spacing = 2; //segment spacing
meter_segments = charge_max/100;
pratfall_type = 0; //"norm" / "uspec"

//unused
//dstrong_proj = [];
//dstrong_total_proj = 0;
//  scripts: attack_update, dstrong, post_draw

dattack_can_bounce_set = 10;
dattack_can_bounce = 0;

do_ustrong_ex = false;
fstrong_meter_redc = charge_max;
dstrong_ex_charges = 0;
dstrong_ex_useable = 0;
dstrong_ex_uses = 0;

total_runes = 2 + 2 * has_rune("A"); //decides the amount of runes venus can have
artc_rune = array_create(total_runes, noone);
next_rune = 0; //checks the currently used rune with nspec
spawned_rune = false; //initial flag to check if venus actually spawned a rune yet with nspec so it doesn't spam spawn them
is_weaker_rune = false;
nspec_dir = 0;
nspec_aiming = false;
nspec_aim_time = 0;
on_rune = noone;
rune_surface_angle = 0; //checks top of rune only (0 - 180)
used_walljump = [false, false]; //normal walljump, rune walljump
nspec_total_airtime = 0;
nspec_gravstall_falloff = 120; //when aiming, this adds onto the calculation and makes her fall faster
nspec_jumpstall_falloff = 45; //when doing the little bounce in the air

last_reflect_mult = 1;
min_reflect_pow = 0.8; //0.8
max_reflect_pow = 1.2; //1.3
min_hb_reflect_pow = 1;
max_hb_reflect_pow = max_reflect_pow;

venus_players = 0; //rune reflections with uspec hard limit change based off the amount of active venus players
with (oPlayer) if (!clone && !custom_clone && "is_venus_t" in self) other.venus_players ++;


can_fspec = true;
fspec_stored_djumps = 0;
fspec_dodge_time = 0;
fspec_dodge_time_max = 21;
fspec_leap_limit = 0; //decides how many times venus can leap around her runes, regardless of orientation
fspec_leap_limit_max = total_runes * (2 + (venus_players - 1)); //4, 6, 8, 10
fspec_sjump_coyote_set = 3;
fspec_sjump_coyote = 0;

//uspec_move_hsp = 3;
//uspec_meteor_speed = 15;
//uspec_changd_dir = 0;
uspec_speed = 12;
uspec_angle = 0;
uspec_reflect_limit = 0;
uspec_reflect_limit_max = total_runes * (2 + (venus_players - 1) * 2) + 2; //6, 10, 14, 18
last_reflected_id = noone;
can_uspec = true;

prev_x = x;
prev_y = y;
same_pos_time = 0;

dspec_charge_milestone = 1;
dspec_charge_rate = 1.2;
dspec_loop_sound = noone;
dspec_charge_fx_spd = 0.25;
dspec_charge_fx_fade_max = 12;
dspec_charge_fx_fade = dspec_charge_fx_fade_max;

//visual effects
fx_hit_small = hit_fx_create(asset_get("empty_sprite"), 1);
fx_hit_small_fg = hit_fx_create(sprite_get("fx_hit_small_fg"), 16);
fx_hit_small_bg = hit_fx_create(sprite_get("fx_hit_small_bg"), 16);
fx_hit_medium = hit_fx_create(asset_get("empty_sprite"), 1);
fx_hit_medium_fg = hit_fx_create(sprite_get("fx_hit_medium_fg"), 20);
fx_hit_medium_bg = hit_fx_create(sprite_get("fx_hit_medium_bg"), 20);
fx_hit_big = hit_fx_create(asset_get("empty_sprite"), 1);
fx_hit_big_fg = hit_fx_create(sprite_get("fx_hit_big_fg"), 24);
fx_hit_big_bg = hit_fx_create(sprite_get("fx_hit_big_bg"), 24);

fx_light_hit1 = hit_fx_create(sprite_get("fx_light_hit1"), 24);
fx_light_hit2 = hit_fx_create(sprite_get("fx_light_hit2"), 28);
fx_light_hit3 = hit_fx_create(sprite_get("fx_light_hit3"), 32); //38
fx_light_follow = hit_fx_create(sprite_get("fx_light_follow"), 12);
set_hit_particle_sprite(1, sprite_get("fx_part_light"));

fx_charge_spark = HFX_ORI_BASH_START;
fx_ustrong_smear1 = hit_fx_create(sprite_get("fx_ustrong_smear1"), 28);
fx_ustrong_smear2 = hit_fx_create(sprite_get("fx_ustrong_smear2"), 28);
fx_fstrong_smear1 = hit_fx_create(sprite_get("fx_fstrong_smear1"), 20);
fx_fstrong_smear2 = hit_fx_create(sprite_get("fx_fstrong_smear2"), 28);
fx_dstrong_smear = hit_fx_create(sprite_get("fx_dstrong_smear"), 28);
fx_artc_rune_destroyed = hit_fx_create(sprite_get("fx_artc_rune_destroyed"), 24);
fx_uspec_smear = hit_fx_create(sprite_get("fx_uspec_smear"), 12);
fx_dspec_end = hit_fx_create(sprite_get("fx_dspec_end"), 24);

fx_fstrong_proj_end = [
    hit_fx_create(sprite_get("fx_fstrong_proj_end1"), 24),
    hit_fx_create(sprite_get("fx_fstrong_proj_end2"), 24),
    hit_fx_create(sprite_get("fx_fstrong_proj_end3"), 24),
];

fx_od_start = hit_fx_create(sprite_get("fx_od_start"), 28);
fx_od_eyeshine = hit_fx_create(sprite_get("fx_od_eyeshine"), 12);
fx_od_shock = hit_fx_create(sprite_get("fx_od_shock"), 38);
fx_od_drag = hit_fx_create(sprite_get("fx_od_drag"), 24);
fx_od_finalhit = hit_fx_create(sprite_get("fx_od_finalhit"), 30);
fx_od_sparkles = hit_fx_create(sprite_get("fx_part_light"), 16);
fx_od_part = hit_fx_create(sprite_get("fx_od_part"), 32);
fx_od_stun = hit_fx_create(sprite_get("fx_od_stun"), 25);

fx_ashe_trail = hit_fx_create(sprite_get("fx_ashe_trail"), 20);

fx_lightstun_arrow = hit_fx_create(sprite_get("fx_lightstun_arrow"), 16);
fx_lightstunned = hit_fx_create(sprite_get("fx_lightstunned"), 16);
fx_lightstun_blast = hit_fx_create(sprite_get("fx_lightstun_blast"), 32);

intro_start_offset = 0;
intro_total_time = 0;
intro_hair_fade_time = 0;
fake_img_index = 0;
intro_light_size = 2;

stopped_intro_idle = false;

ui_active_color = $b97ff0;
ui_inactive_color = $3e1955;

aftimg_active = false;
aftimg_drawn = 0;
aftimg_gaps = 3;
aftimgs = 4;
aftimg_total = aftimgs * aftimg_gaps;
cur_aftimg = 0;
for (var i = 0; i < aftimg_total; i++)
{
    aftimg[i] = {
        spr: sprite_index,
        img: image_index,
        xpos: x + draw_x,
        ypos: y + draw_y,
        dir: spr_dir,
        rot: spr_angle
    };
}

switch (alt_cur)
{
    case 10: //byakuren alt
        //i'm recording the ranges of slots 1 (hair) and 6 (main vfx color), then setting it to range 1, 1, 1, then setting it back in init_shader
        orig_hsv[0] = [get_color_profile_slot_range(1, 0), get_color_profile_slot_range(1, 1), get_color_profile_slot_range(1, 2)];
        orig_hsv[1] = [get_color_profile_slot_range(6, 0), get_color_profile_slot_range(6, 1), get_color_profile_slot_range(6, 2)];

        set_ui_element(UI_HUD_ICON, sprite_get("ex1_hudnorm"));
        set_ui_element(UI_HUDHURT_ICON, sprite_get("ex1_hudhurt"));
        set_ui_element(UI_WIN_SIDEBAR, sprite_get("ex1_result_small"));
        set_ui_element(UI_WIN_PORTRAIT, get_char_info(player, INFO_PORTRAIT));

        _demonhorde_hud_spr = sprite_get("ex1_hudnorm");
		_demonhorde_hud_hurt_spr = sprite_get("ex1_hudhurt");

        //demon horde overwrite (USE WITH DRAW_HUD REDIRECT)
        demonhorde_hud_overwrite = true;

        //custom offscreen indicator shenanigans
        view_left = view_get_xview() + 35; //0, y
        view_right = view_get_wview() + view_get_xview() - 35; //screenborder, y
        view_up = view_get_yview() + 32; //x, 0
        view_down = view_get_hview() + view_get_yview() - 86; //x, screenborder
        char_offscreen = false;
        offscreen_x_pos = 0;
        offscreen_y_pos = 0;
        break;
    case 14: //early access
        set_ui_element(UI_WIN_PORTRAIT, sprite_get("ex2_portrait"));
        set_ui_element(UI_WIN_SIDEBAR, sprite_get("ex2_result_small"));
        break;
    case 27: //theikos
        set_ui_element(UI_WIN_PORTRAIT, sprite_get("ex3_portrait"));
        set_ui_element(UI_WIN_SIDEBAR, sprite_get("ex3_result_small"));
        break;
    default:
        set_ui_element(UI_HUD_ICON, get_char_info(player, INFO_HUD));
        set_ui_element(UI_HUDHURT_ICON, get_char_info(player, INFO_HUDHURT));
        set_ui_element(UI_WIN_SIDEBAR, get_char_info(player, INFO_SIDEBAR));
        set_ui_element(UI_WIN_PORTRAIT, get_char_info(player, INFO_PORTRAIT));
        break;
}


alt_hair_apply = false;
if (alt_cur == 0 || alt_cur == 30) alt_hair_apply = (random_func(3, 100, true) == 0); //different hair color??

halloween_costume = (get_match_setting(SET_SEASON) == 3 && alt_cur == 16);

if (get_player_name(player) == "SMURF")
{
    if (alt_cur == 10)
    {
        set_ui_element(UI_HUD_ICON, get_char_info(player, INFO_HUD));
        set_ui_element(UI_HUDHURT_ICON, get_char_info(player, INFO_HUDHURT));
        set_ui_element(UI_WIN_SIDEBAR, get_char_info(player, INFO_SIDEBAR));
        set_ui_element(UI_WIN_PORTRAIT, get_char_info(player, INFO_PORTRAIT));
    }
    s_alt = true;
}


//runes
can_parry_heal = has_rune("H"); //checks if the rune is active
healing_dspec = false; //when true, dspec becomes healing instead
healing_rate = dspec_charge_rate; //rate of which the healing subtracts rune charge
heal_field_alpha = 0;
can_flip_runes = has_rune("B");
can_repair_runes = has_rune("G");
double_meter_rune = has_rune("I");
if (double_meter_rune)
{
    charge_max *= 2;
    meter_length /= 2;
    meter_spacing /= 2;
    meter_segments *= 2;
}
air_hit_bounce_rune = has_rune("E");
air_attack_prev = -1;
air_attacks_total = 0;
air_attacks_total_max = 5;
giga_drain_rune = has_rune("D");
giga_drain_offset = 32;
giga_drain_range = 64;
lightstun_rune = has_rune("M");
lightstun_time = 90;

//final smash/overdrive - garden of eden
AT_OVERDRIVE = 49;
can_overdrive = 0; //0 = can't OD | 1 = final smash ver | 2 = rune ver
if (has_rune("L")) can_overdrive = 2;

using_overdrive = 0; //0 = not using | 1 = can use | 2 = being done | 3 = after effect
od_after_effect_time = 0;
od_after_effect_time_max = 0;
od_cur = 0;
od_max = 100;
od_hbox = noone;
od_hbox_size = 600;
od_trapped_ids = [];
od_drag_time = 0;
od_drag_time_max = 0;
od_shockwave_coords = [x, y, 0, 30]; //x, y, time, max time
od_shockwave_coords[2] = od_shockwave_coords[3];

od_color_const = $3BE1FF;
od_color = od_color_const;
od_color_time = 0;
od_color_flash = false;

artc_garden = noone; //article 2

od_light_col_time = 0;
od_light_col_time_max = 30;
od_light_change = false;

//////////////////////////////////////////////////////// WORKSHOP COMPATIBILIES ////////////////////////////////////////////////////////

//final smash buddy
fs_meter_color = 0; //a custom variable for the gauge color

fs_portrait_x = 120;
fs_char_portrait_y = 90;
fs_char_portrait_override = get_char_info(player, INFO_PORTRAIT);
fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "custom";
fs_char_attack_index = AT_OVERDRIVE;
fs_hide_meter = true; //so i can make it use the OD gauge instead
fs_meter_y = 9999999;
fs_charge_mult = 0;

//adventure mode hit_player redirect
hit_player_event = 13;

//draw_hud redirect
draw_hud_event = 14;

//greenwood cheer
greenwood_cheer = 1;

//chao
chao_type = 1;

//mamizou transformation
mamizou_transform_spr = sprite_get("mamizou_rabbit");

//reiga knight compat (from hollow knight)
knight_compat_dream = 
[
    "I didn't forget to tend the garden at home today, right..?",
    "I can't let anyone down, they all believe in me...",
    "Where could my mom be...?"
];

//the chosen one art
tcoart = sprite_get("tcoart");

//break the targets
get_btt_data = false;

//sonic trick
sonic_rainbowring_atk = 46;

//green flower zone
gfzsignspr = sprite_get("GFZ_signpost");

//pokemon stadium
pkmn_stadium_front_img = sprite_get("pokemon_front");
pkmn_stadium_back_img = sprite_get("pokemon_back");
pkmn_stadium_name_override = "venus";

//win quotes
victory_quote = "Well done!";
emote = 3;
handled_victory_quote = false;
was_in_stage = get_stage_data(SD_ID);

//dracula dialouge
if (alt_cur != 27)
{
    dracula_portrait = sprite_get("dracula1");
    dracula_portrait2 = sprite_get("dracula2");
    //dracula_portrait3 can also be used if you need it, but dracula_portrait2 is mandatory
    dracula_speaker = []; //array that checks which character speaks
    dracula_text = []; //array that checks what the character speaks

    set_dracula_text(0, "They say that the cupids possess far weaker strength compare to regular angels as they are more passive and pacifistic in nature.");
    set_dracula_text(0, "Yet one of said weak cupids, rummaging through my domain on their own?");
    set_dracula_text(1, "Doesn't matter! You are hurting people, and that's all that matters to me! Why are you sending all the demons out to hurt others?!");
    set_dracula_text(0, "Humanity is a plauge that must be purged off the planet.");
    set_dracula_text(0, "What is mankind if not for idiotic beasts that destroy the world for their own sake?");
    set_dracula_text(2, "Even if you are right that humans can do horrible things, there's more than just those people.");
    set_dracula_text(2, "They don't deserve to be punished, too.");
    set_dracula_text(0, "So what shall you do regarding this, cupid? Tremble in fear before my might? [glass]");
    set_dracula_text(1, "You should know not to underestimate someone based on what they are!");
}
else
{
    dracula_portrait = sprite_get("dracula_theikos");
    dracula_portrait2 = sprite_get("dracula2");
    //dracula_portrait3 can also be used if you need it, but dracula_portrait2 is mandatory
    dracula_speaker = []; //array that checks which character speaks
    dracula_text = []; //array that checks what the character speaks

    set_dracula_text(0, "I've recieved reports from my underlings that a powerful angel has overpowered my army one by one.");
    set_dracula_text(0, "I'm assuming you must be said angel, yet you are a lone cupid with a Theïkós state. Impressive.");
    set_dracula_text(1, "Your compliments won't save you from me, for all the people you have terrorized.");
    set_dracula_text(1, "This reign of terror will come to an end.");
    set_dracula_text(0, "I am indeed aware of your motives, cupid.");
    set_dracula_text(0, "Let us dance to the death, and test your might! [glass]");
}



#define set_dracula_text(new_speaker, new_text)
{
    array_push(dracula_speaker, new_speaker);
    array_push(dracula_text, new_text);
}