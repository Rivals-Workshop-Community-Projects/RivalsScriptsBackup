rand = 0;
spr_dir_last = 1;
frontArtic = "white";
backArtic = "yellow";
leftArtic = "red";
rightArtic = "orange";
topArtic = "green";
botArtic = "blue";

front = "white";
back = "yellow";
left = "red";
right = "orange";
top = "green";
bot = "blue";
slot = get_player_color( player );
white = [get_color_profile_slot_r(slot, 0), get_color_profile_slot_g(slot, 0), get_color_profile_slot_b(slot, 0)];
whiteS = [get_color_profile_slot_r(slot, 1), get_color_profile_slot_g(slot, 1), get_color_profile_slot_b(slot, 1)];
yellow = [get_color_profile_slot_r(slot, 3), get_color_profile_slot_g(slot, 3), get_color_profile_slot_b(slot, 3)];
yellowS = [get_color_profile_slot_r(slot, 7), get_color_profile_slot_g(slot, 7), get_color_profile_slot_b(slot, 7)];
orange = [get_color_profile_slot_r(slot, 6), get_color_profile_slot_g(slot, 6), get_color_profile_slot_b(slot, 6)];
orangeS = [173, 78, 26];
red = [get_color_profile_slot_r(slot, 2), get_color_profile_slot_g(slot, 2), get_color_profile_slot_b(slot, 2)];
redS = [135, 22, 70];
green = [get_color_profile_slot_r(slot, 4), get_color_profile_slot_g(slot, 4), get_color_profile_slot_b(slot, 4)];
greenS = [0, 135, 81];
blue = [get_color_profile_slot_r(slot, 5), get_color_profile_slot_g(slot, 5), get_color_profile_slot_b(slot, 5)];
blueS = [0, 132, 255];

if(slot == 1)
{
    orangeS = [153, 57, 57];
    redS = [128, 22, 68];
    greenS = [67, 90, 64];
    blueS = [72, 136, 165];
}
/*if(slot == 1)
{
    orangeS = [190, 70, 70];
    redS = [145, 41, 88];
    greenS = [0, 96, 0];
    blueS = [38, 68, 123];
}*/
if(slot == 2)
{
    orangeS = [138, 54, 37];
    redS = [87, 37, 59];
    greenS = [0, 78, 0];
    blueS = [39, 36, 87];
}
if(slot == 3)
{
    orangeS = [246, 143, 55];
    redS = [207, 93, 125];
    greenS = [106, 180, 23];
    blueS = [0, 149, 233];
}
if(slot == 5)
{
    orangeS = [79, 21, 7];
    redS = [135, 22, 70];
    greenS = [0, 78, 0];
    blueS = [0, 82, 128];
}
if(slot == 7)
{
    orangeS = [56, 105, 56];
    redS = [14, 57, 14];
    greenS = [49, 98, 49];
    blueS = [71, 121, 72];
}
if(slot == 8)
{
    orangeS = [58, 68, 102];
    redS = [38, 43, 68];
    greenS = [90, 105, 136];
    blueS = [24, 20, 37];
}
if(slot == 9)
{
    orangeS = [109, 118, 123];
    redS = [90, 105, 136];
    greenS = [158, 158, 167];
    blueS = [58, 68, 102];
}
if(slot == 10)
{
    orangeS = [255, 190, 0];
    redS = [198, 144, 12];
    greenS = [246, 143, 55];
    blueS = [177, 130, 13];
}
if(slot == 6)
{
    orangeS = [201, 60, 0];
    redS = [171, 0, 51];
    greenS = [0, 87, 66];
    blueS = [18, 37, 179];
}
if(slot == 4)
{
    orangeS = [135, 22, 70];
    redS = [62, 30, 69];
    greenS = [61, 115, 138];
    blueS = [90, 105, 136];
}
if(slot == 11)
{
    orangeS = [229, 130, 38];
    redS = [217, 56, 35];
    greenS = [0, 189, 148];
    blueS = [47, 175, 235];
}


swapAfterAD = false;
swapAfterR = false;
swapAfterNAIR = false;
swapAfterDATTACK = false;
swapAfterSkinnyDash = false;
nairTimer = 0;
dattackTimer = 0;
skinnyDashTimer = 0;

