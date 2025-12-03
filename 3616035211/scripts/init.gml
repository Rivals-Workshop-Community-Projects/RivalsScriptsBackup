/*#region base data
 * STAT NOTES
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
char_height             = 52;       //                  the height of the overhead hud - the arrow with your name and %
knockback_adj           = 1;		// 0.9  -  1.2

// Ground movement
walk_speed              = 3;		// 3    -  4.5
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
walljump_hsp            = 7;		// 4    -  7
walljump_vsp            = 9;		// 7    -  10
land_time               = 4;		// 4    -  6
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
idle_anim_speed         = 0.12;
crouch_anim_speed       = 0.12;
walk_anim_speed         = 0.15;
dash_anim_speed         = 0.25;
pratfall_anim_speed     = 0.25;

// Crouch
crouch_startup_frames   = 3;
crouch_active_frames    = 12;
crouch_recovery_frames  = 3;
//a dan moment makes it so the last frame needs to be doubled, the strip actually has 3 frames but the last 2 are the same

// Jumps
double_jump_time        = 30;		// 24   -  40
walljump_time           = 18;		// 18   -  32
wall_frames             = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 3;

// Airdodge
air_dodge_startup_frames    = 2;
air_dodge_active_frames     = 1;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = roll_forward_startup_frames;
roll_back_active_frames         = roll_forward_active_frames;
roll_back_recovery_frames       = roll_forward_recovery_frames;

// Tech
tech_active_frames      = 1;
tech_recovery_frames    = 3;

// Tech roll
techroll_startup_frames     = roll_forward_startup_frames;
techroll_active_frames      = roll_forward_active_frames;
techroll_recovery_frames    = roll_forward_recovery_frames;

// Hurtbox sprites
hurtbox_spr         = sprite_get("hurtbox");
crouchbox_spr       = sprite_get("hurtbox_crouch");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr


// Victory
set_victory_bg(sprite_get("winscreen")); // sprites\winscreen.png - name doesn't matter, the size has to be 480 x 270 pixels big, usually has this puple filter on it
set_victory_theme(sound_get("mus_victory")); // sounds\mus_victory.ogg - leave some silence in the file after the victory theme finishes

//extra init because I'm lazy

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 8.3;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 12;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
wall_frames = 1;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 10;
crouch_recovery_frames = 3 ;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;   
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 4;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 3;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
//#endregion

//hit effects
fx_gas_dtilt = hit_fx_create(sprite_get("gas_dtilt"), 15);
fx_gas_uspecial = hit_fx_create(sprite_get("gas_uspecial"), 24);
fx_gas_uspecial_trail = hit_fx_create(sprite_get("gas_uspecialpuff"), 16);
fx_gas_dstrong = hit_fx_create(sprite_get("gas_dstrong"), 20);
fx_gas_tp = hit_fx_create(sprite_get("vfx_nspecial"), 16);
fx_ignite = hit_fx_create(sprite_get("vfx_ignite"), 24);
fx_jm_bounce = hit_fx_create(sprite_get("JMLBounce"), 28);
fx_jm_bounce2 = hit_fx_create(sprite_get("JMLBounce2"), 28);
fx_stop = noone;

//flags
alt_cur = get_player_color(player);
jestermode = get_synced_var(player);

//dattack
dattack_turn = 0;
butthurt = 0;

//tokens
tokens = 3;
token_recharge = 0;

//parry
rand_parry_sprite = 0;

//nspecial
tp_dist = 120;
startpos = [0, 0];
cloud1_dist = 0;
cloud2_dist = .5;
Imstinkeringit = true;

//fspecial
drill_speed = 9;
drill_angle = 0;

var alt_cur = get_player_color(player);
set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait" + (alt_cur == 13? "EXE": "")));
set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small" + (alt_cur == 13? "EXE": "")));
set_ui_element(UI_CHARSELECT, sprite_get("charselect" + (alt_cur == 13? "EXE": "")));

//win screen
set_victory_bg(sprite_get(""));
set_victory_theme(sound_get("music_win_stink"));
if alt_cur == 12 set_victory_theme(sound_get("music_win_hook"));
if alt_cur == 22 set_victory_theme(sound_get("music_win_TWEWY"));
if alt_cur == 7 set_victory_bg(sprite_get("winscreenEA"));
if alt_cur == 20 set_victory_bg(sprite_get("winscreenrisk"));
if alt_cur == 20 set_victory_theme(sound_get("music_win_risk"));
if alt_cur == 29 set_victory_bg(sprite_get("winscreenYap"));
if alt_cur == 29 set_victory_theme(sound_get("music_win_yapyap"));
if alt_cur == 21 set_victory_bg(sprite_get("winscreenPrincess"));
if alt_cur == 21 set_victory_theme(sound_get("music_win_princess"));
if alt_cur == 13 set_victory_theme(sound_get("music_win_IAMGOD"));
if alt_cur == 13 set_victory_bg(sprite_get("winscreenHOPELESS"));
if alt_cur == 19 set_victory_theme(sound_get("music_win_sonic"));
if alt_cur == 18 set_victory_theme(sound_get("music_win_smoke"));
if alt_cur == 28 set_victory_theme(sound_get("music_win_creatures"));


//Compaaaatablitiesilies

//Hikaru Title, da fox
Hikaru_Title = "Last Breath";

//Miiverse
//miiverse_post = sprite_get("miiverse1");

//Soulbound Conflict
battle_text = "* Smells like trouble.";

//Dedede Stadium
arena_title = "Scatterbrained Skunk-For-Hire";

///Agent N codec
ncode1 = "A race of skunks hailing from the world of Samsara."
ncode2 = "Their bodies produce a wide variety of gases with"
ncode3 = "unpredictable properties. Proceed with caution."

//The Chosen One drawing
tcoart = sprite_get("tcoskunk");

//Toon Link photo
toonlink_photo = sprite_get("tinkphoto");
toonlink_photo2 = 2;

//Reiga's The Knight
knight_compat_dream = 
    [
        "Hahahahahaha...",
        "Yessss, slllash and staaab...",
        "Kaboooooom..."
    ]

buddy_starko_sfx = sound_get("buddy_starko");
buddy_screenko_sprite = sprite_get("buddy_screenko");
// buddy_screenko_sfx = sound_get("buddy_screenko");
// buddy_screenko_voice_sfx = sound_get("buddy_screenko_voice");
// buddy_starko_sprite = sprite_get("buddy_starko");

//Dracula support (yadda yadda you don't belong in this world)
{
dracula_portrait = sprite_get("draculaportrait");
dracula_portrait2 = sprite_get("draculaportrait2");
var page = 0;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "GAHAHAHA! I am here! We fight now, yes?"
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = "What insolent creature wanders into my domain uninvited?";
page++;

//Page 2
dracula_speaker[page] = 2;
dracula_text[page] = "Me.";
page++;

//Page 3
dracula_speaker[page] = 0;
dracula_text[page] = "Tell me; what business do you have here? What would compel you to carelessly venture towards your demise?";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "Are you even aware of where you tread? Of whom you address with such ignorance?";
page++;

//Page 5
dracula_speaker[page] = 2;
dracula_text[page] = "No. I get paid, I fight who I must. We fight now, yes?";
page++;

//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "This will be no grand battle.[glass] Simply an execution.";
page++;

//Page 7
dracula_speaker[page] = 1;
dracula_text[page] = "YES, HAHAHA! SLLLLASH AND STAB!";
page++;
}

//Daroach support, squeak squeak
{
daroach_portrait = sprite_get("draculaportrait");
daroach_portrait2 = sprite_get("draculaportrait2");
daroach_portrait3 = asset_get("empty_sprite");
var page = 0;

//Page 0
daroach_speaker[page] = 1;
daroach_text[page] = "Hello!";
page++;

//Page 1
daroach_speaker[page] = 0;
daroach_text[page] = "What the-? How and when did you get in here!?";
page++;

//Page 2
daroach_speaker[page] = 1;
daroach_text[page] = "Window. Five minutes ago.";
page++;

//Page 3
daroach_speaker[page] = 0;
daroach_text[page] = "We've been airborne for hours...";
page++;

//Page 4
daroach_speaker[page] = 1;
daroach_text[page] = "I join your group of thieves.";
page++;

//Page 5
daroach_speaker[page] = 0;
daroach_text[page] = "Pardon?";
page++;

//Page 6
daroach_speaker[page] = 1;
daroach_text[page] = "I wanna become a Squeak!";
page++;

//Page 7
daroach_speaker[page] = 0;
daroach_text[page] = "We...aren't really accepting applications.";
page++;

//Page 8
daroach_speaker[page] = 2;
daroach_text[page] = "...";
page++;

//Page 9
daroach_speaker[page] = 1;
daroach_text[page] = "I prove myself in combat then!";
page++;

//Page 10
daroach_speaker[page] = 0;
daroach_text[page] = "That isn't what I said at all!";
page++;

//Page 11
daroach_speaker[page] = 1;
daroach_text[page] = "We fight now!";
page++;

//Page 12
daroach_speaker[page] = 0;
daroach_text[page] = "Hmph! No use talking in circles, is there? We'll see if you impress me or if you'll be thrown overboard!";
page++;
}