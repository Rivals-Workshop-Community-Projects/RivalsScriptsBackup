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

// STAT NAME		    VALUE       BASECAST RANGE      NOTES

// Physical size
char_height             = 74;       //                  the height of the overhead hud - the arrow with your name and %
knockback_adj           = 1;		// 0.9  -  1.2

// Ground movement
walk_speed              = 2;		// 3    -  4.5
walk_accel              = 0.2;		// 0.2  -  0.5
walk_turn_time          = 6;		// 6
initial_dash_time       = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed      = 7;		// 4    -  9
dash_speed              = 6.5;		// 5    -  9
dash_turn_time          = 14;		// 8    -  20
dash_turn_accel         = 1.5;		// 0.1  -  2
dash_stop_time          = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent       = 0.35;		// 0.25 -  0.5
ground_friction         = 0.5;		// 0.3  -  1
moonwalk_accel          = 1.3;		// 1.2  -  1.4

// Air movement
leave_ground_max        = 6;		// 4    -  8
max_jump_hsp            = 6;		// 4    -  8
air_max_speed           = 4;  		// 3    -  7
jump_change             = 3;		// 3
air_accel               = 0.3;		// 0.2  -  0.4
prat_fall_accel         = 0.85;		// 0.25 -  1.5
air_friction            = 0.04;		// 0.02 -  0.07
max_fall                = 9;		// 6    -  11
fast_fall               = 14;		// 11   -  16
gravity_speed           = 0.5;		// 0.3  -  0.6
hitstun_grav            = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time         = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed              = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed         = 6;		// 4    -  7.4
djump_speed             = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel             = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time    = 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps              = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp            = 6;		// 4    -  7
walljump_vsp            = 8;		// 7    -  10
land_time               = 5;		// 4    -  6
prat_land_time          = 15;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction           = 0.12;		// 0    -  0.15
wave_land_time          = 8;		// 6    -  12
wave_land_adj           = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
roll_forward_max        = 9;		// 9    -  11
roll_backward_max       = 9;		// 9    -  11       always the same as forward
air_dodge_speed         = 7.5;		// 7.5  -  8
techroll_speed          = 10;		// 8    -  11



// Animation Info
// Misc. animation speeds
idle_anim_speed         = 0.15;
crouch_anim_speed       = 0.1;
walk_anim_speed         = 0.2;
dash_anim_speed         = 0.3;
pratfall_anim_speed     = 0.25;

// Crouch
crouch_startup_frames   = 3;
crouch_active_frames    = 10;
crouch_recovery_frames  = 3;
//a dan moment makes it so the last frame needs to be doubled, the strip actually has 3 frames but the last 2 are the same

// Jumps
double_jump_time        = 30;		// 24   -  40
walljump_time           = 16;		// 18   -  32
wall_frames             = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 6;

// Airdodge
air_dodge_startup_frames    = 0;
air_dodge_active_frames     = 1;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = roll_forward_startup_frames;
roll_back_active_frames         = roll_forward_active_frames;
roll_back_recovery_frames       = roll_forward_recovery_frames;
roll_fx = hit_fx_create(sprite_get("roll_fx"), 25);

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 3;

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
set_victory_bg(sprite_get("winscreenbg1")); // sprites\winscreen.png - name doesn't matter, the size has to be 480 x 270 pixels big, usually has this puple filter on it
set_victory_theme(sound_get("mus_victory")); // sounds\mus_victory.ogg - leave some silence in the file after the victory theme finishes

//color stuff
alt_cur = get_player_color(player);
var corr = (!alt_cur? "corr_": "");
set_ui_element(UI_WIN_PORTRAIT, sprite_get(corr + "portrait"));
set_ui_element(UI_WIN_PORTRAIT, sprite_get(corr + "portrait"));
set_ui_element(UI_WIN_SIDEBAR, sprite_get(corr + "result_small"));
set_ui_element(UI_CHARSELECT, sprite_get(corr + "charselect"));
set_ui_element(UI_HUD_ICON, sprite_get(corr + "hud"));
set_ui_element(UI_HUDHURT_ICON, sprite_get(corr + "hud_hurt"));

//sfx change
air_dodge_sound = sound_get("CharSFX_Dash_v1");
jump_sound = sound_get("CharSFX_Jump_v1");
djump_sound = sound_get("CharSFX_Jump_v3");
stop_sfx = 0;

//respawn
respawn_anim = 0;
platpos = [0, 0, 1];

//qi and parry
parry_hit = 0;
qi_stack = 3; //caps at 5
parry_fx = hit_fx_create(sprite_get("unbounded_parry"), 21);
unbound_fx_idx = 0;
unbound_timer = 0;
parryboost = 0;
qianim = [0, 0, 0, 0, 0];
qifrm = [0, 0, 0, 0, 0];
taichi_cooldown = 0;

//dstrong
movepl = [];

//fspecial
grabp = noone;
grabp2 = noone;
draw_fx = 0;
fx_shape = hit_fx_create(sprite_get("talishapes"), 60);
fx_explode = hit_fx_create(sprite_get("talisman_explode"), 28);
fspec_charge = 0;
fspec_single_charge = 15;
fspec_fx_pos = [[0, -80], [40, -50], [-40, -50], [20, 0], [-20, 0]];
dashline = hit_fx_create(sprite_get("dashline"), 20);
dash_vfx = noone;
fspecial_dashhit = 0;

//nspecial
circletimer = 0;
bowcharge = hit_fx_create(sprite_get("bowcharge"), 28);

//uspecial
usp_pos = [0, 0];
usp_angle = -30;
mov_angle = 0;
usp_pratcancel = 1;
usp_wallboost = 0;
on_controller = 0;
uspecial_detectbox = noone;

//dspecial
nymph = noone;
nymphcontrol = 0;
is_Yi_ninesols = 1;
nymph_cooldown = 0;
nymphbounce = 3;
nymphgrab = 1;
playtest_active = false;
with (oTestPlayer) playtest_active = true;

//hit fx
hit_slash_small = hit_fx_create(sprite_get("slashhit"), 20);
hit_slash_big = hit_fx_create(sprite_get("bigslashhit"), 24);
hit_bow_big = hit_fx_create(sprite_get("arrowhit"), 20);

djump_fx = hit_fx_create(sprite_get("jumpvfx"), 15);

nymph_color = make_color_rgb(get_color_profile_slot_r(alt_cur, 6), get_color_profile_slot_g(alt_cur, 6), get_color_profile_slot_b(alt_cur, 6));
last_stand = hit_fx_create(asset_get("empty_sprite"), 16);
last_stand_dmg = 99;

//compats
user_event(2);