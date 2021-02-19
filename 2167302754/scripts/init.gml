hurtbox_spr = sprite_get("idle_hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 0.2;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 6.25;
dash_turn_time = 8;
dash_turn_accel = 1.5;
dash_stop_time = 3;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12.5;
short_hop_speed = 7.5;
djump_speed = 11.5;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = .9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
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
dodge_recovery_frames = 1;

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

introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being 
//blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

Hikaru_Title = "First member of the DK crew";

arena_title = "The Leader of The Bunch";

battle_text = "* give up your bananas or die";

tcoart = sprite_get("tco");

feri_costume = sprite_get("feri_costume");

toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo2 = 6;

miiverse_post = sprite_get("miiverse_post");

otto_bobblehead_sprite = sprite_get("otto");

guiltySprite = sprite_get("guilty_dk");

resort_portrait = sprite_get("resort_dk");

plushForAmber = sprite_get("amber_plush_dk");

walle_taunt_sound = sound_get("walle_dk");
walle_taunt_type = 1;

childsupport = 1;

pkmn_stadium_front_img = sprite_get("pkm_dk_front");
pkmn_stadium_back_img = sprite_get("pkm_dk_back");
pkmn_stadium_name_override = "D.Kong";

gfzsignspr = sprite_get("sign_dk");

ncode1 = "The Leader of the Bunch (aka the DK Crew)."
ncode2 = "His coconut gun can fire in spurts. If he shoots ya,"
ncode3 = "it's gonna hurt! Leave his bananas alone."

// Make these clear the buffer of the inputs that you use for costume changing during the intro. This prevents costume switching when restarting a game if either input is mapped to A. [Edit optional]
clear_button_buffer(PC_SPECIAL_PRESSED);
clear_button_buffer(PC_JUMP_PRESSED);

trummelcodecneeded = false;
trummelcodec_id = noone;

kirbyability = 16;
swallowed = 0;

//Dracula support
{
dracula_portrait = sprite_get("dracula_dk");
dracula_portrait2 = asset_get("empty_sprite"); //or asset_get("empty_sprite")
dracula_portrait3 = asset_get("empty_sprite"); //or asset_get("empty_sprite")
var page = 0;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "[shake]*grunts*";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = "Are you saying that I stole your bananas? Preposterous! My Skeleton Apes are already undead. I have no need for something full of potassium";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "[shake]*grunts*[shake]";
page++;

//Page 3
dracula_speaker[page] = 0;
dracula_text[page] = "Foolish animal![glass] I'll make a banana out of you.[shake] Best when nearly rotten!";
page++;

//repeat...
}

//Daroach Support
{
daroach_portrait = sprite_get("dracula_dk");
daroach_portrait2 = asset_get("empty_sprite");
daroach_portrait3 = asset_get("empty_sprite");
var page = 0;

//Page 0
daroach_speaker[page] = 1;
daroach_text[page] = "[shake]*grunts*";
page++;

//Page 1
daroach_speaker[page] = 0;
daroach_text[page] = "Oh Donkey Kong, the leader of bunch, I know you well! So you're finally back, hopefully not to kick someone's tail.";
page++;

//Page 2
daroach_speaker[page] = 1;
daroach_text[page] = "[shake]*grunts*";
page++;

//Page 3
daroach_speaker[page] = 0;
daroach_text[page] = "Wait a minute, I assure you, I wasn't the one who stole your bananas!";
page++;

//Page 4
daroach_speaker[page] = 1;
daroach_text[page] = "[shake]*grunts*";
page++;

//Page 5
daroach_speaker[page] = 0;
daroach_text[page] = "Alright fine! Let's duke it out! This won't be the first time a crazy powerful individual challenges me over stolen food.";
page++;

}

punch_timer = 0;
punch_charged = false;
punch_charging = false;

grabbedid = noone;

let_go = false;
cargo_timer = 60;
cargo_wait = 0;

barrel = noone;
launch_now = false;
barrel_jump = false;
barrel_explode = false;
enemy_blow = false;

//Rune Support
var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}

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

// Tier 1 Rune
abyssMods[@ runes.A] = [3, "NAIR gives DK an Aerial Boost"];
abyssMods[@ runes.B] = [3, "Gives DK an extra Midair Jump"];
abyssMods[@ runes.C] = [0, "USPECIAL Barrel causes the Burning Effect"];
abyssMods[@ runes.D] = [2, "NSPECIAL is as Strong as the Smash Version"];
abyssMods[@ runes.E] = [0, "USPECIAL Barrels are Indestructible"];
abyssMods[@ runes.F] = [2, "DAIR turns into Sandbert's DAIR"];

// Tier 2 Rune
abyssMods[@ runes.G] = [3, "Cancel DASH ATTACK with anything"];
abyssMods[@ runes.H] = [2, "DSPECIAL hits any opponents on the ground"];
abyssMods[@ runes.I] = [2, "FSPECIAL Throw Stuns the opponent"];
abyssMods[@ runes.J] = [0, "USPECIAL Barrels Freezes rather than launch opponents"];
abyssMods[@ runes.K] = [1, "His Coconut Gun, can fires in spurts, if he shoots ya, it's gonna hurt"];

// Tier 3 Rune
abyssMods[@ runes.L] = [3, "He's bigger, faster and stronger too!"];
abyssMods[@ runes.M] = [0, "USPECIAL Barrels always have the Exploding Effect"];
abyssMods[@ runes.N] = [3, "All of DK STRONGS have Super Armor"];
abyssMods[@ runes.O] = [2, "NSPECIAL always has Full Charge"];