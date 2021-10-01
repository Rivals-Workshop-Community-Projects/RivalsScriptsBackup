//Hello, curious one!
//Heartbrake developed by Trail Mix, with major coding assistance from Delta Parallax.

//Check out Seeds of Aether, a workshop development group that Delta Parallax is involved in! https://discord.gg/U3xSFXp
//Or check out my other stuff on Workshop! You can find it from the Workshop page you downloaded this character from, or check out my server, 
//The Mix-Up, to stay up-to-date on what I'm developing. https://discord.gg/ezkZ9rGB2A

//Also, don't forget to visit the Rivals of Aether Extended Workshop discord server!

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = sprite_get("heartbrakecrouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 54;
idle_anim_speed = .18;
crouch_anim_speed = .1;
walk_anim_speed = .18;
dash_anim_speed = .22;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = 8;
dash_speed = 8;
dash_turn_time = 14;
dash_turn_accel = 1.0;
dash_stop_time = 9;
dash_stop_percent = .4; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .3;
moonwalk_accel = 1.55;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7;
djump_speed = 10;
leave_ground_max = 5.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2; 
prat_fall_accel = 1.2; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 20; //the number of frames to play the djump animation. Can't be less than 31.
wall_frames = 2;
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 8;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 15;
wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.3; //grounded deceleration when wavelanding

set_victory_theme(sound_get("victory")); //Victory theme

//heartbrake specific variables

fspecial_cooldown = 45; //cooldown for fspecial. timer starts on move end, not on move start.

brake_timer = 0; //used for mid-attack air brakes
air_timer = 0; //used for determining whether she has been in the air long enough to brake
has_brake = 1; //determines if heartbrake has used her brake already
can_brake = 1; //determines if heartbrake currently meets the requirements to preform a brake

vbrake_timer = 0; //used specifically for heartbrake's infinite vbrakes cheat

uspecial_loops = 0; //the amount of times that uspecial's spin hitbox has looped
uspecial_max_loops = 6; //the amount of times that uspecial's spin hitbox WILL loop

////DEBUG MODE!

//Whether one can activate Debug Mode in this build.
heartDebugTriggerable = false;

//Whether Debug Mode is active or not.
heartDebug = false;

heartDebugTimer = [0,20];

//COMPATIBILITY

//Turns compatibility off and on
heartbrakeCompatibility = false;

//Sprites to use
heartbrakeSprites = [sprite_get("heart_ditto"), sprite_get("heartlefthalf_ditto"), sprite_get("heartrighthalf_ditto"), sprite_get("chainlinks_ditto"), sprite_get("heartappear")]

//entranceFrames: how long it takes for the heart to come in
entranceFrames = 3

//heartAnimSpeed: how fast the heart sprite animates
heartAnimSpeed = .4

//heartChainNumber: how many chains should be drawn
heartChainCount = 10

//DAIR fast-fall stuff 
//By: Delta Parallax

//dairFastFall: whether you fast fell 
dairFastFall = false;

//dairMultiplier: multplier to startup and endlag
dairMultiplier = [.9, .95]

//NSPECIAL GRAB FUNCTIONALITY (INIT)
//Edited by: Delta Parallax

//This is stuff for nspecial_pcol.
var cur, slot;
cur = get_player_color(player)
slot = 1

//nspecial_timer: Timer for the move.
nspecial_timer = 0;

//nspecial_ease_timer: Timer to bring the opponent in + the time to ease the opponent into the center of the grab at the beginning
nspecial_ease_timer = [0, 10];

//nspecial_slide_timer: Timer for the slide motion.
nspecial_slide_timer = 0;

//nspecial_max_slide: The time it takes for the ease to complete. First is backward (second hit), second is forwards
nspecial_max_slide = [15,20];

//nspecial_bslide_timer: Timer for the second backwards grab motion.
nspecial_bslide_timer = 0;

//nspecial_pos: The start coordinates of the opponent when grabbed.
nspecial_pos = [];

//nspecial_hdisp: Horizontal displacement of the slide. First is backwards motion 1, second is backwards motion 2, third is forwards.
nspecial_hdisp = [-100, -80, 170];

//nspecial_vdisp: The vertical displacement of the slide, follows same order as above.
nspecial_vdisp = [0,0,0];

//nspecial_target: Who you grabbed during nspecial.
nspecial_target = noone;

//nspecial_particles: The particle array.
nspecial_particles = [];

//nspecial_pfrequency: Duration between afterimage spawns.
nspecial_pfrequency = 2;

//nspecial_poffset: Offset of the particles at the beginning.
nspecial_poffset = [0,0];

//nspecial_poffset_change: Every frame the offset (position) of a particle will change by this much.
nspecial_poffset_change = [0,0];

//nspecial_palpha: Starting alpha of a particle
nspecial_palpha = 0.7;

//nspecial_palpha: Change in alpha over time
nspecial_palpha_change = 0.1;

//nspecial_pcol: Color of the particles
nspecial_pcol = [get_color_profile_slot_r(cur, slot), get_color_profile_slot_g(cur, slot), get_color_profile_slot_b(cur, slot)];

//nspecial_pcol_change: Change in color over time.

//PRESET: No change
nspecial_pcol_change = [0,0,0]

//PRESET: Over the lifetime of the particle, linearly change color so that at the end of its lifetime it is at end_col.
// var lifetime, end_col;
// lifetime = abs(floor(nspecial_palpha / nspecial_palpha_change))

// end_col = [0,0,0]

// for (var i = 0; i < 3; i++)
// {
//     nspecial_pcol_change[i] = (end_col[i]-nspecial_pcol[i]) / lifetime
// }

////FSPECIAL stuff
fspecial_needles = []

////HEARTBREAK FUNCTIONALITY (INIT)
////By: Delta Parallax (Thank you so much!)

///PLAYER VARIABLES

//heartSprites: the sprite references for the heart, its parts, and the chain.
//The first element is the whole heart, the second and third are its left and right halves respectively, and the last is the chain.
heartSprites = [sprite_get("heart"), sprite_get("heartlefthalf"), sprite_get("heartrighthalf"), sprite_get("chainlinks"), sprite_get("heartappear")]

//heartSounds: the sounds that the heart makes.
heartSounds = [sound_get("sfx_heartbreak"), sound_get("sfx_heartreassemble")]

//heartChainNumber: the number of chains (- 1) that appear between the heart and the chained player. Adjust to your heart's content.
// heartChainNumber = 6
heartChainNumber = 6

//heartAttacks: an array of moves that will cause your opponent to become chained.
heartAttacks = [ AT_FSPECIAL, AT_FAIR, AT_BAIR, AT_USPECIAL, AT_UTILT ];

//heartAttackNumbers: an array of arrays of hitbox numbers corresponding to the attacks in heartAttacks. -1 means apply to all.
heartAttackNumbers = [ [-1], [2], [2], [2], [1] ]

//heartDetonationAttack: the move that will split the heart.
heartDetonationAttack = AT_DSPECIAL;

//heartChains: an array of all available heart objects.
heartChains = [];

//heartBreakInProgress: Whether a heart is breaking.
heartBreakInProgress = false;

///ARTICLE VARIABLES
//NOTE: to edit hitbox properties, go to extra_1.gml in the attacks folder.

//heartBreakRadius: the radius of the split.
heartBreakRadius = 60;

//heartBreakDelay: how long the article waits until coming back together.
heartBreakDelay = 300;

//heartReassembleDelay: how long the heart will last reassembled
heartReassembleDelay = 2;

//heartShakeMult: the multipler for the shake.
heartShakeMult = 3;

//heartDistanceThreshold: if the heart is this far from the opponent it will move towards them.
heartDistanceThreshold = 220;

//heartTension: A lower number means less tension on the heart.  
heartTension = (1/30)

//heartFriction: The friction when slowing down
// heartFriction = .5
heartFriction = .6

//heartLerpVal: Between 0 and 1. The lower this number is, the more smoothly (but slowly???) the heart will change direction.  
heartLerpVal = 0.07

//heartBreakMaxTimer: How long the break and the reformation take (respectively), in frames
heartBreakMaxTimer = [25, 15];

//heartBreakDetectSelf: Whether to detect yourself.
heartBreakDetectSelf = false;

//heartChainPlayer
heartChainPlayer = noone;

//heartParryTimer: timer used for parrystun
//heartParryAddition
// heartParryTimer = 0;
// heartParryAddition = 360;

//hit effects

hit_vbrake = hit_fx_create(sprite_get("vbrake"), 15);
hit_gbrake = hit_fx_create(sprite_get("groundbrake"), 15);
hit_vbraking = hit_fx_create(sprite_get("vbraking"), 8);

hit_weak_1 = hit_fx_create(sprite_get("hit_weak1"), 12);
hit_weak_2 = hit_fx_create(sprite_get("hit_weak2"), 12);
hit_utiltsweet = hit_fx_create(sprite_get("utiltsweet"), 18);
hit_bairsweet = hit_fx_create(sprite_get("bairsweet"), 18);
hit_fairsweet = hit_fx_create(sprite_get("fairsweet"), 18);
hit_uair = hit_fx_create(sprite_get("hit_uair"), 21);
hit_fstrong_sweet = hit_fx_create(sprite_get("hit_fstrong_sweet"), 21);
hit_fstrong_sour = hit_fx_create(sprite_get("hit_fstrong_sour"), 21);

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("hb_waveland");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Cosmetic/compatibility

//T&M codec
trummelcodecneeded = false;
trummelcodec_id = noone;

//Hikaru title
Hikaru_Title = "Heartstopper";

//Agent N Codec
ncode1 = "Powerful warrior. Plans to ''end love forever.''";
ncode2 = "Fights using emotion magic. Violent and irritable."
ncode3 = "Extremely agile. Don't let your guard down."

//Miiverse
miiverse_post = sprite_get("miiversepost");

//Date Dialogue

Chatting = true; 					// This tells Callie that the character has compatibility
DG_portrait = sprite_get("date_portrait"); 		// The .png strip of your character (Similar to a normal animation strip)
var DG_page = 0; 					// The current page number (Should start at 0) 

// ----------- Page 0 ----------------

DG_page = 0;
DG_chat_type[DG_page] = 1;          //type 1: choice box, type 2: goes to next page, type 3: ends dialogue, type 4: goes to right speaker

DG_adopts_color_left[DG_page] = true;  // If true, the left charactetr portrait will adopt the color alt of the character on screen
DG_adopts_color_right[DG_page] = true; // If true, the right character portrait will adopt the color alt of the character on screen

DG_left_strip[DG_page] = 0;  // The strip number of the sprite portrait for the left side of the visual
DG_right_strip[DG_page] = 0; // The strip number of the sprite portrait for the right side of the visual
							 // if DG_custom_[right/left]_portrait is false this will look at Callie's base cast portrait list
							 // You can see the list here:
							// Name:   Callie  'You'   Zetter   Orcane   Wrastor   Kragg   Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight   Sandbert   Siren   Empty_Sprite
							// Cases:     0      1       2        3         4        5        6         7        8      9      10      11      12         13        14           15            16	   17          18

DG_custom_left_portrait[DG_page] = true;  // If true, uses custom character portrait sprites on the left side
DG_custom_right_portrait[DG_page] = false; // If true, uses custom character portrait sprites on the right side

//DG_right_speaker = false;

DG_dialogue[DG_page] = "Oh.
						It's you.";
					
DG_options[DG_page] = "''Lily! Good to see you again!''
						''Hi, Heartbrake...''
						''...''";
						
DG_answers[DG_page] = [1, 3, 3]; 

// ----------- Page 1 ----------------

DG_page = 1;
DG_chat_type[DG_page] = 2;          //type 1: choice box, type 2: goes to next page, type 3: ends dialogue, type 4: goes to right speaker

DG_adopts_color_left[DG_page] = true;  // If true, the left charactetr portrait will adopt the color alt of the character on screen
DG_adopts_color_right[DG_page] = true; // If true, the right character portrait will adopt the color alt of the character on screen

DG_left_strip[DG_page] = 0;  // The strip number of the sprite portrait for the left side of the visual
DG_right_strip[DG_page] = 0; // The strip number of the sprite portrait for the right side of the visual
							 // if DG_custom_[right/left]_portrait is false this will look at Callie's base cast portrait list
							 // You can see the list here:
							// Name:   Callie  'You'   Zetter   Orcane   Wrastor   Kragg   Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight   Sandbert   Siren   Empty_Sprite
							// Cases:     0      1       2        3         4        5        6         7        8      9      10      11      12         13        14           15            16	   17          18

DG_custom_left_portrait[DG_page] = true;  // If true, uses custom character portrait sprites on the left side
DG_custom_right_portrait[DG_page] = false; // If true, uses custom character portrait sprites on the right side

DG_dialogue[DG_page] = "Don't call me that, 'Date Girl.'
						We're long past first names.";

DG_right_speaker[DG_page] = false;

DG_nextindex[DG_page] = 2;

// ----------- Page 2 ----------------

DG_page = 2;
DG_chat_type[DG_page] = 2;          //type 1: choice box, type 2: goes to next page, type 3: ends dialogue, type 4: goes to right speaker

DG_adopts_color_left[DG_page] = true;  // If true, the left charactetr portrait will adopt the color alt of the character on screen
DG_adopts_color_right[DG_page] = true; // If true, the right character portrait will adopt the color alt of the character on screen

DG_left_strip[DG_page] = 0;  // The strip number of the sprite portrait for the left side of the visual
DG_right_strip[DG_page] = 0; // The strip number of the sprite portrait for the right side of the visual
							 // if DG_custom_[right/left]_portrait is false this will look at Callie's base cast portrait list
							 // You can see the list here:
							// Name:   Callie  'You'   Zetter   Orcane   Wrastor   Kragg   Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight   Sandbert   Siren   Empty_Sprite
							// Cases:     0      1       2        3         4        5        6         7        8      9      10      11      12         13        14           15            16	   17          18

DG_custom_left_portrait[DG_page] = true;  // If true, uses custom character portrait sprites on the left side
DG_custom_right_portrait[DG_page] = false; // If true, uses custom character portrait sprites on the right side

DG_dialogue[DG_page] = "";

DG_right_speaker[DG_page] = true;
DG_dialogue_right[DG_page] = "Uh, right..."

DG_nextindex[DG_page] = 3;

// ----------- Page 3 ----------------

DG_page = 3;
DG_chat_type[DG_page] = 2;          //type 1: choice box, type 2: goes to next page, type 3: ends dialogue, type 4: goes to right speaker

DG_adopts_color_left[DG_page] = true;  // If true, the left charactetr portrait will adopt the color alt of the character on screen
DG_adopts_color_right[DG_page] = true; // If true, the right character portrait will adopt the color alt of the character on screen

DG_left_strip[DG_page] = 0;  // The strip number of the sprite portrait for the left side of the visual
DG_right_strip[DG_page] = 0; // The strip number of the sprite portrait for the right side of the visual
							 // if DG_custom_[right/left]_portrait is false this will look at Callie's base cast portrait list
							 // You can see the list here:
							// Name:   Callie  'You'   Zetter   Orcane   Wrastor   Kragg   Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight   Sandbert   Siren   Empty_Sprite
							// Cases:     0      1       2        3         4        5        6         7        8      9      10      11      12         13        14           15            16	   17          18

DG_custom_left_portrait[DG_page] = true;  // If true, uses custom character portrait sprites on the left side
DG_custom_right_portrait[DG_page] = false; // If true, uses custom character portrait sprites on the right side

DG_dialogue[DG_page] = "";
					
DG_right_speaker[DG_page] = true;
DG_dialogue_right[DG_page] = "So! Um. What brings you here?
								Crazy coincidence we'd meet eachother again here,
								right?"

DG_nextindex[DG_page] = 4;

// ----------- Page 4 ----------------

DG_page = 4;
DG_chat_type[DG_page] = 2;          //type 1: choice box, type 2: goes to next page, type 3: ends dialogue, type 4: goes to right speaker

DG_adopts_color_left[DG_page] = true;  // If true, the left charactetr portrait will adopt the color alt of the character on screen
DG_adopts_color_right[DG_page] = true; // If true, the right character portrait will adopt the color alt of the character on screen

DG_left_strip[DG_page] = 0;  // The strip number of the sprite portrait for the left side of the visual
DG_right_strip[DG_page] = 0; // The strip number of the sprite portrait for the right side of the visual
							 // if DG_custom_[right/left]_portrait is false this will look at Callie's base cast portrait list
							 // You can see the list here:
							// Name:   Callie  'You'   Zetter   Orcane   Wrastor   Kragg   Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight   Sandbert   Siren   Empty_Sprite
							// Cases:     0      1       2        3         4        5        6         7        8      9      10      11      12         13        14           15            16	   17          18

DG_custom_left_portrait[DG_page] = true;  // If true, uses custom character portrait sprites on the left side
DG_custom_right_portrait[DG_page] = false; // If true, uses custom character portrait sprites on the right side

DG_dialogue[DG_page] = "We both know this wasn't a coincidence.
						Say what you need to say or get out of here.";

DG_right_speaker[DG_page] = false;

DG_nextindex[DG_page] = 5;

// ----------- Page 5 ----------------

DG_page = 5;
DG_chat_type[DG_page] = 2;          //type 1: choice box, type 2: goes to next page, type 3: ends dialogue, type 4: goes to right speaker

DG_adopts_color_left[DG_page] = true;  // If true, the left charactetr portrait will adopt the color alt of the character on screen
DG_adopts_color_right[DG_page] = true; // If true, the right character portrait will adopt the color alt of the character on screen

DG_left_strip[DG_page] = 0;  // The strip number of the sprite portrait for the left side of the visual
DG_right_strip[DG_page] = 0; // The strip number of the sprite portrait for the right side of the visual
							 // if DG_custom_[right/left]_portrait is false this will look at Callie's base cast portrait list
							 // You can see the list here:
							// Name:   Callie  'You'   Zetter   Orcane   Wrastor   Kragg   Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight   Sandbert   Siren   Empty_Sprite
							// Cases:     0      1       2        3         4        5        6         7        8      9      10      11      12         13        14           15            16	   17          18

DG_custom_left_portrait[DG_page] = true;  // If true, uses custom character portrait sprites on the left side
DG_custom_right_portrait[DG_page] = false; // If true, uses custom character portrait sprites on the right side

DG_dialogue[DG_page] = "";

DG_right_speaker[DG_page] = true;
DG_dialogue_right[DG_page] = "Geez, uh...
								Okay..."
							
DG_nextindex[DG_page] = 6;

// ----------- Page 6 ----------------

DG_page = 6;
DG_chat_type[DG_page] = 2;          //type 1: choice box, type 2: goes to next page, type 3: ends dialogue, type 4: goes to right speaker

DG_adopts_color_left[DG_page] = true;  // If true, the left charactetr portrait will adopt the color alt of the character on screen
DG_adopts_color_right[DG_page] = true; // If true, the right character portrait will adopt the color alt of the character on screen

DG_left_strip[DG_page] = 0;  // The strip number of the sprite portrait for the left side of the visual
DG_right_strip[DG_page] = 0; // The strip number of the sprite portrait for the right side of the visual
							 // if DG_custom_[right/left]_portrait is false this will look at Callie's base cast portrait list
							 // You can see the list here:
							// Name:   Callie  'You'   Zetter   Orcane   Wrastor   Kragg   Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight   Sandbert   Siren   Empty_Sprite
							// Cases:     0      1       2        3         4        5        6         7        8      9      10      11      12         13        14           15            16	   17          18

DG_custom_left_portrait[DG_page] = true;  // If true, uses custom character portrait sprites on the left side
DG_custom_right_portrait[DG_page] = false; // If true, uses custom character portrait sprites on the right side

DG_dialogue[DG_page] = "";

DG_right_speaker[DG_page] = true;
DG_dialogue_right[DG_page] = "...Look, uh, 'Heartbrake'. 
							I'm....sorry, about what happened.
							I know it's too late to fix things, but..."
							
DG_nextindex[DG_page] = 7;

// ----------- Page 7 ----------------

DG_page = 7;
DG_chat_type[DG_page] = 2;          //type 1: choice box, type 2: goes to next page, type 3: ends dialogue, type 4: goes to right speaker

DG_adopts_color_left[DG_page] = true;  // If true, the left charactetr portrait will adopt the color alt of the character on screen
DG_adopts_color_right[DG_page] = true; // If true, the right character portrait will adopt the color alt of the character on screen

DG_left_strip[DG_page] = 0;  // The strip number of the sprite portrait for the left side of the visual
DG_right_strip[DG_page] = 0; // The strip number of the sprite portrait for the right side of the visual
							 // if DG_custom_[right/left]_portrait is false this will look at Callie's base cast portrait list
							 // You can see the list here:
							// Name:   Callie  'You'   Zetter   Orcane   Wrastor   Kragg   Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight   Sandbert   Siren   Empty_Sprite
							// Cases:     0      1       2        3         4        5        6         7        8      9      10      11      12         13        14           15            16	   17          18

DG_custom_left_portrait[DG_page] = true;  // If true, uses custom character portrait sprites on the left side
DG_custom_right_portrait[DG_page] = false; // If true, uses custom character portrait sprites on the right side

DG_dialogue[DG_page] = "Correct.
						But it's also too late to apologize. I don't want to hear
						about how things might have or could have been different.";

DG_right_speaker[DG_page] = false;
							
DG_nextindex[DG_page] = 8;

// ----------- Page 8 ----------------

DG_page = 8;
DG_chat_type[DG_page] = 2;          //type 1: choice box, type 2: goes to next page, type 3: ends dialogue, type 4: goes to right speaker

DG_adopts_color_left[DG_page] = true;  // If true, the left charactetr portrait will adopt the color alt of the character on screen
DG_adopts_color_right[DG_page] = true; // If true, the right character portrait will adopt the color alt of the character on screen

DG_left_strip[DG_page] = 0;  // The strip number of the sprite portrait for the left side of the visual
DG_right_strip[DG_page] = 0; // The strip number of the sprite portrait for the right side of the visual
							 // if DG_custom_[right/left]_portrait is false this will look at Callie's base cast portrait list
							 // You can see the list here:
							// Name:   Callie  'You'   Zetter   Orcane   Wrastor   Kragg   Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight   Sandbert   Siren   Empty_Sprite
							// Cases:     0      1       2        3         4        5        6         7        8      9      10      11      12         13        14           15            16	   17          18

DG_custom_left_portrait[DG_page] = true;  // If true, uses custom character portrait sprites on the left side
DG_custom_right_portrait[DG_page] = false; // If true, uses custom character portrait sprites on the right side

DG_dialogue[DG_page] = "The damage is done. That's how it is.
						We can only look to the future now.
						Which is why I have to do what I'm doing.";

DG_right_speaker[DG_page] = false;
							
DG_nextindex[DG_page] = 9;

// ----------- Page 9 ----------------

DG_page = 9;
DG_chat_type[DG_page] = 2;          //type 1: choice box, type 2: goes to next page, type 3: ends dialogue, type 4: goes to right speaker

DG_adopts_color_left[DG_page] = true;  // If true, the left charactetr portrait will adopt the color alt of the character on screen
DG_adopts_color_right[DG_page] = true; // If true, the right character portrait will adopt the color alt of the character on screen

DG_left_strip[DG_page] = 0;  // The strip number of the sprite portrait for the left side of the visual
DG_right_strip[DG_page] = 0; // The strip number of the sprite portrait for the right side of the visual
							 // if DG_custom_[right/left]_portrait is false this will look at Callie's base cast portrait list
							 // You can see the list here:
							// Name:   Callie  'You'   Zetter   Orcane   Wrastor   Kragg   Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight   Sandbert   Siren   Empty_Sprite
							// Cases:     0      1       2        3         4        5        6         7        8      9      10      11      12         13        14           15            16	   17          18

DG_custom_left_portrait[DG_page] = true;  // If true, uses custom character portrait sprites on the left side
DG_custom_right_portrait[DG_page] = false; // If true, uses custom character portrait sprites on the right side

DG_dialogue[DG_page] = "No-one deserves to end up like me.
						No-one should have power like me.
						A broken heart like mine is dangerous.";

DG_right_speaker[DG_page] = false;
							
DG_nextindex[DG_page] = 10;

// ----------- Page 10 ----------------

DG_page = 10;
DG_chat_type[DG_page] = 2;          //type 1: choice box, type 2: goes to next page, type 3: ends dialogue, type 4: goes to right speaker

DG_adopts_color_left[DG_page] = true;  // If true, the left charactetr portrait will adopt the color alt of the character on screen
DG_adopts_color_right[DG_page] = true; // If true, the right character portrait will adopt the color alt of the character on screen

DG_left_strip[DG_page] = 0;  // The strip number of the sprite portrait for the left side of the visual
DG_right_strip[DG_page] = 0; // The strip number of the sprite portrait for the right side of the visual
							 // if DG_custom_[right/left]_portrait is false this will look at Callie's base cast portrait list
							 // You can see the list here:
							// Name:   Callie  'You'   Zetter   Orcane   Wrastor   Kragg   Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight   Sandbert   Siren   Empty_Sprite
							// Cases:     0      1       2        3         4        5        6         7        8      9      10      11      12         13        14           15            16	   17          18

DG_custom_left_portrait[DG_page] = true;  // If true, uses custom character portrait sprites on the left side
DG_custom_right_portrait[DG_page] = false; // If true, uses custom character portrait sprites on the right side

DG_dialogue[DG_page] = "And if I have to destroy this 'love' you like
						so much to prevent that, then I'll do it.
						And you won't be enough to stop me.";

DG_right_speaker[DG_page] = false;
							
DG_nextindex[DG_page] = 11;

// ----------- Page 11 ----------------

DG_page = 11;
DG_chat_type[DG_page] = 2;          //type 1: choice box, type 2: goes to next page, type 3: ends dialogue, type 4: goes to right speaker

DG_adopts_color_left[DG_page] = true;  // If true, the left charactetr portrait will adopt the color alt of the character on screen
DG_adopts_color_right[DG_page] = true; // If true, the right character portrait will adopt the color alt of the character on screen

DG_left_strip[DG_page] = 0;  // The strip number of the sprite portrait for the left side of the visual
DG_right_strip[DG_page] = 0; // The strip number of the sprite portrait for the right side of the visual
							 // if DG_custom_[right/left]_portrait is false this will look at Callie's base cast portrait list
							 // You can see the list here:
							// Name:   Callie  'You'   Zetter   Orcane   Wrastor   Kragg   Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight   Sandbert   Siren   Empty_Sprite
							// Cases:     0      1       2        3         4        5        6         7        8      9      10      11      12         13        14           15            16	   17          18

DG_custom_left_portrait[DG_page] = true;  // If true, uses custom character portrait sprites on the left side
DG_custom_right_portrait[DG_page] = false; // If true, uses custom character portrait sprites on the right side

DG_dialogue[DG_page] = "";

DG_right_speaker[DG_page] = true;
DG_dialogue_right[DG_page] = "What YOU used to like so much! 
							Love is still a beautiful thing to me, Heartbrake.
							And I can't let you destroy it."
							
DG_nextindex[DG_page] = 12;

// ----------- Page 12 ----------------

DG_page = 12;
DG_chat_type[DG_page] = 2;          //type 1: choice box, type 2: goes to next page, type 3: ends dialogue, type 4: goes to right speaker

DG_adopts_color_left[DG_page] = true;  // If true, the left charactetr portrait will adopt the color alt of the character on screen
DG_adopts_color_right[DG_page] = true; // If true, the right character portrait will adopt the color alt of the character on screen

DG_left_strip[DG_page] = 0;  // The strip number of the sprite portrait for the left side of the visual
DG_right_strip[DG_page] = 0; // The strip number of the sprite portrait for the right side of the visual
							 // if DG_custom_[right/left]_portrait is false this will look at Callie's base cast portrait list
							 // You can see the list here:
							// Name:   Callie  'You'   Zetter   Orcane   Wrastor   Kragg   Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight   Sandbert   Siren   Empty_Sprite
							// Cases:     0      1       2        3         4        5        6         7        8      9      10      11      12         13        14           15            16	   17          18

DG_custom_left_portrait[DG_page] = true;  // If true, uses custom character portrait sprites on the left side
DG_custom_right_portrait[DG_page] = false; // If true, uses custom character portrait sprites on the right side

DG_dialogue[DG_page] = "That isn't surprising to hear, you know.
						But very well then.
						Show me what you're made of.";

DG_right_speaker[DG_page] = false;

DG_nextindex[DG_page] = 13;
							
// ----------- Page 13 ----------------

DG_page = 13;
DG_chat_type[DG_page] = 3;          //type 1: choice box, type 2: goes to next page, type 3: ends dialogue, type 4: goes to right speaker

DG_adopts_color_left[DG_page] = true;  // If true, the left charactetr portrait will adopt the color alt of the character on screen
DG_adopts_color_right[DG_page] = true; // If true, the right character portrait will adopt the color alt of the character on screen

DG_left_strip[DG_page] = 0;  // The strip number of the sprite portrait for the left side of the visual
DG_right_strip[DG_page] = 0; // The strip number of the sprite portrait for the right side of the visual
							 // if DG_custom_[right/left]_portrait is false this will look at Callie's base cast portrait list
							 // You can see the list here:
							// Name:   Callie  'You'   Zetter   Orcane   Wrastor   Kragg   Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight   Sandbert   Siren   Empty_Sprite
							// Cases:     0      1       2        3         4        5        6         7        8      9      10      11      12         13        14           15            16	   17          18

DG_custom_left_portrait[DG_page] = true;  // If true, uses custom character portrait sprites on the left side
DG_custom_right_portrait[DG_page] = false; // If true, uses custom character portrait sprites on the right side

DG_dialogue[DG_page] = "";

DG_right_speaker[DG_page] = true;
DG_dialogue_right[DG_page] = "What I'm made of? 
							I'm made of love!
							And I'll prove to you that's something worth fighting for!"

// ------------ END ------------------


//Phone support

spr_heart = sprite_get("heart");
spr_tauntair = sprite_get("tauntair");

user_event(14); //phone