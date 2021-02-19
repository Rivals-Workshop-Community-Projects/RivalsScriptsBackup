hurtbox_spr = sprite_get("standinghurtbox");
crouchbox_spr = sprite_get("crouchhurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .12;
crouch_anim_speed = .075;
walk_anim_speed = .20;
dash_anim_speed = .17;
pratfall_anim_speed = 0.05;

// Kirby Functionality
kirbyability = 16;
swallowed = 0;
newicon = 0;
enemykirby = noone;

//fspecial boost
fspec_boost = 0;

//Steve Death
steve_death_message = "Steve melted.";

//puddle bounce
bouncecounter = 0;

//airdodge cooldown
airDodgeGone = false;

//Trial Grounds
guiltySprite = sprite_get("guilty");

//Exeticide
grabtimer = 0;

//Feri Costume
feri_costume = sprite_get("feri_costume_exetior");

//Toon Link Photo
toonlink_photo = sprite_get("exetior_photo");
toonlink_photo2 = 4;

//Amber Plush
plushForAmber = sprite_get("exetior_plush");

//Amber interaction variables
amber_herObj = noone; //The object ID of Amber when she hugs. Amber's own script will set this when the hug is inititated
amber_thisHugSprite = sprite_get("exetior_hug");
amber_herHugSprite = sprite_get("amber_hug");
amber_startHug = false; //This variable is set true from Amber's scripts
amber_thisSpriteInFront = false; //When true, this character's sprite is rendered over Amber's sprite
amber_autoTurnToHer = true; //This character will automatically face towards Amber upon hug activatation when true

amber_hugStartPos[0] = 42; //The x target offset point (from Amber's pos) where the player should hug Amber at. 
amber_hugStartPos[1] = 0; //The y target offset point. Recommended to keep this at 0 for grounded interaction

amber_hugExitPos[0] = 42; //The x target offset point (from Amber's pos) where the player stands at when exiting hug state.
amber_hugExitPos[1] = 0; //The y target offset point.

//The x target offset positions will inherit the character's spr_dir when this is true.
//Set this to true for character interactions that face toward each other such as hugging
//Set this to false for centered interaction animations
amber_useSprDirOffset = true; 

amber_hugExitTimer = 30; //How many frames should pass before either player can exit the hug window loop
amber_hugExitWindow = 3; //The window to jump to when either player presses a button to exit hug loop

//Hikaru Title
Hikaru_Title = "Magmatic Juggernaut"

//Last Resort Portrait
resort_portrait = sprite_get("dean");

//Agent N Codec
ncode1 = "Mt. Yaroast's Guardian."
ncode2 = "A lava hedgehog that was exiled from Fire Capitol."
ncode3 = "Rumors hint to a connection with Iblis. Caution is advised."

//Command Grabs
grabbedid = noone;

//Up Special
launch_timer = 0;

//Neutral Special
charge_gauge = 0;
weak_charge = 0;
normal_charge = 0;
strong_charge = 0;

walk_speed = 3.00;
walk_accel = 0.50;
walk_turn_time = 8;
initial_dash_time = 12;
initial_dash_speed = 6;
dash_speed = 5.5;
dash_turn_time = 10;
dash_turn_accel = 1.0;
dash_stop_time = 4;
dash_stop_percent = .80; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.60;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 8;
djump_speed = 10.5;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.3;
prat_fall_accel = 0.7; //multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = 0.6;
hitstun_grav = .53;
knockback_adj = .9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 3;
wave_land_time = 13;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.3; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 7;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 2;
dodge_recovery_frames = 6;

//tech animation frames
tech_active_frames = 6;
tech_recovery_frames = 4;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 4;
techroll_recovery_frames = 3;
techroll_speed = 9.5;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 9;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 3;
roll_forward_max = 9.5; //roll speed
roll_backward_max = 9.5;

land_sound = sound_get("sfx_land");
landing_lag_sound = sound_get("sfx_land");
waveland_sound = sound_get("sfx_waveland");
jump_sound = sound_get("sfx_jump");
djump_sound = sound_get("sfx_djump");
air_dodge_sound = sound_get("sfx_airdodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 10;

introTimer = -4;
introTimer2 = 0;

otto_bobblehead_sprite = sprite_get("exetior_bobble");

trummelcodecneeded = false;
trummelcodec_id = noone;

tcoart = sprite_get("exetior_tco");

m_lava = noone;

//Dracula support
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = sprite_get("dracula_portrait2");
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "What's this? The guardian of the volcano is here to visit me? The gall of this little red rodent.";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "Hmph. How kind of you to welcome me in such a manner. I can see you don't get guests all that much.";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "I think you have me misunderstood, hedgehog. [glass] You AREN'T welcome here. So I suggest you take your leave, if you know what's good for you.";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "I'm not goin' anywhere, mate. [shake] [taunt] Oi believe I need to teach you some manners first.";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "Bah! You dare challenge me, you miserable little pest? I should just suck out all your blood right here and now!";
page++;

//Page 5
dracula_speaker[page] = 2;
dracula_text[page] = "Heh. Yeah. Good luck with that, wanker.";
page++;

battle_text = "* down throw down throw down throw";
battle_text2 = "* down throw down throw down throw";
battle_text3 = "* down throw down throw down throw";
arena_title = "The Might of the Embers";

//Daroach support
daroach_portrait = sprite_get("dracula_portrait");
daroach_portrait2 = sprite_get("dracula_portrait2");
var page = 0;

//Page 0
daroach_speaker[page] = 0;
daroach_text[page] = "Well, isn't it the fabled guardian of the mountain. It's a pleasure to have you onboard.";
page++;

//Page 1
daroach_speaker[page] = 1;
daroach_text[page] = "Save the pety, mate. Why are you here?";
page++;

//Page 2
daroach_speaker[page] = 0;
daroach_text[page] = "Ah, well, I noticed you've had a lack of company and decided to drop by. Figured you'd provide some nice hospitality.";
page++;

//Page 3
daroach_speaker[page] = 1;
daroach_text[page] = "Likely story, bloke. Tell me why you're REALLY here. It's because of Mt. Yaroast, ain't it.";
page++;

//Page 4
daroach_speaker[page] = 0;
daroach_text[page] = "Why yes, the volcano you guard is quite magnificent, I didn't really expect anyone to be guarding it in the first place.";
page++;

//Page 5
daroach_speaker[page] = 1;
daroach_text[page] = "...";
page++;

//Page 6
daroach_speaker[page] = 0;
daroach_text[page] = "I've also heard from some reliable sources that this volcano hasn't erupted in decades, so I thought I must simply see it for myself-";
page++;

//Page 7
daroach_speaker[page] = 1;
daroach_text[page] = "I'm not letting you anywhere near the volcano, wanker. I know your kind, and I won't let you take advantage of me that easily.";
page++;

//Page 8
daroach_speaker[page] = 0;
daroach_text[page] = "Ah, what a shame. Seems like I'll have to take a closer look at it by force. Nobody keeps the leader of the Squeak Squad from getting what he wants!";
page++;

//Page 9
daroach_speaker[page] = 2;
daroach_text[page] = "I'd like to see you try, ya little twat.";
page++;

//Abyss Runes
if has_rune("A") {
max_djumps = 2;
} else {
max_djumps = 1;
}

if has_rune("G") {
wave_land_adj = 1.3;
wave_friction = 0.1;
} else {
wave_land_adj = 1.2;
wave_friction = 0.3;
}

//MunoPhone
user_event(14);