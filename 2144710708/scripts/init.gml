// https://cdn.discordapp.com/attachments/736813501808377866/839920810725736458/5655445645546546556565645454545445452324434343431123221321423432545435345345345345353453453454353453.mp4

debug = 0;

hurtbox_spr = sprite_get("owen_hurtbox");
crouchbox_spr = sprite_get("owen_crouchbox");

air_hurtbox_spr = -1;
hitstun_hurtbox_spr = sprite_get("owen_hitstun_hurtbox");

char_height = 52;
idle_anim_speed = .1; 
crouch_anim_speed = .1;
walk_anim_speed = .175;
dash_anim_speed = .225;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 5.5;
dash_speed = 5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9.5;
short_hop_speed = 5.5;
djump_speed = 9;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground

air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .50;
air_friction = .03; //when u ori
max_djumps = 2;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6; // previous: 7
walljump_vsp = 8; // previous: 11
walljump_time = 32;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .50;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15; 
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .12; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 1;
techroll_recovery_frames = 2;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 1;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("flesh_impact_hard5");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");

fake_dodge_sound = sound_get("fake_dodge_sound");

air_dodge_sound = fake_dodge_sound;

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// MISC STUFF STARTS HERE

// afk timer
is_afk = false;
afk_timer = 5400;

// projectile effect sprites
gun_effect = hit_fx_create( sprite_get( "guneffect_hit" ), 7 );
gun_wall_effect = hit_fx_create( sprite_get( "guneffect_wall" ), 7 );
gun_ground_effect = hit_fx_create( sprite_get( "guneffect_ground" ), 7 );
shoe_effect = hit_fx_create( sprite_get( "toolgun_shoe"), 15);

// neutral special ammo variables
maxammo = 45;
ammo = maxammo;
oldammo = ammo;
nspecial_active = false;
bomb_maxammo = 3;
bomb_ammo = bomb_maxammo; // ammo for smg grenade abyss rune

// dair timer, variable used in attack_update
dair_timer = 0;

// rainbow color init
hue = 0;

// festive hat init
wearing_hat = get_player_color(player) == 15;

// variables for abyss rune meter balance
hype_max_multiplier = 1;
hype_length_multiplier = 1;

// meter gimmick
gimmick_activated = false;
hype = 0;
hype_max = 100 * hype_max_multiplier;
hype_active = false;
hype_disable_override = false;
hype_color = [ 255, 0, 255 ];

// funny dattack variable
should_dattack2 = false;

// legacy dspecial variable
shoe_gimmick = true;

// whether or not to display the text "playtesting mode is active"
show_playtesting_text = false;


// dspecial arrow and kb pointer 
spr_kb_arrow = sprite_get("owen_kb_arrow");
spr_isplayer = sprite_get("is_player");
spr_isplayer_mirror = sprite_get("is_player_mirrored");
spr_zone_init = sprite_get("oldboot_zone");

// initial dspecial hud icon
dspec_hudicon = sprite_get("oldboot");
bomb_hudicon = sprite_get("smg_bomb");
dspec_posticon = sprite_get("oldboot");

// dspecial offscreen arrow
var need_draw = false;

// check for playtest mode
playtest = (object_index == oTestPlayer);

// check for practice mode
practice = false;

// for fspecial
fspecial_color = c_white;

// funny fair variable (abyss rune related)
fairdamage = 0;
fairscaling = 0;

// offset for boot when it gets turned around
bootoffset = 22;

// funny upsec cancel movespeed variables
uspec_cancel_vsp = 7.5;
uspec_cancel_hsp = 1.5;

// custom window timer for uspecial
custom_window_timer = 0;

// failsafe timer for if owen is stuck in parry 
parry_failsafe_timer = 0;

// rainbow trail
rainbowtrail = sprite_get("rainbowtrail");

// saves stage id
stage_id = get_stage_data( SD_ID );

// check for stages
ll_stage = false;
tf_stage = false;
temple_stage = false;
am_stage = false;

// if the stage id matches, it's the lethal league stage
// it doesn't look like it should work, but it does
if (stage_id == "nt\383980\2217830677") {
	ll_stage = true;
	print_debug( "Lethal League stage detected" );
}

if (stage_id == "nt\383980\2349987133") {
	tf_stage = true;
	print_debug( "Trad Fighter stage detected" );
}

if (stage_id == "nt\383980\2486256103") {
	temple_stage = true;
	print_debug( "Temple detected" );
}

// i know there's variables for this but i can't find em :(
if (stage_id == "nt\383980\2634489514") {
	am_stage = true;
	print_debug( "Hallowflame stage detected" );
}


// WORKSHOP SUPPORTS BEGIN HERE

// TCO Art
tcoart = sprite_get("owen_tcoart")

