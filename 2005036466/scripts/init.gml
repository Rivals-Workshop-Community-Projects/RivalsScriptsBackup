//Custom Variables
lit_jab = false;
lit_tilt = false;
lit_strong = false;
lit_special = false;
all_light_timer = 0;
grabbedid = noone;

// moll.o
wearing_hat = (get_player_color(player) == 6 && get_match_setting(SET_SEASON) == 3);
fx_sprites[1] = hit_fx_create(sprite_get("halloweencostumetoss"), 30)

//
guiltySprite = sprite_get("guiltySprite");

// Baby Mode.
babymode = 0;

//this is ENTIRELY for testing purposes.
burst_free = false;

light1 = 0; // Jab light
light2 = 0; // Tilt light
light3 = 0; // Strong light
light4 = 0; // Special Light

//For blur VFX purposes.
cur_attack = 0;
prev_attack = 0;
cancel_color = c_red;
cancelable_active = false;
cancel_effect_timer = 0;

blur = array_create(20);

//Basic movement shtuff.
hurtbox_spr = sprite_get("penny_hurt");
crouchbox_spr = sprite_get("pennycrouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .175;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 6.75;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .45;
moonwalk_accel = 1.2;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 7;
djump_speed = 10.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .65; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = .95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 5; //normal landing frames
prat_land_time = 7;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .11; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 5;
crouch_active_frames = 1;
crouch_recovery_frames = 3;

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
air_dodge_startup_frames = 2;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
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

//Colours
resetcolours = 1;
hue = 0;

cancel_ready_tier1 = 0;
cancel_ready_tier2 = 0;
cancel_ready_tier3 = 0;

// Stage Stuff
stagedata_stuff = get_stage_data( SD_ID );
shadowloxo = false;

// Otto Support
otto_bobblehead_sprite = sprite_get("penny_bobblehead");

//TCO Support
if (get_player_color( player ) == 1){
  tcoart = sprite_get("tcoartthankyou");
}
else if (get_player_color( player ) == 2){
  tcoart = sprite_get("tcoartruby");
}
else if (get_player_color( player ) == 5){
  tcoart = sprite_get("tcoartthanks");
}
else if (get_player_color( player ) == 4){
  tcoart = sprite_get("tcoartjustin");
}
else if (get_player_color( player ) == 10){
  tcoart = sprite_get("tcoartyang");
}
else if (get_player_color( player ) == 11){
  tcoart = sprite_get("tcoartrivals");
}
else if (get_player_color( player ) == 12){
  tcoart = sprite_get("tcoartcrush");
}
else if (get_player_color( player ) == 13){
  tcoart = sprite_get("tcoartbestfriends");
}
else if (get_player_color( player ) == 14){
  tcoart = sprite_get("tcoartkaiba");
}
else if (get_player_color( player ) == 15){
  tcoart = sprite_get("tcoartlove");
} else {
  tcoart = sprite_get("tcoart");
}

// Arena Text
arena_title = "The Combo Companion";

// Battle Text
battle_text = "* A doggo blocks the way!";
battle_text2 = " ";
battle_text3 = " ";

//Hikaru
Hikaru_Title = "Hoodie Pupper";

//Miiverse
miiverse_post = sprite_get("pennymiiverseruby");
miiverse_post2 = sprite_get("pennymiiversecursed");
miiverse_post3 = sprite_get("pennymiiversegotem");

// Toon Lonk
toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo_TL = 8;

//this var makes f5 not break the buddy if developing with more than one
//workshop character or buddy in the match
//abyss_devmode = true;
//
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
ab_hud_x = 0;
ab_hud_y = 0;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Are You Okay?"]);
//example rune definition:
//abyssMods[@ runes.A] = [3,"Ground speed is faster."];
abyssMods[@ runes.A] = [-1, "REDACTED"];
abyssMods[@ runes.B] = [2, "Jab 2, Jab 3, and Tilts can now all be dash cancelled."];
abyssMods[@ runes.C] = [3, "DSpecial has less startup."];
abyssMods[@ runes.D] = [3, "Marvel Mode."];//
abyssMods[@ runes.E] = [3, "Penny's speed now matches Terry."];
abyssMods[@ runes.F] = [3, "Penny's weight now matches Terry."];

abyssMods[@ runes.G] = [1, "NSpecial now has flinching."];//
abyssMods[@ runes.H] = [2, "Aerials now cancel into other aerials and can be jump cancelled."];//
abyssMods[@ runes.I] = [2, "Strongs can now be cancelled into aerials."];//
abyssMods[@ runes.J] = [3, "FSpecial now goes twice the distance it should."];
abyssMods[@ runes.K] = [3, "DSpecial is now replaced with Footdive."];

abyssMods[@ runes.L] = [2, "You can now dash cancel all strongs and specials."];//
abyssMods[@ runes.M] = [2, "When you hit FSpecial, your double jump refreshes."];
abyssMods[@ runes.N] = [-1, "REDACTED"];
abyssMods[@ runes.O] = [-1, "REDACTED"];


//Sets the variables runeA, runeB, etc according to whether or not that rune was selected

var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];

