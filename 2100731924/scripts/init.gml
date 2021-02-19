hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = sprite_get("hitstun_hurtbox");

char_height = 50;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7.5;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.75;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .12; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 3;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 8;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
roll_forward_max = 10; //roll speed
roll_backward_max = 10;

//frames to play before leaving the wall
wall_frames = 2;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Batit variables
batitPlaced = false;
batitArticle = noone;
batitDied = false;
batitFell = false;
batitDelay = 0;
pickUpBatit = false;

// Dattack variable
initialDattackY = 0;

// Uair variable
finishUair = false;
// Uair grab array
for(var k = 20; k >= 0; k--){
    uairGrabbedid[k, 0] = noone; // hit player
    uairGrabbedid[k, 1] = 0; // player's original x value relative to player
    uairGrabbedid[k, 2] = 0; // player's original y value relative to player
}

// Uspecial_2 variable
dontSwitchToUspecial = false;
currentUspecialSprite = -1;
currentUspecialImageIndex = -1;
currentUspecialHurtSprite = -1;

// batit aerial attack variables
doStrong = true;
doAttack = true;
projectilesMandatory = false;
canSwitchProjectiles = true;
strongsMandatory = false;
canSwitchStrongs = true;

// [Random alt on hit feature]
randomAltOnHit = false; // holds whether this feature has been activated

// Make these clear the buffer of the inputs that you use for costume changing during the intro. This prevents costume switching when restarting a game if either input is mapped to A. [Edit optional]
clear_button_buffer(PC_SPECIAL_PRESSED);
clear_button_buffer(PC_JUMP_PRESSED);

// Nudge variables
autoNudge = true;
canSwitchNudge = true;

// Batit nspecial cooldown
BATIT_NSPECIAL_COOLDOWN = 150;

// parry sfx variables
newParrySound = sound_get("JoshuaParryUse");

//hud sprites
batitIconSprite = sprite_get("batit_icon");
batitBarSprite = sprite_get("Batit_hud_bar");
batitHpSprite = sprite_get("batit_hud_hp");
toggleIconSprite = sprite_get("toggle_icon");

/*//variable to keep track of current Joshua stats
batitStats = false;*/

//command grab variable (template)
grabbedid = noone;
grabbedArticleId = noone;

//bomb hud sprites
bombCooldownIndicator = sprite_get("dspecial_air_proj_HUD_cooldown_indicator");
bombCooldownIndicatorMask = sprite_get("dspecial_air_proj_HUD_cooldown_indicator_mask");
bombCooldownIndicatorMaskOverlay = sprite_get("dspecial_air_proj_HUD_cooldown_indicator_mask_overlay");
bombProjectilesprite = sprite_get("dspecial_air_proj");
//bomb cooldown
BOMB_COOLDOWN = 60;

//fspecial sprites
fspecialBackThrowSprite = sprite_get("fspecial_back_throw");
fspecialBackThrowHurtSprite = sprite_get("fspecial_back_throw_hurt");

//hfx
leafBreakHfx = hit_fx_create(sprite_get("batit_leaf_break"), 25);
leafHitHfx = hit_fx_create(sprite_get("leaf_fx"), 25);
strongHitHfx = hit_fx_create(sprite_get("batit_strong_hfx"), 30);
sweetspotHfx = hit_fx_create(sprite_get("batit_sweetspot_hfx"), 35);

//intro
introTimer = -4;
introTimer2 = 0;
switch(get_color_profile_slot_r(0, 8)){
    case 6:
        introSprite = sprite_get("intro_abyss");
        numIntroFrames = 20;
        break;
    case 7:
        introSprite = sprite_get("intro_ea");
        numIntroFrames = 11;
        break;
    default:
        introSprite = sprite_get("intro");
        numIntroFrames = 7;
}

//player article support
hit_player_article_gml = false;
has_hit_player_article = false;
hit_player_article_obj = noone;
my_hitboxID_player_article = noone;
//specific stuff
has_hit_player_article_still_new_update_gml = false;
has_hit_player_article_still_new_attack_update_gml = false;

//tco support
tcoart = sprite_get("tcoart_joshuake");

//feri support
feri_costume = sprite_get("feri_costume_joshua_and_batit");

