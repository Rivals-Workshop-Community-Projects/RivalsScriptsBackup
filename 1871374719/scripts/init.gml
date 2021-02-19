hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

cheight = 26;
char_height = cheight;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .15;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.3;
walk_turn_time = 8;
initial_dash_time = 14;
initial_dash_speed = 8;
dash_speed = 7.2;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;
hue = 0;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 7.5;
djump_speed = 11.5;
leave_ground_max = 5.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .01;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15;
wave_land_time = 11;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .015; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 9;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 8;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 8;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 8;
roll_back_recovery_frames = 2;
roll_forward_max = 9.5; //roll speed
roll_backward_max = 9.5;

//intro animation
introTimer = -2;
introTimer2 = 0;
introsfx1 = sound_get("sfx_intro1");
introsfx2 = sound_get("sfx_intro2");

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Dog
canbluh = 1;
canhonk = 1;
ustrng = 1;
fstrparry = 0;
carfuel = 200;
donotlower = 0;
cssbark = 1;

// is_dog_legal_yet = please;

// Kirby
kirbyability = 16;

// Trummel
trummelcodecneeded = false;
trummelcodec_id = noone;

// TCO
tcoart = sprite_get("tco_dog");

// Hikaru
Hikaru_Title = "Annoying Fox";

// Feri
feri_costume = sprite_get("feri_costume_annoyingdog");

// Otto
otto_bobblehead_sprite = sprite_get("bobdog");

// Miiverse
miiverse_post = sprite_get("miiverse_post");

// Mt DDD
arena_title = "The Conniving Canine";

// Soulbound Conflict
battle_text = "*You feel some sort of annoying energy";
battle_text2 = " radiating around you.";

// Trial Grounds
guiltySprite = sprite_get("guiltyDog")

//this var makes f5 not break the buddy if developing with more than one
//workshop character or buddy in the match
//abyss_devmode = true;
//
fairbone = 1;
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
//example rune definition:
//abyssMods[@ runes.A] = [3,"Ground speed is faster."];
// Level 1
abyssMods[@ runes.A] = [3, "Become invincible during TAUNT."];
abyssMods[@ runes.B] = [3, "Removes FTILT cooldown."];
abyssMods[@ runes.C] = [2, "UAIR and UTILT gives poison."];
abyssMods[@ runes.D] = [2, "JAB flinches the opponent."];
abyssMods[@ runes.E] = [3, "DAIR pushes you upwards at the last hitbox."];
abyssMods[@ runes.F] = [2, "DTILT sends toward you."];

// Level 2
abyssMods[@ runes.G] = [2, "DSTRONG does Plasma Stun."];
abyssMods[@ runes.H] = [3, "FSTRONG travels further."];
abyssMods[@ runes.I] = [3, "DSPECIAL is a lot faster."];
abyssMods[@ runes.J] = [3, "USTRONG cooldown gets cut in half."];
abyssMods[@ runes.K] = [2, "USPECIAL has a hitbox the whole way through."];

// Level 3
abyssMods[@ runes.L] = [1, "NSPECIAL comes out as fast as you can press the button. (Does less damage)"];
abyssMods[@ runes.M] = [1, "USTRONG pulls out an artifact more often and never throws out a snowball."];
abyssMods[@ runes.N] = [3, "Jump-cancel FSPECIAL anywhere, anytime."];
abyssMods[@ runes.O] = [1, "FAIR throws out a bone when the move ends."];


var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
	variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}

//abyss init code over