// (LEGACY) Rune Support
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

abyssMods[@ runes.A] = [3, "Holding DSPECIAL when the boot is active allows you to manually move it."];
abyssMods[@ runes.B] = [0, "DSPECIAL has no cooldown."];
abyssMods[@ runes.C] = [1, "USPECIAL has no pratfall."];
abyssMods[@ runes.D] = [1, "Unlimited clip for NSPECIAL."];
abyssMods[@ runes.E] = [2, "Chargable semispike FAIR."];
abyssMods[@ runes.F] = [3, "Taunt is Jigglypuff rest."];
abyssMods[@ runes.G] = [2, "Big NAIR."];
abyssMods[@ runes.H] = [2, "Sandbert DAIR."];
abyssMods[@ runes.I] = [2, "FSPECIAL deals Clairen stun."];
abyssMods[@ runes.J] = [2, "FSPECIAL is bigger."];
abyssMods[@ runes.K] = [0, "DSPECIAL makes attacks 25% stronger."];
abyssMods[@ runes.L] = [1, "USPECIAL is a strong vertical beam."];
abyssMods[@ runes.M] = [3, "Meter (down taunt) that adds 5 air jumps, turbo aerials, and heavier weight."];
abyssMods[@ runes.N] = [1, "Shield during NSPECIAL firing to fire a bomb. Limited ammo."];
abyssMods[@ runes.O] = [0, "UAIR and BAIR become funny."];

// Trummel and Alto codec support 
trummelcodecneeded = false;
trummelcodec_id = noone;

// Feri support
feri_costume = sprite_get("feri_costume_owen");

// Hikaru support
Hikaru_Title = "Cat Person";

// Otto Bobblehead support
otto_bobblehead_sprite = sprite_get("hudbobblehead");

// Miiverse support
miiverse_post = sprite_get("owen_miiverse");

//Dracula support
dracula_portrait = sprite_get("owen_dracsprite");
dracula_portrait2 = sprite_get("owen_dracsprite2");
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Hmm? Who goes there?";
page++;
//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "hello drac";
page++;
//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "And what brings you to my castle?";
page++;
//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "i brang some updog";
page++;
//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "Updog? I've never heard of such a thing.";
page++;
//Page 5
dracula_speaker[page] = 1;
dracula_text[page] = "not much, you?";
page++;
//Page 6
dracula_speaker[page] = 2;
dracula_text[page] = "wait";
page++;

// Amber plush support
plushForAmber = sprite_get("owenplush");

// Kirby support
kirbyability = 16;
swallowed = 0;
enemykirby = noone;

// amber hug 
//Amber interaction variables
amber_herObj = noone; //The object ID of Amber when she hugs. Amber's own script will set this when the hug is inititated
amber_thisHugSprite = sprite_get("owen_hug");
amber_herHugSprite = sprite_get("amber_hug");
amber_startHug = false; //This variable is set true from Amber's scripts
amber_thisSpriteInFront = true; //When true, this character's sprite is rendered over Amber's sprite
amber_autoTurnToHer = true; //This character will automatically face towards Amber upon hug activatation when true

amber_hugStartPos[0] = 32; //The x target offset point (from Amber's pos) where the player should hug Amber at. 
amber_hugStartPos[1] = 0; //The y target offset point. Recommended to keep this at 0 for grounded interaction

amber_hugExitPos[0] = 32; //The x target offset point (from Amber's pos) where the player stands at when exiting hug state.
amber_hugExitPos[1] = 0; //The y target offset point.

//The x target offset positions will inherit the character's spr_dir when this is true.
//Set this to true for character interactions that face toward each other such as hugging
//Set this to false for centered interaction animations
amber_useSprDirOffset = true; 

amber_hugExitTimer = 30; //How many frames should pass before either player can exit the hug window loop
amber_hugExitWindow = 3; //The window to jump to when either player presses a button to exit hug loop

//codec
ncode1 = "Codename Funny Cat, from an unstable dimension."
ncode2 = "Uses weapons from [???] and capable"
ncode3 = "of creating a shoe that absorbs attacks."

// hidden alt code
hidden_alt_active = false;
hidden_alt_enabled = true; // can remove feature at any time

// funny variables for phone thing
prev_gravity_speed = gravity_speed;
prev_hitstun_grav = hitstun_grav;
prev_air_accel = air_accel;
prev_jump_speed = jump_speed;
prev_djump_speed = djump_speed;
prev_short_hop_speed = short_hop_speed;
prev_double_jump_time = double_jump_time;
prev_knockback_adj = knockback_adj;

// munophone cheat related variable that determines how intensely you vibrate
funny_variable = 0;

// steve
steve_death_message = "this shouldn't appear";

