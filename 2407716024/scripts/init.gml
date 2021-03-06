//Phone Junk

hurtbox_spr = sprite_get("peacock_hurtbox");
crouchbox_spr = sprite_get("peacock_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 74;
idle_anim_speed = .22;
crouch_anim_speed = .2;
walk_anim_speed = .3;
dash_anim_speed = .40;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 8;
initial_dash_time = 6;
initial_dash_speed = 6;
dash_speed = 6.5;
dash_turn_time = 16;
dash_turn_accel = 1.2;
dash_stop_time = 4;
dash_stop_percent = .1; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.5;

jump_start_time = 4;
jump_speed = 10;
short_hop_speed = 5.5;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .15;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .50;
hitstun_grav = .45;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.05; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 5;
crouch_active_frames = 12;
crouch_recovery_frames = 4;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 4;

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
air_dodge_active_frames = 10;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 5;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = sound_get("djump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 0;


//peacock-specific
peacock_consecutive_cancelled_attacks = 0;

peacock_has_airdash = 1;
peacock_airdash_button_main_buffer = 0; // 6 or -6;
peacock_airdash_press_recorded = 0; //1, -1, 0
peacock_airdash_forward_dash_buffer = 0;
peacock_airdash_backward_dash_buffer = 0;
peacock_free_on_previous_frame = free;

peacock_coyote_timer = 0;

peacock_fspecial_shots = 3;

peacock_dattack_early_hit_connected = 0;

peacock_used_nair = 0;

peacock_article_doom_id = noone;

peacock_fx_fspecial_blast = hit_fx_create(sprite_get("fspecial_blast"), 12);
peacock_fx_fair_shot = hit_fx_create(sprite_get("fair_shot"), 24);
peacock_fx_airdash_puff = hit_fx_create(sprite_get("airdash_puff"), 16);
peacock_fx_fsmash_beam = hit_fx_create(sprite_get("fsmash_laser"), 16);
peacock_fx_fsmash_shot = hit_fx_create(sprite_get("fsmash_proj_shot"), 16);

//codec
ncode1 = "The Cartoon Elemental Anti-Skullgirl Unit crafted"
ncode2 = "from Lab 8 somewhere in New Meridian. She utilizes"
ncode3 = "a wide variety of projectiles and being obnoxius."

arena_title = "The Murder-Go-Round";

battle_text = "* Peacock and her gang blocks the path!";

gfzsignspr = sprite_get("gfz_pea");

steve_death_message = "Steve couldn't parry.";

Hikaru_Title = "Cartoon Elemental";

easter_egg_timer = 0;
easter_egg_set = false;
voice_activated = false;
cancelled_voice = true;
voiced_peacock = false;
peacock_player = self

//Kirb Support
enemykirby = undefined;
swallowed = undefined;
kirbyability = 16;
kirb_used = 0;

//Dracula support
dracula_portrait = sprite_get("peacock_portrait");
dracula_portrait2 = sprite_get("peacock_portrait2");
var page = 0;

//Page 0
dracula_speaker[page] = 2;
dracula_text[page] = "And then there were 2!";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = "So the rumors were true. Those flesh-lings are experimenting on children. And people call me freakish.";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "Can it Grandpa! I've been itchin' for a battle all day, your stooges couldn't even get me outta their way!";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "Now, i'm gettin' reeeal tired. I'm missin' my stories and I need my beauty sleep!";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "Hmph! [glass]";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "Then let me insist on tucking you in for your final bedtime.";
page++;

//Page 6
dracula_speaker[page] = 2;
dracula_text[page] = "Good luck trying to shut this toon up!";
page++;

//Final Smash
fs_char_portrait_y = 120;
fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "custom";
fs_chosen_final_smash = "custom";
fs_go_to_hud = false;
fs_force_fs = false;

time_frozen = false
time_freeze_ticks = 0


//Runes

/*
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = true;
ab_hud_x = 0;
ab_hud_y = 0;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
//abyssMods = array_create(16,[-1,"no"]);

// Level 1
abyssMods[@ runes.A] = [-1, "Locked."];
abyssMods[@ runes.B] = [-1, "Locked."];
abyssMods[@ runes.C] = [-1, "Locked."];
abyssMods[@ runes.D] = [-1, "Locked."];

// Level 2
abyssMods[@ runes.G] = [3, "Pecock can airdash twice in the air instead of once."];
abyssMods[@ runes.H] = [-1, "Locked."];
abyssMods[@ runes.I] = [-1, "Locked."];
abyssMods[@ runes.J] = [-1, "Locked."];

// Level 3
abyssMods[@ runes.L] = [-1, "Locked."];
abyssMods[@ runes.M] = [-1, "Locked."];
abyssMods[@ runes.N] = [-1, "Locked."];
abyssMods[@ runes.O] = [-1, "Locked."];

*/

user_event(14); // General init