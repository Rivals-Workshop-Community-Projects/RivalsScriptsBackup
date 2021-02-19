//The Suitcase

temp_x = 0;
temp_y = 0;

//XP shards
xp_test = 0;
xp_angle = 0;
xp_mod = 0;
shardVal = 1;
faucetShards = false;
numFaucetShards = 0;
faucetShardx = 0;
faucetShardy = 0;
hue = 0;

//XP gauge
GAUGE_EXP_CURRENT = 0;
GAUGE_EXP_MAX = 50;
gaugeToCheck = 50;

//misc vars
fspecialTimer = 0;
taxiAirStart = false;
taxiLanded = false;
taxiMaxHSP = 9;
landTime = 0;
crystalHold = 0;

//pool party vars
nairbounceTryUnlock = false;
nairbounceUnlockTimer = 60;
nairbounce = false;
nairbounceHitCheck = false;
nairbounceSpeed = 9;
nairbounceJumpCheck = false;
nairbounceDodgeCheck = false;

//fspecial vars
fspecialDriftBoost = 8;
fspecialLedgeHSP = 0.8;
carbounceRestoredJumps = false;
octaneTryUnlock = false;
octaneUnlockTimer = 4;
rocketQuotesLength = 4;
carhopFX = 14;
rlRand = 0;
rlQuote[0] = "What a save!"
rlQuote[1] = "Nice shot!"
rlQuote[2] = "Calculated."
rlQuote[3] = "What a save!"

//pandora vars
crouchCounter = 0;

//set up victory screen
set_victory_theme(sound_get("DE"));
//must set up defaults here because making any change in another script will not reset these to defaults between matches
set_victory_portrait(get_char_info(player, INFO_PORTRAIT));
set_victory_sidebar(get_char_info(player, INFO_SIDEBAR));

