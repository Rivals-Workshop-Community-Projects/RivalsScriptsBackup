has_grenade = true;
debug = false;
trigger = false; //used to explode grenade on certain attacks
handle_parry = false //used to handle parries in special situations
introTimer = 0;
introTimer2 = 0;

playtest_active = false;
with (oTestPlayer) playtest_active = true;

hurtbox_spr = sprite_get("nade_hurtbox");
sprite_change_offset("nade_hurtbox", 64, 105);
crouchbox_spr = sprite_get("nade_crouch_hurtbox");
sprite_change_offset("nade_crouch_hurtbox", 64, 105);
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 69;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 5.95;
initial_dash_time = 13;
initial_dash_speed = 6.5;
dash_speed = 5.95;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 8;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.75; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 18;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 8;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
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
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 6;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 0;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme(sound_get("nadewins"));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//knockback for grenade sweetspots
ftilt_g_knockback = 8.5;
ftilt_g_scaling = 1.1;
bair_g_knockback = 8.5;
bair_g_scaling = 1.1;
trap_knockback = 8.5;
trap_scaling = 1.1;

//attack name organisation
AT_USTRONG_G = AT_USTRONG_2;
AT_DSTRONG_G = AT_DSTRONG_2;
AT_FSPECIAL_G = AT_FSPECIAL_2;
AT_DSPECIAL_G = AT_DSPECIAL_2;
AT_USPECIAL_G = AT_USPECIAL_2;
AT_EXPLOSION = AT_EXTRA_1;
AT_NSPECIAL_SHOOT = AT_EXTRA_2;
AT_JAB_G = AT_NTHROW;
AT_DATTACK_G = AT_USPECIAL_GROUND;
AT_FTILT_G = AT_FTHROW;
AT_UTILT_G = AT_UTHROW;
AT_DTILT_G = AT_DTHROW;
AT_NAIR_G = AT_NSPECIAL_AIR;
AT_FAIR_G = AT_FSPECIAL_AIR;
AT_BAIR_G = AT_EXTRA_3;
AT_DAIR_G = AT_DSPECIAL_AIR;
AT_UAIR_G = AT_TAUNT_2;

//grenade attributes
THROW_ANGLE_SIDE = 15;
THROW_SPEED_SIDE = 10;
THROW_HOLD_SPEED_SIDE = 12;

THROW_ANGLE_UP = 85;
THROW_SPEED_UP = 13;
THROW_HOLD_SPEED_UP = 15;

THROW_ANGLE_DOWN = 270;
THROW_SPEED_DOWN = 10;

THROW_ANGLE_COVER_MAX = 75;
THROW_ANGLE_COVER_MIN = 25;
THROW_SPEED_COVER = 8;
THROW_HOLD_SPEED_COVER = 10;

COVER_GRENADE_COOLDOWN = 120;

ex_y_off_air = 22;
ex_y_off_ground = 25;
ex_x_off_air = 2;
ex_x_off_ground = 0;

grenade_angle = 0; //angle between grenade and player
cover_grenade_timer = COVER_GRENADE_COOLDOWN; //time since grenade was thrown from cover

spawn_cluster = false;
spawnX = 0;
spawnY = 0;

/*//gunshot fx variables
////keep track of name, x, y, hsp, vsp, frame, max frames for each active effect
gunshot_fx = noone;
active_fx_size = 10;

for(k = 0; k < active_fx_size; ++k){
    active_fx[k, 0] = noone;
    for(l = 1; l < 7; ++l){
        active_fx[k, l] = 0;
    }
}*/

//stance changing fx variables
spawn_dust = false;
FLASH_TIME = 20;
flash_timer = FLASH_TIME;

//uspecial variables
BALLOON_H_SPEED = -1;
BALLOON_V_SPEED = -8;

balloon_active = false;
balloon_x = 0;
balloon_y = 0;
b_spr_dir = 1;

//fspecial variables
vault_offset[0] = 43;
vault_offset[1] = 23;
vault_offset[2] = 19;
vault_offset[3] = 25;
vault_offset[4] = 0;
vault_offset[5] = 1;
vault_offset[6] = 39;
vault_offset[7] = 21;

fspec_charge = 0;
fspec_hit = false;
fspec_angle_max = 25;
fspec_angle_min = 345;

held_angle = 0;

head_box = noone;

//dspecial traps
traps[0] = noone;
traps[1] = noone;
traps[2] = noone;
num_traps = 1;
aerial_traps_destructible = true;

//ftilt variables
my_grab_id = noone; 
grab_time = 0;
max_grab_time = 60;

//nair variables
max_nairs = 5
nairs = 1;
bomb_avail = true;

//fair_g hit flag
fair_g_hit = false;

//dair_g variables
fall_start = 0;
bounce = false;
DAIR_CAN_CANCEL = 200;
DAIR_FALL_CANCEL = 35;

//taunt variables
taunt_speed = 1.7;
taunt = false;

//dattack variables
dacut = false;
gunshot_timer = 0;

//jab parry handle
jab_g_parried = false;

//vfx
air_explosion = hit_fx_create(sprite_get("explosion_air"), 80);
ground_explosion = hit_fx_create(sprite_get("explosion_ground"), 80);
dust_fore = hit_fx_create(sprite_get("dust_fore"), 30);
dust_back = hit_fx_create(sprite_get("dust_back"), 30);

//rune flags needed for referencing outside of perspecitive
e_rune = false;
h_rune = false;
l_rune = false;

/*==================Compatibilities==================*/

//Trummel and Alto
trummelcodecneeded = false;
trummelcodec_id = noone;

//Kirby
kirbyability = 16;
enemykirby = noone;
swallowed = 0;

//Otto
otto_bobblehead_sprite = sprite_get("hudbobblehead");

//Rune Support
abyssEnabled = false;
enum runes {
    A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,
    I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15
}
runeA = false; 
runeB = false; 
runeC = false; 
runeD = false; 
runeE = false; 
runeF = false; 
runeG = false; 
runeH = false; 
runeI = false; 
runeJ = false; 
runeK = false; 
runeL = false; 
runeM = false; 
runeN = false; 
runeO = false; 
runesUpdated = false;
ab_hud_x = 0;
ab_hud_y = 0;

m_cooldown = 240;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Not Implemented."]);
abyssMods[@ runes.A] = [3, "Decrease ground friction on strongs."]
abyssMods[@ runes.B] = [0, "Traps last until a new one is placed."]
abyssMods[@ runes.C] = [3, "Add horizontal speed to grenade DATTACK startup."]
abyssMods[@ runes.D] = [2, "Pistol JAB 1 spikes downwards."]
abyssMods[@ runes.E] = [1, "Grenades bounce off the ground."]
abyssMods[@ runes.F] = [3, "Pistol NAIR gives a vertical boost."]

abyssMods[@ runes.G] = [0, "Can place up to two traps at once."]
abyssMods[@ runes.H] = [3, "Become immune to own explosions."]
abyssMods[@ runes.I] = [3, "Pistol NAIR is repeatable up to " + string(max_nairs) + " times."]
abyssMods[@ runes.J] = [2, "Grenade moves explode randomly on hit."]
abyssMods[@ runes.K] = [3, "Have soft armour when setting up cover."]

abyssMods[@ runes.L] = [1, "Explosions from grenade specials spawn more grenades."]
abyssMods[@ runes.M] = [3, "Cause an explosion when rolling. 4 second cooldown."]
abyssMods[@ runes.N] = [0, "Explosions from traps spawn more grenades."]
abyssMods[@ runes.O] = [3, "During pistol NAIR, tap special to drop a grenade."]
