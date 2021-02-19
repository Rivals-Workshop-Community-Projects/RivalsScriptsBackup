hurtbox_spr = sprite_get("hurt_box");
crouchbox_spr = sprite_get("crouch_hurt_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 144;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.18;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 13;
short_hop_speed = 8;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 14; //maximum fall speed without fastfalling
fast_fall = 17; //fast fall speed
gravity_speed = .8;
hitstun_grav = .55;
knockback_adj = 0.9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
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
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
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

//Hit effects.
upsecial_projeffect = hit_fx_create(sprite_get("uspecial_projend"), 12);
fspecial_projeffect = hit_fx_create(sprite_get("fspecial_icedestroy"), 12);
fspecial_projeffect2 = hit_fx_create(sprite_get("dspecial_wind"), 16);
dspecial_projeffect = hit_fx_create(sprite_get("dspecial_wind"), 16);

//Trummel & Alto codec
trummelcodecneeded = false;
trummelcodec_id = noone;

//Titles
Hikaru_Title = "Tidal Whale";

//Miiverse
miiverse_post = sprite_get("miiverse");
sprite_change_offset("miiverse", 60, 30);

//Dracula support
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = asset_get("empty_sprite");
var page = 0;
dracula_speaker[page] = 0;
dracula_text[page] = "Welcome to my quarters, Long John Silver.";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "It's... Duff. My name is Duff McWhalen.";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "I've noticed a lack of Hydrogen in my ocean. All sources lead to you, Dracula.";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "That's correct, whale. Your hydrogen has been powering my castle this whole time!";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "Dracula, I'm a man of the sea... and I will not allow you to use my sea freely.";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "You might think I'm stupid, but you'll have to fight me!";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "If it's a duel you want, Long John...[glass] It's a duel you'll get!";
page++;


//Rune Support
var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}
abyssEnabled = false;
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
abyssMods[@ runes.A] = [3, "Faster Aerial attacks."];
abyssMods[@ runes.B] = [0, "FSPECIAL ice has less friction."];
abyssMods[@ runes.C] = [3, "FSPECIAL and DSPECIAL have less cooldown."];
abyssMods[@ runes.D] = [2, "DSPECIAL hits more often."];
abyssMods[@ runes.E] = [3, "Heavier weight."];
abyssMods[@ runes.F] = [3, "DSPECIAL has less friction."];
abyssMods[@ runes.G] = [3, "USPECIAL is spammable."];
abyssMods[@ runes.H] = [0, "FSPECIAL ice travels faster."];
abyssMods[@ runes.I] = [1, "NSPECIAL can fire indefinitely."];
abyssMods[@ runes.L] = [3, "FSPECIAL can spawn infinite ice blocks."];