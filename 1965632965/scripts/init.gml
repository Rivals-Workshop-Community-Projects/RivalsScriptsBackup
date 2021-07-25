hurtbox_spr = sprite_get("idlehurt");
crouchbox_spr = sprite_get("crouchhurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

tablehealth = 18;
hittable = 0;

timer = 0;
reloadindex = 0;

pistolcooldown = 0;
shotcooldown = 0;
shellcooldown = 0;
snipecooldown = 0;
windcooldown = 0;
grenadecooldown = 0;

cooldownindex = 0;

tablecount = 0;

//The gun bullet kin has equipped.
gun = 0;

throneloop = 0;

pistolshots = 4;
shellshots = 3;
windshots = 15;
//Number of blanks BK has.
blanks = 0;
puddletimeout = 0;
fire_ang = 0;

blur = array_create(7);

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.25;
dash_speed = 5.5;
dash_turn_time = 10;
dash_turn_accel = 1;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .63;
moonwalk_accel = 1.4;

bash_angle = 0;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6;
djump_speed = 10.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 5;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .6;
hitstun_grav = .54;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 5; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("land");
landing_lag_sound = sound_get("land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("firstjump");
djump_sound = sound_get("doublejump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

throneattacked = 0;

magnum_ind = 0;
shot_ind = 0;
brickbreak_ind = 0;
snipe_ind = 0;
wind_ind = 0;
grenade_ind = 0;

tcoart = sprite_get("tcoart");

Hikaru_Title = "The Gungeoneer";

trummelcodecneeded = false;
trummelcodec_id = noone;

kirbyability = 16;
swallowed = 0

table = noone;
//indices
AT_NSPECIAL_SHOT = AT_NSPECIAL_2;
AT_NSPECIAL_SHELL = AT_NSPECIAL_AIR;
AT_NSPECIAL_SNIPE = AT_FSPECIAL_2;
AT_NSPECIAL_WIND = AT_DSPECIAL_AIR;
AT_NSPECIAL_GRENADE = AT_USPECIAL_2;
AT_DSTRONG_AIR = AT_DSTRONG_2;

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
abyssMods[@ runes.A] = [3, "Increased jump height."];
abyssMods[@ runes.B] = [1, "Pistol sets enemies on fire."];
abyssMods[@ runes.C] = [0, "DTilt can be used more often and inflicts poison."];
abyssMods[@ runes.D] = [1, "Shotgun and windup gun shots go farther."];
abyssMods[@ runes.E] = [2, "NAir lasts longer."];
abyssMods[@ runes.F] = [2, "USpecial does not halt your momentum at the end."];
abyssMods[@ runes.G] = [0, "Tables can be dropped in mid-air."];
abyssMods[@ runes.H] = [3, "Hold JUMP while in the air to slow your fall."];
abyssMods[@ runes.I] = [1, "Sniper Rifle has greatly reduced startup time."];
abyssMods[@ runes.J] = [1, "Increased damage on all bullets, but reduced projectile speed."];
abyssMods[@ runes.K] = [0, "Table Tech Rocket."];
abyssMods[@ runes.L] = [1, "No more gun cooldowns!"];
abyssMods[@ runes.M] = [0, "Table is nearly indestructible!"];
abyssMods[@ runes.N] = [0, "Up to 3 tables can be in play at once!"];
abyssMods[@ runes.O] = [1, "Your guns are crazy!"];