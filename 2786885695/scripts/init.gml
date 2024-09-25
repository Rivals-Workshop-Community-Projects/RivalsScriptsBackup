/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The ATTACKS are still in their overpowered form in this
 * template, so be sure to make the ones for your character weaker.
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

// Physical size
char_height         = 62+has_rune("L")*16;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 4;		// 3    -  4.5
walk_accel          = 0.4;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8-has_rune("F")*4;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 8;		// 4    -  9
dash_speed          = 7+has_rune("F")*2;		// 5    -  9
dash_turn_time      = 8;		// 8    -  20
dash_turn_accel     = 1.75;		// 0.1  -  2
dash_stop_time      = 10;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.3;		// 0.25 -  0.5
ground_friction     = 0.4;		// 0.3  -  1
moonwalk_accel      = 1.2;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 7;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.35;		// 0.2  -  0.4
prat_fall_accel     = 0.8;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 13;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10.5;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 20;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.1;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.4;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 8;		// 8    -  11


// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.2;
dash_anim_speed     = 0.3;
pratfall_anim_speed = 0.2;

// wait animation/s
check_idle_time_default     = 500; //how long it takes for keqing to do something (does nothing if she has the qiqi hat)
check_idle_time             = check_idle_time_default;
wait_timer                  = 0; //wait anim buffer
//wait_time                 = 0; //using a different logic for this
wait_length                 = 110; //amount of frames the wait animation takes
wait_sprite                 = sprite_get("wait");

// Jumps
double_jump_time    = 24;		// 24   -  40
walljump_time       = 40;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 1;

// Roll
roll_forward_startup_frames     = 2;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = roll_forward_startup_frames;
roll_back_active_frames         = roll_forward_active_frames;
roll_back_recovery_frames       = roll_forward_recovery_frames;

// Tech roll
techroll_startup_frames     = roll_forward_startup_frames;
techroll_active_frames      = roll_forward_active_frames;
techroll_recovery_frames    = roll_forward_recovery_frames;

// Airdodge
air_dodge_startup_frames    = 2;
air_dodge_active_frames     = 1;
air_dodge_recovery_frames   = 3;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 1;

//Muno's Words of Wisdom:
/*
    Due to a Certified Dan Moment, you must duplicate the
    last frame of your crouch animation. So like, if your animation has 10 frames
    total, add an 11th that's the copy of the 10th. You do NOT include this 11th
    frame in the crouch_recovery_frames or etc; configure these values AS IF there
    were only 10 frames.

    The reason for this is that otherwise, the crouch just glitches out at the end
    of the standing-up animation. Dan Moment

*/



// Hurtbox sprites
hurtbox_spr         = sprite_get("hurtbox_idle");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_oly"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = sound_get("sfx_jump");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


// Keqing Variables
alt_cur = get_player_color(player);
window_last = 0;
window_end = 0;
window_cancel_time = 0;
empty = asset_get("empty_sprite");
fx_empty = 1;
ai_fight_time = 0;
hbox_view = get_match_setting(SET_HITBOX_VIS);
debug_keqing = false; //just in case i wanna see some basic variables
debug_display = 0; //get_match_setting(SET_PRACTICE);
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

//woodcock stuff
AG_MUNO_ATTACK_EXCLUDE = 80;
HG_MUNO_HITBOX_BKB = 80;
HG_MUNO_HITBOX_KBG = 81;
HG_MUNO_HITBOX_MISC_ADD = 82;

has_intro = true;
AT_INTRO = 2;

playtest_active = (object_index == oTestPlayer);
is_cpu = false;

AT_BURST = 49;

respawn_time_appear = get_match_setting(SET_PRACTICE) ? 0 : 90;
heal_time = 0;
heal_time_max = 7;

is_dodging = false; //checks if keqing is dodging
is_attacking = false; //checks if keqing is attacking

turbo_attack_hit = noone; //turbo
turbo_attack_window = 0;

