debugDrawEnabled = false;

hurtbox_spr = sprite_get("kitty_hurtbox");
crouchbox_spr = asset_get("cat_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = asset_get("cat_hurtbox");

char_height = 32;
originCharHeight = char_height;
//origin_hud_offset = hud_offset;
idle_anim_speed = 0.25;
crouch_anim_speed = .33;
walk_anim_speed = .33;
dash_anim_speed = .5;
pratfall_anim_speed = .33;

walk_speed = 3.5;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 8;

//custom variables for her initial dash speed
originInitialDashSpeed = 11;
cooldownInitialDashSpeed = 8;

lastDashDir = 0; //If Amber dashes in the same direction twice, her init dash speed becomes cooldownInitialDashSpeed
cooldownDashTimer = 0; //Becomes cooldownDashLength value when Amber dashes. When it reaches 0, lastDashDir becomes 0;
cooldownDashLength = 20;

dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 0.2;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5; //orignal value, .5
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7;
djump_speed = 10;
//djump_accel = -8;
//djump_accel_start_time = 1;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3; //This value becomes 0.5 while wall jumping to help with Amber's wall jumping recovery. Becomes 0.4 while using standard up special
origin_air_accel = air_accel;
prat_fall_accel = .4; //multiplier of air_accel while in pratfall

max_djumps = 1;
double_jump_time = 16;

walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 24;
can_wall_cling = true; //Set to false if she is charging
//wall_frames = 8;

//Physics
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .6;

//Effective Weight
knockback_adj = 1.35; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
hitstun_grav = .45;
air_friction = .04;

//meterlessKbAdj = 1.5;
//meteredKbAdj = 1.31;

land_time = 4; //normal landing frames
prat_land_time = 5; //45 frames for Super Launcher Claw
wave_land_time = 8;
wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 14;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 14;
techroll_recovery_frames = 13;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 14;
roll_forward_recovery_frames = 13;
roll_back_startup_frames = 3;
roll_back_active_frames = 14;
roll_back_recovery_frames = 13;

roll_forward_max = 8.5; //roll speed
roll_backward_max = 8.5;

originRollSpeed = roll_forward_max;

rollSpeedLandingFriction = 0.65;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_med2"); //sfx_land_med2 for Super Launcher Claw
waveland_sound = sound_get("amber_wavedash6"); //asset_get("sfx_waveland_may");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

set_victory_theme( sound_get( "amber_victory" ));
//roll_sound = asset_get("sfx_blink_dash"); //Guess what? This variable was not documented!

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//==============================
//Custom variables
//===============================
thisIsAmber = true; //For some reason urls don't work on init. To allow Amber to detect duplicates of herself, use this variable
clonedAmberExists = false; //Becomes true if Amber detects another Amber in match
playerDecimalDamage = 0; //Affected by defense debuff from charged state

//Charging variables
isCharging = false; //A bool state if the player is charging or not
isCharged = false; //Used for neutral special
currentChargeTime = 0;
chargeTimeLength = 84; //How long it takes for Amber to be fully charged. Measured in frames
chargeTimeSpeed = 1; //The amount to add to currentChargeTime per frame, modified by abyss rune B
chargeAttackReady = false; //This becomes true when the player presses Neutral Special while fully charged
chargeAttackReadyTimer = 20; //Also used for updating the animation vfx.
chargeAttackReadyVfxAlpha = 1;
chargeAttackReadyLength = 90; //How long the player can be in chargeAttackReady state. Measured in frames.
isChargePunished = false; //Used when the player gets hit while charged or while charging. Resets once the player is no longer in hitstun
chargePunishedIconAnimTimer = 0;
originOutlineColor = outline_color;
chargeAttackReadyOutlineColor = [ 95, 200, 228 ];
empoweredCooldownTimer = 0;
empoweredCooldownLength = 360;

//Wall jump variables
wallJumpCount = 0; //Used for allowing Amber to wall jump 2 times
hasWallJumped = false; //Used to prevent the update from repeatedly increasing the wall jump count
wallJumpAnimCounter = 0;

//Attack variables
clawComboCounter = 1; //Used for keeping track of Amber's Claw Combo chain. For her FTilt and FAir
clawComboTimer = 0; //This timer decreases by 1 every frame. When it hits 0, the clawComboCounter is reset.
clawComboTimerLength = 30; //The value clawComboTimer is set, every time Amber attacks (but misses)
clawComboHasHitTimerLength = 30; //The timer for the claw combo is longer if Amber lands the hit. To prevent infinites
clawComboAttackReleased = false; //Used for ftilt. If attack button is released while attacking, Amber cannot use the next chain attack

shurikatLoopCount = 6; //How many times Amber's Shurikat attack window will loop before ending off with a finisher
shurikatCurrentLoopCount = 0;
shurikatChargeLevel = 1; 
shurikatHitHsp = 10;
shurikatCanCrit = true;
superShurikatHitChargedTotalDamage = 0; //This variable turns into the totalDamageDealt variable on hit to save the value for special fx
shurikatHitFirstHitbox = false; //Becomes true when landing the lunge hitbox

stylingSlashInitYPos = 0; //The y position where Amber started her fstrong attack

//The initial spawn positions for the laser pointer sprite when Amber uses D Strong
dStrongLaserSprite = sprite_get("dstrong_laser");
dStrongLaserSpawnX = 0;
dStrongLaserSpawnY = 0;
dStrongLaserOffsetX = 0; //If Amber uses dstrong near the ledge, the laser pointer
dStrongLaserOffsetY = 0; //might be mispositioned. Offset it from initial spawn x and y pos
questionMarkEmoteSprite = sprite_get("question_mark_emote");

feralBlitzCounter = 0; 
feralBlitzMaxCount = 1; //Amber's Feral Blitz (as F-throw) is extended by 1 for every 10% damage she dealt

hasYarnBall = true;
isHoldingYarnBall = false;
yarnBallAimingPower = 0; //0 means not aiming. 1 is weak. 2 is medium. 3 is strong
yarnBallThrowPower = 0; //Velocity speed in which the yarn ball will be thrown
yarnBallThrowAngle = 0; //The angle/direction the yarn ball will be thrown
yarnBallTargetJoyAngle = 0; //For keyboard mode but for controller users who want the smoothing option. For some reason no joystick input defaults to 0 angle
yarnBallWasAimingRightStick = false; //Becomes true if the player aimed with the right stick first
yarnBallRightStickTargetPower = 2; //Pressing Parry while aiming changes the power
yarnBallObject = noone;
yarnDashPrevXPos = 0; //Used to fix the stuck against walls for too long
yarnDashPrevYPos = 0; //Used to fix the stuck on dropdown platforms
yarnDashSpeed = 15; //Changes between 10 and 15 if the yarnball is sitting on stage or not
yarnBallFollowedEnemy = noone;
yarnDashFrontHitbox = noone;
yarnBallMarkedEnemies[0] = false;
yarnBallMarkedEnemies[1] = false;
yarnBallMarkedEnemies[2] = false;
yarnBallMarkedEnemies[3] = false;
yarnBallMarkedEnemies[4] = false; //Abyss enemies
yarnBallMarkedEnemies[5] = false; //Abyss enemies
yarnBallMarkedEnemies[6] = false; //Abyss enemies
yarnDashAngleDirection = 0; //Used to rotate the sprite of Amber towards the yarn ball while dashing
yarnDashHitboxDirection = 0; //Since the hitbox pivot is in center instead of the feet, we need a seperate direction variable
yarnDashCooldown = 120; //How long Amber's yarn dash cooldown is in frames
yarnDashCooldownTimer = 0; //The current yarn dash cooldown timer
//yarnBallWasHitByEnemy = false;
yarnBallPunishCooldown = 300; //How long Amber can't use yarn ball if enemy knocks out yarn ball

yarnDashSprite = sprite_get("dspecial_dash");
originYarnDashSprite = sprite_get("dspecial_dash");
yarnDashEmpoweredSprite = sprite_get("dspecial2_dash");

//finishingYarnUsedOffScreen = false; //Becomes true if Amber tries to use Finishing Yarn when near the side blastzone
//finishingYarnSafeXPos = 0; //The position Amber can safely be at so she doesn't dash into the blastzone
//finishingYarnSafeMode = false; //Becomes true if Amber tries to use Finishing Yarn when near the side blastzone

yarnTieArticle = noone;

//dStrongHitPlayers[2] = undefined; //Used for keeping track of the multiple enemies that Amber hit during dStrong

//Attack cooldown variables
hasUsedUSpecial = false;
previousDairDirection = 0; //becomes 1 or -1 based on the spr_dir when using dair
secondaryDairCooldown = 0; //move cooldown itself seems to mess up the dair. Use our own cooldown so that the player can at least use dair

//VFX Variables
drawChargeVfx = false; //When true, the charge vfx around Amber will be drawn. Becomes false when Amber is attacking with charge attacks or not charged
//Charged Vfx
charge_sprite = sprite_get("charge_sprite");

isChargedAnimTimer = 0; //Used for updating the charged status VFX animation
//isChargedAnimTimer2 = 15;
//isChargedAnimTimer3 = 30;
charged_sprite_back = sprite_get("charged_vfx_back");
charged_sprite_front = sprite_get("charged_vfx_front");

charge_punished_sprite = sprite_get("charge_punish_icon");

//Variables that's sent to various vfx sprites of the player's last pos.
//Only sent once to simulate stationary vfx animation
playersLastXPos = 0; 
playersLastYPos = 0;
smallSparkVfx = hit_fx_create( sprite_get( "smallspark_vfx" ), 3 );
small_spark_vfx_sprite = sprite_get("smallspark_vfx");
smallSparkVfxBairTimer = 4; //Used to track the animation time for the sweetspot vfx bair. A value higher than 3 will not render the sprite

//Full Feral Blitz Charge vfx
feralBlitzMaxVfx = hit_fx_create( sprite_get( "chargeready4_vfx" ), 12);
feralBlitzMaxVfxObj = noone;

//Shurikat charge vfx
shurikenVfxSprite = sprite_get("shuriken_vfx");

//Full Charge Shurikat fx
shurikenFullChargeFx = hit_fx_create( sprite_get( "shuriken4_vfx" ), 5 );

//Super Shurikat VFX
superShurikenVfxSprite = sprite_get("shuriken_large_vfx");
superShurikenVfxTimer = 0;

//Damage boost aura vfx (unused)
damageBoostAuraSprite = sprite_get("charge_aura_vfx");
damageBoostAuraSpriteTwo = sprite_get("charge_aura_vfx2");
damageBoostAuraAnimTimer = 0; //Goes up to 51
damageBoostAuraAnimTimerTwo = 0; //Goes up to 20

//Smoke Bomb VFX
smokeBombVfx = hit_fx_create( sprite_get( "smoke_bomb_vfx2" ), 16 );
smokeBombVfx_sprite = sprite_get("smoke_bomb_vfx2");
//smokeBombVfxTimer = 0; //Used to keep track of animation time for the 

//Afterimage variables
afterImageMaxCount = 24; //How many afterimages can be visible at a time
afterImageXPos[afterImageMaxCount] = 0; 
afterImageYPos[afterImageMaxCount] = 0;
afterImageAlpha[afterImageMaxCount] = 0;
afterImageSprDir[afterImageMaxCount] = spr_dir;
afterImageRot[afterImageMaxCount] = 0;
afterImageSprIndex[afterImageMaxCount] = sprite_index;
afterImageImgIndex[afterImageMaxCount] = image_index;
currentAfterImage = 0;
afterImageUpdateTimer = 2; //Every 2 frames the afterImage sets itself to the player's pos
afterImageColor = make_colour_rgb(0, 93, 122);
originAfterImageColor = make_colour_rgb(0, 93, 122);
afterImageFadeOutSpeed = 0.05;

//Yarn Ball related variables
aimingArrowSprite = sprite_get("aimingarrow");
//sprite_change_collision_mask( "yarnball", true, 0, 0, 0, 0, 0, 0 );

//Finishing Yarn Hit VFX
finishingYarnHitFx = hit_fx_create( sprite_get( "finishing_yarn_hitfx_large" ), 36 );
finishingYarnHitFx2 = hit_fx_create( sprite_get( "finishing_yarn_hitfx_large3" ), 26 );
//finishingYarnHitFxSprite = sprite_get("finishing_yarn_hitfx");
//Finishing Yarn Dizzy VFX
dizzyVfxSprite = sprite_get("dizzy_vfx");

//Respawn Platform Variables
respawnPlatBehindSprite = sprite_get("plat_behind");
respawnPlatFrontSprite = sprite_get("plat_front");
respawnPlatAnimStripLength = 9; //The length of the respawn platform strip animation
respawnPlatAnimTimer = 0; //Keeps track of the strip timer/counter
respawnPlatAnimSpeed = 0.25; //How fast the game cycles through the animation strip. A value of 1 means the 
                             //animation updates every frame. A value of 0.5 means the animation updates every
                             //2 frames.

//Damage Boost Passive Variables
totalDamageDealt = 0; //Only increases while Amber is in charged state or when hitting enemy with yarn
totalDamageDealtCap = 50; //The maximum value totalDamageDealt can have
totalDamageDealtPrevious = 0; //This value becomes totalDamageDealt when Amber unleashes an Empowered Special attack
totalDamageMeterGlowTimer = 0;
totalDamageMeterGlowAlpha = 0;
//damageMultiplier = 0.5; //The multiplier to add on top of the totalDamageDalt boost
//knockbackMultiplier = 0.0035; //The knockback multiplier to add on top of the existing knockback scale

//Smoke bomb variables
smokeBombCooldownLength = 120; //How long it takes before Amber can use another smoke bomb after using one
smokeBombCooldownTimer = 0;
smokeBombInvisLength = 15; //How long Amber stays invisible. was 15. 900 for trailer
smokeBombInvisTimer = 0;
smokeBombInvisState = false; //Becomes true when Amber is invisible via smokebomb
smokeBombBurstSpeedLength = 6; //How long Amber moves really fast the moment she turns invisible. 
smokeBombBurstSpeedTimer = 0;
smokeBombCooldownHudRange = 0; //This variable becomes the cooldown timer as soon as Amber leaves invis state. Used for the cooldown sprite
smokeBombFlashVisibleInterval = 0;
smokeBombFlashVisibleTimer = 0;
smokeBombMeterCost = 24; //How much meter is used upon activating the smoke bomb



//Other Variables
//scarfWalkSprite = sprite_get("scarf_walk");
//scarfWalkAnimTimer = 0; //Used for animating the scarf sprite behind Amber while she's walking
forceExtendedHitPause = false; //When true, a function in attack_update will activate to force extended hitpause on the player
lastHitEnemy = 0; //Used for the yarn finish
hasSetChargedHurtboxes = false; //Used to fix a hurtbox bug with certain charge attack hurtboxes
pacifistModeEnabled = false; //When enabled, Amber cannot knock enemies off screen. She can only remove their stocks by using Finishing Yarn
blinkTimer = 0;
blinkTargetTimer = 60; //Randomly changes between 30-180
blinkAnimTimer = 0; //Affects the image index speed of the blinking, reaches up to 4
bairHeldDown = false; //Used for controlling forced movement or not
simpleModeEnabled = false; //Changes Amber's gameplay to be much easier to play for newer players. Press Special during start of the match to disable it
keyboardModeEnabled = false;
keyboardSwappingAnimTimer = 0; //Set to 35 when player changes controls
//miniBoostMeterTargetAlpha = 0; //Handles the small meter hud that appears below Amber when landing attacks


//Reset Amber's Peppercat red alt pallet when entering a fight so that the CSS refreshes
set_color_profile_slot( 2, 1, 177, 0, 30 ); //Main 2

originGravitySpeed = gravity_speed; //This value keeps track of Amber's original gravity speed when we modify her gravity (such as from her FAir)

//Used for the laser dstrong and n special smoke. Moving the name tag
currentEaseTime = 0;

//Speedlines variables
speedlinesBGSprite = sprite_get("speedlines_bg");
speedlinesBG = instance_create( view_get_xview(), view_get_yview(), "obj_article1" );
speedlinesBG.articleType = 2;
speedlinesBG.initialize = true;
speedlinesEnable = false; //Becomes true when we land a full meter Empowered Move

//testSpeedLines = instance_create( view_get_xview(), view_get_yview(), "obj_article1" );
//testSpeedLines.articleType = 3;
//testSpeedLines.initialize = true;
//Training/Tutorial variables
infiniteMeter = false;
inTraining = false;
trainingTimer1 = get_game_timer();
trainingTimer2 = 0;
tutEmpoweredBubbleAnimTimer = 0;
tutEmpoweredBubbleAnimSpeed = 0.25;
tutEmpoweredBubbleShowLength = 45; // 3 seconds
tutSuccessUsedEmpowered = false; //Becomes true when Amber successfully uses any of the Empowered Moves
tutSelectedMenuIndex = 0;
tutMaxMenuIndex = 3;


tutCurrentMenuCategory = 0; //0 is inactive, 1 is bubble menu, 2 is moveset
tutScrollCurrentCursorCategory = 0; //0 is the side scroll and selecting moves, 1 is scrolling through the description, 2 is changing info. Horizontal selection

tutScrollCurrentMove = 0;
tutScrollMaxMoves = 22;
tutScrollCurrentMoveCategory = 0; // The current page for the side scroll of moves
tutScrollMoveMaxCategory = 4;

tutScrollCurrentInfoCategory = 0; //0 is Description, 1 is Stats, 2 Frame Data, 3 Tips
tutScrollMaxInfoCategory = 3;

tutScrollSelectedInfoCategoryColor = make_colour_rgb(198, 172, 151); //Changes the text to this color when selected
tutScrollInfoScrollMaxIndex = 1; //Dynamically changes, depending on the move selected and category
tutScrollInfoScrollCurrentIndex = 0;
tutScrollInfoScrollBarYPos = 0;

tutScrollMaxDescIndex[0] = 2; //Jab
tutScrollMaxDescIndex[1] = 2; //Dash Attack
tutScrollMaxDescIndex[2] = 2; //Ftilt
tutScrollMaxDescIndex[3] = 2; //UTilt
tutScrollMaxDescIndex[4] = 2; //DTilt
tutScrollMaxDescIndex[5] = 1; //NAir
tutScrollMaxDescIndex[6] = 1; //UAir
tutScrollMaxDescIndex[7] = 2; //FAir
tutScrollMaxDescIndex[8] = 1; //DAir
tutScrollMaxDescIndex[9] = 1; //BAir
tutScrollMaxDescIndex[10] = 3; //UStrong
tutScrollMaxDescIndex[11] = 2; //FStrong
tutScrollMaxDescIndex[12] = 3; //DStrong
tutScrollMaxDescIndex[13] = 2; //NSpecial
tutScrollMaxDescIndex[14] = 1; //
tutScrollMaxDescIndex[15] = 4; //
tutScrollMaxDescIndex[16] = 5; //
tutScrollMaxDescIndex[17] = 3; //
tutScrollMaxDescIndex[18] = 4; //
tutScrollMaxDescIndex[19] = 2; //
tutScrollMaxDescIndex[20] = 3; //
tutScrollMaxDescIndex[21] = 2; //
tutScrollMaxDescIndex[22] = 1; //

loopI = 0;
textMoveListSpacing = 38;
menuInputHeldTimer = 0; //Used for tracking up and down holding input
/*
0 - Jab, Dash Attack, F-Tilt, U-Tilt, D-Tilt


*/
clonedEnemyAmber[0] = noone;
clonedEnemyAmber[1] = noone;
clonedEnemyAmber[2] = noone;
clonedEnemyAmber[3] = noone;

amber_kraggsRock = noone;

//Temp variables
//debugYBallHitboxNum = 0;
//debugYBallHitboxAttack = 0;

//Amber special taunt variables + character interaction
tauntType = 1;
//Taunt Type int library
/*
1 - jumpWave
2 - hugPlush
3 - hugCharacter
4 - sorry
5 - areYouOk
6 - ninjaGum
10 - Tutorial Menu
11 - Read Scroll
*/

#region //Abyss Runes
//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
/*
abyssMods = array_create(16,[-1,"Not Implemented."]);
//Tier 1
abyssMods[@ runes.A] = [3, "Initial Dash Speed 11->12. No deceleration and dash cooldown."];											
abyssMods[@ runes.B] = [3, "NSPECIAL charges up faster."];												
abyssMods[@ runes.C] = [3, "No extra damage taken while in Empowered State."];								
abyssMods[@ runes.D] = [2, "FSTRONG charges faster."];												
abyssMods[@ runes.E] = [3, "Reduced startup and endlag for Empowered Specials."];											
abyssMods[@ runes.F] = [3, "No free fall when whiffing USPEC, FSPEC and cancelling Yarn Dash."];
//Tier 2
abyssMods[@ runes.G] = [3, "Super Armor while in Unleash Empowered State and while using E. Specials."];						
abyssMods[@ runes.H] = [1, "Replace Yarn Ball with Water Balloons."];				
abyssMods[@ runes.I] = [3, "Smoke Bomb costs 0 meter. No self damage."];								
abyssMods[@ runes.J] = [2, "Deal 1.5x more damage while Empowered State."];										
abyssMods[@ runes.K] = [2, "Most multi hit attacks replaced with single hard hitting attacks."];	
//Tier 3
abyssMods[@ runes.L] = [3, "Infinite Boost Meter."];	
abyssMods[@ runes.M] = [3, "Amber used Rest! Hold crouch to heal."];												
abyssMods[@ runes.N] = [1, "Shockitten. Most moves fire short ranged shockwave projectiles."];												
abyssMods[@ runes.O] = [3, "Truely Non-Lethal. -1 stock to hit enemy w/ E.DSPEC. Avoid attacking enemy."];				

var runess = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
for (var i = 0; i < array_length(runess); ++i) variable_instance_set(self, "rune" + runess[i], has_rune(runess[i]));
*/

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

#endregion

#region//Amber interaction with others variables
amberHugState = 0; //0 means inactive. 1 is Amber command prompt (Amber wants to hug). 2 means start up. 3 is actual hugging. 4 is exiting
amberHugCanExitTimer = 0; //For looping windows. Pressing shield, attack, etc. will move to exit frames
amberHugExitWindow = 0;
amberHugSprite = noone;
targetPlayerHugID = noone;
//otherPlayerUrls[3] = 0;
targetPlushSprite = sprite_get("plushies");
targetPlushIndex = 0; 
tauntCancelTimer = 0; //When this is 0, Amber's plush or hugging taunt can be cancelled from the loop window

teamRedColor = make_colour_rgb(250, 85, 85);
teamBlueColor = make_colour_rgb(85, 100, 255);
#endregion

#region//Character interaction variables
//=================================

//Trummel and Alto Codecs
trummelcodecneeded = false;
trummelcodec_id = noone;

trummelcodec_id = noone;

//Hikaru title
Hikaru_Title = "Non-Lethal Ninja";

//Feri Costume
feri_costume = sprite_get("feri_costume_amber");

//Kirby Ability
kirbyability = 9;//9 Is placeholder. Put it at 16 later
newicon = 0;
swallowed = 0;
enemykirby = noone;

//Dracula
//Dracula support
dracula_portrait = sprite_get("dialogue_amber_portrait2");
dracula_portrait2 = sprite_get("dialogue_amber_portrait3");
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "How does a mere stray kitten, walk right into my castle?!";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "A-are you Dracula?... I want to talk.";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "Talk? What for?";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "You've hurt a lot of people... ";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "Maybe there's a reason you're doing it....";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "But I don't think hurting innocent people is ok...";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "Are you defending these humans?";
page++;

dracula_speaker[page] = 2;
dracula_text[page] = "I think everyone deserves equal respect!";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "Ha! So naive. So clueless. You know nothing of what these filthy creatures have done.";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "You remind me of someone. Someone who was hurt.";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "He spread his hate to others because of his past... ";
page++;

dracula_speaker[page] = 2;
dracula_text[page] = "M-Maybe a bit of apology and forgiveness can go a long way?";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "[shake]Apology!?... Forgiveness?! Enough of your kindness! [glass]You'll cry for the humans no more!";
page++;


//Pokemon Stadium
pkmn_stadium_front_img = sprite_get("pokemon_amber_front");
pkmn_stadium_back_img = sprite_get("pokemon_amber_back");

//Sonic Stage
gfzsignspr = sprite_get("amber_sonic_sign_complete");

//Lethal League
stage_id = get_stage_data( SD_ID );
lethalLeague_stage = false;
if (stage_id == "nt\383980\2217830677") {
	lethalLeague_stage = true;
	print_debug( "Lethal League mode is on!" );
	set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 20);
    set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 20);
    
    //print_debug(string( get_hitbox_value( AT_BAIR, 1, HG_ANGLE)));
}

#endregion
