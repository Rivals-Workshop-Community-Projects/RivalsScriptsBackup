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
char_height         = 40;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1.2;		// 0.9  -  1.2

// Ground movement
walk_speed          = 4.5;		// 3    -  4.5
walk_accel          = 0.5;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 9;		// 4    -  9
dash_speed          = 8;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 2;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.5;		// 0.25 -  0.5
ground_friction     = 1;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 8;		// 4    -  8
max_jump_hsp        = 8;		// 4    -  8
air_max_speed       = 6;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.4;		// 0.2  -  0.4
prat_fall_accel     = 1;		// 0.25 -  1.5
air_friction        = 0.02;		// 0.02 -  0.07
max_fall            = 16;		// 6    -  11
fast_fall           = 20;		// 11   -  16
gravity_speed       = 0.8;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 13;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 8;		// 4    -  7.4
djump_speed         = 13;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 4;		// 4    -  7
walljump_vsp        = 10;		// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 40;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.1;		// 0    -  0.15
roll_forward_max    = 11;		// 9    -  11
roll_backward_max   = 11;		// 9    -  11       always the same as forward
wave_land_time      = 6;		// 6    -  12
wave_land_adj       = 1.5;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 11;		// 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX

// VFX
emptyfx = hit_fx_create(asset_get("empty_sprite"), 1);

jump_fx = hit_fx_create(sprite_get("jumpglow"), 20);
jump_fx2 = hit_fx_create(sprite_get("jumpglow_overlay"), 20);
trail_fx1 = hit_fx_create(sprite_get("snailtrail"), 21);
trail_fx2 = hit_fx_create(sprite_get("snailtrail2"), 21);
audiotrail_fx1 = hit_fx_create(sprite_get("snailtrail_sonk"), 21);
audiotrail_fx2 = hit_fx_create(sprite_get("snailtrail_sonk2"), 21);
boostrail = hit_fx_create(sprite_get("dash_trail"), 16);
boostrail_over = hit_fx_create(sprite_get("dash_trail_overlay"), 16);
boostarrow = hit_fx_create(sprite_get("dash_arrow"), 16);
jump_arrow = hit_fx_create(sprite_get("jump_arrow"), 20);

glitch1 = hit_fx_create(sprite_get("glitch1"), 16);
glitch2 = hit_fx_create(sprite_get("glitch2"), 16);
glitch3 = hit_fx_create(sprite_get("glitch3"), 16);
glitch4 = hit_fx_create(sprite_get("glitch4"), 16);

square_tail_fx = hit_fx_create(sprite_get("square_trail"), 10);
square_hfx = hit_fx_create(sprite_get("square_hfx"), 18);
square_hfx2 = hit_fx_create(sprite_get("square_hfx_small"), 18);
square_destroy = hit_fx_create(sprite_get("square_destroy"), 15);

pshooter_destroy = hit_fx_create(sprite_get("pshooter_proj_destroy"), 8);
pshooter_hfx = hit_fx_create(sprite_get("pshooter_hfx"), 15);
pshooter_b_hfx = hit_fx_create(sprite_get("pshoot_hfx_big"), 15);

pop_fx = hit_fx_create(sprite_get("uspecial_pop"), 10);

fair_lines = hit_fx_create(sprite_get("fair_warn"), 4);
fair_destroy = hit_fx_create(sprite_get("fair_destroy"), 15);

fspec_trail = hit_fx_create(sprite_get("fspec_trail"), 7);

utilt_hfx = hit_fx_create(sprite_get("explosion_hfx"), 14);

sd_1 = hit_fx_create(sprite_get("selfdestruct"), 30);
sd_2 = hit_fx_create(sprite_get("selfdestruct_overlay"), 30);

// Variables
gaeming = true;
annoyingplaying = false;
mistake = 0;

slidesound_playing = 0;
trailskip = 0;
dattack_dan_why = false;
respawnsound = false;
spike_count = 0;
pshooter_limit = 0;
pcool = 0;
pshoot_carry = false;
pshooter_firing = 0;
cluster_num = 0;
bounce_cluster = 0;
bounce_player = 0;
popportunity = false;

parry_success = false;
jump_index = 0;
jump_index_speed = 0;
idle_index = 0;
walk_index = 0;
lock_x = 9999;
lock_y = 9999;
rolltime = 0;

rune_dattacking = 0;

introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

hat = "none";
hatoffs = 0;
outline = false;

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.2;
crouch_anim_speed   = 0.05;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 1;

// Jumps
double_jump_time    = 24;		// 24   -  40
walljump_time       = 18;		// 18   -  32
wall_frames         = 1;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 4;

// Tech
tech_active_frames      = 9;
tech_recovery_frames    = 3;

// Tech roll
techroll_startup_frames     = 3;
techroll_active_frames      = 6;
techroll_recovery_frames    = 3;

// Airdodge
air_dodge_startup_frames    = 2;
air_dodge_active_frames     = 5;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 3;
roll_forward_active_frames      = 6;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 3;
roll_back_active_frames         = 6;
roll_back_recovery_frames       = 3;

// Crouch
crouch_startup_frames   = 3;
crouch_active_frames    = 1;
crouch_recovery_frames  = 3;

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
hurtbox_spr         = sprite_get("shelly_hurtbox");
crouchbox_spr       = sprite_get("shelly_crouchbox");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_portrait( sprite_get( "portrait" ));
set_victory_bg(sprite_get("winbg")); // victory_background.png
set_victory_theme(sound_get("shelly_victory")); // victory_theme.ogg