electro_infused = false;
electro_infused_time = 0;

//hurt spin rotation (yeah, i made it one sprite for this reason)
cur_sprite_rot = 0;
should_rotate = false;
rotate_time = -1;



//jab
can_jab4 = false;

//D-attack
buffered_hitfall = false;

//D-air
dair_fx_y_scale = 0;
dair_cancel_time = 30;
dair_time = 0; //if it reaches the cancel time, allow keqing to airdodge out of the attack

//charge attack mechanic
charge_attack = false;
attack_down_counter = 0; //counts up to allow charge attacks to happen
using_strong = false;

//F-strong slash position
fstrong_hitbox = noone;
slash_pos_x = 0;
slash_pos_y = 0;
fstrong_kb_angle = 0;
draw_angle_arrow = false;



//N-special
using_nspec = false;
nspec_cd_start = false; //this makes the skill cooldown start inside article 1 and saves me a bunch of pointless code lines lol
nspec_cd = -1;
hud_anim_start = false;
hud_anim_timer = 0;

artc_marker = noone; //this is article 1, but it can mess with articles of some characters if i call it that, like pit and cream
stilleto_id = noone; //ID for when someone gets marked by the stilleto
nspec_cancel = false;
nspec_cancel_timer = 0;
nspec_cancel_aim = false;
allow_glitch_warp = false;

marker_angle = 0; //the angle of the joystick, the default is 0 (forward)
marker_dist = 240; //distance from keqing
marker_dist_x = 0;
marker_dist_y = 0;
temp_marker_x = 0; //these variables are used to record the marker position before it gets removed
temp_marker_y = 0;
marker_aim_timer = 0;

nspec_proj = noone; //projctile properties
nspec_proj_speed = 40;
nspec_angle = 0;

color_outline_timer = 0; //outline work when she teleports
color_outline_timer_max = 30;
color_outline_rise = false;

//U-special limiter
uspec_count = 0;
uspec_max = 1;
uspec_points =[[x, y], [x, y]];
uspec_fx_anim = [0, 7]; //current time, length
uspec_travel_dist = 20; //30
uspec_dist_mult = 0; //set up in set_attack
uspec_to_nspec_cancel = false;
uspec_started_grounded = true;

//F-special stuff
fspec_charge = 0;
spin_count = 3;
last_kb_angle = 0;
fspec_used = false; //chaged from single use in midair to using a short cooldown to prevent spam

//D-special stuff
dspec_rec_x = 0;
dspec_rec_y = 0;
artc_afterimage = noone;
afterimage_amount = 0;
afterimage_destroy_cd = 0;
afterimage_destroy_set = 120;
dspec_fx_count = 0;

//this effect still needs work but it's used for Dspecial when keqing goes backwards
//it's based off honkai impact's dodge effect
dspec_create_effect = false;
blend_r = get_color_profile_slot_r(alt_cur, 0);
blend_g = get_color_profile_slot_g(alt_cur, 0);
blend_b = get_color_profile_slot_b(alt_cur, 0);
blend_color = make_colour_rgb(blend_r, blend_g, blend_b);

//starward sword
has_burst = false;
allow_burst_UI = false;
burst_ready = false;
burst_charge = 0;

used_burst = false;

//yeah all of this is just the effect work
fs_ease_scale = 0;
fs_alpha = 0;
fs_alpha_bg = 0;
fs_fx_offset = [
    [0, 0],
    [0, 0],
    [0, 0]
];
fs_flash_count = 0;
bg_col = merge_color(c_black, blend_color, 0.1);
fs_cue_slashes = false;
fs_slash_timer = 0;
fs_afterimage_timer = 0;
fs_afterimage_pos = [];



