hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouchhurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56;
idle_anim_speed = 0.03;
crouch_anim_speed = .03;
walk_anim_speed = 0.04;
dash_anim_speed = .05;
pratfall_anim_speed = .25;

standard_height = 42;
nspecial_height = 88;
dspecial_height = 160;
utilt_height = 72;
stored_spr_dir = 1;

walk_speed = 3;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 7;
dash_speed = 7;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.6;

jump_start_time = 5;
jump_speed = 10.80;
short_hop_speed = 6;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 7; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 9.5; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 18;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = -0.5; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 2;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 1;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 1;
techroll_recovery_frames = 1;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 1;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9.5; //roll speed
roll_backward_max = 9.5;

set_victory_theme(sound_get("victory_maribel"));
set_victory_bg(sprite_get("maribelvictorybg"));
land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_cla");
jump_sound = sound_get("one2");
djump_sound = sound_get("one4");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = -2;
bubble_y = 2;

//Maribel properties
has_hit_opponent = false;
shelled = false;

//Intro
introTimer = -1;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 15;

//Kirby
kirbyability = 2;

//Hikaru
Hikaru_Title = "Liquid Crystal Disguise"

//Otto
otto_bobblehead_sprite = sprite_get("otto");

//Toon Link
//toonlink_photo = sprite_get("toonlink");
//toonlink_photo2 = 6;

//Wall-E
walle_taunt_sound = sound_get("music_maribel")
walle_taunt_type = 1;

//Amber
plushForAmber = sprite_get("AmberPlush");

//Agent N
ncode1 = "A digital anomaly from another dimension."
ncode2 = "Generates weapons by merely thinking of them."
ncode3 = "Avoid getting a paper cut."
/*
Miiverse
miiverse_post = sprite_get("miiverse");

//Dracula
dracula_portrait = sprite_get("dracula");
dracula_portrait2 = asset_get("empty_sprite");
var page = 0;
//0 = Dracula
//1 = Maribel
dracula_speaker[page] = 0;
dracula_text[page] = "A minion approaches me? Are you lost, fool? This isn't the domain of that toad buffoon you serve.";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "Hahaha, perhaps you've realized you were serving the wrong Lord! Even a creature as pathetic as yourself is a welcome addition to my army!";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "Is that not your reason for your appearance before me? Then speak your damned words, mook!";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "!!![taunt]";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "Insolent cretin.[glass] That haughty dance shall be your last.";
page++;
*/
//Mt. Dedede
arena_title = "The 2D Maiden"

//Soulbound Conflict
battle_text = "* Something seems a little fishy.";

//The Trial Grounds
guiltySprite = sprite_get("trial")

//The Last Resort
resort_portrait = sprite_get("resort")
/*
//Daroach
daroach_portrait = sprite_get("dracula");
daroach_portrait2 = sprite_get("dracula2");
var page = 0;
daroach_speaker[page] = 0;
daroach_text[page] = "...Squeaks, do you have any idea what this is? This little creature has been following me all day, how did it even get onto the ship?";
page++;
daroach_speaker[page] = 1;
daroach_text[page] = "...";
page++;
daroach_speaker[page] = 0;
daroach_text[page] = "Er, would you kindly leave the helm, at least? I have important busine-";
page++;
daroach_speaker[page] = 2;
daroach_text[page] = "THAT'S THE CROOK, RRRRRIBBIT!!";
page++;
daroach_speaker[page] = 0;
daroach_text[page] = "Another guest? My, this day just keeps getting more and more interesting.";
page++;
daroach_speaker[page] = 2;
daroach_text[page] = "I should have expected a DIRTY RAT to steal my throne!";
page++;
daroach_speaker[page] = 0;
daroach_text[page] = "Aha, excuse me? Are you supposed to be royalty? Given the state of your quarters, I would have expected Subcon to be a ghost town by now.";
page++;
daroach_speaker[page] = 2;
daroach_text[page] = "You're one to talk, flea picnic! You stole my ENTIRE THRONE ROOM! WHO DOES THAT, RRRRRIBBIT?";
page++;
daroach_speaker[page] = 0;
daroach_text[page] = "My apologies, your highness, for assuming there might be treasure hidden in the trash.";
page++;
daroach_speaker[page] = 2;
daroach_text[page] = "THAT DOES IT! Defeat this rodent, minion! Or else you'll be rebuilding my castle brick by brick!";
page++;
daroach_speaker[page] = 1;
daroach_text[page] = "!!!";
page++;
*/
//Pokemon Stadium
pkmn_stadium_front_img = sprite_get("pokemon_front");
pkmn_stadium_back_img = sprite_get("pokemon_back");
pkmn_stadium_name_override = "Maribel";

//Break the Targets
get_btt_data = false;

//Assist
assistAttack = AT_NSPECIAL; //The attack to use as the assist
assistOffsetX = 40; //The horizontal distance they spawn from the player
assistOffsetY = -20; //The vertical distance they spawn from the player
assistGroundOnly = false; //Whether or not they are forced to the ground
assistFloat = true; //Whether or not they stay in place vertically

//Abyss Runes
//this var makes f5 not break the buddy if developing with more than one
//workshop character or buddy in the match
//abyss_devmode = true;
//
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = get_match_setting(SET_RUNES);
ab_hud_x = 0;
ab_hud_y = 0;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Not Implemented."]);
abyssMods[@ runes.A] = [3, "DSPECIAL Stilts are taller."];
abyssMods[@ runes.B] = [1, "DAIR Carrot semi-spikes."];
abyssMods[@ runes.C] = [2, "If the final hit of UAIR is landed, you'll get an upwards burst and can attack cancel."];
abyssMods[@ runes.D] = [3, "DSTRONG Ostro running distance increased."];
abyssMods[@ runes.E] = [3, "DSPECIAL stepping speed increased."];
abyssMods[@ runes.F] = [2, "Normal TAUNT can be cancelled with non-attack actions."];

// Level 2
abyssMods[@ runes.G] = [3, "UTILT range extended."];
abyssMods[@ runes.H] = [3, "USTRONG endlag reduced."];
abyssMods[@ runes.I] = [2, "NAIR hits deal burn."];
abyssMods[@ runes.J] = [2, "FTILT bursts forwards."];
abyssMods[@ runes.K] = [3, "Additional Double Jump"];

// Level 3
abyssMods[@ runes.L] = [3, "Autobomb NSPECIAL startup reduced."];
abyssMods[@ runes.M] = [2, "DSTRONG can be jump cancelled on hit."];
abyssMods[@ runes.N] = [0, "FSPECIAL Magic Carpet timer limit reduced."];
abyssMods[@ runes.O] = [3, "USPECIAL is jump-cancellable if jumps are available."];

//Sets the variables runeA, runeB, etc according to whether or not that rune was selected
 
var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}

//abyss init code over
