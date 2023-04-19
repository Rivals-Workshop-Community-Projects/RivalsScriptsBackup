//#region base stuff
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
char_height         = 110;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.96;		// 0.9  -  1.2

// Ground movement
walk_speed          = (has_rune("D")? 6: 3.25);		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 20;		// 6
initial_dash_time   = 12;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = (has_rune("D")? 8: 5);		// 4    -  9
dash_speed          = (has_rune("D")? 8.5: 5.5);		// 5    -  9
dash_turn_time      = 20;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 12;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 6;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = (has_rune("D")? 8: 4);  		// 3    -  7
jump_change         = 5;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 9;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 8;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 10;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0;
walk_anim_speed     = 0.15;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 20;		// 24   -  40
walljump_time       = 14;		// 18   -  32
wall_frames         = 1;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 3;
dodge_active_frames     = 2;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 4;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 5;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 5;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 5;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 4;
crouch_active_frames    = 1;
crouch_recovery_frames  = 4;

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
hurtbox_spr = sprite_get("box_idle");
crouchbox_spr = sprite_get("box_crouch");
air_hurtbox_spr = sprite_get("box_air");
hitstun_hurtbox_spr = -1;

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

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

//#endregion

//#region emmi variables
inputs = ["right_pressed",
          "up_pressed",
          "left_pressed",
          "down_pressed",
          "attack_pressed",
          "special_pressed",
          "right_strong_pressed",
          "up_strong_pressed",
          "left_strong_pressed",
          "down_strong_pressed",
          "right_down",
          "up_down",
          "left_down",
          "down_down",
          "attack_down",
          "special_down",
          "right_strong_down",
          "up_strong_down",
          "left_strong_down",
          "down_strong_down"
         ];
inputs_val = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
game_time = 0;

//#region plate variables
plate = 0;
plate_hp = (has_rune("H")? 50: 30);
plate_timer = 20;
//#endregion

//#region wall
wall = 0;
mask_index = sprite_get("def_mask");
statet = 0;
turning = 0;
wall_cool = 20;
wall_en = 300;
hud_timer = 24;
wall_c = [[-53 * spr_dir, 4, 48 * spr_dir, 0], [0, -53 * spr_dir, 4, 48 * spr_dir], [-53 * spr_dir, -4, 48 * spr_dir, 0], [0, 53 * spr_dir, -4, -48 * spr_dir]];
should_vis = 1;
//#endregion

//#region radar
awareness = 0; //0 - 1000
aware = 0; //0 - 2
init_shader();
aware_sound = 0;
light = 0;
hit_aw = 0;
ea = 0;
highest_p = player;
radar_col = [0, 0, 0];

//sfx
emmi_ch_sfx = noone;
emmi_cancel = 0;

radar_img = 8; //small
radar_rad1 = 0;

radar_rad2 = 0 //big
radar_a = 0;
radar_b_pos = [[0, 0], [-16, + 20], [0, + 40], [+16, 50]];
radx = x;
rady = y;

radar_color = [
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(199, 199, 199), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(11, 186, 255)],
    [make_color_rgb(15, 181, 0), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(15, 181, 0), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(11, 186, 255), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(get_color_profile_slot_r(23, 6), get_color_profile_slot_g(23, 6), get_color_profile_slot_b(23, 6)), make_color_rgb(get_color_profile_slot_r(23, 6), get_color_profile_slot_g(23, 6), get_color_profile_slot_b(23, 6)), make_color_rgb(get_color_profile_slot_r(23, 6), get_color_profile_slot_g(23, 6), get_color_profile_slot_b(23, 6))],
    [make_color_rgb(15, 56, 15), make_color_rgb(139, 172, 15), make_color_rgb(15, 56, 15)],
    [make_color_rgb(145, 60, 207), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)],
    [make_color_rgb(204, 184, 224), make_color_rgb(168, 115, 221), make_color_rgb(110, 0, 221)],
    [make_color_rgb(199, 199, 199), make_color_rgb(255, 195, 0), make_color_rgb(255, 11, 11)]
];

