hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("hurtbox_crouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .085;
crouch_anim_speed = .1;
walk_anim_speed = .1;
dash_anim_speed = .19;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7.8;
dash_speed = 7.2;
dash_turn_time = 8;
dash_turn_accel = 0.8;
dash_stop_time = 8;
dash_stop_percent = .5; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 2;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6;//7
djump_speed = 9;
leave_ground_max = 4.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .22;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .032;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 14;//18 //fast fall speed
gravity_speed = .5;
orig_grav = .5;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .02; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 1;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.2;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 1;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

wall_frames = 2;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

fstrong_store = 0;
bowling_timer = 0;
bowling_backwards = 0;

track_altered = false;
fsp_air_track = 3;
fsp_air_max = 3;
dsp_air_track = 2;
dsp_air_max = 2;

dsp_dir = 0;

grav_altered = false;

safety_strap = "on";
safety_strap_timer = 0;
strap_off_duration = 500; //600
safety_strap_anim = 0;
safety_strap_anim_type = 0;
safety_strap_anim_duration = 40;

flamefx = hit_fx_create( sprite_get( "flame" ), 16 );

set_victory_bg( sprite_get( "victorybg" ));
set_victory_theme( sound_get( "victory" ));

arena_title = "Emissary of Wii";
arena_short_name = "RSNM";
battle_text = "* A Wii Remote, watch out.";
Hikaru_Title = "Reckless Health & Safety Notice Fox";








//Rune Support
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = false;
ab_hud_x = 0;
ab_hud_y = 0;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0/4 - object mod: Modifies a static object left behind after an attack.
// 1/3 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3/1 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Not Implemented."]);

abyssMods[@ runes.A] = [3, "Higher jump and double jump."];
abyssMods[@ runes.B] = [3, "Wavedash is faster, and air dodge travels a bit longer."];
abyssMods[@ runes.C] = [3, "Double jump + Direction will now boost you a bit toward that direction."];
abyssMods[@ runes.D] = [3, "FAIR landing lag is now mad fast."];
abyssMods[@ runes.E] = [3, "You can now repeatedly continue jab even after 2nd."];
abyssMods[@ runes.F] = [2, "NAIR always hits opponent forward."];
abyssMods[@ runes.G] = [1, "FSTRONG backward throw now throws further."];
abyssMods[@ runes.H] = [2, "DAIR's second hit now spikes."];
abyssMods[@ runes.I] = [2, "USPECIAL is shorter in both duration and distance."];
abyssMods[@ runes.J] = [2, "FSTRONG charges(?) much faster."];
abyssMods[@ runes.K] = [2, "FSPECIAL is now near instant, coming out at frame 3."];
abyssMods[@ runes.L] = [1, "Slamming Wii Wheel with TAUNT will now summon a Wii forward."];
abyssMods[@ runes.M] = [1, "USTRONG throws 3 Wiis now."];
abyssMods[@ runes.N] = [0, "One half of a rune to unleash his true power. Both needs to be on."];
abyssMods[@ runes.O] = [0, "Other half of a rune to unleash his true power. Both needs to be on."];

var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}