// Movement SFX
isrobot = false;
land_sound          = sound_get("shelly_land");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = sound_get("shelly_waveland"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = sound_get("shelly_jump");
djump_sound         = sound_get("shelly_djump");
air_dodge_sound     = asset_get("sfx_quick_dodge");
walk_sound          = sound_get("shelly_slide");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

small_sprites = 1;

// ========== NODES ==========
// variables
nodes_max = 3;
node_power = noone;
node_handler = noone;
node_handler_should_create = true;
node_connected = noone;
node_hb_lifetime = 15;

// vfx
vfx_node = hit_fx_create(sprite_get("puzzlenode_hfx"), 18);
vfx_node_power = hit_fx_create(sprite_get("puzzlenode_fx"), 15);
vfx_node_power_o = hit_fx_create(sprite_get("puzzlenode_fx_overlay"), 15);
node_kill = hit_fx_create(sprite_get("puzzle_destroy"), 15);
node_kill2 = hit_fx_create(sprite_get("puzzle_destroy2"), 15);

// sfx
sfx_node_link = sound_get("node_link");
sfx_node_get = sound_get("node_get");
sfx_node_dc = sound_get("node_dc");
sfx_node_power = sound_get("node_power");
sfx_node_takedown = sound_get("node_takedown");

// sprites
spr_node_line = sprite_get("puzzle_line");
spr_node_glow = sprite_get("puzzlenode_glow");
spr_node_radius = sprite_get("puzzle_radius");
spr_node_hurt = sprite_get("puzzlenode_stick_hurt");

spr_node = sprite_get("puzzlenode_stick");
spr_node_air = sprite_get("puzzlenode_flake");
spr_node_power = sprite_get("puzzlenode_power");
spr_node_power_air = sprite_get("puzzlenode_power_air");

n_sprid = 0;
l_sprid = 0;

switch get_player_color(player) {
    case 2:
		n_sprid = 4;
        break;
	case 3:
		n_sprid = 3;
        break;
	case 4:
	case 27:
		n_sprid = 2;
        break;
	case 5:
		n_sprid = 5;
        break;
    case 10:
	case 11:
	case 12:
	case 13:
		n_sprid = 1;
		l_sprid = 1;
        break;
	case 14:
	case 15:
	case 16:
	case 17:
	case 18:
	case 19:
	    isrobot = true;
	    land_sound          = sound_get("shellyrobo_land");
        landing_lag_sound   = asset_get("sfx_land_med");
        waveland_sound      = sound_get("shellyrobo_waveland");
        jump_sound          = sound_get("shellyrobo_jump");
        djump_sound         = sound_get("shellyrobo_djump");
		walk_sound          = sound_get("shellyrobo_slide");
	    break;
    case 24:
        spr_node = sprite_get("puzzlenode_flag");
		n_sprid = 6;
        break;
    case 25:
        spr_node = sprite_get("puzzlenode_flag");
		n_sprid = 7;
        break;
    case 26:
        spr_node = sprite_get("puzzlenode_flag");
		n_sprid = 8;
        break;
    default:
        spr_node = sprite_get("puzzlenode_stick");
        spr_node_air = sprite_get("puzzlenode_flake");
        spr_node_power = sprite_get("puzzlenode_power");
		spr_node_power_air = sprite_get("puzzlenode_power_air");
		n_sprid = 0;
		l_sprid = 0;
        break;
}
// ===========================

HG_ZAP = 69; //nice

//COMPAT
sprite_change_offset("comp_miiverse", 60, 30);
miiverse_post = sprite_get("comp_miiverse");

pkmn_stadium_front_img = sprite_get("comp_stadium_front");
pkmn_stadium_back_img = sprite_get("comp_stadium_back");
pkmn_stadium_name_override = ("SHELLY");

tcoart = sprite_get("comp_tco");

sprite_change_offset("comp_luigi", 27, 39);
resort_portrait = sprite_get("comp_luigi")

sprite_change_offset("comp_feri", 84, 114);
feri_costume = sprite_get("comp_feri");

sprite_change_offset("comp_guilty", 31, 0);
guiltySprite = sprite_get("comp_guilty")

ncode1 = "This unassuming snail is backed by a powerful,"
ncode2 = "hyperintelligent AI, maybe two. More data needed."
ncode3 = "Extreme caution is advised."

Hikaru_Title = "Evil Snail";

TCG_Kirby_Copy = 2;

arena_title = "The Simulated Saviour";

battle_text = "*You can hear voicelines speaking to you!";

//adventure
pronouns = ["he","him","his","is"];
am_is_verbal = false;
am_is_noob = false;
am_is_big = false; 
am_is_clothed = false;

//final smash
fs_char_attack_index = 49;
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 88;
nested_anim = 0;
nesthit_anim = 0;
cutscene = 0;
fs_start = 0;

//cheapie "support" :)
cheapdetected = 0;
cheapx = 0;
cheapy = 0;
cheapies = [
"1890617624", //ronald
"1879683632", //rock kragg
"1867634411", //duane
"1867713261", //mighty tnt 
"1901470136", //pissing 1
"2127652847", //super paper
"1871153050", //100 fox
"1970731843", //100 metaknight
"1877253352", //200 falco
"1871281672", //squidward
"1993556113", //100 cloud
"1870688282", //Obama
"2020372134", //mighty TNT
"1892707606", //emolga?
"2508425343", //big shitter
"2709464147", //chuckster
"2063121680", //speed link
"2190448871", //speed mario
"2048893131", //spamus
"1935008125", //weegee
"1954841174", //tetris
"2605435443", //big band
"2801790612"  //pepsi man
]
                                          
// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);