// assist buddy
assistAttack = AT_FAIR; //The attack to use as the assist
assistOffsetX = -0; //The horizontal distance they spawn from the player
assistOffsetY = -32; //The vertical distance they spawn from the player
assistGroundOnly = false; //Whether or not they are forced to the ground
assistFloat = true; //Whether or not they stay in place vertically

// so sorry support
sorry_art = sprite_get("sorryart_owen");


// pokemon stadium
pkmn_stadium_front_img = sprite_get("owen_pkmn_front");
pkmn_stadium_back_img = sprite_get("owen_pkmn_back");

// Abyss Hime support
// this HAS to be at the bottom for a draw_hud bugfix to work.
literally_sliced_in_half = false;
abyssHime_deathspr = sprite_get("abysshimehurt");


//daroach support
daroach_portrait = sprite_get("owen_dracsprite5"); // serious owen
daroach_portrait2 = sprite_get("owen_dracsprite4"); // gnome
daroach_portrait3 = sprite_get("owen_dracsprite6"); // wide eyes owen
var page = 0;

//Page 0
daroach_speaker[page] = 0;
daroach_text[page] = "Ah, you're that 'funny cat' I keep hearing so much about! What brings you here?";
page++;
//Page 1
daroach_speaker[page] = 1;
daroach_text[page] = "im here for the gnome";
page++;
//Page 2
daroach_speaker[page] = 0;
daroach_text[page] = "What, you want it back?";
page++;
//Page 3
daroach_speaker[page] = 1;
daroach_text[page] = "no";
page++;
//Page 4
daroach_speaker[page] = 1;
daroach_text[page] = "im trying to save you from it";
page++;
//Page 5
daroach_speaker[page] = 2;
daroach_text[page] = "HOOH";
page++;
//Page 6
daroach_speaker[page] = 3;
daroach_text[page] = "oh no";
page++;
//Page 7
daroach_speaker[page] = 3;
daroach_text[page] = "its posessing him";
page++;

// dang an ronpa 
guiltySprite = sprite_get("owen_trial")

// resort
resort_portrait = sprite_get("owen_resort")

//fire support
fire_taunt = sprite_get("owen_fire"); // funny t-pose that i totally didn't steal from the original mod
fire_taunt_duration = 26; // this variable does something now
fire_taunt_frames = 1; // the exact same as owen's t-pose
fire_taunt_sound = sound_get("sm64_mario_hoo_earrape_quiet");
fire_taunt_sound_frame = 1;

// fake moonchild support
childsupport = sound_get("mchildsong");

// break the targets code - p1
get_btt_data = false;

// undertale stage compatibility
battle_text = "*Wait a second... that's not Gordon Freeman!";

// offical rune support
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

// demopan
object = sprite_get("owen_demopan"); // this is a horrible variable name

// wall-e
walle_taunt_sound = sound_get("owen_mew"); // it's not like this support works properly anyway
walle_taunt_type = [1]; // music file

// mt dedede stage compatiblity init
arena_title = "Funny Cat";

// toon link support
toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo2 = 0;

// greenflower
gfzsignspr = sprite_get("owen_gfz");

// trad fighetr
superTrue = 0;
superMove = 14;

// final smash support
fs_char_portrait_y = 96;
fs_char_chosen_final_smash = "custom";
fs_char_attack_index = AT_DSPECIAL_2;


// date girl / callie
// note: oh no
// Date Girl Support
	Chatting = true; 									// Determines if the player is a workshop character

	DG_portrait = sprite_get("owen_dg"); 			// .png strip of your character portraits
	var DG_page = 0; 									// The current page of dialogue - Always set this to 0 

	
// Page 0
	DG_page = 0;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;
	
	// Dialogue of the character on the Right Side
    DG_right_speaker[DG_page] = true;
    DG_dialogue_right[DG_page] = "Hello!";

	// Dialogue of the character on the Left Side
	
	DG_dialogue[DG_page] = "";
	

	DG_nextindex[DG_page] = 1; 
	
	
// Page 1
	DG_page = 1;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;
	
	// Dialogue of the character on the Right Side
    DG_right_speaker[DG_page] = false;
    DG_dialogue_right[DG_page] = "";

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "hi";

	DG_nextindex[DG_page] = 2; 
	
	
// Page 2
	DG_page = 2;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;
	
	// Dialogue of the character on the Right Side
    DG_right_speaker[DG_page] = true;
    DG_dialogue_right[DG_page] = "Do you mind telling me a bit about yourself?";

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "";

	DG_nextindex[DG_page] = 3; 
	
	
// Page 3
	DG_page = 3;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;
	
	// Dialogue of the character on the Right Side
    DG_right_speaker[DG_page] = false;
    DG_dialogue_right[DG_page] = "";

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "not at all";

	DG_nextindex[DG_page] = 4; 
	