for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
    variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}


xfactor_lvl = 0;
xfactor_timer = 0;
xfactor_timelimit = -1;
xfactor_is_active = false;
xfactor_used = false;
trumarvel = false; //YO YOU WANNA LEARN HOW TO DO A FUCKIN' INFINITE

// Trummel
trummelcodecneeded = false;
trummelcodec_id = noone;
page = 0;

// Codec

codecbg_timer = 0;
bwoop_timer = 0;
animate = 0; // DO NOT TOUCH
animate_lipflaps = 0;
animate_blink = 0;
codectimerbs = 0;

// These animate the sprites
blink = 0;
lipflaps = 0;
lipflaps2 = 0;

codec_visible = 0;
codec_active = 0; // set to 1 if it's on, 2 means it's active, set to 3 turn it off.
bwoop_visible = 0;
faces_visible = false;
begin_speaking = false;

// Actually important shit for codecs
penny_speaker = 0; // 0 means nobody, 1 means Penny, 2 means speaker 2

// Codec Information
panel = 0;
maxpanels = 0;
speaker1 = "penny";
speaker2 = "forza";              //Options are: Forza, Static, Aigis, and Hime
subject = 0;
subjects = [];
codec_panels = [];

//opponentsurl = 0;

knockout = false;

// Codec Text, it's temporary.
num_players = 0;
with (asset_get("oPlayer")){
    other.num_players++;
}

// Training Lab Support
practice = false;               //Whether you're in Practice Mode or not.
is_ai = false;
timer1 = get_game_timer();      //The initial game timer.
timer2 = 0;                     //The game timer after a couple seconds pass.

set_victory_theme( sound_get( "penny_victory" ) );

/*
codectext = "Hello, hello? Uh, I wanted to record a message for you to help you get settled in on your first night. Um, I actually worked in that office before you. I'm finishing up my last week now, as a matter of fact. So, I know it can be a bit overwhelming, but I'm here to tell you there's nothing to worry about. Uh, you'll do fine. So, let's just focus on getting you through your first week. Okay? Uh, let's see, first there's an introductory greeting from the company that I'm supposed to read. Uh, it's kind of a legal thing, you know. Um, Welcome to Freddy Fazbear's Pizza. A magical place for kids and grown-ups alike, where fantasy and fun come to life. Fazbear Entertainment is not responsible for damage to property or person. Upon discovering that damage or death has occurred, a missing person report will be filed within 90 days, or as soon property and premises have been thoroughly cleaned and bleached, and the carpets have been replaced. Blah blah blah, now that might sound bad, I know, but there's really nothing to worry about. Uh, the animatronic characters here do get a bit quirky at night, but do I blame them? No. If I were forced to sing those same stupid songs for twenty years and I never got a bath? I'd probably be a bit irritable at night too. So, remember, these characters hold a special place in the hearts of children and we need to show them a little respect, right? Okay. So, just be aware, the characters do tend to wander a bit. Uh, they're left in some kind of free roaming mode at night. Uh...Something about their servos locking up if they get turned off for too long. Uh, they used to be allowed to walk around during the day too. But then there was The Bite of '87. Yeah. I-It's amazing that the human body can live without the frontal lobe, you know? Uh, now concerning your safety, the only real risk to you as a night watchman here, if any, is the fact that these characters, uh, if they happen to see you after hours probably won't recognize you as a person. They'll p-most likely see you as a metal endoskeleton without its costume on. Now since that's against the rules here at Freddy Fazbear's Pizza, they'll probably try to...forcefully stuff you inside a Freddy Fazbear suit. Um, now, that wouldn't be so bad if the suits themselves weren't filled with crossbeams, wires, and animatronic devices, especially around the facial area. So, you could imagine how having your head forcefully pressed inside one of those could cause a bit of discomfort...and death. Uh, the only parts of you that would likely see the light of day again would be your eyeballs and teeth when they pop out the front of the mask, heh. Y-Yeah, they don't tell you these things when you sign up. But hey, first day should be a breeze. I'll chat with you tomorrow. Uh, check those cameras, and remember to close the doors only if absolutely necessary. Gotta conserve power. Alright, good night."
*/

codectext = "If this is displaying, the text system has broken."

instance_create(x, y, "obj_article1");
