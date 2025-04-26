hurtbox_spr = sprite_get("hurt_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;


//Custom Hitbox Colors System (by @SupersonicNK)
HG_HITBOX_COLOR = 79; //This can be any number above 57 and below 100. It is recommended that you put this number below Munophone's starting_hg_index value, to prevent conflicts.

//Sprite Setup
//knockback arrow sprite
__kb_arrow_spr = asset_get("knock_back_arrow_spr")
//actual hitbox sprites
var w = 100
__hb_circle_t = sprite_get("hitbox_circle_trans");
    sprite_change_offset("hitbox_circle_trans",w,w);
    sprite_change_collision_mask("hitbox_circle_trans",false,0,0,0,0,0,0);
__hb_rect_t = sprite_get("hitbox_square_trans");
    sprite_change_offset("hitbox_square_trans",w,w);
    sprite_change_collision_mask("hitbox_square_trans",false,0,0,0,0,0,0);
__hb_r_rect_t = sprite_get("hitbox_rounded_rectangle_trans");
    sprite_change_offset("hitbox_rounded_rectangle_trans",w,w);
    sprite_change_collision_mask("hitbox_rounded_rectangle_trans",false,0,0,0,0,0,0);
__hb_hd_spr = [__hb_circle_t, __hb_rect_t, __hb_r_rect_t];
//drawn hitbox sprite
__hb_draw_spr = sprite_get("hitbox_shapes");
    sprite_change_offset("hitbox_shapes",w,w);


char_height = 69;
idle_anim_speed = .0666;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 2.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 6.5;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
wall_frames = 2;
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10.5; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 1;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_gus");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

set_victory_theme(sound_get( "victory_theme"));
set_victory_bg(sprite_get( "victory_bg" ));

doVoiceLines = get_synced_var(player);
lastVoiceLine = noone;
opponentLines = ds_list_create();
opponentHasIntroLine = false;
fspecialNormalHitCounter = 0;
fspecialVoicelineCooldown = 0;
attachedSapper = false;
inIdleWait = false;
idleWaitInd = 0;
idleWaitIndLast = 0;
idleWaitRandSound = 0;
idleWaitSfxTimer = 0;
soundTestCounter = 0;
dattackPlayedWalk = false;

didFstrongPart2 = false;

disguseFx = 144;//69;//13;
disguseFxOffsetsX = [0, 1, 0.7, 0,-0.7,-1,-0.7, 0,0.7];
disguseFxOffsetsY = [0, 0,-0.7,-1,-0.7, 0, 0.7, 1,0.7];

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

matchTimer = 0;

invis = false;
doInvisAnimation = false;
invisAnimationFadeOut = false;
invisAnimationAlpha = 1;
//move_cooldown[AT_DSPECIAL] = 1000;
invisTimerMax = 60 * 6;
invisTimerDec = 0.25;//0.333;
invisTimerIncIdle = 1;
invisTimerGainOnHit = 3;
invisTimer = 0;
invisAlpha = 1;
invisSavedAttack = noone;
invisFadeSpeed = 0.1;
invisStateTimer = 0;
invisStartAnimationIndex = 0;
invisExitStateTimer = 0;
invisExitAnimationIndex = 0;
isInvisStartSoundPlaying = false;
isInvisStopSoundPlaying = false;
visibleCompatabilityTimer = 0;
minAlphaLast = 0;


spawnedClone = false;
disguised = false;
disguisedThroughDodgeOrRoll = false;
stateBeforeQuickDisguise = state;
inTauntMenu = false;
tauntIndex1 = 0;
tauntIndex2 = 0;
tauntAnimTimer1 = 0;
tauntAnimTimer2 = 0;
tauntAnimDur = 8;
tauntAnimStartDelayTimer = 0;
tauntAnimStartDelayDisguised = 8;
tauntAnimStartDelayNotDisguised = 4;
tauntAnimStartDelay = tauntAnimStartDelayNotDisguised;
tauntFirstMenu = true;
scroll1 = 0;
scroll2 = 0;
terminalTauntAnimTimer = 0;
terminalTauntAnimStartDelayTimer = 0;
inTerminalTauntMenu = false;
terminalOption = "NONE";
terminalTextSuccess = false;
terminalImageSuccess = false;
tauntIsOnWaitFrame = false;
tauntIsOnWaitFrameLast = false;


backstabSuccess = noone;
backstabSuccessLast = false;
backstabDamage = 10;
backstabKnockback = 8;
backstabKnockbackScale = 0.8;
backstabHitPause = 12;
backstabHitPauseScale = 1.0;
backstabHitPauseExtra = 0;


sappers = ds_list_create();
crits = 0;
shotCounter = 0;


num_alts = 15;//needs to be the same as css_draw.gml and colors.gml
orgAlt = get_player_color(player);
currAlt = orgAlt;
lastAlt = orgAlt;

didPlayCrouchSfx = false;
last_crouch_imgage_index = -1;
isCrouchOrBoxMoving = false;
crouchAnimTimer = 0;
crouchTimer = 0;
crouchStopTimer = 0;

//ALL SFX need to be killed on death
terminalLoopSfx = noone;
terminalStartSfx = noone;
terminalStopSfx = noone;
tauntKnifeSfx = noone;
helicopterSfx = noone;
whooshSfx = noone;
ustrongChargeSfx = noone;
spy_disguiseSfx = noone;
sfx_hod_steam_chargeSfx = noone;
sfx_ell_overheatSfx = noone;
sfx_ell_hoverSfx = noone;

disguisedDmg = 0;
disguisedPlayerIndex = -1;
disguiseAttackCooldown = 99999999;


afterImageCount = 4;
for(var i = 0; i < afterImageCount; i++)
	afterImages[i] = {x:x, y:y, sprite_index:sprite_index, image_index:0, spr_dir:spr_dir, timer:0};

trailCount = 30;
trails = ds_list_create();
for(var i = 0; i < trailCount; i++)
	trails[|i] = {x:x, y:y, sprite_index:sprite_index, image_index:0, height:1, angle:0};

iceShardCount = 30;
for(var i = 0; i < iceShardCount; i++)
	iceShards[i] = {x:x, y:y, sprite_index:sprite_index, image_index:0, timer:0, iceShardLifeTime:0, behindChar:true};

seinOffX = -48;
seinOffY = -64;
seinX = x + seinOffX;
seinY = y + seinOffY;
seinLastStaticX = seinX;
seinLastStaticY = seinY;

mechDjump = false;
mechHeat = 0;
mechHeatMax = 100;
mechOverheated = false;
mechCanDjump = true;
mechSoundPlaying = false;
mechSoundPlaying2 = false;

//float stuff
floating = 0;
floatTimer = 0;
floatMax = 120;
floatAnimTimer = 0;
floatMoveSpeed = 2;
freeFloat = 0;
freeFloatStop = 0;
floatCancel = 0;
floatDriftSpeed = 0;
floatRestore = 0;

floateffectAnimStripLength = 14;
floateffectAnimTimer = 0;
floateffectAnimSpeed = 0.25;
downBuffer = 0;


clones = ds_list_create();
parryClone = noone;
parryCloneDestroyTimer = 0;
parryCloneDestroyLength = 60*3;

hudYOffsetMap = ds_map_create();
hudYOffsetMap[? AT_NAIR] = 24;
hudYOffsetMap[? AT_UTILT] = 32;
hudYOffsetMap[? AT_USPECIAL] = 24;
// hudYOffsetMap[? AT_USTRONG] = 32;
hudYOffsetMap[? AT_DATTACK] = 0;//overriden in animation


m1 = ds_map_create();
ds_map_set(m1, PS_IDLE, undefined);
m2 = ds_map_create();
ds_map_set(m2, PS_IDLE, undefined);
m3 = ds_map_create();
ds_map_set(m3, PS_IDLE, undefined);
m4 = ds_map_create();
ds_map_set(m4, PS_IDLE, undefined);
playerSpriteMaps = [m1,m2,m3,m4];

//this is the same as above, so replace it
// playerToStateToSpriteIndexMap = [];
// for(var i = 0; i < 4; i++)
// {
//         playerStateToSpriteIndexMap = ds_map_create();
//         ds_map_set(playerStateToSpriteIndexMap, PS_IDLE, undefined);
//         playerToStateToSpriteIndexMap[i] = playerStateToSpriteIndexMap;
// }

playerToStateToStateTimerToImageIndexMap = [];
for(var i = 0; i < 4; i++)
{
        // playerStateTimerToImageIndexMap = ds_map_create();
        // ds_map_set(playerStateTimerToImageIndexMap, 0, undefined);
        // playerToStateTimerToImageIndexMap = [playerStateTimerToImageIndexMap, ...];
        // ds_map_set(playerToStateTimerToImageIndexMap, PS_IDLE, undefined);//TODO: for each state...
        // playerStateToStateTimerToImageIndexMap = [playerToStateTimerToImageIndexMap, ...];
        // ds_map_set(playerToStateToStateTimerToImageIndexMap, i, playerStateToStateTimerToImageIndexMap);
        playerToStateTimerToImageIndexMap = ds_map_create();
        timerToImageIndex = ds_list_create();
        ds_map_set(playerToStateTimerToImageIndexMap, PS_IDLE, timerToImageIndex);
        playerToStateToStateTimerToImageIndexMap[i] = playerToStateTimerToImageIndexMap;
}


playerDisguise = 0;
playerDisguiseIndex = -1;
disguisedAsSelf = false;
disguiseStateTimer = 0;
charIndex = -1;
charIndexLast = -1;
charSelectOpenTimer = 0;
chars = ["zet", "smoke", "sword", "moth",//red
        "bug", "fer", "wolf", "punch",//green
        "orca", "bear", "frog", "stinky",//blue
        "bird", "goat", "mech", "mouse",//purple
        "cat", "gus", "ex", "custom"];//dark blue - purple
//TODO: "panda", "rag", "tux" -> sometimes randomly use these instead of their base?

charUrls = [2, 6, 12, 16,//red
            5, 7, 13, 19,//green
            3, 9, 11, 17,//blue
            4, 8, 14, 18,//purple
            10, 15, 1865940669, -1];//dark blue - purple
        

invisAlphaLast = 1;
taunt_down_last = false;
right_down_last = false;
left_down_last = false;
up_down_last = false;
down_down_last = false;
right_stick_down_last = false;
left_stick_down_last = false;
up_stick_down_last = false;
down_stick_down_last = false;
attack_down_last = false;
special_down_last = false;
strong_down_last = false;
shield_down_last = false;
jump_down_last = false;
perfect_dodged_last = false;
has_hit_last = false;
has_hit_player_last = false;
has_hit_player_fspecial = false;
has_hit_player_fspecial_crit = false;
savedAirdodge = false;

postDrawMessageMap = ds_map_create();
post_draw_last_gameplay_time = 0;

spriteMap = ds_map_create();//find them with sprite_get_name(sprite_index);
ds_map_set(spriteMap, PS_IDLE, ["_idle", "_idle_new"]);
ds_map_set(spriteMap, PS_IDLE_AIR, ["_jump"]);
ds_map_set(spriteMap, PS_CROUCH, ["_crouch"]);
ds_map_set(spriteMap, PS_JUMPSQUAT, ["_jumpstart", "_start_jump", "_startjump"]);
ds_map_set(spriteMap, PS_FIRST_JUMP, ["_jump"]);
ds_map_set(spriteMap, PS_DOUBLE_JUMP, ["_doublejump", "_djump", "_dbj"]);
ds_map_set(spriteMap, PS_WALL_JUMP, ["_walljump", "_dbj"]);
ds_map_set(spriteMap, PS_LAND, ["_land", "_landinglag", "_landing_lag"]);
ds_map_set(spriteMap, PS_WALK, ["_walk", "_walk_new"]);
ds_map_set(spriteMap, PS_WALK_TURN, ["_walkturn", "_walk_turn", "_guy_turn"]);
ds_map_set(spriteMap, PS_DASH_START, ["_dashstart", "_dash_start"]);
ds_map_set(spriteMap, PS_DASH, ["_dash", "_run"]);
ds_map_set(spriteMap, PS_DASH_STOP, ["_dashstop", "_dash_stop", "_stop_dash", "_short_stop", "_long_stop"]);
ds_map_set(spriteMap, PS_DASH_TURN, ["_turn"]);
ds_map_set(spriteMap, PS_WAVELAND, ["_waveland", "_wave_land", "_land", "_landinglag", "_landing_lag"]);
ds_map_set(spriteMap, PS_ATTACK_AIR, [""]);
ds_map_set(spriteMap, PS_ATTACK_GROUND, [""]);
ds_map_set(spriteMap, PS_LANDING_LAG, ["_land", "_landinglag", "_landing_lag"]);
ds_map_set(spriteMap, PS_HITSTUN, ["_smallhurt"]);
ds_map_set(spriteMap, PS_HITSTUN_LAND, ["_hurtground"]);
ds_map_set(spriteMap, PS_TUMBLE, ["_spinhurt"]);
ds_map_set(spriteMap, PS_PRATFALL, ["_pratfall"]);
ds_map_set(spriteMap, PS_PRATLAND, ["_land"]);
ds_map_set(spriteMap, PS_AIR_DODGE, ["_air_dodge", "_airdodge"]);
ds_map_set(spriteMap, PS_PARRY_START, ["_dodge", "_parry"]);
ds_map_set(spriteMap, PS_PARRY, ["_dodge", "_parry"]);
ds_map_set(spriteMap, PS_ROLL_BACKWARD, ["_roll_backward", "_rollbackward"]);
ds_map_set(spriteMap, PS_ROLL_FORWARD, ["_roll_forward", "_rollforward"]);
ds_map_set(spriteMap, PS_TECH_GROUND, ["_tech"]);
ds_map_set(spriteMap, PS_TECH_BACKWARD, ["_roll_backward"]);
ds_map_set(spriteMap, PS_TECH_FORWARD, ["_roll_forward"]);
ds_map_set(spriteMap, PS_WALL_TECH, ["_tech"]);
ds_map_set(spriteMap, PS_SPAWN, [""]);
ds_map_set(spriteMap, PS_RESPAWN, [""]);
ds_map_set(spriteMap, PS_DEAD, [""]);
ds_map_set(spriteMap, PS_WRAPPED, ["_smallhurt"]);
ds_map_set(spriteMap, PS_FROZEN, ["_smallhurt"]);
doFrogHighJump = false;

playerSmallSprites = [noone,noone,noone,noone];
playerTauntAttackValues = [noone,noone,noone,noone];
playerTauntWindowValues = [noone,noone,noone,noone];

playerLandSounds = [noone,noone,noone,noone];
playerLandingLagSounds = [noone,noone,noone,noone];
playerWaveLandSounds = [noone,noone,noone,noone];
playerJumpSounds = [noone,noone,noone,noone];
playerDjumpSounds = [noone,noone,noone,noone];
playerAirdodgeSounds = [noone,noone,noone,noone];

players_hurtbox_spr = [noone,noone,noone,noone];
players_crouchbox_spr = [noone,noone,noone,noone];
players_air_hurtbox_spr = [noone,noone,noone,noone];
players_hitstun_hurtbox_spr = [noone,noone,noone,noone];

players_knockback_adj = [noone,noone,noone,noone];
players_walk_speed = [noone,noone,noone,noone];
players_walk_accel = [noone,noone,noone,noone];
players_walk_turn_time = [noone,noone,noone,noone];
players_initial_dash_time = [noone,noone,noone,noone];
players_initial_dash_speed = [noone,noone,noone,noone];
players_dash_speed = [noone,noone,noone,noone];
players_dash_turn_time = [noone,noone,noone,noone];
players_dash_turn_accel = [noone,noone,noone,noone];
players_dash_stop_time = [noone,noone,noone,noone];
players_dash_stop_percent = [noone,noone,noone,noone];
players_ground_friction = [noone,noone,noone,noone];
players_moonwalk_accel = [noone,noone,noone,noone];
players_max_djumps = [noone,noone,noone,noone];
players_jump_start_time = [noone,noone,noone,noone];
players_jump_speed = [noone,noone,noone,noone];
players_short_hop_speed = [noone,noone,noone,noone];
players_djump_speed = [noone,noone,noone,noone];
players_jump_change = [noone,noone,noone,noone];
players_djump_accel = [noone,noone,noone,noone];
players_djump_accel_start_time = [noone,noone,noone,noone];
players_djump_accel_end_time = [noone,noone,noone,noone];
players_leave_ground_max = [noone,noone,noone,noone];
players_air_max_speed = [noone,noone,noone,noone];
players_max_jump_hsp = [noone,noone,noone,noone];
players_air_accel = [noone,noone,noone,noone];
players_air_friction = [noone,noone,noone,noone];
players_double_jump_time = [noone,noone,noone,noone];
players_gravity_speed = [noone,noone,noone,noone];
players_hitstun_grav = [noone,noone,noone,noone];
players_max_fall = [noone,noone,noone,noone];
players_fast_fall = [noone,noone,noone,noone];
players_land_time = [noone,noone,noone,noone];
players_prat_land_time = [noone,noone,noone,noone];
players_prat_fall_accel = [noone,noone,noone,noone];
players_walljump_hsp = [noone,noone,noone,noone];
players_walljump_vsp = [noone,noone,noone,noone];
players_walljump_time = [noone,noone,noone,noone];
players_roll_forward_max = [noone,noone,noone,noone];
players_roll_backward_max = [noone,noone,noone,noone];
players_wave_land_time = [noone,noone,noone,noone];
players_wave_land_adj = [noone,noone,noone,noone];
players_wave_friction = [noone,noone,noone,noone];
players_techroll_speed = [noone,noone,noone,noone];
players_air_dodge_speed = [noone,noone,noone,noone];
players_char_height = [noone,noone,noone,noone];
players_bubble_x = [noone,noone,noone,noone];
players_bubble_y = [noone,noone,noone,noone];

players_wall_frames = [noone,noone,noone,noone];
players_dodge_startup_frames = [noone,noone,noone,noone];
players_dodge_active_frames = [noone,noone,noone,noone];
players_dodge_recovery_frames = [noone,noone,noone,noone];
players_tech_active_frames = [noone,noone,noone,noone];
players_tech_recovery_frames = [noone,noone,noone,noone];
players_techroll_startup_frames = [noone,noone,noone,noone];
players_techroll_active_frames = [noone,noone,noone,noone];
players_techroll_recovery_frames = [noone,noone,noone,noone];
players_air_dodge_startup_frames = [noone,noone,noone,noone];
players_air_dodge_active_frames = [noone,noone,noone,noone];
players_air_dodge_recovery_frames = [noone,noone,noone,noone];
players_roll_forward_startup_frames = [noone,noone,noone,noone];
players_roll_forward_active_frames = [noone,noone,noone,noone];
players_roll_forward_recovery_frames = [noone,noone,noone,noone];
players_roll_back_startup_frames = [noone,noone,noone,noone];
players_roll_back_active_frames = [noone,noone,noone,noone];
players_roll_back_recovery_frames = [noone,noone,noone,noone];
players_idle_anim_speed = [noone,noone,noone,noone];
players_walk_anim_speed = [noone,noone,noone,noone];
players_dash_anim_speed = [noone,noone,noone,noone];
players_crouch_anim_speed = [noone,noone,noone,noone];
players_pratfall_anim_speed = [noone,noone,noone,noone];

//////////////////////////////////////////////////////// WORKSHOP COMPATIBILIES ////////////////////////////////////////////////////////
buddy_starko_sfx = sound_get("buddy_starko");
buddy_screenko_voice_sfx = sound_get("spy_painsharp01");
buddy_starko_sprite = sprite_get("hurt_ko_buddy");
buddy_screenko_sprite = sprite_get("hurt_ko_buddy");

// Mt Dedede
arena_title = "Right Behind You";

//Boxing arena
boxing_title = "Master of
Disguise"

knight_compat_dream = 
    [
        "Gentlemen",
        "I never really was on your Side",
        "After you!"
    ]

has_fail = true;
fail_text = "Looks like someone needs a Pyro buddy";

//wall-e
walle_taunt_sound = sound_get("wall_e");
walle_taunt_type = 1;

//Kirby 2839808881 (ability preset)
TCG_Kirby_Copy = 3;//overwritten in user_event4

//Kirby 1868756032 (custom ability)
enemykirby = undefined;
kirbyability = 16;
swallowed = 0;

//agent N
nname = "Spy"
ncode1 = "This cunning Frenchman is a master of disguise"
ncode2 = "so trust nothing but your instincts."
ncode3 = "And make sure to watch your back with this one."
nctimer = 0;
nPlayerId = noone;

//solid snake
sna_interrogated_line_01 = "You are an amateur and a fool!";
sna_interrogated_line_02 = "I'll see you in hell... You handsome rogue!";
sna_interrogated_line_03 = "You suck!";

//souldbound conflict
battle_text = "* Intruder alert!";

//talking flower buddy
talkingflower_special_taunt_line = 37;

//dialogue buddy
// diag_portrait=sprite_get("portrait"); // This will allow you to put any custom portrait onto the dialogue buddy!
//Adjust positioning of the portraits accordingly! Useful if the characters face is way too low
diag_portrait_x = 0; // +: Backwards -:Forwards
diag_portrait_y = 0; // +: Downwards -:Upwards

//steve
steve_death_message = "Steve became Spy’s latest disguise!";//"Steve mistook Spy for a friend!";//"Steve died from a knife in his back!";

//the choosen one
tcoart = sprite_get("compatability_tcoart");
tcoSelectedArt = noone;
tcoVanillaChar = 0;
paperSprite = noone;
paperSpriteBackground = noone;
paperIndex = 0;
paperType = "none";

//spamton
spam_ad = sprite_get("compatabilitySpamptonAd");
//spamton copy
ad_indexes = array_create(3, 0);
ad_rarity = array_create(3, 0);
draw_ad1 = false;
draw_ad2 = false;
draw_ad3 = false;
ad_extra = [];

//naruto 2802388684
// naruto_sexyjutsu_gender = 2;
naruto_sexyjutsu_sprite = sprite_get("compatabilityNaruto_taunt_sexyjutsu_custom");

//toon link
toonlink_photo = sprite_get("compatability_toonlink_photo");
toonlink_photo2 = 4;//6;
pictophotonum2 = 0;

//pac man
Namco_Taunt = sprite_get("compatabilityPacman")
// Namco_Taunt_Sound = sound_get("SoundYouWant")

//unregistered hypercam 2
uhc_victory_quote = "did u lose ur sapper? subcrib 4 more engi gamplay :)";
uhc_taunt_videos[0] = { title:"What 2400+ hours of Spy experience looks like (TF2 Gameplay)", sprite:sprite_get("compatabilityHypercam0"), song:sound_get("compatabilityHypercam0"), fps:5 }; 
uhc_taunt_videos[1] = { title:"Dat Intelligence", sprite:sprite_get("compatabilityHypercam1"), song:sound_get("compatabilityHypercam1"), fps:5 }; 
uhc_taunt_videos[2] = { title:"SPYCRAB RAVE", sprite:sprite_get("compatabilityHypercam2"), song:sound_get("compatabilityHypercam2"), fps:12 }; 
uhc_taunt_videos[3] = { title:"Team Fabulous 2", sprite:sprite_get("compatabilityHypercam3"), song:sound_get("compatabilityHypercam3"), fps:5 }; 
uhc_taunt_videos[4] = { title:"TF2 Poop - Meet the Smartass", sprite:sprite_get("compatabilityHypercam4"), song:sound_get("compatabilityHypercam4"), fps:5 }; 

//unlock potential
unlock_potential = true;
unlock_potential_intro_delay = 0;//The delay, in frames, between the start of the match and the padlock animation. This is for characters who have intro animations. (Default: 0)

//final smash
fs_char_portrait_y = 64;
fs_portrait_x  = 64;
fs_char_chosen_final_smash = "custom";//"clairen";
fs_char_chosen_trigger = "custom";
fs_char_is_attack_grid = "false";
// fs_go_to_hud = true;
// fs_ball_offset_x = 24;
// fs_ball_offset_y = -24;
fs_using_final_smash_last = false;
finalSmashCloneCount = 2;
fsChargeDrain = 0.2;
if(custom_clone)
{
    // fs_hide_meter = true;
    fs_meter_on_player = true;
}

//miiverse
miiverse_post = sprite_get("compatabilityMiiverse");
post_num = 0;

//pokemon stadium
pkmn_stadium_name_override = "Spy"
// pkmn_stadium_front_img = sprite_get("");
// pkmn_stadium_back_img = sprite_get("");
