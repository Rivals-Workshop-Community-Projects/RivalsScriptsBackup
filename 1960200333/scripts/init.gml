//Snooping as usual, I see?
//Fry for Rivals of Aether created by Trail Mix
//Fry originally created by Hamen

hurtbox_spr = sprite_get("fry_hurtbox");
crouchbox_spr = sprite_get("fry_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .175;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3.6;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 5.5;
dash_speed = 5.75;
dash_turn_time = 6;
dash_turn_accel = 0.5;
dash_stop_time = 8;
dash_stop_percent = 0.4; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 0.7;

jump_start_time = 5; //It's five. Not four. Five.
jump_speed = 14;
short_hop_speed = 7;
djump_speed = 12;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .045;
max_djumps = 1;
max_fall = 11.5; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = 0.70;
hitstun_grav = .5;
walljump_hsp = 6.5;
walljump_vsp = 8.5;
walljump_time = 9;
wall_frames = 2;
double_jump_time = 18; //the number of frames to play the djump animation. Can't be less than 31.
knockback_adj = 1.00; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15;
wave_land_time = 7;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.2; //grounded deceleration when wavelanding

//Fry specific variables
temperature = 0; 
temperature_max = 100;

//too many variables in init instead of attack_update because i have no idea what i'm doing, anyone reading this code will just have to deal with the spaghetti

temperature_parry_loss = 20; //how much temperature Fry loses when he's parried
temperature_death_loss = 50;
temperature_drain = 30; //higher = slower; how many frames per unit of temperature, currently disabled
temperature_drain_timer = 0; //timer variable for calculating temperature loss over time, currently disabled

nspecial_gain = 2; //higher = slower; how many frames per unit of temperature
nspecial_timer = 0; //timer variable for calculating temperature gain
nspecial_looped = 0; //variable for determining how many times nspecial has looped, used for cancel
nspecial_flag = 0; //used for determining if nspecial 2 has been buffered

nspecial_cost = 20; //cost of the weak nspecial projectile

nspecial_hsp = 6.5; //the speed of nspecial's weak projectile
nspecial2_hsp = 15; //the speed of nspecial's strong projectile

fspecial_cost = 2; //higher = cheaper; how many frames per unit of temperature
fspecial_speed = 0.45; //the speed that fspecial gains each frame
fspecial_speed_start = 1; //the initial velocity that fspecial starts at
fspecial_speed_max = 15; //the maximum speed fspecial is allowed to reach
fspecial_cooldown = 90; //cooldown for the move
fspecial_timer = 0; //timer variable for calculating temperature cost

uspecial1_cost = 10;
uspecial1_proj_vsp = 4; 
uspecial2_cost = 15;
uspecial2_proj_vsp = 8; 

dspecial_cost = 25;
dspecial_active = 0; //Whether DSpecial's flame is active.
fspecial_can = 0; //Whether FSpecial is on cooldown.

nspecial_fireball = noone;
dspecial_flame = noone;

dspecial_hsp = 5;

uair_link_timer = 0; //Used for determining whether to pull in the opponent during UAir hits.

fry_platinum = 0; //Is Fry Platinum?
fry_platinum_timer = 0; //used for determining fry_platinum
fry_platinum_eraser_timer = 0; //Used for determining the time that Fry has been casting Platinum Eraser.

hud_yoffset_max = 40;
hud_yoffset = 20;

particle_ember = hit_fx_create(sprite_get("part_ember"), 6);
particle_uspecial_break = hit_fx_create(sprite_get("uspecialprojbreak"), 9);
particle_flamesparkle = hit_fx_create(sprite_get("part_flamesparkle"), 15)

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 7;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 7;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 7;
roll_back_recovery_frames = 2;
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

//trummel?
trummelcodecneeded = false;
trummelcodec_id = noone;



//code below for Supersonic's Abyss Runes buddy

//this var makes f5 not break the buddy if developing with more than one
//workshop character or buddy in the match
//abyss_devmode = true;
//
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

//abyss init code over

abyssMods[@ runes.A] = [3,"Dash speed increased."];
abyssMods[@ runes.B] = [3,"FSPECIAL travels faster."];
abyssMods[@ runes.C] = [3,"USPECIAL no longer causes special fall."];
abyssMods[@ runes.D] = [3,"FTILT travels further and has less endlag."];
//abyssMods[@ runes.E] = [2,"DAIR spikes opponents."];
abyssMods[@ runes.E] = [2,"DASH ATTACK grab can be jump or attack cancelled on hit."];
abyssMods[@ runes.F] = [1,"NSPECIAL projectiles travel faster."];

//abyssMods[@ runes.G] = [2,"Specials and strongs apply Zetter fire."];
abyssMods[@ runes.H] = [2,"FAIR is faster and stronger."];
//abyssMods[@ runes.I] = [0,"DSPECIAL deals hitstun and knockback."];
abyssMods[@ runes.J] = [2,"FAIR and DTILT sweetspots apply Clairen's stun effect."];
abyssMods[@ runes.K] = [3,"Heat gain doubled."];

abyssMods[@ runes.L] = [3,"FSPECIAL has super armor."];
//abyssMods[@ runes.M] = [3,"USPECIAL is vertical FSPECIAL."];
//abyssMods[@ runes.N] = [1,"You can have up to 3 DSPECIAL flames active at once."];
//abyssMods[@ runes.O] = [3,"Damage increases as Heat increases."];
abyssMods[@ runes.O] = [3,"Constantly generate heat."];