radar_pos = [
    [[46, -38, 0], [46, -40, 0], [46, -40, 0], [46, -38, 0], [46, -36, 0], [46, -38, 0], [46, -38, 0], [46, -38, 0]],//idle
    [[46, -36, 0], [46, -34, 0], [46, -32, 0], [46, -30, 0], [46, -24, 0], [46, -30, 0], [46, -32, 0], [46, -34, 0], [46, -36, 0]],//crouch
    [[46, -34, 0], [46, -34, 0], [48, -34, 0], [46, -34, 0], [46, -32, 0], [46, -32, 0], [46, -32, 0]],//walk
    [[46, -36, 0], [46, -30, 0], [46, -26, 0], [46, -24, 0], [46, -24, 0], [46, -24, 0]],//dashstart
    [[46, -22, 0], [46, -22, 0], [46, -22, 0], [46, -22, 0], [46, -22, 0], [46, -22, 0]],//dash
    [[46, -24, 0], [46, -30, 0], [46, -32, 0], [46, -34, 0], [46, -36, 0], [46, -36, 0]],//dashstop
    [[46, -26, 0]],//wavedash
    [[-38, -24, 180], [-58, -30, 160], [-94, -72, 120], [-64, -100, 90], [0, -104, 30], [32, -64, 0], [48, -36, 320], [38, -23, 350], [46, -32, 20]],//walkturn
    [[-38, -24, 180], [-58, -30, 160], [-94, -72, 120], [-64, -100, 90], [0, -104, 30], [32, -64, 0], [48, -36, 320], [38, -23, 350], [46, -32, 20]],//dashturn
    [[0, 0, 0], [0, 0, 0], [0, 0, 0], [20, -24, 0], [36, -13, 0], [48, -34, 30], [46, -102, 60]],//jumpstart
    [[54, -80, 35], [54, -56, 0], [52, -32, 0], [52, -28, 328], [0, 0, 0], [0, 0, 0], [46, -102, 60]],//first jump
    [[54, -80, 35], [54, -56, 0], [52, -32, 0], [52, -28, 328]],//double jump
    [[0, 0, 0], [0, 0, 0], [0, 0, 0], [52, -28, 328]],//idle air
    [[46, -36, -30], [54, -30, -30], [42, -40, -30], [30, -76, -30], [-4, -100, -30], [-6, -104, -30], [-4, -104, -30], [-4, -106, -30], [-4, -110, -30], [-4, -112, -30], [-4, -112, -30], [-2, -112, -30], [-2, -112, -30], [-4, -112, -30], [-4, -112, -30], [-4, -110, -30], [-4, -110, -30], [-4, -110, -30], [-4, -112, -30], [-4, -110, -30], [-4, -112, -30], [-4, -114, -30], [-4, -114, -30], [-4, -110, -30], [-4, -108, -30], [-4, -108, -30], [-4, -106, -30], [-4, -108, -30], [-4, -108, -30], [-4, -108, -30], [-4, -110, -30], [-4, -110, -30], [-4, -112, -30], [-4, -114, -30], [-4, -114, -30], [-4, -112, -30], [-4, -108, -30], [-4, -106, -30], [-4, -104, -30], [-4, -106, -30], [-4, -106, -30], [-4, -106, -30], [-4, -108, -30], [-4, -112, -30], [-8, -120, 0], [-22, -126, 35], [-32, -132, 60], [-50, -134, 90], [-70, -130, 130], [-84, -118, 170], [-90, -116, 180], [-92, -114, 200], [-106, -112, 210], [4, -110, -30], [26, -102, -30], [6, -110, -30], [-4, -100, -50], [-8, -102, -50], [-4, -110, -30], [-2, -102, -30], [30, -76, -30], [54, -32, 0], [46, -38, 0]]//taunt
];
radar_x = 0;
radar_y = 0;
radar_angle = 0;
//#endregion

//#region nspecial
hold = 0;
grabp = noone;
grab_angle = 0;
timingp = 0;
timingo = 0;
timingt = 0;
flash = noone;
sresume = 0;
//#endregion