//reverse support
compatibleUrl = 0;

//tco reverse support
drawingTimer = 0;
artPaper = sprite_get("taunt_tco_paper");
artTCO = sprite_get("taunt_tco_art");
pencilDrawSound = sound_get("pencilTCO");

// Hikaru Support
Hikaru_Title = "Symbiotic";

// kirby support
kirbyability = 16;
swallowed = 0;

//otto support
otto_bobblehead_sprite = sprite_get("otto_head");
otto_bobblehead_body_sprite = sprite_get("otto_body");

//miiverse support
miiverse_post = sprite_get("miiverse_joshua");

//Mt. Dedede support
arena_title = "The Symbiotic Duo";
arena_short_name = "Joshua & Batit";

//soulbound conflict support
battle_text = "*Joshua wants you to josh your hands.";
battle_text2 = "*Batit too.";

//toon link support
toonlink_photo = sprite_get("toon_link_joshua_selfie");
toonlink_photo2 = sprite_get("toon_link_owo_selfie");

//trummel and alto support
trummelcodecneeded = false;
trummelcodec_id = noone;

//trummel and alto reverse support
//sprites
spr_textbox = sprite_get("textbox");
joshuaCodecSprites[3] = sprite_get("batit_codec");
joshuaCodecSprites[2] = sprite_get("joshua_codec");
joshuaCodecSprites[1] = sprite_get("trummelsprite");
joshuaCodecSprites[0] = sprite_get("altosprite");
//sounds
textBoxAppearSound = sound_get("textappearTAA");
textBoxPageSound = sound_get("textpageTAA");
textBoxLeaveSound = sound_get("textleaveTAA");
//variables
codecOut = false;
startCodec = false;
endCodec = false;
codecTimer = 0;
currentPage = 0;
lastPage = 10;
//reverse codec
var page = 0;

//Page 0
joshuaCodecSpeaker[page] = 0;
joshuaCodecExpression[page] = 1;

joshuaCodecLine[page,1] = "...";
joshuaCodecLine[page,2] = "";
joshuaCodecLine[page,3] = "";
joshuaCodecLine[page,4] = "";
page++; 

//Page 1
joshuaCodecSpeaker[page] = 0;
joshuaCodecExpression[page] = 5;

joshuaCodecLine[page,1] = "WAIT WHAT!?";
joshuaCodecLine[page,2] = "";
joshuaCodecLine[page,3] = "";
joshuaCodecLine[page,4] = "";
page++; 

//Page 2
joshuaCodecSpeaker[page] = 0;
joshuaCodecExpression[page] = 2;

joshuaCodecLine[page,1] = "Trummel, did you press";
joshuaCodecLine[page,2] = "down + taunt?";
joshuaCodecLine[page,3] = "";
joshuaCodecLine[page,4] = "";
page++; 

//Page 3
joshuaCodecSpeaker[page] = 1;
joshuaCodecExpression[page] = 0;

joshuaCodecLine[page,1] = "no";
joshuaCodecLine[page,2] = "";
joshuaCodecLine[page,3] = "";
joshuaCodecLine[page,4] = "";
page++; 

//Page 4
joshuaCodecSpeaker[page] = 2;
joshuaCodecExpression[page] = 0;

joshuaCodecLine[page,1] = "Ummm... we did.";
joshuaCodecLine[page,2] = "";
joshuaCodecLine[page,3] = "";
joshuaCodecLine[page,4] = "";
page++; 

//Page 5
joshuaCodecSpeaker[page] = 0;
joshuaCodecExpression[page] = 4;

joshuaCodecLine[page,1] = "Dude you can't just steal";
joshuaCodecLine[page,2] = "a person's thing to make";
joshuaCodecLine[page,3] = "you cool.";
joshuaCodecLine[page,4] = "";
page++; 

//Page 6
joshuaCodecSpeaker[page] = 2;
joshuaCodecExpression[page] = 0;

joshuaCodecLine[page,1] = "Don't get mad. I even";
joshuaCodecLine[page,2] = "have some reverse";
joshuaCodecLine[page,3] = "compatibility with other";
joshuaCodecLine[page,4] = "characters too.";
page++; 