// Visual Effects
set_hit_particle_sprite(1, sprite_get("fx_part_phys"));
set_hit_particle_sprite(2, sprite_get("fx_part_elec"));
fx_vanish = hit_fx_create(sprite_get("fx_vanish"), 14);
fx_introspark = hit_fx_create(sprite_get("fx_intro_spark"), 10);
fx_heal = [
    hit_fx_create(sprite_get("fx_heal_part"), 12),
    hit_fx_create(sprite_get("fx_heal_part_gb"), 12)
    ];
if (alt_cur == 14) is_gb = true;
else is_gb = false;

fx_electro = [
    hit_fx_create(sprite_get("fx_electro1"), 12),
    hit_fx_create(sprite_get("fx_electro2"), 12),
    hit_fx_create(sprite_get("fx_electro3"), 12)
    ];
fx_electro_aura = hit_fx_create(sprite_get("fx_electro_aura"), 48);

fx_hit_phys1 = hit_fx_create(sprite_get("fx_hit_phys1"), 16);
fx_hit_phys2 = hit_fx_create(sprite_get("fx_hit_phys2"), 22);
fx_hit_phys3 = hit_fx_create(sprite_get("fx_hit_phys3"), 28);
fx_hit_elec1 = hit_fx_create(sprite_get("fx_hit_elec1"), 16);
fx_hit_elec2 = hit_fx_create(sprite_get("fx_hit_elec2"), 22);
fx_hit_elec3 = hit_fx_create(sprite_get("fx_hit_elec3"), 28);

fx_dair_aoe = hit_fx_create(sprite_get("fx_dair_ground"), 21);

fx_ustrong = hit_fx_create(sprite_get("fx_ustrong"), 16);
fx_fstrong = hit_fx_create(sprite_get("fx_fstrong"), 16);
fx_dstrong = hit_fx_create(sprite_get("fx_dstrong"), 16);
strong_slashes = noone;

fx_nspec_shoot = hit_fx_create(sprite_get("fx_nspec_shoot"), 20);
fx_nspec_cursorspawn = hit_fx_create(sprite_get("fx_nspec_cursorspawn"), 24);
fx_nspec_marker_spawn = hit_fx_create(sprite_get("fx_nspec_marker_spawn"), 20);
fx_nspec_marker_despawn = hit_fx_create(sprite_get("fx_nspec_marker_despawn"), 20);
fx_nspec_warpstart = hit_fx_create(sprite_get("fx_nspec_warpstart"), 24);
fx_nspec_warpend = hit_fx_create(sprite_get("fx_nspec_warpend"), 24);
fx_nspec_marker_explode = hit_fx_create(sprite_get("fx_nspec_marker_explosion"), 32);

fx_uspec_flash = hit_fx_create(sprite_get("fx_uspec_flash"), 7);
fx_uspec_vanish = hit_fx_create(sprite_get("fx_uspec_vanish"), 12);
uspec_flash = noone;

fx_fspec_slash = hit_fx_create(sprite_get("fx_fspec_slash"), 16);
fspec_slash = noone;

fx_dspec_fade = hit_fx_create(sprite_get("fx_dspec_fade"), 8);
fx_dspec_spawn = hit_fx_create(sprite_get("fx_dspec_afterimage_spawn"), 16);
fx_dspec_despawn = hit_fx_create(sprite_get("fx_dspec_afterimage_despawn"), 16);

fx_burst_slash = hit_fx_create(sprite_get("fx_starward_sword_slash"), 16);
fx_burst_finalslash = hit_fx_create(sprite_get("fx_starward_sword_finalslash"), 34);


// Sound Effects
dash_sound = sound_get("sfx_dashstart");

