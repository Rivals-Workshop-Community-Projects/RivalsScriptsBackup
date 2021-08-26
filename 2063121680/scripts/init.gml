//trum & alto codec stuff
trummelcodecneeded = false;
trummelcodec_id = noone;

//otto bobblehead
otto_bobblehead_sprite = sprite_get("bobblehead_sprite");

//feri costume
feri_costume = sprite_get("feri_costume_link");

//tco art
tcoart = sprite_get("tco_art");

//kirby copy ability
kirbyability = 16;
swallowed = 0;
enemykirby = undefined;

//RAINBOWS
hue_offset=0;
hue_speed=0.5; //change this to change the speed of the hueshift

//practice mode detector
playtest = (object_index == oTestPlayer);
practice = false;

//hikaru title
Hikaru_Title = "Champion of Hyrule";

//Rune Support
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
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
runesUpdated = true;
ab_hud_x = 0;
ab_hud_y = 0;

//final smash
fs_hit = false;
fs_timer = 0;
fs_hitID = noone;
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 80;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Not Implemented."]);

abyssMods[@ runes.A] = [3, "DAIR can be used multiple times in the air."];
abyssMods[@ runes.B] = [1, "NSPEC arrow travels faster."];
abyssMods[@ runes.C] = [3, "USTRONG can be aimed faster horizontally."];
abyssMods[@ runes.D] = [1, "FSPEC initial detection beam travels faster."];
abyssMods[@ runes.E] = [1, "FSTRONG bombs comes out earlier."];
abyssMods[@ runes.F] = [3, "USPEC travels further vertically."];

abyssMods[@ runes.G] = [2, "Stasis timer lasts longer on opponents."];
abyssMods[@ runes.H] = [2, "Stasis launcher deals more knockback."];
abyssMods[@ runes.I] = [3, "DATTACK spikes aerial opponents."];
abyssMods[@ runes.J] = [0, "Magnesis moves the box faster."];
abyssMods[@ runes.K] = [1, "DAIR doesn't put you into pratfall."];

abyssMods[@ runes.L] = [2, "Opponents take damage from attacks while in stasis."];
abyssMods[@ runes.M] = [1, "FSTRONG bombs stun."];
abyssMods[@ runes.N] = [0, "Box has a hitbox while being moved by Magnesis."];
abyssMods[@ runes.O] = [1, "NSPEC auto-aims opponents."];

var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}

//normal Init start here

//taunt vars
loopSound = false;

//dstrong vars
maxSpins = 0;
numSpins = 0;

//nspec arrow vars
arrowAngle = 0;
arrowCrit = false;

//bullet time vars
bulletHsp = 0;
bulletVsp = 0;
bulletBounce = false;

//stasis vars
inStasis = false;
stasisActive = false;
stasisID = undefined;
stasisTimer = 0;
oppStasisHitSound = sound_get("stasis_hit1");
stasisEndSound = sound_get("stasis_end_weak");
stasisAngle = 0;
stasisArrowFrameAdvance = false;
stasisArrowFrame = 0;
stasisArrowFrameMax = 0;
stasisHitPlayer = false;
stasisChainTransparencyVar = 0;
stasisChainAngle1 = 0;
stasisChainAngle2 = 0;
stasisChainAngle3 = 0;
stasisChainAngle4 = 0;
hitboxStasisPlayer = player;
not_stasis_timer = 10;
//stasisTimerMax = 580;
stasisTimerMax = 0;
stasisType = undefined;

//vfx vars
fstrongExplosionVfx = hit_fx_create(sprite_get("stock_explosion_large_blue"), 32);
dtiltExplosionVfx = hit_fx_create(sprite_get("stock_explosion"), 32);
bairExplosionVfx = hit_fx_create(sprite_get("stock_explosion_red"), 32);
fsExplosionVfx = hit_fx_create(sprite_get("stock_explosion_large"), 32);

//dattack vars
dattackHitPlayer = false;
createDattackHitbox = false;

//dilt vars
drawDtiltExplosion = false;
drawDtiltExplosionVar = 0;

//uspec vars
uspecRepeat = false;

//ustrong vars
ustrongPillarDraw = false;
ustrongWarningDraw = false;
ustrongPillarHeight = 0;
ustrongWarningHeight = 0;
ustrongDrawHeight = 0;
ustrongXVar = 0;
ustrongYVar = 0;
ustrongDrawTimer = 0;
ustrongNoGround = false;
ustrongLiveHeight = 0;

//magnesis vars
reticleX = 0;
reticleY = 0;
magnesisReticleDraw = false;
retAngle = 0;
retDist = 0;
retXAcc = 0;
retYAcc = 0
boxActive = false;
magnesisSearch = false;
magnesisReticalTimer = 0;
magnesisMoveTimer = 0;
magnesisMoveStopVar = true;

//intro vars
fallStart = 15;
fallTime = 15;
splatTime = 20;

//other vars
wasInPratfall = false;
parrySoundVar = false;
instanceID = undefined;
playtest = (object_index == oTestPlayer);

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = asset_get("ferret_hurtbox");
hitstun_hurtbox_spr = -1;

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
initial_dash_speed = 7.5;
dash_speed = 7.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 1000; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .11; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
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
roll_forward_startup_frames = 1;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 6;
roll_back_recovery_frames = 1;
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
