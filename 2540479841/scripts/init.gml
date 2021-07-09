hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .11;
crouch_anim_speed = .5;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .125;

walk_speed = 3;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 7;
initial_dash_speed = 6;
dash_speed = 5.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12
short_hop_speed = 8;
djump_speed = 11
leave_ground_max = 8 //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .6;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .07; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 4;
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
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("WarioLand"); //asset_get("sfx_land_med");
landing_lag_sound = sound_get("WarioLand"); //asset_get("sfx_land");
waveland_sound = sound_get("WarioLand"); //asset_get("sfx_waveland_zet");

jump_sound = sound_get("WarioJumpSFX");
djump_sound = sound_get("WarioDJumpSFX");
air_dodge_sound = asset_get("sfx_quick_dodge");

set_victory_theme(sound_get("wariowin"));
set_victory_bg(sprite_get("wariowin_bg"));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


//Wario specific
dairbounce = false; //DAIR BOUNCES OFF THE GROUND

shoulderbashair = false;
fspecial_hit = false;

waft_timer = 0; //How many frames Waft is in its countdown
waft_stage = 0; //The numerical value for Waft's type (empty, half, full)
waft_addition = 1; //How much is added to the waft counter each frame
used_up_waft = false; //Whether Waft has been used up; needed due to coding conflicts in changing DSpecial mid-attack
using_waft = false; //Works with Used_Up_Waft to determine if Waft has been all the way completed
waft_meter_sprite = sprite_get("waftmeter_none");
wario_game_timer = 0;

coin_punch = hit_fx_create( sprite_get( "coin" ), 20 );

//init.gml
grabbed_player_obj = noone;    //the player object currently being grabbed.
uspecial_2_hold = 32 * spr_dir;

//Voice Sounds
voice_lines = true;

jump_voice = sound_get("SFXVoiceJump1");
djump_voice = sound_get("SFXVoiceJump2");

death_voice = sound_get("SFXVoiceDeath1");
parry_voice = sound_get("SFXVoiceParrySuccess");
parried_voice = sound_get("SFXVoiceParryFailure");
taunt_voice = sound_get("SFXVoiceTaunt");

ftilt_voice = sound_get("SFXVoiceFTilt");
utilt_voice = sound_get("SFXVoiceUTilt");
dtilt_voice = sound_get("SFXVoiceDTilt");

fstrong_voice = sound_get("SFXVoiceFStrong");
dstrong_voice = sound_get("SFXVoiceDStrong");

nspecial_voice = sound_get("SFXVoiceNSpecial");
uspecial_voice = sound_get("SFXVoiceUSpecial");
fspecial_voice = sound_get("SFXVoiceFSpecial1");

//Character Compatibility: The Chosen One
tcoart = sprite_get("wariotco");

//Character Compatibility: Kirby
kirbyability = 16;
swallowed = 0;

//Character Compatibility: Toon Link
toonlink_photo = sprite_get("wario_pictograph");
toonlink_photo2 = sprite_get("toonlink_pictograph");

//Stage Compatibility: Dedede's Arena
arena_title = "The Diabolical Doppelganger";

//Stage Compatibility: Pokemon Stadium
pkmn_stadium_front_img = sprite_get("wario_front_sprite");
pkmn_stadium_back_img = sprite_get("wario_back_sprite");
pkmn_stadium_name_override = "Wario";

//Stage Compatibility: Miiverse
miiverse_post = sprite_get("wario_miiverse");

//Stage Compatibility: Green Flower Zone
gfzsignspr = sprite_get("WarioSignpost");

//Stage Compatibility: The Last Resort
resort_portrait = sprite_get("wario_lastresort");

//Stage Compatibility: Dracula Boss Fight
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = sprite_get("dracula_portrait2");

var page = 0;

dracula_speaker[page] = 0;
dracula_text[page] = "What in the name-- You there! Who are you and how did you get here?!";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "I'm-a Wario, and I'm-a here for all the gold in this castle! So fork it over or else!";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "Do you even know who I am, foolish mortal?!";
page++;

dracula_speaker[page] = 2;
dracula_text[page] = "MORTAL?! Alllright, that's it! Get-a down here and put 'em up!";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "(Urgh... I can smell the stench of garlic from here...)";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "Fine, have it your way; Prepare for an eternity of suffering!";
page++;

//Stage Compatibility: Daroach boss fight

daroach_portrait = sprite_get("dracula_portrait");
daroach_portrait2 = asset_get("empty_sprite")
daroach_portrait3 = asset_get("empty_sprite")

var page = 0;

//Page 0
daroach_speaker[page] = 0;
daroach_text[page] = "What is this, now? I didn't order a plumber... So, traveller, who might you happen to be?";
page++;

//Page 1
daroach_speaker[page] = 1;
daroach_text[page] = "Enough with the flavor text, Mickey! I heard there's-a gold in this ship, and it's-a gonna be MINE!";
page++;

//Page 2
daroach_speaker[page] = 0;
daroach_text[page] = "So, another treasure hunter, after my treasure I see? Then prepare yourself, and pray you're a fellow fighter as well!";
page++;

//Page 3
daroach_speaker[page] = 0;
daroach_text[page] = "Squeak Squad, attack!!";
page++;