// Kirby Functionality
kirbyability = 16;
newicon = 0;
swallowed = 0;
enemykirby = noone;

seasonal = false;

polish = 0;   // literally don't even worry about this.
wait_timer_thing = 0; //same

urmom = 0;

muted = 0

//gauge sprite
guage_sprite = sprite_get("gauge");

// Boss Fight Support
boss_fight = false;

hurtbox_spr = sprite_get("kris_hurtbox");
crouchbox_spr = sprite_get("kris_crouchbox");
air_hurtbox_spr = sprite_get("kris_hurtbox_air");
hitstun_hurtbox_spr = -1;

char_height = 54;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .22;
pratfall_anim_speed = .25;

walk_speed = 3.05;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 6.75;
dash_speed = 6.75;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.2;


jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 8;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.25; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 10.8; //maximum fall speed without fastfalling
fast_fall = 15.8; //fast fall speed
gravity_speed = .56;
hitstun_grav = .5;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
DATTACK_LOCKOUT = 0;

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 8;
crouch_recovery_frames = 3;

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
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
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

//devilsknife holder
devilsknife = noone;
angle_devilsknife = false;

//dstrong hit stuff
for (var i = 0; i < 4; i++) {
    dstrong_hit_list[i,0] = noone;
    dstrong_hit_list[i,1] = 0;
}

//TP gauge variables
tp_gauge = 0;
tp_gauge_used = false;

// Attack costs
devilsknife_cost = 50;
rude_buster_cost = 15;
red_buster_cost = 35;
recover_high = 20;

//Variable for Down Special Buff, keeps track of how long it is active, and where it should be
supersaiyan = 0;
supersaiyan_frametimer = 0;

//damage_mod = 6;
//knockback_mod = 0;

//update
draining = 0;
naturevalleynaenae = 1;
boostio = 0;
babytp = 0;
showbaby = false;
baby_vis = 0;

sneakyalt = 0;

//Colours
resetcolours = 1
hue = 0

// Makes the visual effect
rudebuster = hit_fx_create( sprite_get( "rudebustervfx" ), 24 );

// Intro Stuff
code_1 = 0;
code_2 = 1;
code_3 = 0;
code_4 = 0;

// Valentine's Day Gauge
if get_match_setting(SET_SEASON) == 1{
    if (seasonal){
        vdayselect = random_func(0, 3, true);
    }
}

// codec or whatever snaaaaaaaaaake
trummelcodecneeded = false;
trummelcodec_id = noone;
page = 0;

// TCO
tco_random = 0;

//Miiverse

// Arena Text
arena_title = "The Legendary Lightener";
arena_short_name = "Kris"

// Battle Text
spr_getfucked = sprite_get("spookymonth")

// Training Lab Support
is_ai = false;
timer1 = get_game_timer();      //The initial game timer.
timer2 = 0;                     //The game timer after a couple seconds pass.
courage_drain = true;
keeptp_on_death = false;
quick_set_on = false;
free_specials = false;

//abyss
devil_reduce = .5;
combo_starter = 5;
multihit = 2;
nocombomulti = 3;
powermulti = 8;
weakenders = 8;
enders = 15;
tpmax = 100;

// Shill
shilling = false;

// I Love You
pride = false;

// For The People
obama_freed = false;
usa = 0;
buttonmasher = 0;
diamondbutbetterkrisbbutbetter = false;
invinc_time = 0;
sparkles_active = false;
sparkle_frame = 0;
sparkle_timer = 0;
tp2_vis = 0;

dspec_activesound = sound_get("sfx_spell");
dspec_deactivesound = sound_get("sfx_spelldisable");

kbcheck = 0
myhsp = 0
myvsp = 0

//stat buff code
knockback_adj_start = knockback_adj;
gravity_speed_start = gravity_speed;
jump_speed_start = jump_speed;
short_hop_speed_start = short_hop_speed;
djump_speed_start = djump_speed;
wave_friction_start = wave_friction;
dash_speed_start = dash_speed;
initial_dash_speed_start = initial_dash_speed;
walk_speed_start = walk_speed;
stats_adjusted = true;

toggle_courage = false;

//this var makes f5 not break the buddy if developing with more than one
//workshop character or buddy in the match
//abyss_devmode = true;
//
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

// Moment of Silence for the Abyss Runes Buddy.


abyssMods = array_create(16,[-1,"What does DSpecial Do?"]);
//example rune definition:
//abyssMods[@ runes.A] = [3,"Ground speed is faster."];
// Level 1
abyssMods[@ runes.A] = [1, "Rude Buster and Red Buster now have Clairen Tipper effect."];
abyssMods[@ runes.B] = [1, "Rude Buster's size is larger."];
abyssMods[@ runes.C] = [2, "Old NAir."];
abyssMods[@ runes.D] = [2, "DAir is now Falco DAir."];
abyssMods[@ runes.E] = [3, "Ground speed is faster."];
abyssMods[@ runes.F] = [3, "Max Air Speed Increased."];

// Level 2
abyssMods[@ runes.G] = [1, "Rude Buster now has Zetta PF (Perfect Framing)."];
abyssMods[@ runes.H] = [1, "Up Strong is now more disjointed. (スタンド : きょりゅ お あるく)"];
abyssMods[@ runes.I] = [2, "FAir has the old hitboxes."];
abyssMods[@ runes.J] = [3, "Up Special is replaced with Acid's Side Special."];
abyssMods[@ runes.K] = [3, "You can act out of Up Special"];

// Level 3
abyssMods[@ runes.L] = [2, "TP Gain is doubled."];
abyssMods[@ runes.M] = [3, "All specials cost half as much."];
abyssMods[@ runes.N] = [3, "If you get parried, you have a one in ten chance of not being in stun."];
abyssMods[@ runes.O] = [3, "When courage is active, you can jump cancel any move."];
//abyss init code over


// ;)
otto_bobblehead_sprite = sprite_get("bobble_kris");

flag_x = x;
flag_y = y;
flag_active = false;

set_color_profile_slot(0, 5, 117, 250, 237); //SKIN
set_color_profile_slot(0, 1, 201, 228, 242); //ARMOR
set_color_profile_slot(0, 2, 235, 9, 152); //CAPE
set_color_profile_slot(0, 3, 11, 11, 59); //HAIR
set_color_profile_slot(0, 4, 117, 10, 87); //HILT
set_color_profile_slot(0, 0, 237, 148, 165); //SWORD
set_color_profile_slot(0, 6, 255, 0, 0); //SOUL
set_color_profile_slot(0, 7, 217, 16, 144); //STRONG HIT

//VMan_2002 added stuff in my code and it's probably beneficial????
vman_skinkit_color_names = [
	"Sword", "Armor", "Cape", "Hair", "Hilt", "Skin", "Soul", "Strong Hit",
	"Susie Hair", "Susie Body", "Susie Jacket", "Susie Jacket 2", "Susie Axe Handle", "Susie Axe Head", "Susie Axe Blade", "Susie Gold",
	"Ralsei Green", "Ralsei Green Shade", "Ralsei Scarf", "Ralsei Fluff", "Ralsei Fluff Outline",
	"Jevil Blurple", "Jevil Black", "Jevil Green", "Jevil Yellow", "Jevil Blade", "Jevil Skin",
	"Lancer Blue", "Lancer Black", "Lancer Dark Black", "Lancer White"
]
SkinExtraColors = [
	[0, 0, 0, 0, 0, 0, 0, 0], //Susie
	[0, 0, 0, 0], //Ralsei
	[0, 0, 0, 0, 0], //Jevil
	[0, 0, 0, 0] //Lancer
]

user_event(14);