//trum & alto codec stuff
trummelcodecneeded = false;
trummelcodec_id = noone;

//otto bobblehead
otto_bobblehead_sprite = sprite_get("bobblehead_sprite");

//feri costume
feri_costume = sprite_get("feri_costume_panzer");

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

//god modes
limitBreakCharge = 0;
limitBreak = false;
allRunes = false;
taunt2Mode = undefined;
godmodeanimtimer = 0; //Timer for the little animation for godmode being enabled or disabled.
godmodemaxtimer = 30;

//vfx
steam_vfx = sprite_get("steam_vfx")
steam_blast = sprite_get("steam_blast")
water_break = sprite_get("water_capsule_break")

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

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Not Implemented."]);

abyssMods[@ runes.A] = [3, "Water to steam conversion rate increased."];
abyssMods[@ runes.B] = [1, "DSPEC projectiles travel faster."];
abyssMods[@ runes.C] = [3, "Movement speed while charging strong attacks increased."];
abyssMods[@ runes.D] = [1, "DSPEC can summon up to 3 projectiles."];
abyssMods[@ runes.E] = [3, "Hover uses less steam."];
abyssMods[@ runes.F] = [3, "USPEC can be canceled into pratfall."];

abyssMods[@ runes.G] = [3, "Automatically replenishes steam."];
abyssMods[@ runes.H] = [3, "Strong attacks and aerial water blast attacks use less water."];
abyssMods[@ runes.I] = [3, "USPEC has super armour while moving."];
abyssMods[@ runes.J] = [3, "Hover speed increased."];
abyssMods[@ runes.K] = [2, "Steam attacks have more extra hitpause."];

abyssMods[@ runes.L] = [0, "Max puddle size increased."];
abyssMods[@ runes.M] = [0, "Max number of puddles increased to 4."];
abyssMods[@ runes.N] = [0, "Puddles don't decrease in size over time."];
abyssMods[@ runes.O] = [0, "FSPEC doesn't decrease puddle size."];

var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}

//normal Init start here

sfxNum = -1;
if get_player_color(player) == 17 {
    waterSphereBreakFx = hit_fx_create(sprite_get("water_sphere_break_arc"), 20);
    waterCapsuleBreakFx = hit_fx_create(sprite_get("water_capsule_break_arc"), 16);
    uspecLandWaterFx = hit_fx_create(sprite_get("uspec_land_water_arc"), 24);
    fspecSmokeFx = hit_fx_create(sprite_get("fspec_smoke_arc"), 18);
    fspecSmoke = sprite_get("fspec_smoke_arc")
    uspecSteamFx = hit_fx_create(sprite_get("uspec_steam_arc"), 20);
    uspecLandSmokeFx = hit_fx_create(sprite_get("uspec_land_smoke_arc"), 18);
    uspecWaterTeleportFx = hit_fx_create(sprite_get("water_uspec_teleport_arc"), 32);
} else {
    waterSphereBreakFx = hit_fx_create(sprite_get("water_sphere_break"), 20);
    waterCapsuleBreakFx = hit_fx_create(sprite_get("water_capsule_break"), 16);
    uspecLandWaterFx = hit_fx_create(sprite_get("uspec_land_water"), 24);
    fspecSmokeFx = hit_fx_create(sprite_get("fspec_smoke"), 18);
    fspecSmoke = sprite_get("fspec_smoke")
    uspecSteamFx = hit_fx_create(sprite_get("uspec_steam"), 20);
    uspecLandSmokeFx = hit_fx_create(sprite_get("uspec_land_smoke"), 18);
    uspecWaterTeleportFx = hit_fx_create(sprite_get("water_uspec_teleport"), 32);
}

//arcade taunt
arc_gametimer = 0;
arc_score = 0;
arc_draw_sk = false;
arc_draw_line = false;
arc_line_spd = 1; //+ve = up, -ve = down, magnitude = speed
arc_draw_anchor = false;
arc_caught = false;
arc_loot_value = 0;
arc_state = 0; //0 = idle, 1 = casting, 2 = waiting, 3 = bitten, 4 = reeling, 5 = scoring
arc_state_timer = 0;

//upb screenshake timer
screenshake_timer = 0;

//meter variables
meterConversionRate = 15;

meterConversion = true;

meter_capacity = 100;

meter_water = 75;
meter_steam = 25;

fstrongWater = 10;
dstrongWater = 10;
ustrongWater = 10;
dspecialWater = 25;
uspecialWater = 25;
nspecialWater = 10;
uspecialWater2 = 1;
bairWater = 6;
fairWater = 6;
uairWater = 6;

venting = false; //uspecial steam release

dattackSteam = 1;
fspecialSteam = 8;
nspecialSteam = 2;
ftiltSteamRate = 3;

fstrongSteam = 1;
ustrongSteam = 1;
dstrongSteam = 2;

dryFstrong = false;
dryDstrong = false;
dryUstrong = false;

fspecialLoop = 0;
fspecialBlastCounter = 0;
fspecParticleCounter = 0;

steamed = false;

