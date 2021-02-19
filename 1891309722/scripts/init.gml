hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .5;
pratfall_anim_speed = .25;

trummelcodecneeded = false;
trummelcodec_id = noone;
damageScaling = 0;

comboBuffer = 0;
currentCombo = 0;
comboCounterIndex = 0;
comboCounterPlaceholder = 0;
canCancel = false;
baseCombo = 0;

hue = 0;
outlineR = 0;
outlineG = 0;
outlineB = 0;
outlineDirection = 0;
sideBHold = 0;

colorManual = 1;

test = 0;

swallowed = 0;

sprDirStored = 1;

kirbyability = 16;
tcoart = sprite_get("tcoCard");
ai = 0;
aiplaceholder = 0;

isTethering = 0;

introTimer = -4;
introTimer2 = 0;

uSpecialLag = 0;
framesUntilPratfall = 0;
pratfallMode = 0;

neutralBCharge = 0;
neutralBStored = 0;
neutralBStoreVisTimer = 0;
sideBHit = 0;
downBStart = 0;
upBX = 0;
upBY = 0;
boostX = 0;
boostY = 0;

walk_speed = 3.25;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 8.5;
dash_speed = 7.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .9;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12.5;
short_hop_speed = 8;
djump_speed = 12;
leave_ground_max = 6.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 1;
crouch_recovery_frames = 4;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 6;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 4;
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 6;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 4;
roll_back_active_frames = 3;
roll_back_recovery_frames = 5;	
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_swipe_weak1");
djump_sound = asset_get("sfx_swipe_weak2");
air_dodge_sound = asset_get("sfx_swipe_medium1");

comboblast = hit_fx_create( sprite_get( "comboblast" ), 30 );
cool_effect = hit_fx_create( sprite_get( "hitfx_g7" ), 27 );

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

otto_bobblehead_sprite = sprite_get("yoyo_bobblehead");

/*

//Rune Support
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

abyssMods[@ runes.A] = [3, "NSPECIAL charges much faster."];
abyssMods[@ runes.B] = [3, "STRONG attacks always make explosions."];
abyssMods[@ runes.C] = [3, "Airdodges do damage."];
abyssMods[@ runes.D] = [2, "NSPECIAL wraps foes."];
abyssMods[@ runes.E] = [3, "USPECIAL makes multiple explosions."];
abyssMods[@ runes.F] = [3, "FSPECIAL can be held."];

abyssMods[@ runes.G] = [3, "DACUS is much faster and stronger."];
abyssMods[@ runes.H] = [2, "DSPECIAL stuns foes."];
abyssMods[@ runes.I] = [3, "USPECIAL does not incur pratfall."];
abyssMods[@ runes.J] = [3, "Combo Boosts are available at 3 charge."];
abyssMods[@ runes.K] = [3, "STRONG attack explosions are much bigger."];

abyssMods[@ runes.L] = [3, "Stronger combo boosts are available at 10 charge."];
abyssMods[@ runes.M] = [3, "TAUNT increases combo meter."];
abyssMods[@ runes.N] = [2, "Attacks stun when at 5 or more charge."];
abyssMods[@ runes.O] = [2, "Restore health when landing attacks based on meter charge."];

*/