//Page 7
joshuaCodecSpeaker[page] = 3;
joshuaCodecExpression[page] = 0;

joshuaCodecLine[page,1] = "deal with it. sometimes";
joshuaCodecLine[page,2] = "there are people that";
joshuaCodecLine[page,3] = "copy you because you";
joshuaCodecLine[page,4] = "are awesome.";
page++; 

//Page 8
joshuaCodecSpeaker[page] = 3;
joshuaCodecExpression[page] = 0;

joshuaCodecLine[page,1] = "you cant do any thing";
joshuaCodecLine[page,2] = "about it though, unless";
joshuaCodecLine[page,3] = "you are nintendo.";
joshuaCodecLine[page,4] = "";
page++; 

//Page 9
joshuaCodecSpeaker[page] = 0;
joshuaCodecExpression[page] = 4;

joshuaCodecLine[page,1] = "Fine, but you can't just";
joshuaCodecLine[page,2] = "copy our code like that.";
joshuaCodecLine[page,3] = "";
joshuaCodecLine[page,4] = "";
page++; 

//Page 10
joshuaCodecSpeaker[page] = 1;
joshuaCodecExpression[page] = 0;

joshuaCodecLine[page,1] = "salt is real";
joshuaCodecLine[page,2] = "";
joshuaCodecLine[page,3] = "";
joshuaCodecLine[page,4] = "";
page++;

// Dracula support
dracula_portrait = sprite_get("dracula_joshua_portrait");
dracula_portrait2 = sprite_get("dracula_batit_portrait");
var page = 0;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "(Hey Batit, should I go tell him a joke?)";
page++;

//Page 1
dracula_speaker[page] = 2;
dracula_text[page] = "(go for it, i dare you.)";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "Hey Dracula, I'm a Belmont.";
page++;

//Page 3
dracula_speaker[page] = 0;
dracula_text[page] = "Do you really believe me to be foolish enough to succumb to your lies?";
page++;

//Page 4
dracula_speaker[page] = 1;
dracula_text[page] = "Batit, I don't think he got the joke.";
page++;

//Page 5
dracula_speaker[page] = 2;
dracula_text[page] = "top 10 moments caught before disaster.";
page++;

//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "I don't have time for your childish games. [glass] For wasting my time, you'll pay with your free will! Join me, or perish!";
page++;


// practice mode
practiceMode = false;
// true if the character was reloaded (using a separate variable lets us safely mess with it)
wasReloaded = was_reloaded;

//Rune Support
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
abyssMods[@ runes.A] = [2, "Keep Batitful FSTRONG when Batit is out."];
abyssMods[@ runes.B] = [2, "Keep Batitful USTRONG when Batit is out."];
abyssMods[@ runes.C] = [3, "Joshua & Batit have a knockback_adj of 0.7."];
abyssMods[@ runes.D] = [2, "BAIR can be cancelled into BAIR."];
abyssMods[@ runes.E] = [0, "No NSPECIAL cooldown for Batit."];
abyssMods[@ runes.F] = [2, "UAIR always Marios."];

abyssMods[@ runes.G] = [2, "Old DASH ATTACK, FAIR, and BAIR."];
abyssMods[@ runes.H] = [0, "Batit has unlimited health and no respawn cooldowns."];
abyssMods[@ runes.I] = [0, "Batit's strongs have extra hitpause and no grab push-back when opponent hit (wobbling)."];
abyssMods[@ runes.J] = [2, "USPECIAL is permanently upgraded, even when Batit is out."];
abyssMods[@ runes.K] = [1, "Batitful NSPECIAL gets its very high hitstun multiplier back."];

abyssMods[@ runes.L] = [1, "Pre-nerf bombs without a cooldown."];
abyssMods[@ runes.M] = [0, "Batit and Titab."];
abyssMods[@ runes.N] = [0, "Batit can cancel his attacks into other attacks."];
abyssMods[@ runes.O] = [0, "Batit shoots double the projectiles."];

//Sets the variables runeA, runeB, etc according to whether or not that rune was selected
var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}
// variable used to activate runesUpdated at the start of the match
runesEnabled = get_match_setting(SET_RUNES);