//mask_index = sprite_get("mask"); //cant wall jump with this and if smaller no big diff
hurtbox_spr = sprite_get("aaa_hurtbox");
crouchbox_spr = sprite_get("aaa_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//https://docs.google.com/spreadsheets/d/14JIjL_5t81JHqnJmU6BSsRosTe2JO8sFGUysM_9tDoU/edit#gid=1796439723

char_height = 52;//64;
hud_offset_dest = 0;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .25;
dash_anim_speed = .2;
pratfall_anim_speed = .2;

walk_speed = 3.25;
walk_accel = 0.1;
walk_turn_time = 9;
initial_dash_time = 2;//8; //14;
initial_dash_speed = 6;
dash_speed = 4.5; //7.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 10; //8; //frames takes to stop
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

//replaced below from sandbert to guada (heavier)
jump_start_time = 5;
jump_speed = 12;//13;
short_hop_speed = 8;
djump_speed = 10;//12;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3; //The hsp acceleration applied when you hold left or right in a normal aerial state
prat_fall_accel = 1; //multiplier of air_accel while in pratfall (0.4-1.5)
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.

//careful, overwritten in update!
walljump_hsp = 8;
walljump_vsp = 12;
walljump_time = 46;
wall_frames = 2; //anim frames before you leave the wall

max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .7; //.65;
hitstun_grav = .6; //.525;
knockback_adj = 0.925; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

/*
//sandbert
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

//guada
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .525;
knockback_adj = 0.94; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
*/

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 7;
wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;//3;
crouch_active_frames = 1;//8;
crouch_recovery_frames = 1;//3;

//parry animation frames
dodge_startup_frames = 2;//3 -> somehow doesnt work, bcz startup too big?
dodge_active_frames = 2;//1
dodge_recovery_frames = 4;//4

//tech animation frames
tech_active_frames = 1;//14
tech_recovery_frames = 1;//4

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 10;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 7;
roll_forward_recovery_frames = 6;
roll_back_startup_frames = 2;
roll_back_active_frames = 7;
roll_back_recovery_frames = 6;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

//land_sound = asset_get("sfx_land_heavy");
land_sound = sound_get("land01");
//landing_lag_sound = asset_get("sfx_land_heavy");
landing_lag_sound = sound_get("land02");
//waveland_sound = asset_get("sfx_waveland_syl");
waveland_sound = sound_get("land04");//3
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

hitFspecial = false;
fspecialCharge = 0;
fspecialAction = 0;
canAttack = true;
shotArticles = true;
didNspecial = false;
pieceArticle = noone;
testPiece = noone;

justRespawned = false;
platTimer = 0;
platX = 0;
platY = 0;

uspecialAirtime = 0;
uspecialCanceled = false;

fxPlaying = false;

hitpauseLast = false;

free_last = true;

shootFakeArticles = 0;

hitfx1 = hit_fx_create(sprite_get("pieceFx01"), 20);
//hitfx1.draw_angle
//hitfx1.spr_dir
//https://rivalsofaether.com/hit-effects/


//piecesX = [10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200];
//piecesY = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
//piecesInFront = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
piecesX = [-25,-25,-25,-15,-15,-5,-5,-5,-0,-0,5,5,10,10,10,15,15,20,20,20];
piecesY = [0,20,40,0,40,0,20,40,0,40,0,40,0,20,40,0,40,0,20,40];
piecesInFront = [1,1,1,0,0,0,0,0,1,1,0,0,1,1,1,1,1,0,0,0];

tauntFloorFrameDurMul = 0.5;//1;
tauntFloorLengthTotal = 7.368;
tauntFloorFrameData = [0.625, 0.15, 0.15, 0.1, 0.1, 0.1, 0.1, 0.05, 0.05, 0.125, 0.112, 0.112, 0.075, 0.075, 0.075, 0.075, 0.037, 0.037, 0.062, 0.112, 0.112, 0.075, 0.075, 0.075, 0.075, 0.037, 0.037, 0.75, 0.15, 0.15, 0.15, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.05, 0.05, 0.05, 0.625, 0.112, 0.112, 0.075, 0.075, 0.075, 0.075, 0.037, 0.037, 0.125, 0.075, 0.075, 0.05, 0.05, 0.05, 0.05, 0.025, 0.025, 0.062, 0.075, 0.075, 0.05, 0.05, 0.05, 0.05, 0.025, 0.025];
tauntFloorSoundData = [0,  2,  0,  0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  0,  -1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0];


tauntAirFrameDurMul = 0.5;//1;
tauntAirLengthTotal = 20.815;
tauntAirFrameData = [0.75, 0.112, 0.075, 0.075, 0.037, 0.075, 0.075, 0.05, 0.05, 0.05, 0.05, 0.025, 0.025, 0.075, 0.075, 0.05, 0.05, 0.05, 0.05, 0.025, 0.025, 0.125, 0.075, 0.075, 0.05, 0.05, 0.05, 0.05, 0.025, 0.025, 0.112, 0.075, 0.075, 0.037, 0.112, 0.075, 0.075, 0.037, 0.187, 0.075, 0.075, 0.05, 0.05, 0.05, 0.05, 0.025, 0.025, 0.112, 0.075, 0.075, 0.037, 0.075, 0.075, 0.05, 0.05, 0.05, 0.05, 0.025, 0.025, 0.075, 0.075, 0.05, 0.05, 0.05, 0.05, 0.025, 0.025, 0.125, 0.112, 0.075, 0.075, 0.037, 0.112, 0.075, 0.075, 0.037, 0.075, 0.075, 0.05, 0.05, 0.05, 0.05, 0.025, 0.025, 0.062, 0.112, 0.075, 0.075, 0.037, 0.075, 0.075, 0.05, 0.05, 0.05, 0.05, 0.025, 0.025, 0.075, 0.075, 0.05, 0.05, 0.05, 0.05, 0.025, 0.025, 1.0, 0.112, 0.075, 0.075, 0.037, 0.375, 0.075, 0.05, 0.05, 0.025, 0.5, 0.112, 0.075, 0.075, 0.037, 0.375, 0.075, 0.05, 0.05, 0.025, 0.5, 0.112, 0.075, 0.075, 0.037, 0.5, 0.112, 0.075, 0.075, 0.037, 0.625, 0.037, 0.025, 0.025, 0.012, 0.037, 0.037, 0.025, 0.025, 0.025, 0.025, 0.012, 0.012, 0.075, 0.05, 0.05, 0.025, 0.25, 0.037, 0.025, 0.025, 0.012, 0.075, 0.05, 0.05, 0.025, 0.125, 0.075, 0.05, 0.05, 0.025, 0.037, 0.025, 0.025, 0.012, 0.075, 0.05, 0.05, 0.025, 0.112, 0.075, 0.075, 0.037, 0.125, 0.037, 0.025, 0.025, 0.012, 0.037, 0.025, 0.025, 0.012, 0.037, 0.037, 0.025, 0.025, 0.025, 0.025, 0.012, 0.012, 0.037, 0.025, 0.025, 0.012, 0.037, 0.025, 0.025, 0.012, 0.037, 0.037, 0.025, 0.025, 0.025, 0.025, 0.012, 0.012, 0.037, 0.025, 0.025, 0.012, 0.075, 0.05, 0.05, 0.025, 0.25, 0.037, 0.025, 0.025, 0.012, 0.037, 0.025, 0.025, 0.012, 0.037, 0.025, 0.025, 0.012, 0.075, 0.05, 0.05, 0.025, 0.037, 0.025, 0.025, 0.012, 0.037, 0.025, 0.025, 0.012, 0.075, 0.05, 0.05, 0.025, 0.075, 0.075, 0.05, 0.05, 0.05, 0.05, 0.025, 0.025, 0.112, 0.075, 0.075, 0.037, 0.125, 0.15, 0.1, 0.1, 0.05, 0.5, 0.15, 0.15, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.05, 0.05, 0.25, 0.112, 0.112, 0.075, 0.075, 0.075, 0.075, 0.075, 0.075, 0.075, 0.075, 0.037, 0.037];
tauntAirSoundData = [0,  1,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  0,  -1,  0,  0,  0,  0,  -1,  0,  0,  0,  0,  -1,  0,  0,  0,  0,  -1,  0,  0,  0,  0,  -1,  0,  0,  0,  0,  -1,  0,  0,  0,  0,  1,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  1,  0,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  0,  0,  1,  0,  0,  0,  0,  -1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  -1,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0];


inTauntWindowAir = false;
inTauntWindowFloor = false;
tauntStartFrames = 9;
tauntStartStateDelay = 0;
airTauntFrames = 300;
floorTauntFrames = 80;
tauntOffset = 0;
taunt_down_last = true;

fspecialLastHsp = 0;
fspecialHspKeepDamp = 0.8;

dspecialAirTime = 0;
dspecialAirValue = 0;

airInverse = false;

traumaX = 0;
traumaY = 0;
shakeX = 0;
shakeY = 0;

enemykirby = undefined;
swallowed = undefined;
kirbyability = 16;

fs_char_chosen_final_smash = "custom"; //"zetter";
fs_char_portrait_y = 128;
//fs_portrait_x = 128;
//fs_char_chosen_trigger = "custom"; //"ori";
finalTimer = 0;
finalStartFrame = 0;
finalDone = false;

miiverse_post = sprite_get("miiverse");

aiFspecialOff = 0;
aiFspecialOff2 = 0;
aiFspecialOff3 = 0;
aiHoldUspecial = 0;
aiJuggleUspecial = 0;
aiIgnoring = 0;
aiIgnoreTimer = 0;
aiChaseTimer = 0;

fspecialHitPlayer = false;
fspecialTimer = 0;
hsp_last = 0;
fspecialHitMinor = false;
fspecialHitbox = noone;

dairHit = false;

pkmn_stadium_front_img  = sprite_get("stadiumFront");
pkmn_stadium_back_img  = sprite_get("stadiumBack");
pkmn_stadium_name_override  = "RubikCube";

arena_title = "The colorful puzzle";

spawnRepeat = 0;
//Dracula support
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = sprite_get("dracula_portrait2")
dracula_portrait3 = asset_get("empty_sprite")
var page = 0;
dracula_speaker[page] = 0;
dracula_text[page] = "What is it now?";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "An ancient toy dares to approach me?";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "Well at least I am not THAT ancient!";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "What is that supposed to mean? I will CRUSH you!";
page++;
dracula_speaker[page] = 2;
dracula_text[page] = "And then you'll put me back together? I knew you couldn't solve me normally!";//"But can you solve me?"; //[taunt]
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "...[shake]";
page++;

//toonlink_photo = sprite_get("toonlink_photo");
//toonlink_photo2 = sprite_get("toonlink_photo_TL");
toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo2 = sprite_get("toonlink_photo");

tcoart = sprite_get("tco");
