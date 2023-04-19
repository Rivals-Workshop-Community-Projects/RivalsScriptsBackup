hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("hurtcrouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;
sprite_change_offset("hurtbox", 45, 84);
sprite_change_offset("hurtcrouch", 45, 84);


//ANIMATION VARS
// FOR IDLE
EuFrame = [180, 186, 192, 378, 384, 390, 696, 702, 706, 894, 900, 906, 912, 918, 1104, 1110, 1116];
EuAnim = [0, 1, 2, 3, 2, 1, 0, 1, 2, 3, 4, 5, 6, 7, 3, 2, 1, 0];


NuzFlipper = false;		// For Jab animation
eust_laughTrack = 0;		// Rolling count for Taunt
eust_drawCacophony = false;	// For Down Strong effect
eust_drawLocust = false;	// For Up Special effect
eust_cacoTimer = 0;		// DStrong effect timer
eust_locoTimer = 0;		// USpecial effect timer
eust_angleControl = 0;
eust_oogaCharge = 0;
eust_oogaBooga = 0;
eust_isFearing = false;		//proofing versus anyone who can take an N_SPECIAL from Eustace that is not Ooga Booga, like Kragg rock
eust_drawFear = false;
eust_fearParticleTimer = 0;
eust_inChair = false;	
eust_gettingChair = false;	//for chair patchover
eust_gChairInvuln = false;	//invulnerable variable for full chair duration
eust_chairKBLim = 10;		//limits knockback when in the chair
eust_chairLastDamage = 0;	//stores last damage as part of inability to be damaged
eust_chairFace = 1;		//so you can't get turned around
eust_crashingDown = false;	//for initial drop during DSpecial
eust_chairActive = false;
//chairHBCD = false;
eust_chairWarp = false;		//if you can warp to the chair
eust_chairWCD = false;		//if the warp ability is on cooldown
eust_chairHBar = 0;		//for warp health recollection
eust_doorActive = false;
eust_windowLast = 0;		//mostly for SFX cleanup
eust_windowLastLast = 0;	//remembers the last window
eust_tornaTrack = 0;		//in place in case I wanna reward the player for hitting enough tornado hitboxes
eust_forceOffTimer = 0;		//stall protection
eust_drawPapers = false;
eust_paperTimer = 0;
eust_paperPage1 = 0;
eust_paperPage2 = 0;
eust_paperX = 0;
eust_paperY = 0;
eust_paperD = spr_dir;
eust_paperCoinFlip = 0;				//variables for drawing the paper effects
eust_shouldDust = false;
eust_vspeedTracker = 0;				//variables for generating the dust effect when the Chair state hits the ground
eust_assKickSFX = false;
eust_colorFixed = false;			//for portrait updates, possible artifact that I can get rid of
eust_doorWJumpTimer = 0;
eust_wJumpRecover = false;
eust_wJumpUsed = false;				//Variables needed for temporarily restored walljump
eust_eust_dirLastLast = 1;			//NEED TO FIND INSTANCES OF THIS VARIABLE AND FIX
eust_dirLast = 1;				//Tracking which way Eustace has been facing
eust_shortHop = 0;				//Tracking if short hops happened for DAir vertical boost
eust_bobStop = true;				//If the Big Bob projectile should be created if the shotgun misses
eust_bobShotX = 0;
eust_bobShotY = 0;

instance_create( 0, 0, "obj_article2" );	//Spawn animation control article
eust_art2HeartBeat = 0;
eust_art2ImAlive = true;			//Just in case someone accidentally destroys article2
//eust_fearTime = 0;
eust_mychairState = 0;				//Preventing issues with other articles
eust_mydoorState = 0;
eust_myChairX = 0;
eust_myChairY = 0;
eust_myChairFace = 0;
eust_freezeFrame = 15;				//for pause when chair or door are destroyed
eust_lameChecker = 0;				//lame checker timer
eust_laaame = 0;

eust_chaosTimer = 0;				//for Taunt2
eust_chaosPresent = false;			//draw effects
eust_chaosTracker = 6;				//back and forth motion of bball during window 2
eust_chaosBallBlur = 0;

eust_runeBKicks = false;			//Runescape stuff
eust_runeEActive = false;
eust_runeKSpins = false;
eust_runeMBoom = false;
eust_runeMX = 0;
eust_runeMY = 0;

char_height = 62; 			// =84-10 ASEPRITE values
idle_anim_speed = 1; 			// variable-controlled idle by EuFrame!
crouch_anim_speed = .17;  		// anim frames per gameplay frame? x * 60 = intended frames per second
walk_anim_speed = .17; 			// 0.1s = 10fps = 60*x
dash_anim_speed = .24; 			// 0.08s = 12.5fps = 60*x
pratfall_anim_speed = .24;

walk_speed = 3.1;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 3;
initial_dash_speed = 8.5;
dash_speed = 8;
dash_turn_time = 12;
dash_turn_accel = 0.5;
dash_stop_time = 10;
dash_stop_percent = .4; 		//the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 4;
jump_speed = 12;
short_hop_speed = 5.5;
djump_speed = 10;
leave_ground_max = 6; 			//the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; 			//the maximum hsp you can have when jumping from the ground
air_max_speed = 7; 			//the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; 			//maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.3;
prat_fall_accel = .85; 			//multiplier of air_accel while in pratfall
air_friction = .045;
max_djumps = 1;
double_jump_time = 32; 			//the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .4;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 10; //normal landing frames
prat_land_time = 15;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8; //was 7.5

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 1;
bubble_y = 2;

//victory
set_victory_bg(sprite_get("victory"));
if(get_synced_var(player) == 1){set_victory_theme(sound_get("victorytheme_mute"));} else {set_victory_theme(sound_get("victorytheme_vo"));}

//fx
dspec_dust = hit_fx_create( sprite_get( "dspecial_chairslamfx" ), 6 );
ballin_flash = hit_fx_create( sprite_get( "taunt_ballin_transition" ), 1);
ballin_dust = hit_fx_create( sprite_get( "taunt_ballin_dustkickup" ), 4);
ballin_dbz = hit_fx_create( sprite_get( "taunt_ballin_dbz" ), 4);
bair_splaser = hit_fx_create( sprite_get( "bair_splaser" ), 7);


//Supports section

//Job Title
Hikaru_Title = "The Farmer";
arena_title = "Miracle Outta Nowhere";
boxing_title = "The Miracle
Out Of Nowhere";

copy_ability_id = 20;		//Mallet mode
TCG_Kirby_Copy = 12;		//Eustace's nastiness hits different when Kirby tries to copy him

//Comms
nname = "The Farmer";
ncode1 = "An old man who's well versed in the horrors of Nowhere.";
ncode2 = "Demon hunters would shiver at the monstrosities this man has faced.";
ncode3 = "He's surprisingly brave when his dog's not around...";

sna_interrogated_line_01 = "Stupid Snake!  Yer makin' me look bad!";
sna_interrogated_line_02 = "Get away from me!";
sna_interrogated_line_03 = "What did I do?";

fducky_intro1 = "Return that damn";
fducky_intro2 = "slab already!!";

steve_death_message = "Steve found the mallet!";
fail_text = "Admittedly, that one came out of Nowhere.";

guiltySprite = sprite_get("dangitrobby");

//DEAD I AM THE ONE
//EXTERMINATING SON
//SLIPPING THROUGH THE TREES
//STRANGLING THE BREEZE
//if(get_player_color(player) == 0){dracula_portrait = sprite_get("eustace_draculaport_c0");}
//if(get_player_color(player) != 0){dracula_portrait = sprite_get("eustace_draculaport");}
dracula_portrait = sprite_get("eustace_draculaport");
dracula_portrait2 = asset_get("empty_hurt") ; 
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "And I suppose that just about ANYONE can wander into my castle these days.  Pray tell, peasant, have you come to kiss my ring?  Perhaps you wish to confront me over some missing livestock?";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "Blah blah blah, you sure do talk a lot for an overgrown bat.  I'm here for yer money, and that's all there is to this lousy stinkin' adventure of mine!";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "Money, you say?  You really came to this castle on your own, fought the numerous beasts defending it, presumably ate the food stored away in the brick and mortar, and stomped up to my throne to ask for *money*?";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "Why else would I wanna come to a dusty old dump like this?!  I wanna get rich, and all that treasure in yer coffers is gonna help with that!";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "PFFFT[shake]AHAHAHAHA!!!  Oh, I've met many a rude intruder during my stay in these lands, but you?  My ears have never been graced with this kind of insolence in all my life!";
page++;

//Page 5
dracula_speaker[page] = 1;
dracula_text[page] = "Yeah?  Well, 'insolence' or not, I ain't budgin' 'til I get my hands on that treasury of yers.";
page++;

//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "Perhaps, in another life, a greedy, cold, blackened heart such as yours would have made a fine addition to my children of the night.";
page++;

//Page 7
dracula_speaker[page] = 0;
dracula_text[page] = "But, alas!  I cannot allow the disrespect of an old buffoon go unpunished.";
page++;

//Page 8
dracula_speaker[page] = 1;
dracula_text[page] = "Look, I ain't got all day.  If yer gonna need a beatin' before you cough up that gold, yer about to get more than just some 'disrespect' outta me!";
page++;

//Page 9
dracula_speaker[page] = 0;
dracula_text[page] = "Very well, farmer!  I'll humor you!  [glass]If you want my treasure so badly, come and take it!";


//Amber Compatibility Time
amber_herObj = noone; //The object ID of Amber when she hugs. Amber's own script will set this when the hug is inititated
amber_thisHugSprite = sprite_get("ambercompat_me");
amber_herHugSprite = sprite_get("ambercompat_her");
amber_startHug = false; //This variable is set true from Amber's scripts
amber_thisSpriteInFront = false; //When true, this character's sprite is rendered over Amber's sprite
amber_autoTurnToHer = true; //This character will automatically face towards Amber upon hug activatation when true

amber_hugStartPos[0] = 32; //The x target offset point (from Amber's pos) where the player should hug Amber at. 
amber_hugStartPos[1] = 0; //The y target offset point. Recommended to keep this at 0 for grounded interaction

amber_hugExitPos[0] = 32; //The x target offset point (from Amber's pos) where the player stands at when exiting hug state.
amber_hugExitPos[1] = 0; //The y target offset point.

//The x target offset positions will inherit the character's spr_dir when this is true.
//Set this to true for character interactions that face toward each other such as hugging
//Set this to false for centered interaction animations
amber_useSprDirOffset = true; 

amber_hugExitTimer = 60; //How many frames should pass before either player can exit the hug window loop
amber_hugExitWindow = 3; //The window to jump to when either player presses a button to exit hug loop


//RC car because I am not a coward
kart_sprite = sprite_get("truck");
kart_frames = 1;
kart_engine_sound = 4;
kart_drift_spr = 1;

// FINAL SMASH
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 80;
fs_portrait_x = 160;
//fs_char_is_attack_grid = false;
// Alpha Variant
eust_isSmashing = 0;				// Final Smash Alpha control
eust_uhOhX = 0;					// Final Smash Alpha - where was the opponent
eust_uhOhY = 0;
eust_baseX = 0;					// Final Smash Alpha - where was Eustace
eust_baseY = 0;
eust_baseF = 1;					// Direction control
eust_FSTimer = 0;				// Final Smash timer for events