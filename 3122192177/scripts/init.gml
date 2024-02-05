/*
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

// STAT NAME		VALUE       BASECAST RANGE   NOTES

// Physical size
char_height         = 64;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 6.75;		// 4    -  9
dash_speed          = 5.75;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4.6;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.4;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 4.5;		// 4    -  7.4
djump_speed         = 9.5;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.14;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.13;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.1;

// Jumps
double_jump_time    = 20;		// 24   -  40
walljump_time       = 18;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 3;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 5;
techroll_recovery_frames    = 3;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 6;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 5;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 5;
roll_back_recovery_frames       = 3;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 6;
crouch_recovery_frames  = 2;

/*

Muno's Words of Wisdom: Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation. Dan Moment

*/



// Hurtbox sprites
hurtbox_spr         = sprite_get("aerith_hurtbox");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victorybg")); // victory_background.png
//set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

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

holy_impact = hit_fx_create(sprite_get("holy_impact"), 15);
holy_big_impact = hit_fx_create(sprite_get("holy_big_impact"), 24);
gravity_impact = hit_fx_create(sprite_get("gravity_impact"), 15);
gravity_big_impact = hit_fx_create(sprite_get("gravity_big_impact"), 24);
death_impact = hit_fx_create(sprite_get("death_impact"), 15);
death_big_impact = hit_fx_create(sprite_get("death_big_impact"), 24);
magicpetal = hit_fx_create(sprite_get("magicfx_petal"), 12);
dstrong_vfx = hit_fx_create(sprite_get("dstrong_actualvfx"), 9);
break_vfx = hit_fx_create(sprite_get("break_destroy"), 30);
bubblepop = hit_fx_create(sprite_get("bubblepop"), 6);

tifa_vfx = hit_fx_create(sprite_get("taunt2_tifa"), 124);
cloud1_vfx = hit_fx_create(sprite_get("taunt1a_cloud"), 68);
cloud2_vfx = hit_fx_create(sprite_get("taunt1b_cloud"), 144);

//vars
nspec_charge = 0;
materia_state = 0;
materia_state_timer = 0;
curr_materia = 0;
materia_lockedin = false;
draw_materia = 0;
played_fanfare = false;
catalyst_spell = 0;

uspec_has_boosted = false;

death_target = noone;
death_timer = 0;
death_owner = noone;

activate_fspecial = false;
destroy_field = false;

materia_field = 0;
in_range_of_field = false;

dstrong_charged = false;
dstrong_var = false;

break_id = noone;

nspec_hud_trans = 0;
begin_nspechud = false;

is_frog = false;
frog1_id = noone;
frog2_id = noone;
frog3_id = noone;
frog4_id = noone;
bubpop_pitch = 0;
//aerith_id = self;

//limit outline
color_timer = 0;
color_phase = 0;

//alt form (i got this from dedede but it's originally from equi (?))
dressed = false;
set_victory_portrait(sprite_get("portrait_1"));
switch (get_player_color(player)){
    case 0:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 18:
    case 20:
    case 21:
    case 23:
    case 25:
    case 27:
    case 28:
    case 29:
    case 30:
    dressed = false;
    set_victory_portrait(sprite_get("portrait_1"));
	set_ui_element(UI_CHARSELECT, sprite_get("charselect_1"));
	set_ui_element(UI_HUD_ICON, sprite_get("hud_1"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hurt_1"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small_1")); 
	set_ui_element(UI_OFFSCREEN, sprite_get("offscreen_1"));
    break;
    
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 16:
    case 17:
    case 19:
    case 22:
    case 24:
    case 26:
    dressed = true;
    set_victory_portrait(sprite_get("portrait_2"));
	set_ui_element(UI_CHARSELECT, sprite_get("charselect_2"));
	set_ui_element(UI_HUD_ICON, sprite_get("hud_2"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hurt_2"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small_2")); 
	set_ui_element(UI_OFFSCREEN, sprite_get("offscreen_2"));
    break;
}

current_sprite_set = 0;
num_sprite_sets = 2;

checked_sprite_names = [
    "idle", 
    "crouch", 
    "walk", 
    "walkturn", 
    "dash", 
    "dashstart", 
    "dashstop", 
    "dashturn", 
    
    "hurt",
    "hurtground",
    "bighurt",
    "uphurt",
    "downhurt",
    "bouncehurt",
    "spinhurt",
    
    "jumpstart", 
    "jump", 
    "doublejump", 
    "walljump", 
    "pratfall", 
    "land", 
    "landinglag", 
    
    "parry", 
    "roll_forward", 
    "roll_backward", 
    "airdodge", 
    "waveland", 
    "tech", 
    
    "jab", 
    "dattack", 
    "ftilt", 
    "dtilt", 
    "utilt", 
    "nair", 
    "fair", 
    "bair", 
    "uair", 
    "dair", 
    "fstrong", 
    "ustrong", 
    "dstrong", 
    "nspecial", 
    "nspecial_air", 
    "nspecial2", 
    "nspecial3", 
    "fspecial", 
    "fspecial_air",
    "uspecial", 
    "uspecial2", 
    "uspecial_air",
    "dspecial", 
    "dspecial2",
    "taunt1a",
    "taunt1b",
    "taunt2",
    "taunt3",
    "taunt4",
    "intro"
    ];