sfx_slash_weak1 = sound_get("sfx_swordswipe_weak1");
sfx_slash_weak2 = sound_get("sfx_swordswipe_weak2");
sfx_slash_medium1 = sound_get("sfx_swordswipe_medium1");
sfx_slash_heavy1 = sound_get("sfx_swordswipe_heavy1");
sfx_slash_rapid1 = sound_get("sfx_rapidslash1");
sfx_slash_rapid2 = sound_get("sfx_rapidslash2");
sfx_plunge_start = sound_get("sfx_plunge_start");
sfx_plunge_loop = sound_get("sfx_plunge_loop");
sfx_plunge_end = sound_get("sfx_plunge_end");
// these SFX are from DMC i think, sai sent those so i'll give sai credit
sfx_swordhit_weak1 = sound_get("sfx_swordhit_weak1");
sfx_swordhit_weak2 = sound_get("sfx_swordhit_weak2");
sfx_swordhit_weak3 = sound_get("sfx_swordhit_weak3");
sfx_swordhit_medium1 = sound_get("sfx_swordhit_medium1");
sfx_swordhit_medium2 = sound_get("sfx_swordhit_medium2");
sfx_swordhit_heavy1 = sound_get("sfx_swordhit_heavy1");
sfx_swordhit_heavy2 = sound_get("sfx_swordhit_heavy2");

sfx_nspec_aim = sound_get("sfx_nspec_aim");
sfx_nspec_teleport = sound_get("sfx_nspec_teleport");

loop_sound = noone;

// misc.
//changing her portraits according to alts
switch (alt_cur)
{
    case 14:
        set_victory_portrait(sprite_get("portrait_ex1"));
        set_victory_sidebar(sprite_get("result_small_ex1"));
        break;
    default:
        set_victory_portrait(sprite_get("portrait"));
        set_victory_sidebar(sprite_get("result_small"));
        break;
}

//travellers alt shenanigans
if (alt_cur == 7 || alt_cur == 8) alt_mc = true;
else alt_mc = false;

if (alt_cur == 16 && get_match_setting(SET_SEASON) == 3) qiqi_hat = true;
else qiqi_hat = false;
fx_qiqi_vanish = hit_fx_create(sprite_get("qiqi_vanish"), 44);

travel_col_cur = 0;
travel_col_lerp = 0;
travel_col_time = 0;
travel_col[0] = [115, 255, 189]; //anemo
travel_col[1] = [222, 184, 97]; //geo
travel_col[2] = [194, 116, 229]; //electro
travel_col[3] = [98, 214, 83]; //dendro
travel_col[4] = [157, 150, 255]; //hydro
travel_col[5] = [255, 60, 38]; //pryo
travel_col[6] = [186, 248, 255]; //cryo

lerp_array[0] = 115; //these use the
lerp_array[1] = 255; //anemo colors
lerp_array[2] = 189; //cuz it starts in anemo


//read synced vars
var tmp_sync_vars = get_synced_var(player);
for (var i = 0; i < 2; i++)
{
    var shift = (i*4);
    synced_vars[i] = tmp_sync_vars >> shift & 15;
}

//voice clips
switch (synced_vars[0])
{
    default: lang = 0; break;
    case 1: lang = "jp"; break;
    case 2: lang = "en"; break;
    case 3: lang = "cn"; break;
    case 4: lang = "kr"; break;
}
reached_100_damage = false;
cur_voiceclip = [noone, noone];
voice_cooldown = 0;
voice_cooldown_set = 60; //cooldown for regular voiceclips
voice_cooldown_set_100 = 120; //cooldown for high % lines

//damage numbers display
artc_damage = noone;
damage_gap = 0;
prev_damage = 0;
display_damage_numbers = synced_vars[1];



//abyss runes
rune_active = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O"];

//rune A
prev_pos = [0, 0];


//rune C (old = E)
artc_part = noone;
particle_amount = 0;
particle_cd = 0;
fx_runeE_afterimage = hit_fx_create(sprite_get("fx_runeE_afterimage"), 12);

//rune E (ayaka/mona dash) (old = F)
runeE_special_dash = false;

//rune F (dattack off ledge)
coyote_time = 0;
coyote_time_max = 6;
start_coyote_time = false;

//rune G (lisa)
spawn_blast_attack = false;

