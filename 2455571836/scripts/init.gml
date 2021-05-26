//The Last Resort
resort_portrait = sprite_get("sal_portrait")

//Boxing Ring
boxing_title = "The Frozen Kitten";

//King Dedede's Arena
arena_title = "The Cold Adventurer";

//Pokemon Stadium //Thanks TheBlackHex for the front graphic
pkmn_stadium_front_img = sprite_get("glace_stadiumfront");
pkmn_stadium_back_img = sprite_get("glace_stadiumback");
pkmn_stadium_name_override = "Glace";

//Miiverse
miiverse_post = sprite_get("glacemv");

//Wily Castle
wily_robotmaster_img = sprite_get("glace_robotmaster");

//Green Flower
gfzsignspr = sprite_get("glace_signpost");

//Soulbound Conflict
battle_text = "* Nya.";

//Trial Grounds
guiltySprite = sprite_get("glacedr")

//Kirby
kirbyability = 16;
swallowed = 0

//Toon Link
toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo2 = 4;

//PAC-MAN
Namco_Taunt = sprite_get("glace_namco")
Namco_Taunt_Sound = sound_get("glace_appeal")

//Steve
steve_death_message = "Steve was scratched by Glace.";

//Agent N
nname = "Glace"

ncode1 = "An ice-type cat who likes to adventure."
ncode2 = "Capable of using ice powers and her scarf for attacks."
ncode3 = "Doesn't like wearing clothing...?"

//The Chosen One
tcoart = sprite_get("glacetcoart");

//Feri
feri_costume = sprite_get("feri_costume_glace");

//Hikaru
Hikaru_Title = "Hikaru, the clothed furry!";

//Amber
plushForAmber = sprite_get("glace_amber_doll")

//Abyss Hime
abyssHime_deathspr = sprite_get("glace_sliced");

//Dracula
		dracula_portrait = sprite_get("glace_dracula_portrait");
		dracula_portrait2 = sprite_get("glace_dracula_portrait");
		dracula_portrait3 = sprite_get("glace_dracula_portrait");
		var page = 0;
		
		dracula_speaker[page] = 0;
		dracula_text[page] = "Who dares let a cat into my lair?";
		page++;
		
		dracula_speaker[page] = 1;
		dracula_text[page] = "Nya~!";
		page++;
		
		dracula_speaker[page] = 0;
		dracula_text[page] = "[shake] ...That power! You are not a normal feline afterall!";
		page++;
		
		dracula_speaker[page] = 1;
		dracula_text[page] = "Can we get onto the fight already? I'm starved.";
		page++;
		
		dracula_speaker[page] = 0;
		dracula_text[page] = "Whatever you are [glass], I shall end your life!";
		page++;
		
//Daroach
		daroach_portrait = sprite_get("glace_dracula_portrait");
		daroach_portrait2 = asset_get("glace_dracula_portrait");
		daroach_portrait3 = asset_get("glace_dracula_portrait");
		var page = 0;
		
		daroach_speaker[page] = 0;
		daroach_text[page] = "Squeak.";
		page++;
		
		daroach_speaker[page] = 1;
		daroach_text[page] = "Nya.";
		page++;
		
		daroach_speaker[page] = 0;
		daroach_text[page] = "...So you got any treasure?";
		page++;
		
		daroach_speaker[page] = 1;
		daroach_text[page] = "No, do I look like I could be carrying anything?";
		page++;
		
		daroach_speaker[page] = 0;
		daroach_text[page] = "...Good point, but I still wanna fight you anyways.";
		page++;
		
		daroach_speaker[page] = 1;
		daroach_text[page] = "Okay, but make it quick!";
		page++;
		
//Amber
amber_herObj = noone; //The object ID of Amber when she hugs. Amber's own script will set this when the hug is inititated
amber_thisHugSprite = sprite_get("glace_hug");
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

//Assist Buddy
assistAttack = AT_DSPECIAL; //The attack to use as the assist
assistOffsetX = 69; //The horizontal distance they spawn from the player
assistOffsetY = 32; //The vertical distance they spawn from the player
assistVelX = 4; //The horizontal velocity applied when the assist is called
assistVelY = 0; //The vertical velocity applied when the assist is called
assistGroundOnly = false; //Whether or not they are forced to the ground
assistFloat = true; //Whether or not they stay in place vertically
assistCool = 240; //The time it takes for the assist to recharge

//Final Smash
fs_portrait_x = 31;
fs_char_portrait_y = 69;
fs_char_chosen_final_smash = "custom";

//glace_Freeze = false;

set_victory_theme( sound_get( "glace_victory" ) );
set_victory_bg( sprite_get( "glace_victory_bg" ));

hurtbox_spr = sprite_get("glace_hurt_box");
crouchbox_spr = sprite_get("glace_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .125;
walk_anim_speed = .11;
dash_anim_speed = .15;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 10;
initial_dash_time = 0;
initial_dash_speed = 10;
dash_speed = 5.5;
dash_turn_time = 5.5;
dash_turn_accel = 0.4;
dash_stop_time = 20;
dash_stop_percent = .02; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .2;
moonwalk_accel = 2;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 8;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .72;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 4;
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

land_sound = sound_get("glace_land");
landing_lag_sound = sound_get("glace_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("glace_jump");
djump_sound = sound_get("glace_double_jump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

user_event(14);