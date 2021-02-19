hurtbox_spr = sprite_get("hurtbox_sprite");
crouchbox_spr = sprite_get("crouchbox_sprite");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .25;
crouch_anim_speed = .22;
walk_anim_speed = .2;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.6;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 5;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6.5;
djump_speed = 9;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 8;
walljump_time = 12;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .48;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 8;
wave_land_time = 8;
wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 16;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Wisp consume Switch
wisp_switch = 2;
wisp_switch_timer = 30;
switch_show = 90;

wisps = [-1,-1,-1];

wisp_attack = false;

inPractice = false;

//wisp_regen_max = 600; // number of frames it takes to regen
//wisp_regen_timer = wisp_regen_max;
wisp_init = 0;
//wisp_recharge = 0;
//wisp_max_recharge = 50;

nspec_charge = 0;
nspec_effect = hit_fx_create( sprite_get( "blueexplosion" ), 30 );
nspec_effect_red = hit_fx_create( sprite_get( "redfire" ), 30 );
fspec_effect = hit_fx_create( sprite_get( "bigblueexplosion" ), 30 );
fspec_effect_red = hit_fx_create( sprite_get( "bigexplosion" ), 30 );
fspec_effect_mix = hit_fx_create( sprite_get( "medianomix" ), 30 );
nspec_effect_boom = hit_fx_create( sprite_get( "effect" ), 10 );
nspec_wispconsume = false;

//arrow draw stuff
blue_arrow_sprite = sprite_get("bluearrow");
red_arrow_sprite = sprite_get("redarrow");
should_red_arrow = false;

nspec_hitenemy_red = hit_fx_create( sprite_get( "arrowhit_red" ), 15 );
nspec_hitenemy = hit_fx_create( sprite_get( "arrowhit_blue" ), 15 );
blue_charge = hit_fx_create( sprite_get( "arrowhit_bluenew" ), 15 );

wisp_absorption_fx = hit_fx_create( sprite_get( "wispabsorption" ), 16 );
crouch_timer = 0;
crouch_max = 30;
crouch_threshold = 60;
crouch_pshow = false;

blue_arrow_timer = 55;

fspec_article = noone;

dspec_shoot = false;
dspec_reverse = false;

uspec_first = true;
uspec_holding = false;
uspec_fiyah_times = 0;

//color stuff
cur = get_player_color(player)
wisp_color_r = get_color_profile_slot_r(cur, 5) 
wisp_color_g = get_color_profile_slot_g(cur, 5)
wisp_color_b = get_color_profile_slot_b(cur, 5)
fire_color = make_color_rgb(get_color_profile_slot_r(cur, 4),get_color_profile_slot_g(cur, 4),get_color_profile_slot_b(cur, 4))

//strong BOOM
ss_boom_active = false;
ss_boom_peak = false;
ss_boom_coord = [-1,-1];
ss_boom_diameter = [0,0];
ss_boom_maxdiameter = [250,250];
counter = 0;

//Blue strongs
flamecharge = false;
bluestrong_hit = hit_fx_create( sprite_get( "bigblueexplosion" ), 25 );

//DAIR
dair_limit = 5;

// Support
Hikaru_Title = "Lycanthropy";

//Particles
particles = ds_list_create();

//Reupload protection
triggerProtection = (url != 2167624888);

//TAUNT MENU
tMenuState = -1; //-1 not there, 0 fade in, 1 stay, 2 fade out
tMenuAlpha = 0;
tMenuSelected = 0;
tMenuOptionsNormal = ["bruh","moment","lmao"];
tMenuOptionsPractice = ["W. Recall Visual: OFF","Exit..."];
tMenuOptions = tMenuOptionsPractice;

///FLUTE SYSTEM
taunt_timer = 0

song_is_playing = false
song_has_ended = false
song_name = "My Song"
curent_note = -1
song_position = -1

prepare_note_data(4, 100, 4) //four note song with a BPM of 100, base val at 4

//NOTES
set_note_value(0, "C", 0, 4)
set_note_value(1, "D", 4, 4)
set_note_value(2, "E", 8, 4)
set_note_value(3, "F", 12, 4)

#define prepare_note_data
// prepare_note_data(n, tempo, base)
// Prepares a number of notes for data to be put in, along with other data

// n: number of notes to be put into the array.
// tempo: tempo (in BPM) of the song.
// base: what real value to set the quarter note to. This is an optional argument, the default being 4.
// Eg. if quarter = 4, then eighth = 2, sixteenth = 1, half = 8, etc. 

// Returns: none

//get the first argument
var n, s_tempo, s_base, s_notes;
n = argument0
s_tempo = argument1
s_base = argument_count == 3 ? argument2 : 4
s_notes = []

//put in arrays
for (var i = 0; i < n; i++)
{
    notes[i] = []
}

//prepare LWO
song_data = {
    tempo: s_tempo,
    base: s_base,
    notes: s_notes
}

#define set_note_value
// set_note_value(index, name, start, duration) 

//note name (string).
//start time (base, cumulative).
//duration (base)

// Returns: none
var index, name, start, duration;
index = (argument0 < 0) ? 0 : argument0
name = argument1
start = argument2
duration = argument3

song_data.notes[index] = [name,start,duration]