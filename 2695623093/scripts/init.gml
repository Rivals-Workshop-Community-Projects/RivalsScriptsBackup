hurtbox_spr = sprite_get("hurtbox_giygas");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = sprite_get("hurtbox_air_giygas");
hitstun_hurtbox_spr = -1;

char_height = 68;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 2;
walk_accel = 0.2;
walk_turn_time = 7;
initial_dash_time = 12;
initial_dash_speed = 7;
dash_speed = 5.4;
dash_turn_time = 14;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .3;
moonwalk_accel = 1.9;

jump_start_time = 5;
jump_speed = 8.4;
short_hop_speed = 5;
djump_speed = -1;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 2; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .1;
max_djumps = 1;
djump_accel = -1.4;
djump_accel_start_time = 4;
djump_accel_end_time = 15;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 10; //fast fall speed
gravity_speed = .32;
hitstun_grav = .5;
knockback_adj = 1.6; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 2;

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
abyssMods[@ runes.A] = [3, "Increased movement speed."];
abyssMods[@ runes.B] = [3, "Gain an additional midair jump."];
abyssMods[@ runes.C] = [2, "Increased all tilts damage."];
abyssMods[@ runes.D] = [2, "UAIR is faster and stronger."];
abyssMods[@ runes.E] = [3, "USPECIAL travels further."];
abyssMods[@ runes.F] = [1, "FSTRONG projectile has more life time."];
abyssMods[@ runes.G] = [2, "DSTRONG has less startup."];
abyssMods[@ runes.H] = [2, "FAIR hitbox is bigger."];
abyssMods[@ runes.I] = [1, "FSPECIAL is a projectile."];
abyssMods[@ runes.J] = [1, "FSTRONG is stronger."];
abyssMods[@ runes.K] = [3, "Increased weight."];
abyssMods[@ runes.L] = [1, "FTILT travels further."];
abyssMods[@ runes.M] = [2, "DAIR has less endlag."];
abyssMods[@ runes.N] = [2, "FSPECIAL is comically large."];
abyssMods[@ runes.O] = [2, "NSPECIAL has no cooldown."];
///
runeA = has_rune("A");
runeB = has_rune("B");
runeC = has_rune("C");
runeD = has_rune("D");
runeE = has_rune("E");
runeF = has_rune("F");
runeG = has_rune("G");
runeH = has_rune("H");
runeI = has_rune("I");
runeJ = has_rune("J");
runeK = has_rune("K");
runeL = has_rune("L");
runeM = has_rune("M");
runeN = has_rune("N");
runeO = has_rune("O");

//miiverse
miiverse_post = sprite_get("giegue_miiverse");
sprite_change_offset("giegue_miiverse", 60, 30);

//pokemon
pkmn_stadium_front_img = sprite_get("giegue_front");
pkmn_stadium_back_img = sprite_get("giegue_back");

//Wily Castle
wily_robotmaster_img = sprite_get("giegue_robotmaster");

//DDD
arena_title = "The Universal Cosmic Destroyer";

//Hikaru
Hikaru_Title = "Embodiment of Evil";

//danganronpa
guiltySprite = sprite_get("gieguetrialgrounds");

//toon link
toonlink_photo = sprite_get("pictophoto_giegue");

//bee
otto_bobblehead_sprite = sprite_get("giegue_bobble");

//feri
feri_costume = sprite_get("feri_costume_giegue");

//hello mario
resort_portrait = sprite_get("giegue_portrait");

//undertale
battle_text = "* you cannot grasp the true form of";
battle_text2 = "  giygas' attack!";

//PAC-MAN
Namco_Taunt = sprite_get("giegue")
Namco_Taunt_Sound = sound_get("wow")

//Sanic
gfzsignspr = sprite_get("gieguesign");
gfzsignsfx = sound_get("wow");

//TCO
tcoart = sprite_get("tcoart");

if (get_player_color( player ) == 0) {
    tcoart = sprite_get("tcoart1");
}


if (get_player_color( player ) == 1) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 2) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 3) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 4) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 5) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 6) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 7) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 8) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 9) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 10) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 11) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 12) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 13) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 14) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 15) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 16) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 17) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 18) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 19) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 20) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 21) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 22) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 23) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 24) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 25) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 26) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 27) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 28) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 29) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 30) {
    tcoart = sprite_get("tcoart1");
}

if (get_player_color( player ) == 31) {
    tcoart = sprite_get("tcoart1");
}