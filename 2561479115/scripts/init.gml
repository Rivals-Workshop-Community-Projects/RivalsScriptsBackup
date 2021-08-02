//a
//no help for you
enable_help = false;

//Beacon Cooldown
beacon_cd = 120;

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

burst = hit_fx_create(sprite_get("burst"),16);
fire = hit_fx_create(sprite_get("blindfire_placeholder"),10);
jump_fx = hit_fx_create(sprite_get("jump_fx"),25);
explo = hit_fx_create(sprite_get("explosion"),40);
plasma_hitfx = hit_fx_create(sprite_get("plasma_fx"),32);

char_height = 48;
idle_anim_speed = .075;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 2.75;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 7.5;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.25;

jump_start_time = 5;
jump_speed = 10.99;
short_hop_speed = 6;
djump_speed = -2;
djump_accel = -1.4;
djump_accel_start_time = 2;
djump_accel_end_time = 17;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 38; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 32;
wall_frames = 2;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 18;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 5;
crouch_active_frames = 1;
crouch_recovery_frames = 3;

//PARRYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 4;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 3;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = -1;
air_dodge_sound = asset_get("sfx_quick_dodge");

jump_audio_volume = 0.5; //volume of rokesha's jump sounds.

cur_sound = -1;

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Target Instruction Variables
t_line = 0;
t_chars = 0;
t_speed = 0.35;
t_delay = 0;
t_prefixes = [">REGISTRY: ", ">WARRANTS: ", ">INSTRUCTIONS: "];
current_text = ["","",""];
target_text = ["","","",""];
t_length = string_length(target_text[t_line]);
t_active = false;
t_timer = 0;
t_stopped = false;
t_loop = -1;
t_target = noone;
t_shade = 0;
rokesha_line = false;
r_timer = 0;

rec_article = noone;
beacon = noone;
beacon_proj = noone;
in_field = false;
touching_proj = false;
attack_charged = false;

bullets_max = 1;
bullets = 1;
bullet_fired = false;
bullet_cd = 120;
bullet_cd_max = 120;
window_hold_time = 0;
attack_hasBReversed = false;
marks_max = 3;
base_marks_max = 3;
pause_draw = 0;
HG_PROJECTILE_HIT_TAG = 69;
AG_BULLET_LANDING_LAG = 70;
AG_WINDOW_JUMP_TO = 70;
AG_WINDOW_BULLET_LENIENCY = 71;

roke_grav_jump = true;

roke_mark = 0;
roke_mark_id = ds_list_create();
roke_mark_anim = ds_list_create();
roke_mark_destroytimer = 0;
roke_lastmark = noone;
roke_mark_inc = 14;

roke_mark_destroytime = 60*6; // time to destroy the most recent drone
roke_mark_destroytime2 = 60; // time between drone destruction afterwards

roke_nspecial_charge = 0;
roke_nspecial_max_charge = 60;

training = false;
playtest = (object_index == oTestPlayer);
killarticles = false;
temp_ecolor = [make_color_rgb(get_color_profile_slot_r(get_player_color(player),3),
                get_color_profile_slot_g(get_player_color(player),3),
                get_color_profile_slot_b(get_player_color(player),3)),
                make_color_rgb(get_color_profile_slot_r(get_player_color(player),4),
                get_color_profile_slot_g(get_player_color(player),4),
                get_color_profile_slot_b(get_player_color(player),4))];

if (!playtest) instance_create(0,0,"obj_article_platform");

//Rune Support
/*abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = false;
ab_hud_x = 0;
ab_hud_y = 0;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Not Implemented."]);
*/
//Pokemon Stadium Support
pkmn_stadium_front_img = sprite_get("pkmnstadium_front");
pkmn_stadium_back_img = sprite_get("pkmnstadium_back");
pkmn_name_override = "Rokesha";

//----------------------------------------------
//  Particle System
//----------------------------------------------
    particles = ds_list_create();
    