uair_hit_timer = false;
uair_hit_increment = 0;

fair_hit_timer = false;
fair_hit_increment = 0;

bair_hit_timer = false;
bair_hit_increment = 0;

//strong attack movement
strongMaxHsp = 5;
strongAccelHsp = 0.4;

//DSPEC max num of projectiles
dspecProjCount = 2;

//djump hover
djumpSteamRate = 3;

djumpAcceleration = 1;
djumpVspMax = -4;

djumpPressVar = 0;
djumpHoverTime = 0;
djumpEndingTime = 0;
djumpSoundVar = 0;
djumpPressTime = 0;

djumpXMod = 0;

//puddles
puddleNumMax = 2;
puddleNum = 0;

//dspec sound stuff
dspecSoundVar = false;

/*
var i;
i = puddleNumMax - 1;
repeat(puddleNumMax) {
   puddleArray[i] = 0;
   i -= 1;
}
*/

//init stuff
hurtbox_spr = asset_get("orca_hurtbox");
crouchbox_spr = asset_get("orca_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 40;
idle_anim_speed = .125;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 5;
djump_speed = 10;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .4;
hitstun_grav = .45;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .10; //grounded deceleration when wavelanding

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
techroll_recovery_frames = 2;
techroll_speed = 9;

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
waveland_sound = asset_get("sfx_waveland_gus");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

/*
//secret taunt vars
sfxElectricCount = 0;
sfxFireCount = 0;
sfxWaterCount = 0;
sfxGroundCount = 0;
sfxAirCount = 0;

vfxElectricCount = 0;
vfxFireCount = 0;
vfxWaterCount = 0;
vfxGroundCount = 0;
vfxAirCount = 0;

sfxElectric = [177,172,154,155,156,157,176,45,151,173,174,169,33];
sfxFire = [40,41,42,43,44,45,46,47,105,393,39,68,68];
sfxWater = [65,70,68,77,63,79,81,59,60,61,76,80,78];
sfxGround = [44,100,98,44,94,68,375,366,96,126,65];
sfxAir = [86,89,90,85,502,91];

vfxElectric = [121,123,124,125,126,127,128,129,130,256,20,21,22,197,157];
vfxFire = [3,4,148,13,14,204,137,251,143,145,139,141,140];
vfxWater = [5,6,7,8,9,10,149,150,195,161,116,117,118,119,160,120];
vfxGround = [192,193,155,134,135,162,154];
vfxAir = [194,156,196,11,12,146,147,138,144];

moveArray = [AT_JAB, AT_FTILT, AT_DTILT, AT_UTILT, AT_FSTRONG, AT_DSTRONG, AT_USTRONG, AT_DATTACK, AT_FAIR, AT_BAIR, AT_DAIR, AT_UAIR, AT_NAIR, AT_FSPECIAL, AT_DSPECIAL, AT_USPECIAL, AT_NSPECIAL];

sfxArray = [sfxElectric, sfxFire, sfxWater, sfxGround, sfxAir];
vfxArray = [vfxElectric, vfxFire, vfxWater, vfxGround, vfxAir];
sfxCountArray = [sfxElectricCount, sfxFireCount, sfxWaterCount, sfxGroundCount, sfxAirCount];
vfxCountArray = [vfxElectricCount, vfxFireCount, vfxWaterCount, vfxGroundCount, vfxAirCount];

with oPlayer {
    if player != other.player {
        for (var a = 0; a < array_length(other.moveArray); a++) {
            var fxAttack = other.moveArray[a];

            //window sfx
            for (var i = 0; i < get_attack_value(fxAttack, AG_NUM_WINDOWS); i++) {
                for (var j = 0; j < array_length(other.sfxArray); j++) {
                    var sfxType = other.sfxArray[j];
                    var sfxValue = get_window_value(fxAttack, i, AG_WINDOW_SFX);
                    for (var k = 0; k < array_length(sfxType); k++) {
                        if sfxValue == sfxType[k] {
                            other.sfxCountArray[j] += 1;
                        }
                    }
                }
            }

            //hitbox sfx
            for (var i = 0; i < get_num_hitboxes(fxAttack); i++) {
                for (var j = 0; j < array_length(other.sfxArray); j++) {
                    var sfxType = other.sfxArray[j];
                    var sfxValue = get_hitbox_value(fxAttack, i, HG_HIT_SFX);
                    for (var k = 0; k < array_length(sfxType); k++) {
                        if sfxValue == sfxType[k] {
                            other.sfxCountArray[j] += 1;
                        }
                    }
                }
            }

            //hitbox vfx
            for (var i = 0; i < get_num_hitboxes(fxAttack); i++) {
                for (var j = 0; j < array_length(other.vfxArray); j++) {
                    var vfxType = other.vfxArray[j];
                    var vfxValue = get_hitbox_value(fxAttack, i, HG_VISUAL_EFFECT);
                    for (var k = 0; k < array_length(vfxType); k++) {
                        if vfxValue == vfxType[k] {
                            other.vfxCountArray[j] += 1;
                        }
                    }
                }
            }
        }
    }
}
*/
