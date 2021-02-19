hurtbox_spr = sprite_get("slashe_hurtbox");
crouchbox_spr = sprite_get("slashe_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

dspec_charge = 0;
nspec_charge = 0;
fspec_wall = false;
fspec_wallpos = [0,0];
helmet = 0;
lasthelmet = 0;
taunting = 0;
waryowl = 0;
debvsp = vsp;
debhsp = hsp;
swordin = sprite_get("swordin");
swordout = sprite_get("swordout");
waryowl_up = false
nspecial_perfect = false


char_height = 60;
idle_anim_speed = .15;
crouch_anim_speed = .2;
walk_anim_speed = .20;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 1.5;
walk_turn_time = 7;
initial_dash_time = 12;
initial_dash_speed = 7;
dash_speed = 6;
dash_turn_time = 8;
dash_turn_accel = 1.3;
dash_stop_time = 2;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.2;

jump_start_time = 6;
jump_speed = 11;
short_hop_speed = 6.5;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 2; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .55; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .50;
hitstun_grav = .50;
knockback_adj = .95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 5; //normal landing frames
prat_land_time = 20;
wave_land_time = 5;
wave_land_adj = 1.05; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .7; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 0;
dodge_active_frames = 3;
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
air_dodge_startup_frames = 3;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 10;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 3;
roll_back_active_frames = 2;
roll_back_recovery_frames = 3;
roll_forward_max = 10; //roll speed
roll_backward_max = 10;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//intro
introTimer = -2;
introTimer2 = 0;

//Workshop character interactions
enemykirby = undefined;
swallowed = undefined;
kirbyability = 16;
kirb_used = 0;

//runes
if has_rune("A")
{
	set_num_hitboxes(AT_TAUNT, 1);
}
else
{
	set_num_hitboxes(AT_TAUNT, 0);
}

if has_rune("C")
{
	max_djumps = 2
}
else
{
	max_djumps = 1
}

if has_rune("H")
{
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
	
}
else
{
	reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT);
	reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE);
	reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT);
}

if has_rune("O")
{
	set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 6);
}
else
{
	set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 12);
	set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 16);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 50);
}


switch (get_player_color( player ))
{
case 1:
case 4:
case 10:
case 13:
    tcoart = sprite_get("ashtcoart2");
	break;
case 2:
case 5:
case 11:
case 14:
    tcoart = sprite_get("ashtcoart3");
	break;
case 0:
case 3:
case 6:
case 9:
case 12:
case 15:
default:
    tcoart = sprite_get("ashtcoart1");
	break;
}

trummelcodecneeded = false;
trummelcodec_id = noone;

Hikaru_Title = "Tricksy Maiden";

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
abyssMods[@ runes.A] = [2, "NSPECIAL charges faster"];								// cost 1
abyssMods[@ runes.B] = [3, "Sweetspots give a Highwind boost"];						// cost 1
abyssMods[@ runes.C] = [1, "FSPECIAL sword is unbreakable"];						// cost 1
abyssMods[@ runes.D] = [3, "Slashe gains an additional midair jump"];				// cost 1
abyssMods[@ runes.E] = [1, "FSPECIAL sword is faster"];								// cost 1
abyssMods[@ runes.F] = [3, "TAUNT has super armor"];								// cost 1
abyssMods[@ runes.G] = [2, "TILTs and JABs can cancel into STRONGs on hit"];		// cost 2
abyssMods[@ runes.H] = [0, "FSTRONG will send out a gust of wind"];					// cost 2
abyssMods[@ runes.I] = [2, "NSPECIAL travels farther"];								// cost 2
abyssMods[@ runes.J] = [3, "Heal while crouching"];									// cost 2
abyssMods[@ runes.K] = [2, "DSPECIAL charge can be stored with the Parry button"];	// cost 2
abyssMods[@ runes.L] = [2, "USPECIAL is a command grab"];							// cost 3
abyssMods[@ runes.M] = [2, "FSTRONG has Hikaru's Time Break"];						// cost 3
abyssMods[@ runes.N] = [3, "Auto parry while crouching"];							// cost 3
abyssMods[@ runes.O] = [2, "DSPECIAL can be charged infinitely"];					// cost 3