// Page 4
	DG_page = 4;
	DG_chat_type[DG_page] = 1;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;
	
	// Dialogue of the character on the Right Side
    DG_right_speaker[DG_page] = false;
    DG_dialogue_right[DG_page] = "";

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "what do you want to ask me?";

	DG_options[DG_page] =  "Where do you come from?
							Why are you here?
							r (Ends Dialogue)";	

	DG_answers[DG_page] = [101, 201, 301]; 		
	
	
// Page 101 (option 1)
	DG_page = 101;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;
	
	// Dialogue of the character on the Right Side
    DG_right_speaker[DG_page] = false;
    DG_dialogue_right[DG_page] = "";

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "well, i come from this place called 'meta construct'.";
	

	DG_nextindex[DG_page] = 102; 
	
// Page 102 (option 1)
	DG_page = 102;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;
	
	// Dialogue of the character on the Right Side
    DG_right_speaker[DG_page] = true;
    DG_dialogue_right[DG_page] = "I never been to that place! What is it?";

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "";
	

	DG_nextindex[DG_page] = 103; 
	
// Page 103 (option 1)
	DG_page = 103;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;
	
	// Dialogue of the character on the Right Side
    DG_right_speaker[DG_page] = false;
    DG_dialogue_right[DG_page] = "";

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "its a map in the game called garry mod :)))";
	

	DG_nextindex[DG_page] = 4; 
	
// Page 201 (option 2)
	DG_page = 201;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;
	
	// Dialogue of the character on the Right Side
    DG_right_speaker[DG_page] = false;
    DG_dialogue_right[DG_page] = "";

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "i like to visit different places";
	

	DG_nextindex[DG_page] = 202; 
	
// Page 202 (option 2)
	DG_page = 202;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;
	
	// Dialogue of the character on the Right Side
    DG_right_speaker[DG_page] = false;
    DG_dialogue_right[DG_page] = "";

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "it seems like a lot of people like to pvp here";
	

	DG_nextindex[DG_page] = 4; 
	
// Page 301 (option 3)
	DG_page = 301;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;
	
	// Dialogue of the character on the Right Side
    DG_right_speaker[DG_page] = true;
    DG_dialogue_right[DG_page] = "Why is there a sign floating behind you?";

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "";
	

	DG_nextindex[DG_page] = 302; 
	
// Page 302 (option 3)
	DG_page = 302;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;
	
	// Dialogue of the character on the Right Side
    DG_right_speaker[DG_page] = false;
    DG_dialogue_right[DG_page] = "";

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "that is r
							he doesn't talk much but he's nice when you get to know him";
	

	DG_nextindex[DG_page] = 303; 
	
// Page 303 (option 3)
	DG_page = 303;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 1; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;
	
	// Dialogue of the character on the Right Side
    DG_right_speaker[DG_page] = false;
    DG_dialogue_right[DG_page] = "";

	// Dialogue of the character on the Left Side
	
	DG_dialogue[DG_page] = "r";
	

	DG_nextindex[DG_page] = 5; 
	
// Page 5
	DG_page = 5;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;
	
	// Dialogue of the character on the Right Side
    DG_right_speaker[DG_page] = true;
    DG_dialogue_right[DG_page] = "Thank you for answering! Those were all my questions.";

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "";
	

	DG_nextindex[DG_page] = 6; 
	
// Page 6
	DG_page = 6;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;
	
	// Dialogue of the character on the Right Side
    DG_right_speaker[DG_page] = false;
    DG_dialogue_right[DG_page] = "";

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "awesome. what happens now?";
	

	DG_nextindex[DG_page] = 7; 
	
// Page 7
	DG_page = 7;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;
	
	// Dialogue of the character on the Right Side
    DG_right_speaker[DG_page] = true;
    DG_dialogue_right[DG_page] = "We fight eachother.";

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "";
	

	DG_nextindex[DG_page] = 8; 
	
	
// Page 8
	DG_page = 8;
	DG_chat_type[DG_page] = 3;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;
	
	// Dialogue of the character on the Right Side
    DG_right_speaker[DG_page] = false;
    DG_dialogue_right[DG_page] = "";

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "oh";
	
	
// they never end

// dr wily stage
wily_robotmaster_img = sprite_get("owen_wily");

// pacman support
Namco_Taunt = sprite_get("owen_pacman");
Namco_Taunt_Sound = sound_get("vineboom")

// dialogue buddy support
// (it's in update.gml)
//diag_portrait=sprite_get(""); // This will allow you to put any custom portrait onto the dialogue buddy!

// munophone touch support
	muno_event_type = 0;
	user_event(14);

// pit support
user_event(7);