//#region dspecial
orb_lv = 0;
orb1 = hit_fx_create(sprite_get("orb1_hit"), 12);
orb2 = hit_fx_create(sprite_get("orb2_hit"), 14);
orb3 = hit_fx_create(sprite_get("orb3_hit"), 20);
//#endregion

//#region parry
pratcancel = 1;
//#endregion

//#region og attack angles
og_angle = [];
og_pos = [];
og_size = [];
og_dir = 0;
load_atk = 1;
temp1 = [];
temp2 = [];
temp3 = [];
//#endregion

//#region uspecial
usp_dir = 0;
univ_dir = 0;
usp_ch = 0;
cols = [get_color_profile_slot_r(get_player_color(player), 7), get_color_profile_slot_g(get_player_color(player), 7), get_color_profile_slot_b(get_player_color(player), 7)];
//#endregion

//#region guide menu
menu_open = 0;
menu_timer = 0;
shut_light = 0;
menu_pos = [[0, 0], [0, 0], [0, 0], [0, 0]];
menu_anim_timer = 0;
intro_played = 0;
intro_timer = 0;
page = 0;
page_num = 16;
page_alpha = 0;
page_lockout = 0;
page_anim_timer = 0;
jingle = noone;
guide_open = 0;
guide_alpha = 0;

page_titles = [
"WELCOME TO THE USER MANUAL OF YOUR E.M.M.I. UNIT",
"POLICIES",
"GIMMICK N1: SEARCHLIGHT",
"GIMMICK N2: FACEPLATE",
"GIMMICK N3: WALL CLIMB",
"JAB & TILTS",
"DASH ATTACK",
"STRONGS",
"AERIALS",
"NEUTRAL SPECIAL",
"NEUTRAL SPECIAL TIMING",
"FORWARD SPECIAL",
"DOWN SPECIAL",
"UP SPECIAL",
"TAUNT",
"CREDITS",
"",
];

