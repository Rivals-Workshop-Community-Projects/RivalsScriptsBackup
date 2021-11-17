hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//TOGGLE THIS ON FOR EXPERIMENTAL CHANGES
experimental = true;

hook_jump_mult = 0.8;
dtilt_softcap = 8;


//AM
hit_player_event = 0;
pronouns = ["she", "her", "her", "is"];

am_is_earth = true;
am_is_noob = true;
am_is_handed = true;
am_is_clothed = true;
am_is_guest = false;


fx_explo=hit_fx_create(sprite_get("hfx_explo"),30);
fx_funny_arrow=hit_fx_create(sprite_get("vfx_funny_arrow"),18);
shold=0;
sharphits=0;
sharpBuff=0;
arrowReady=1;
buffNextHitbox = false;
attack_hasBReversed = false;
hue = 0;
original_uspec_spr_dir = 0;
uspecial_land_played = false;

kirbyability = 6; //Kirby Support

tcoart = sprite_get("tcoscribble"); //TCO support
otto_bobblehead_sprite = sprite_get("hime_bobble"); //otto

miiverse_post = sprite_get("miiverse_post");
sprite_change_offset("miiverse_post", 60, 30);

direc = 0;
direc_sided = 0;
anim_offset = 0;
hook = noone;
hook_speed = 15;
hitten = 0;

// SAI STUFF
intro = 0;
introtimer = -2;
introx = 0;
introy = 0;
talked = false;
ready = false;

darken = hit_fx_create( sprite_get( "darken" ), 10);

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6.25; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.25;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = 0.02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding
wall_frames = 2;

//crouch animation frames
crouch_startup_frames = 6;
crouch_active_frames = 1;
crouch_recovery_frames = 6;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
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
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
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

//Trummel support
trummelcodecneeded = false;
trummelcodec_id = noone;

//Rune Support (message from supersonic: i helped :) )
abyssEnabled = false || get_match_setting(SET_RUNES);
runesUpdated = abyssEnabled;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
	variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}
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
// 1 cost
abyssMods[@ runes.A] = [2, "Orochi attacks cause ranno poison."]; //code in update.gml
abyssMods[@ runes.B] = [3, "DTILT can be jump cancelled at any time."]; //code in attack_update.gml
abyssMods[@ runes.C] = [3, "Bunny Hood."]; //code in update.gml
abyssMods[@ runes.D] = [3, "DSPECIAL gives more charges."]; //code in attack_update.gml
abyssMods[@ runes.E] = [1, "Increased NSPECIAL charge speed."]; //code in attack_update.gml
abyssMods[@ runes.F] = [3, "Airdodge gives back USPECIAL."]; //code in update.gml

// 2 cost
abyssMods[@ runes.G] = [1, "Reduced USPECIAL startup."]; //code in update.gml
abyssMods[@ runes.H] = [2, "Honest DSMASH."]; //code in update.gml
abyssMods[@ runes.I] = [2, "JAB 2 attaches a Bomb Arrow."]; //code in hit_player.gml
abyssMods[@ runes.J] = [1, "NSPECIAL has less endlag and pops the opponent into the air."]; //code in update.gml
abyssMods[@ runes.K] = [3, "Jet Set Hime DSPECIAL."]; //code in update.gml

// 3 cost
abyssMods[@ runes.L] = [0, "Remote Detonation Bomb Arrow."]; //code in set_attack.gml
abyssMods[@ runes.M] = [1, "NSPECIAL Finisher."]; //code in attack_update.gml, nspec_finisher.gml
abyssMods[@ runes.N] = [3, "DSPECIAL applies to knife attacks."]; //code in hit_player.gml
abyssMods[@ runes.O] = [3, "Taunts heal you significantly."]; //code in attack_update.gml
//abyss init code over


holdtimer = 0;

skinSelector_open = false;
skinSelector_attack = 49;
skinSelector_defaultsEnabled = true;
skinSelector_spawnmode = false;

skin = get_player_color(player); 
// the currently hovered skin.
// initializes to the color selected at css
skinSelector_strip = sprite_get("skinsel_char");
skinCount = sprite_get_number(skinSelector_strip);
skinSelector_chars = [
    [skinSelector_strip, (skinCount-1)+skin-1, -120, 0, 0, 0], //farthest l
    [skinSelector_strip, (skinCount-1)+skin, -60, 0, 0.5, 0], //closest l
    [skinSelector_strip, skin, 0, 0, 1, 0],  //current
    [skinSelector_strip, (skin+1)%skinCount, 60, 0, 0.5, 0], //closest r
    [skinSelector_strip, (skin+2)%skinCount, 120, 0, 0, 0] //farthest r
    ];
//sprite, subimg, xoffset, yoffset
skinOverridden = false;
skinOverride = 0;

color_hsv = c_white;

skinSelector_state = 0;
//0 - switchable
//1 - switch left
//2 - switch right
//3 - selection animation (currently unused)
//4 - opening animation
//5 - closing animation
skinSelector_stateT = 0;