spr_airdodge_waveland = sprite_get("waveland1");
hurtbox_spr = sprite_get("idle_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 44;
idle_anim_speed = 1;
crouch_anim_speed = 1;
walk_anim_speed = .025; //default .125
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 4.25;
walk_accel = 0.15; //prev 0.08
walk_turn_time = 6;
initial_dash_time = 12; //default 14
initial_dash_speed = 6; //default 8
dash_speed = 6.5; //default 7.5
dash_turn_time = 12; //default 10
dash_turn_accel = 0; //default 1.5
dash_stop_time = 6; //default 4
dash_stop_percent = .9; //the value to multiply your hsp by when going into idle from dash or dashstop. default .35
ground_friction = .27; //default .5
moonwalk_accel = 1.4; //default 1.4

jump_start_time = 5;
jump_speed = 11.5; //default 13
short_hop_speed = 7; //default 8
djump_speed = 11.5; //default 12
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground. default 7
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25; //default .3
prat_fall_accel = 1.5; //multiplier of air_accel while in pratfall - default .85
air_friction = .05; //default .02
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .60; //default .65
hitstun_grav = .5;
knockback_adj = .98; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
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
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_eta");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//lyca color outline code
cur = get_player_color(player);
abyss_col = [220, 113, 255];

sandair = hit_fx_create(sprite_get("hit_fx_sandair"), 40);
sandair2 = hit_fx_create(sprite_get("hit_fx_sandair2"), 40);
symbiote = hit_fx_create(sprite_get("hit_fx_symbiote"), 12);
crysSmall = hit_fx_create(sprite_get("hit_fx_crysSmall"), 10);
poolparty = hit_fx_create(sprite_get("hit_fx_poolparty"), 16);
tada = hit_fx_create(sprite_get("hit_fx_tada"), 24);
shine = hit_fx_create(sprite_get("hit_fx_shine"), 15);
wheelspin = hit_fx_create(sprite_get("hit_fx_wheelspin"), 12);
taxiDir = hit_fx_create(sprite_get("hit_fx_taxiDir"), 18);	//x axis center = 39, y axis = 42(?)
achTrophy = hit_fx_create(sprite_get("achievement"), 60);
sparkle = hit_fx_create(sprite_get("sparkle"), 14);
smokeXP = hit_fx_create(sprite_get("smokeXP"), 20);


//Katie vfx used with permission from Sydery
smokeKT1 = hit_fx_create(sprite_get("smokeKT1"), 20);
smokeKT2 = hit_fx_create(sprite_get("smokeKT2"), 20);
smokeKT3 = hit_fx_create(sprite_get("smokeKT3"), 20);
dashfxKT = hit_fx_create( sprite_get( "dashfxKT" ), 24 );
exp1KT = hit_fx_create( sprite_get( "exp1KT" ), 42 );
exp2KT = hit_fx_create( sprite_get( "exp2KT" ), 42 );
blast1KT  = hit_fx_create( sprite_get( "blast1KT" ), 9 );
blast2KT  = hit_fx_create( sprite_get( "blast2KT" ), 9 );

//intro 
introTimer = -2;
introTimer2 = 0;
gameboyIntro = false;
abyssIntro = false;
pandoraIntro = false;
goldenIntro = false;
halloweenIntro = false;
champSlot = 1;
//chiefcase
chiefcase = false;
dingTimer = 0;
dingReady = false;
holdingTimer = 0;

//Practice Mode
practice = false;      //Whether you're in Practice Mode or not.
practiceXP = false;
timer1 = get_game_timer();      //The initial game timer.
timer2 = 0;                     //The game timer after a couple seconds pass.

//Workshop Support - Characters
//Trummel + Alto
trummelcodecneeded = false;
trummelcodec_id = noone;
//Otto
otto_bobblehead_sprite = sprite_get("otto_bobblehead");
//Kirby
kirbyability = 16;
swallowed = 0;
//Workshop Support - Stages & Bosses
boss_fight = false;
//Dracula
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = asset_get("empty_sprite");
var page = 0;
//Mt. Dedede Stadium
arena_title = "The Agent of Travel"; //T## #a##t ## ##t##r
//Agent N
ncode1 = "FILE 050 '#A#T##US' [FILE READ ERROR]"
ncode2 = "Indiscernable from typical luggage."
ncode3 = "[THE ANVIL DESCENDS. SECURE THE VAULT.]"



	//Page 0
	dracula_speaker[page] = 0;
	dracula_text[page] = "... And what happens when a wild turkey flock wanders too close to castle grounds?";
	page++;

	//Page 1
	dracula_speaker[page] = 0;
	dracula_text[page] = "... I GOBLET! [glass] ... Do you understand? I 'goblet'. It sounds like 'I gobble it'. Which I very much do. The meat, the souls - yes, the entire flock! I consume it all. It is the fate of each turkey.";
	page++;

	//Page 2
	dracula_speaker[page] = 0;
	dracula_text[page] = "Every eleventh month I do this. The locals have not celebrated Thanksgiving in decades. Every few years, men form a desperate mob to fight for a feast long forgotten. Can you guess what happens when a mob wanders too close to castle grounds?";
	page++;

	//Page 3
	dracula_speaker[page] = 1;
	dracula_text[page] = " ";
	page++;

	//Page 4
	dracula_speaker[page] = 0;
	dracula_text[page] = "But enough talk! I know the apple strays not far from the tree. I will not be made to believe that tumbling from some Miserable Pile of Suitcase is cause for your arrival. Whose secrets do you contain? You shall be laid bare!";
	page++;
	

//HUD vars
itemsDisplayed[8] = 0;
displaySlot = 0;
newItemHUDRefresh = false;
burgerHUD = 0;
previewHUD = 0;

//Crystal Variables
numProjectiles = 1;
spitWindow = 0;
crystalCooldown = 40;
crystalStartup = 10;
crysProj_id = noone;
crysProj_timer = 0;
crysProj_tickDelay = 10;

//Dair variables
dairCooldown = 15;
dairBounce = -8;
sandStage = 0;
//Bair variables
bairHitCheck = false;
bairHSP = 6;
bairVSP = -2;
//Registration Tracker
regTracker = 0;
regBonusDmg = 2;
//Breakfast
breakfastCount = 2;
breakfastVar = 0;
breakfastRand = random_func(1, 100, true);
//Controller
inputTally = 0;
//CEO Ring
ceoBonusDmg = 2;
ceoBonusBKB = 1;
ceoBonusKBG = 0.05;
//Sunny's Collar
canCrystalBounce = true;

//unlock requirement checks
legendaryPinged = false;
prizepurseEnabled = false;
canBuyGodhead = false;


//Suitplex variables - Credit to Mawral (Epinel) for original suplex code
suit_grab_connected = false;
suit_grabbed_player_object_id = noone;
suit_grabbed_player_x_offset = 0;
suit_grabbed_player_y_offset = 0;
suit_grabbed_player_suplex_distance = 30;

items_length = 27;
IDs_available[items_length] = 0;
numItemsAvailable = items_length - 1;
r = random_func(0, numItemsAvailable, true);
ID_chosen = IDs_available[r];
IDLockedIn = false;
itempoolUpdated = false;
suitcaseLevel = 0;
itemCredits = 0;

//Prize Purse, ID 0
item[0, 0] = "PRIZE PURSE";
item[0, 1] = "You earned it!";
item[0, 2] = sprite_get("item_prizepurse");
item[0, 3] = 0; //0 = unowned, 1 = owned, 2 = voided
item[0, 4] = sprite_get("mini_prizepurse");
item[0, 5] = 0;
item[0, 6] = "MAX XP UP, SHARDS UP";
item[0, 7] = false; //allowed to spawn?
item[0, 8] = sprite_get("hud_shop");
item[0, 9] = $b2eaff;
//McDouble, ID 1
item[1, 0] = "BONUS BURGER";
item[1, 1] = "Double Trouble";
item[1, 2] = sprite_get("item_mcdouble");
item[1, 3] = 0;
item[1, 4] = sprite_get("mini_mcdouble");
item[1, 5] = 1;
item[1, 6] = "NSPECIAL++";
item[1, 7] = true;
item[1, 8] = sprite_get("hud_shop");
item[1, 9] = $d5a5b5;
//Pool Party, ID 2
item[2, 0] = "POOL PARTY!";
item[2, 1] = "Splash ya later!";
item[2, 2] = sprite_get("item_poolparty");
item[2, 3] = 0;	//owned
item[2, 4] = sprite_get("mini_poolparty");
item[2, 5] = 2;
item[2, 6] = "BOUNCY NAIR";
item[2, 7] = false;
item[2, 8] = sprite_get("hud_shop1");
item[2, 9] = $b2eaff;
//Mark of the Creator, ID 3
item[3, 0] = "CREATOR'S CURSE";
item[3, 1] = "You forgot something!";
item[3, 2] = sprite_get("item_creatorsmark");
item[3, 3] = 0;
item[3, 4] = sprite_get("mini_creatorsmark");
item[3, 5] = 3;
item[3, 6] = "100% SANDBERT DAIR";
item[3, 7] = false;
item[3, 8] = sprite_get("hud_shop1");
item[3, 9] = $b2eaff;
//Boarding Pass, ID 4
item[4, 0] = "BOARDING PASS";
item[4, 1] = "Going up?"
item[4, 2] = sprite_get("item_boardingpass");
item[4, 3] = 0;
item[4, 4] = sprite_get("mini_boardingpass");
item[4, 5] = 4;
item[4, 6] = "UPWARD BOOSTS+";
item[4, 7] = true;
item[4, 8] = sprite_get("hud_shop");
item[4, 9] = $d5a5b5;
//Registration Badge, ID 5
item[5, 0] = "EARLY REG. BADGE";
item[5, 1] = "Tada! Discount!";
item[5, 2] = sprite_get("item_badge0");
item[5, 3] = 0;
item[5, 4] = sprite_get("mini_badge0");
item[5, 5] = 5;
item[5, 6] = "FTILT UP";
item[5, 7] = true;
item[5, 8] = sprite_get("hud_shop");
item[5, 9] = $d5a5b5;
//Carrot, ID 6
item[6, 0] = "ORDINARY CARROTS";
item[6, 1] = "It's Breakfast!";
item[6, 2] = sprite_get("item_carrot");
item[6, 3] = 0;
item[6, 4] = false;
item[6, 5] = 6;
item[6, 6] = "HP UP";
item[6, 7] = false;
item[6, 8] = sprite_get("hud_shop");
item[6, 9] = $d5a5b5;
//Pocket Cactus, ID 7
item[7, 0] = "POCKET CACTUS";
item[7, 1] = "Lil Heat Wave!";
item[7, 2] = sprite_get("item_pocketcactus");
item[7, 3] = 0;
item[7, 4] = sprite_get("mini_pocketcactus");
item[7, 5] = 7; // ID #
item[7, 6] = "BAIR UP";
item[7, 7] = true;
item[7, 8] = sprite_get("hud_shop");
item[7, 9] = $d5a5b5;
//Graduation Cap, ID 8
item[8, 0] = "ACADEMIC CAP";
item[8, 1] = "Happy Graduation!";
item[8, 2] = sprite_get("item_gradcap");
item[8, 3] = 0;
item[8, 4] = sprite_get("mini_gradcap");
item[8, 5] = 8; // ID #
item[8, 6] = "MAX XP UP"
item[8, 7] = false;	//TEMPORARILY DISABLED
item[8, 8] = sprite_get("hud_shop");
//Game Breaking Glitch, ID 9
item[9, 0] = "GAME-BREAKING GLITCH";
item[9, 1] = "Wait, that- @!G7$%";
item[9, 2] = sprite_get("item_glitch");
item[9, 3] = 0;
item[9, 4] = sprite_get("mini_glitch");
item[9, 5] = 9; // ID #
item[9, 6] = "WAVEDASH UP";
item[9, 7] = true;
item[9, 8] = sprite_get("hud_shop");
item[9, 9] = $d5a5b5;
//Symbiote Plush, ID 10
item[10, 0] = "MR. EMBERS";
item[10, 1] = "Symbiote-Soft(TM)!";
item[10, 2] = sprite_get("item_zetplush");
item[10, 3] = 0;
item[10, 4] = sprite_get("mini_zetplush");
item[10, 5] = 10; // ID #
item[10, 6] = "ORNATE NSPECIAL"; // ID #
item[10, 7] = false;
item[10, 8] = sprite_get("hud_shop1");
item[10, 9] = $b2eaff;
//Infinity Handle, ID 11
item[11, 0] = "GODHEAD";
item[11, 1] = "Ready to snap..."
item[11, 2] = sprite_get("item_godhead");
item[11, 3] = 0;
item[11, 4] = sprite_get("mini_godhead");
item[11, 5] = 11;
item[11, 6] = "INFINITY UTILT";
item[11, 7] = false;
item[11, 8] = sprite_get("hud_shop1");
item[11, 9] = $b2eaff;
//CEO Belt, ID 12
item[12, 0] = "CHAMPION BELT";
item[12, 1] = "Make em see stars!"
item[12, 2] = sprite_get("item_belt");
item[12, 3] = 0;
item[12, 4] = sprite_get("mini_belt");
item[12, 5] = 12;
item[12, 6] = "USTRONG UP";
item[12, 7] = true;
item[12, 8] = sprite_get("hud_shop");
item[12, 9] = $d5a5b5;
//Milestone System, ID 13
item[13, 0] = "MILESTONE SYSTEM";
item[13, 1] = "It's FREE*!";
item[13, 2] = sprite_get("item_milestone");
item[13, 3] = 0;
item[13, 4] = sprite_get("mini_milestone");
item[13, 5] = 13;
item[13, 6] = "What is it?";
item[13, 7] = true;
item[13, 8] = sprite_get("hud_shop");
item[13, 9] = $d5a5b5;
//Down Special, ID 14
item[14, 0] = "DOWN SPECIAL";
item[14, 1] = "SHINY DSPECIAL!";
item[14, 2] = sprite_get("item_downb");
item[14, 3] = 0;
item[14, 4] = sprite_get("mini_downb");
item[14, 5] = 14;
item[14, 6] = "What does it do??";
item[14, 7] = false; //unlock requirement check?
item[14, 8] = sprite_get("hud_shop1");
item[14, 9] = $b2eaff;
// Voidbox Experiment, ID 15
item[15, 0] = "PROTOTYPE MK-7";
item[15, 1] = "Voidbox Experiment";
item[15, 2] = sprite_get("item_pandora");
item[15, 3] = 0;
item[15, 4] = sprite_get("mini_pandora");
item[15, 5] = 15;
item[15, 6] = "CROUCH AMPS STRONGS";
item[15, 7] = false; //unlock requirement check?
item[15, 8] = sprite_get("hud_shop2");
item[15, 9] = $1818f9;
// Mint Toothpaste, ID 16
item[16, 0] = "MINT TOOTHPASTE";
item[16, 1] = "Cold Snap!";
item[16, 2] = sprite_get("item_toothpaste");
item[16, 3] = 0;
item[16, 4] = sprite_get("mini_toothpaste");
item[16, 5] = 16;
item[16, 6] = "FROSTY UPTILT";
item[16, 7] = false; //unlock requirement check?
item[16, 8] = sprite_get("hud_shop1");
item[16, 9] = $b2eaff;
// GotE Aldor Plushie, ID 17
item[17, 0] = "ALDOR PLUSHIE";
item[17, 1] = "Gamer on the edge!";
item[17, 2] = sprite_get("item_aldor");
item[17, 3] = 0;
item[17, 4] = sprite_get("mini_aldor");
item[17, 5] = 17;
item[17, 6] = "AIR MOBILITY UP";
item[17, 7] = false; //unlock requirement check?
item[17, 8] = sprite_get("hud_shop1");
item[17, 9] = $b2eaff;
// SuperSmashCon, ID 18
item[18, 0] = "WHOOPS!";
item[18, 1] = "SuperSmashedController!";
item[18, 2] = sprite_get("item_controller");
item[18, 3] = 0;
item[18, 4] = sprite_get("mini_controller");
item[18, 5] = 18;
item[18, 6] = "WALK > RUN";
item[18, 7] = false; //unlock requirement check?
item[18, 8] = sprite_get("hud_shop1");
item[18, 9] = $b2eaff;
// McFinity
item[19, 0] = "BURGER BARRAGE";
item[19, 1] = "Fueled by breakfast!";
item[19, 2] = sprite_get("item_buuuurger");
item[19, 3] = 0;
item[19, 4] = sprite_get("mini_buuuurger");
item[19, 5] = 19;
item[19, 6] = "BREAKFAST BURGERS";
item[19, 7] = false; //unlock requirement check?
item[19, 8] = sprite_get("hud_shop1");
item[19, 9] = $b2eaff;
//Letterman Jacket, ID 20
item[20, 0] = "LETTERMAN JACKET";
item[20, 1] = "Aether High Class of '19"
item[20, 2] = sprite_get("item_jacket");
item[20, 3] = 0;
item[20, 4] = sprite_get("mini_jacket");
item[20, 5] = 20;
item[20, 6] = "AERIAL FSTRONG";
item[20, 7] = true;
item[20, 8] = sprite_get("hud_shop");
item[20, 9] = $d5a5b5;
//Sunny's Collar, ID 21
item[21, 0] = "SUNNY'S COLLAR";
item[21, 1] = "Go fetch!"
item[21, 2] = sprite_get("item_collar");
item[21, 3] = 0;
item[21, 4] = sprite_get("mini_collar");
item[21, 5] = 21;
item[21, 6] = "NSPECIAL BOUNCES";
item[21, 7] = true;
item[21, 8] = sprite_get("hud_shop");
item[21, 9] = $d5a5b5;
//Rocket League, ID 22
item[22, 0] = "ROCKET KEY";
item[22, 1] = "What a save!"
item[22, 2] = sprite_get("item_key");
item[22, 3] = 0;
item[22, 4] = sprite_get("mini_key");
item[22, 5] = 22;
item[22, 6] = "FSPECIAL AERIAL SLAM";
item[22, 7] = false;
item[22, 8] = sprite_get("hud_shop1");
item[22, 9] = $b2eaff;
//Nintendo Switch, ID 23
item[23, 0] = "DEFINITIVE ADDITION";
item[23, 1] = "On the go!"
item[23, 2] = sprite_get("item_switch");
item[23, 3] = 0;
item[23, 4] = sprite_get("mini_switch");
item[23, 5] = 23;
item[23, 6] = "UPTILT DRIFTS";
item[23, 7] = false;
item[23, 8] = sprite_get("hud_shop1");
item[23, 9] = $b2eaff;
//Unguarded Sink, ID 24
item[24, 0] = "UNGUARDED FAUCET";
item[24, 1] = "Sniff your way!"
item[24, 2] = sprite_get("item_faucet");
item[24, 3] = 0;
item[24, 4] = sprite_get("mini_faucet");
item[24, 5] = 24;
item[24, 6] = "NSPECIAL LEAKS";
item[24, 7] = true;
item[24, 8] = sprite_get("hud_shop");
item[24, 9] = $d5a5b5;
// Bair Reversal, ID 25
item[25, 0] = "NO ENTRY";
item[25, 1] = "TURN BACK N0W";
item[25, 2] = sprite_get("item_enternt");
item[25, 3] = 0;
item[25, 4] = sprite_get("mini_enternt");
item[25, 5] = 25;
item[25, 6] = "BAIR REVERSED";
item[25, 7] = true;
item[25, 8] = sprite_get("hud_shop");
item[25, 9] = $d5a5b5;
// F for Fornace, ID 26
item[26, 0] = "Game made by Dan Fornace"
item[26, 1] = "OK";
item[26, 2] = sprite_get("item_godhead");
item[26, 3] = 0;
item[26, 4] = sprite_get("mini_f");
item[26, 5] = 26;
item[26, 6] = "OK";
item[26, 7] = false;
item[26, 8] = sprite_get("hud_shop1");
item[26, 9] = $b2eaff;

user_event(14);