//rune H (beidou) (old = J)
counter_success = false;
counter_uptime_reset = 40;
counter_uptime = counter_uptime_reset; //can be held down for this amount of frames
counter_damage = 0;

//rune D (genshin stamina) (old = K)
max_stamina = 240;
cur_stamina = max_stamina;
wind_glider_toggle = false;
wind_glider_delay_open = false;
fx_glider_spawn = hit_fx_create(sprite_get("fx_runeK_glider_spawn"), 20);
fx_glider_despawn = hit_fx_create(sprite_get("fx_runeK_glider_despawn"), 20);
genshin_stamina_alpha = 0;
windglider_open_time = 0;


//rune I (crits) (old = L)
crit_rate = 50; //she has a 50% chance to do a crit
crit_val = 0; //scrolls between numbers, if it's higher than crit_rate it will be a crit
crit_damage = 1.5; //it actually also increases knockback and hitpause

//rune L (vision hunt decree) (old = O)
has_resolve_mechanic = has_rune("L");
resolve_max = 600;
resolve_cur = 0;
vhd_attack = false; //applies attack invince to taunt
vhd_effect = false;
vhd_effect_time_max = 60*8;
vhd_effect_time = 0;

vhd_alpha = 1; //it's for the effect behind her



//lyre
playing_lyre_timer = -1;
lyre_hud_fade = 0;
lyre_hud_play_fade = 0; //0 = don't play fade | 1 = play fade | -1 = play_fade in reverse
fx_lyre_note = hit_fx_create(sprite_get(is_gb ? "fx_lyre_note_gb" : "fx_lyre_note"), 20);
fx_lyre_despawn = hit_fx_create(sprite_get(is_gb ? "fx_lyre_despawn_gb" : "fx_lyre_despawn"), 32);
note_input_show = [
    0, 0, 0, 0 ,0 ,0 ,0,
    0, 0, 0, 0 ,0 ,0 ,0,
    0, 0, 0, 0 ,0 ,0 ,0
];
note_show_time_set = 8;

///////////////////////////////////////////////////CUSTOM HITBOX COLOR SYSTEM/////////////////////////////////////////////////
//Custom Hitbox Colors System (by @SupersonicNK)

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
//color array
hb_color[0] = 0;        //nothing
hb_color[1] = $00FFFF;  //sweetspot
hb_color[2] = $FF00FF;  //electro

///////////////////////////////////////////////////WORKSHOP INTERRACTIONS/////////////////////////////////////////////////

// Adventure Mode hit player
hit_player_event = 13;

//draw_hud redirect
draw_hud_event = 14;

//steve death message
steve_death_message = "Steve forgot to level his artifacts";

//soulbound conflict
battle_text = "* Smells like EXP Books and RNG.";

//dialouge buddy
diag_portrait = sprite_get("portrait");

//greenwood cheering character
greenwood_cheer = 4;

//final smash
fs_portrait_x = 24;
fs_char_portrait_y = 96;
fs_char_portrait_override  = sprite_get("portrait");
fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "custom";
fs_char_attack_index = AT_BURST;
fs_hide_meter = true; //it doesn't work for some reason???
fs_meter_y = 6; //because i can't hide it for some reason
fs_charge_mult = 0;

//dracula portrait
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = asset_get("empty_sprite");

//po & gumbo food
var food_random = random_func(current_second, 2, true) + 1;
pot_compat_variable = sprite_get("gumbo_food" + string(food_random));
pot_compat_text = (food_random == 1) ? "Golden Shrimp Balls" : "Survival Grilled Fish";

//mamizou cat
mamizou_transform_spr = sprite_get("mamizou_catqing");

//pokemon stadium
pkmn_stadium_front_img = sprite_get("pokemon_front");
pkmn_stadium_back_img = sprite_get("pokemon_back");
pkmn_stadium_name_override = "keqing";

//sonic trick ring
sonic_rainbowring_atk = 46;

//demon horde
demonhorde_portrait_x = 32;
demonhorde_portrait_y = 64;