//Rune Support
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
abyssMods = array_create(16,[-1,"Not Implemented."]);

abyssMods[@ runes.A] = [1, "NSPECIAL laser travels faster."];
abyssMods[@ runes.B] = [1, "FSPECIAL chain reaches further."];
abyssMods[@ runes.C] = [3, "USPECIAL travels further."];
abyssMods[@ runes.D] = [2, "DSPECIAL stuns opponents."];
abyssMods[@ runes.E] = [0, "Zo explodes immediately after Ru dies."];
abyssMods[@ runes.F] = [3, "Zo's shield cooldown removed."];

abyssMods[@ runes.G] = [3, "Zo's shield can tank 1 additional hit before disappearing."];
abyssMods[@ runes.H] = [3, "Ru gains an additional jump."];
abyssMods[@ runes.I] = [1, "NSPECIAL auto-targets opponents."];
abyssMods[@ runes.J] = [2, "NSPECIAL stun lasts longer."];
abyssMods[@ runes.K] = [3, "Zo takes less knockback."];

abyssMods[@ runes.L] = [3, "Ru has on-hit turbo mode."];
abyssMods[@ runes.M] = [3, "Spawn and respawn with 2 Zo's."];
abyssMods[@ runes.N] = [0, "Zo respawns immediately after death."];
abyssMods[@ runes.O] = [3, "Zo has super armour while performing strongs."];

var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}

//kirby
kirbyability = 16;
swallowed = 0;
enemykirby = undefined;
kirbySpawnZo = false;

//codec
trummelcodecneeded = false;
trummelcodec_id = noone;

//bobblehead
otto_bobblehead_sprite = sprite_get("otto_bobblehead");

spawnZo = true; //if true, spawn Zo article
zoID = undefined;

timer = 0;

//practice mode detector
playtest = (object_index == oTestPlayer);
practice = true;

initialTime = get_game_timer();

aiHitboxAngle = 0;
aiHitboxKB = 0;

drawZoDeathEffect = false;
zoDeathTimer = 0;
zoDeathX = 0;
zoDeathY = 0;
zoDeathDir = 0;

teleporting = false; //dspecial teleport active

justDied = 0;

//uspec vars
onRocket = false; //whether Ru is attached to Zo or not
rocketTimer = 0;

hurtbox_spr = sprite_get("ru_hurtbox");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 30;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .175;
pratfall_anim_speed = .25;

walk_speed = 1.85;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7.5;
dash_speed = 6.5;
dash_turn_time = 8;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 12;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .50;
hitstun_grav = .45;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 18;
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
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