page_text = [
"",
"Thank you for purchasing one of the first prototypes of the Extraplanetary Multiform Mobile Identifier, or E.M.M.I. for short." + chr(10) + "This product has a 3 year warranty that covers the following occurrences:" + chr(10) + "-theft" + chr(10) + "-fire" + chr(10) + "-mechanical failure of any component" + chr(10) + "However, the warranty will not cover the following occurrences:" + chr(10) + "-highly advanced races of bird people hacking into the E.M.M.I.'s firmware to take control of the machine" + chr(10) + "-bounty hunters" + chr(10) + "" + chr(10) + "Thank you for choosing Exelion Star Corporation.",
"Any creature spotted by the searchlight will make the meter on the HUD increase, and it will deactivate once it reaches max." + chr(10) + "The meter has 3 stages: roaming (blue), search (yellow), and chase (red); once the meter goes red, it will start depleting and chase mode will be active. If an opponent is kept within the red circle around E.M.M.I. during chase mode, the meter will deplete at a slower pace." + chr(10) + "Every stage of the meter past roaming (blue) will increase the damage of all attacks by a flat 3% (except fair and nair), and will also increase movement speed both on ground and walls.",
"The E.M.M.I. is equipped with a sturdy faceplate that grants soft armor if intact." + chr(10) + "The plate has a pool of 30hp that regenerates over time and any hit E.M.M.I. takes will reduce the hp of the plate regardless if it was armored or not." + chr(10) + "The meter with the shield icon on the HUD will show how much hp the plate has left.",
"Thanks to its strong claws, the E.M.M.I. unit is capable of climbing any kind of surface. If you move towards a wall, E.M.M.I. will walk onto it, while if there's a ledge, you'll just need to walk towards it (not dash)." + chr(10) + "While on a wall, all controls are rearranged to fit the new orientation of the E.M.M.I., and you'll also be able to use attacks such as tilts and strongs, the angle of the hitboxes will also change, so if you're sticking to a ceiling, up tilt will become a spike. You can also press jump to detatch from a wall at any time." + chr(10) + "While on a wall, the yellow meter on the HUD will start depleting. Once depleted, you'll fall off and wall climb will go on cooldown.",
"-jab: A 4-hit combo. Jab 3 can be held to spin indefinitely. However, it will not play entirely if the faceplate is broken." + chr(10) + "-ftilt: A 2-hit combo." + chr(10) + "-utilt: An upwards swipe." + chr(10) + "-dtilt: A ground slam that spikes where the claws land.",
"The dash attack is the speed booster. You can hold the attack button to run indefinitely, or release it to go back to a running state." + chr(10) + "You can also press down to cancel the speed booster. This will allow to store a charge that will power up the next uspecial you perform. The charge only lasts 5 seconds before expiring.",
"-fstrong: A stab with the needle, it has a tipper that stuns opponents for a brief time on hit." + chr(10) + "-ustrong: A double leg swipe. This attack moves you by a small amount and turns you around on use." + chr(10) + "-dstrong: A slam that spawns bombs. The bombs are not projectiles, but are part of the animation, so you're not actionable until the attack ends.",
"-nair: A multi-hit burst of electricity." + chr(10) + "-fair: A multi-hit spin for dragdowns. The first hit has a tipper like fstrong." + chr(10) + "-uair: A big overhead leg swipe with a sweetspot on the foot." + chr(10) + "-bair: A hook kick backwards." + chr(10) + "-dair: A double arm swipe. Only the second hit spikes.",
"A command grab that slams the opponent to the ground and stabs them with the needle. The aerial version will get an upwards boost if the grab is successful, and only proceeds onto the stab if it hit hit the ground. Otherwise, it will go into pratfall." + chr(10) + "The duration of the 4th window is randomised because of the timing mechanic of the attack.",
"During the 3 frames right before the stab, the eye of the E.M.M.I. will flash:" + chr(10) + "-If you press the special button during the flash, the stab will be powered up and deal 40%. If the opponent is above 100%, the stab will instead instakill them. A special animation will play if the timing was successful." + chr(10) + "-If the grabbed opponent presses the shield button during the flash, the stab will be parried and will leave you vulnerable." + chr(10) + "-If both players timed their button presses correctly, the stab will deal slightly more damage but it will not retain all of the properties of a properly timed one. Pressing the button too early will count as failing the timing.",
"A beam will be fired from the eye of the E.M.M.I. that freezes any hit opponent in place for about a second." + chr(10) + "The aerial version works the same way but has less range." + chr(10) + "The cyan light on the HUD will light up to signify whether forward special is on cooldown or not.",
"A sphere of energy will be charged and then shot from the E.M.M.I.'s eye in the direction of the nearest opponent. On hit, it will stun any opponent." + chr(10) + "There's 3 levels of charge, and each increases the size, damage, and stun time of the orb and that of the aerial version. The orb will be fired if there is a charge, which means that storing to continue charging is not possible." + chr(10) + "The purple light on the HUD will light up to signify whether down special is on cooldown or not.",
"The E.M.M.I. will curl up and start accumulating energy to then release it in one of 8 directions influenced by the joystick. The Shinespark can be used only once per air time, and if you collide with a wall, you'll snap to it (this won't allow you to use another)." + chr(10) + "The pink light on the HUD will light up to signify whether the up special is on cooldown or not.",
"The taunt allows E.M.M.I. to walk on its hind legs. During this time, the faceplate will become slighlty more powerful, and if you press special, a different version of neutral special will play.",
"-code: DarkDakurai" + chr(10) + "-animations: Hemuth" + chr(10) + "-HUD sprites: DarkDakurai" + chr(10) + "-clip shooting and sfx polishing: ArtistOfSeer" + chr(10) + "-Samus and E.M.M.I. trailer animations: Hemuth" + chr(10) + "-Samus and E.M.M.I. trailer editing: Pejota" + chr(10) + "-Samus and E.M.M.I. trailer music: Seregoss (youtube), Nemix (youtube)" + chr(10) + "-AM2R SA-X chase theme: Crimzan" + chr(10) + chr(10) + "Special thanks to:" + chr(10) + "-the VAE server and all his members for being really good people" + chr(10) + "-Exelion: star corporation for being a fictional corporation and not a real one",
"",
];
//#endregion