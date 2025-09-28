hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("hurtbox_crouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

parryUpSmashModifier = false;
reverseDir = false;
dairDamageTimer = 0;
//dairOffStage = 30;
dairID = noone;
dairDJumps = 0;
birdOut = false;
puul = instance_create(x-200*spr_dir, y-100, "obj_article1");
pullfieldfx = hit_fx_create(sprite_get("pullfield"), 16);
pushfieldfx = hit_fx_create(sprite_get("pushfield"), 16);

practicemode = false;
puulnocooldown = false;
tutalpha = 0;
tutstate = 0;
tutstatebuffer = 0;
tuton = false;
holdtimer = 0;
tutmenu = 0;
noofitems = 3;

steelball = noone;
steelballextra = noone;
canShoot = 2;
recharge1 = 0;
recharge2 = 0;
ballbreaker = noone;
dspecshivertimer = 0;
dspecshiver = 0;

crawl_spr = sprite_get("crawl");
crawl_anim_speed = .2;
crawl_speed = 2;
crawlTimer = 0;

char_height = 62;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

wait_sprite = sprite_get("idle_shine");
wait_time = 8/idle_anim_speed * 4;
wait_length = 8/idle_anim_speed;

walk_speed = 2.50;
walk_accel = 1.25;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 5;
dash_speed = 4.75;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 7;
djump_speed = 9;
leave_ground_max = 4.75; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4.25; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3.50; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .6;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .40;
hitstun_grav = .5;
knockback_adj = .9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 10;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .10; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 8;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 6;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 7; //roll speed
roll_backward_max = 7;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

Hikaru_Title = "Demagnetizer";
hue = 0;

prevState = -4;
prevDjumps = 0;

//Rune Support
abyssEnabled = false;
abyss_paused = false;
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
abyssMods[@ runes.A] = [3, "DAIR is jump-cancellable"];
abyssMods[@ runes.B] = [0, "Puul moves faster"];
abyssMods[@ runes.C] = [1, "Normal Cannonballs can bounce"];
abyssMods[@ runes.D] = [2, "DATTACK can be looped by holding down Attack"];
abyssMods[@ runes.E] = [3, "Hold Special when calling Puul back to control where Puul goes"];
abyssMods[@ runes.F] = [1, "Careening Cannonballs have a higher speed"];
abyssMods[@ runes.G] = [1, "DSPEC has 7 seconds less cooldown"];
abyssMods[@ runes.H] = [2, "USTRONG has Super Armor"];
abyssMods[@ runes.I] = [3, "Having Puul in your shell will give you 3 double jumps"];
abyssMods[@ runes.J] = [2, "NAIR can be cancelled into any attack on hit"];
abyssMods[@ runes.K] = [3, "Puul magnetism has less cooldown"];
abyssMods[@ runes.L] = [2, "Puul magnetism affects everyone"];
abyssMods[@ runes.M] = [3, "Unlimited steel balls"];
abyssMods[@ runes.N] = [1, "NSPEC when releasing Puul will make Puul follow the opponent"];
abyssMods[@ runes.O] = [3, "Magnetism Covers the whole stage"];

var runess = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
for (var i = 0; i < array_length(runess); ++i) variable_instance_set(self, "rune" + runess[i], has_rune(runess[i]));

// Kirby
enemykirby = undefined;
swallowed = undefined;
kirbyability = 16;
kirb_used = 0;