hurtbox_spr = sprite_get("hurt_box");
crouchbox_spr = sprite_get("crouch_hurt_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 112;
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .18;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 4;
dash_speed = 5;
dash_turn_time = 18;
dash_turn_accel = 1;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 1;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7.4;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .07;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .6;
hitstun_grav = .53;
knockback_adj = 0.9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 6;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .12; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_kra");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//local variables
idle_timer = 0;
training_toggle = 0;
step_sound = 0;
nspecial_ground_y = y; 
//mask_index = sprite_get("mask");

//Grab template
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.
fspecial_ground_dist = 0;
uspecial_wall_times = 0;
uspecial_wall_times_max = 999;
uspecial_wall_timer = 0;
uspecial_wall_timer_max = 300;
wall_player_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
wall_player_xoffset = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
wall_climb_dir = 1;

//Hit FX
fx_fstrong_debris = hit_fx_create(sprite_get("fstrong_debris"), 16)

//Slow Start passive
//States
SLOWSTART_STATE_OFF = 0;
SLOWSTART_STATE_ON = 1;

old_slowstart_state = SLOWSTART_STATE_ON;
slowstart_state = SLOWSTART_STATE_ON;

slowstart_damage_mult = 0.75; //Slow Start's damage multiplier (Apply to damage)
slowstart_knockback_mult = 0.7; //Slow Start's KB multiplier (Apply to KB)
slowstart_knockbackscale_mult = 0.7; //Slow Start's KBS multiplier (Apply to KBS)
slowstart_movement_mult = 0.75; //Slow Start's movement multiplier (Apply to stats)

slowstart_duration = 90 * 60; //Duration of Slow Start (in frames)
slowstart_timer = slowstart_duration;

slowstart_stateffect_duration = 60;
slowstart_stateffect_timer = -1;
slowstart_stateffect_alpha = 0;
slowstart_stateffect_bg = sprite_get("statchange_bg");
slowstart_stateffect_bgdir = -1;

//Affected variables
def_walk_speed = walk_speed;
def_initial_dash_speed = initial_dash_speed;
def_dash_speed = dash_speed;
def_dash_turn_time = dash_turn_time;
def_moonwalk_accel = moonwalk_accel;

def_max_jump_hsp = max_jump_hsp;
def_air_max_speed = air_max_speed;
def_jump_change = jump_change;
def_air_dodge_speed = air_dodge_speed;
def_roll_forward_max = roll_forward_max;
def_roll_backward_max = roll_backward_max;
def_max_fall = max_fall;

// UI
SLOWSTART_BAR_BG_COLOR[SLOWSTART_STATE_ON] = make_colour_rgb(255, 255, 255);  // Colour for on state
SLOWSTART_BAR_BG_COLOR[SLOWSTART_STATE_OFF] = make_colour_rgb(106, 106, 106);    // Colour for off state
SLOWSTART_BAR_COLOR = make_colour_rgb(67, 203, 255);  // Colour for on state

slowstart_ui_bg = sprite_get("slowstartbar_bg");
slowstart_ui_bar = sprite_get("slowstartbar");
slowstart_ui_powerdown = sprite_get("power_down_hud");

//Victory
set_victory_theme(sound_get("sfx_victory"));
set_victory_bg(sprite_get("victory_bg"));

/*
╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Compatibility			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝
*/

//Hikaru
Hikaru_Title = "Legendary Titan";
//Mt. Dedede
arena_title = "The Legendary Titan";
//Soulbound Conflict
battle_text = "* Something big blocks the way."
//Pokemon Stadium
pkmn_stadium_front_img = sprite_get("pkmn_stadium_front_image");
pkmn_stadium_back_img = sprite_get("pkmn_stadium_back_image");

//Dracula
dracula_portrait = sprite_get("empty_sprite");
dracula_portrait2 = asset_get("empty_sprite");
var page = 0;
dracula_speaker[page] = 0;
dracula_text[page] = "...";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "Is this about that temple I destroyed?";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "[taunt]";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "So be it then.";
page++;