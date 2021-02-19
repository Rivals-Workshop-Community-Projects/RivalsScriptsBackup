hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

ColorTimer = 0;

//Projectile Variables
dcharge = 0;
ucharge = 0;
fTrigger = 0;
nTrigger = 0;
stunTrigger = 0;
mcharge = 0;
mchargeTimer = 0;

// Initial Meter Stuff
ncharge = 0;
morePower = 0;
meterLock = 0;

//HUD Variables
Deplete = 0;

Minion = noone;

//Extra Variables
Init_Percent = 0;
Meter_Damage = 0;
superCharge = 0;
BEAM = 15;
initial_super = 0;

//Me being lazy with numbers
DspecialH1 = -40;
DspecialV1 = -65;
DspecialH2 = 40;
DspecialV2 = -66;

//CSS Alt Colors
Character_Color = 11;

//Secret Alt Colors
ColorLock = 0;
ColorLocked = false;
Default = 0;
Fantasy = 0;
Luminous = 0;
Indie = 0;
Nine = 0;
Tragedy = 0;
vSai = 0;
Pride = 0;
Touhou = 0;
Data = 0;
Abyss = 0;
Retro = 0;
Retro_Filter = false;
True = 0;
Curated = 0;
May = 0;
Muma = 0;

//Secret alt vars
Color_timer = 0;
Color_rotate = false;
hue_offset=0;
hue_speed=0.5;
hue_lock = false;

char_height = 72;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = 0.3;
dash_anim_speed = .2;
pratfall_anim_speed = .15;

walk_speed = 4;
walk_accel = 0.5;
walk_turn_time = 9;
initial_dash_time = 10;
initial_dash_speed = 4;
dash_speed = 6.75;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .3;
moonwalk_accel = 6;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6.5;
djump_speed = 9.5;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 2;
double_jump_time = 50; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 28;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .02; //grounded deceleration when wavelanding

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
techroll_recovery_frames = 3;
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


// ----------------- A A A A A This is where all the support stuff goes ----------------- //
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
abyssMods[@ runes.B] = [2, "Siren has a hitbox in her hurtbox"];

// Trum and Alto Support
trummelcodecneeded = false;
trummelcodec_id = noone;

// Dracula Support
	dracula_portrait = sprite_get("dracula");
	dracula_portrait2 = sprite_get("dracula2"); //or asset_get("empty_sprite")
	dracula_portrait3 = asset_get("empty_sprite"); //or asset_get("empty_sprite")
	var page = 0;

	//Page 0
	dracula_speaker[page] = 1;
	dracula_text[page] = "Finally, after a dance with Death I've finally found you.";
	page++;

	//Page 1
	dracula_speaker[page] = 0;
	dracula_text[page] = "Siren, the Maiden of Lies[glass]. You would be foolish to stand in my way.";
	page++;

	//Page 2
	dracula_speaker[page] = 2;
	dracula_text[page] = "Maiden of Lies? That's a little mean dontcha think. . . . . . . . . . . . . . . . . . .";
	page++;

	//Page 3
	dracula_speaker[page] = 1;
	dracula_text[page] = "[shake]Maiden of Lies or not, with the essence of those that failed to protect you I'll be taking your life now.";
	page++;

	//Page 3
	dracula_speaker[page] = 0;
	dracula_text[page] = "Fine then, sacrifice yourself to me puppet![shake]";
	page++;

// Otto Support
otto_bobblehead_sprite = sprite_get("bobble_sir");

// Feri Support
feri_costume = sprite_get("feri_costume_Siren");

// Hikaru Support
Hikaru_Title = "Puppet of Lies";

// Miiverse Support
miiverse_post = sprite_get("miiverse_post2");
miiverse_post2 = sprite_get("miiverse_post");
sprite_change_offset("miiverse_post", 60, 30);
sprite_change_offset("miiverse_post2", 60, 30);

// TCO Support
tcoart = sprite_get("SirenTCOart");

// Toon Link Support
toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo2 = sprite_get("toonlink_photo_TL");

// Mt. Dedede Supprt
arena_title = "The Abyssal Maiden";

// Soulbound Conflict Support
battle_text = "* Things are not always as they seem.";

// Kirby Support
kirbyability = 16;
newicon = 0;
swallowed = 0;
enemykirby = noone;