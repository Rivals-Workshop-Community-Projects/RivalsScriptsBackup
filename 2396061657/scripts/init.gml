// init.gml
// Runs once when the player is created
// Where most player variables are assigned

taunt_counter = 0;

shown_meter_var = 0;

set_victory_theme( sound_get( "callievictory" ));

introTimer = 0;
costume_end = false;

GrappleMode = 0;
// [Roses]   [Candy]   [Ribbon]   [Balloon]
//    0         1         2           3

can_fireball = false;
can_fireball_timer = 0;
can_fireball_destroy = hit_fx_create( sprite_get("callie_fireball_hitfx"), 20)

LoveMeter = 0;
LoveStorage = 0;

LoveGained = 0;
LoveGained_Visual = false;
LoveGained_Timer = 30;

PreviousMeter = 0;
MiniM_display_timer = 0;
MiniM_Alpha = 0;

costume_destroy = true;
costume_num = 0;
costume_temp_x = 0;
costume_temp_y = 0;
costume_temp_spr_dir = 1;
is_destroying_costume = false;

Platform_Text = [ [44, "She cute tho"], [32, "Doki Doki"], [48, "100% Real Girl"], [32, "Date Girl"], [32, "Data Girl"], [46, "S U C C E S S"], [46, "World is Mine"], [34, "Digital Girl"], [44, "Do your best!"], [38, "Keep going!"], [28, "Press F"] ];
platform_number = 0;

up0 = 1;
up1 = 1;
up2 = 1;
up3 = 1;

	tsj_x1 = 0;
	tsj_x2 = 0;
	tsj_x3 = 0;
	tsj_y1 = 0;
	tsj_y2 = 0;
	tsj_y3 = 0;
	tsj_timer = 0;

LM_a = 0;
LM_b = 0;
LM_c = 0;

nspecial_charge = 0;

focus_attack = false;
focus_armorbreak = false;
nspecial_hitpause = 27;
nspecial_damage = 3;

should_crumple = false;
crumple_timer = 0;
crumple_x = 0;
crumple_y = 0;
crumple_dir = 1;
crumple_alpha = .80;

fspecial_circles = 0;
fspec_x = 0;
fspec_y = 0;
fspec_s_x = 0;
fspec_s_y = 0;
fspec_sparkle_timer = 0;

isThorn = false;
isCandy = false;
isRibbon = false;
isBalloon = false;

Balloon_hitstun_grav = 0;
Balloon_hitstun_multi = 1.0;

Candy_SecondAttack = false;
candy_pos_x = 0;
candy_pos_y = 0;

dash_cancel_endlag = 15;
dash_cancel_counter = 0;

HeartPop = 0;
spinbox = noone;

RibbonKB_scaling = .8;
Ribbon_damage= 8;
RibbonRights = 0;
Calliecide = false;

ThornKB_scale = 0.4;
CandyKB = 4;
CandyKB_scale = .5;
full_candy_bar = false;
candy_identity = 0;

variabl_o = 0;
dspecial_check = false;

usedFspecial = 0;
nthrowFastFall = false;
dthrowCheck = false;

hit_focus_new = hit_fx_create( sprite_get("Callie_VFX_focusatk"), 40);
hit_big_heart = hit_fx_create( sprite_get("Callie_VFX_Big_Heart"), 40);
hit_small_heart = hit_fx_create( sprite_get("Callie_VFX_Small_Heart"), 30);
hit_bat_shatter = hit_fx_create( sprite_get("Callie_VFX_Bat_Hit"), 30);
hit_fireball = hit_fx_create( sprite_get("Callie_VFX_Fire"), 40);
hit_balloon = hit_fx_create( sprite_get("Callie_VFX_Balloon"), 30);

hit_surprise = hit_fx_create( sprite_get("vfx_surprise"), 20);
hit_ribbon = hit_fx_create( sprite_get("vfx_ribbon"), 30);
hit_scatter = hit_fx_create( sprite_get("vfx_scatter"), 30);
hit_roses = hit_fx_create( sprite_get("vfx_roses"), 50);
hit_goo = hit_fx_create( sprite_get("vfx_goohit"), 40);
hit_ribbonslam = hit_fx_create( sprite_get("vfx_ribbonslam"), 30);
hit_swirl = hit_fx_create( sprite_get("vfx_beeg"), 50);

trail_sparkles = hit_fx_create(sprite_get("sparkles"), 40);

sfxdthrow = sound_get("dthrowsfx");
dThrow = noone; 
isFspecial = false;
got_hitFspecial = false;
meter_damage = 0;
heartsplode = false;
heart_num = 0;

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 62;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .14;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7.0;
dash_speed = 6.0;
dash_turn_time = 12;
dash_turn_accel = 1.6;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 2;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7;
djump_speed = 11.5;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .6;
hitstun_grav = .45;
knockback_adj = 1.00; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .10; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
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
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 3;
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

SecretColor = 0;
ColorLock = 0;
ColorLocked = false;

isTaunt = false;
downTaunt_check = false;

justDialogue = ["", "", ""];
dialogue = ["", "", ""];
right_dialogue = ["", "", ""];
answerselect = ["", "", ""];

// Determines which dialogue in the sequence is active
dialogueSequence = 0;

Cursor = 1;
expression = 1;
held_delay = 0;
Select = 0;
totalLines = 0;
isDialogue = true;
triggerQuestion = false;
dialogueMode = false;

DG_visual_timer = 0;

listening_timer = 0;
listen_transition_timer = 270;
response_transition_timer = 20;

// Selection Sound
soundReaction = 0;

// Visual States
// 1 = Speaking
// 2 = Responding
// 3 = Unique Dialogue
DG_visual_state = 0;

// Who you're talking to
// 0 = Self/Callie
// 1 = Opponent
// 2 = Stage
DG_chat_num = 0;

// Whether the player has option to choose during dialogue
chattingoptions = [];
DG_chat_num_end = false;
basecast_portraits = sprite_get("basecast_portraits");

// Left and Right Portraits
expression_left = 0;
expression_right = 4;
adopts_color_left = false;
adopts_color_right = false;

giik_please_fix_basecast_shaders_already_left = false;
giik_please_fix_basecast_shaders_already_right = false;

// Unique Dialogue
is_unique = [false, false, false]; // Determines if dialogue is unique
return_unique = [0, 0, 0]; // Points back to branching dialogue that follows the unique dialogue
return_path = 0;

// Other variables for compatibility
needsChat = false // Determines if opponent doesn't have dialogue
currentline = 0; // 
chatindex = 0; // current page
nextindex = 0; // next page

chat_max = 0; //total number of pages
chat_id = noone; // ID of the opponent
chat_file = 0; // Current File for character
ChatNumber = 0;

workshop_date = false;
custom_left = noone;
custom_right = noone;
workshop_left = false;
workshop_right = false;
right_speaker = false;

visual_bg = sprite_get("empty");

DG_has_background = false;










/*

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////// Date Girl Support
////////////////////////////////////////////////////////////////////////////////
	Chatting = true; 

	DG_portrait = sprite_get("DG_portrait");
	var DG_page = 0;
	
// Page 0
	DG_page = 0;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Hmmm you look quiet familiar...
							
							
							Page 0";

	DG_nextindex[DG_page] = 1; 
		
// Page 1
	DG_page = 1;				
	DG_chat_type[DG_page] = 1; 			

	DG_adopts_color_left[DG_page] = true;   			
	DG_adopts_color_right[DG_page] = true; 		
	
	DG_left_strip[DG_page] = 0;  				
	DG_right_strip[DG_page] = 1; 
	
	DG_custom_left_portrait[DG_page] = false;  
	DG_custom_right_portrait[DG_page] = false; 

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "I know you're not me
							Page 1";
	
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "What do you mean? It's just a park.
							Yeah, I get that feeling too.
							. . . . .";	

	DG_answers[DG_page] = [2, 50, 900]; 

// Page 2	
	DG_page = 2;						
	DG_chat_type[DG_page] = 2; 						

	DG_adopts_color_left[DG_pagse] = true; 
	DG_adopts_color_right[DG_page] = true;

	DG_left_strip[DG_page] = 0;  
	DG_right_strip[DG_page] = 1; 
	
	DG_custom_left_portrait[DG_page] = false; 
	DG_custom_right_portrait[DG_page] = false; 

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "It's just that everytime I walk around here
							something new appears or I notice that something
							changes.
							Page 2";
	
	DG_nextindex[DG_page] = 3;  	
	
// Page 3
	DG_page = 3;	
	DG_chat_type[DG_page] = 2; 		

	DG_adopts_color_left[DG_page] = true;   
	DG_adopts_color_right[DG_page] = true; 

	DG_left_strip[DG_page] = 0; 
	DG_right_strip[DG_page] = 1; 	
	
	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false; 

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "For example if you look at that lamp post over there
							sometimes it turns off at random times. All of the other
							lamp posts turn on and off at the same time everyday.
							Page 3";
	
	DG_nextindex = 4;
	
// Page 4
	DG_page = 4;	
	DG_chat_type[DG_page] = 2; 		

	DG_adopts_color_left[DG_page] = true;   
	DG_adopts_color_right[DG_page] = true; 

	DG_left_strip[DG_page] = 0; 
	DG_right_strip[DG_page] = 1; 	
	
	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false; 

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "The lamp post over here always moves. If you look
							at the base of the lamp post the it looks like it's
							been remove and placed down again slightly offset.
							Page 4";
	
	DG_nextindex = 5;

// Page 5
	DG_page = 5;	
	DG_chat_type[DG_page] = 2; 		

	DG_adopts_color_left[DG_page] = true;   
	DG_adopts_color_right[DG_page] = true; 

	DG_left_strip[DG_page] = 0; 
	DG_right_strip[DG_page] = 1; 	
	
	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false; 

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "There are numerous circular imprints as if it's 
							happened more than once. 
							
							Page 5";
	
	DG_nextindex = 6;
		
// Page 6
	DG_page = 6;				
	DG_chat_type[DG_page] = 2; 			

	DG_adopts_color_left[DG_page] = true;   			
	DG_adopts_color_right[DG_page] = true; 		
	
	DG_left_strip[DG_page] = 0;  				
	DG_right_strip[DG_page] = 1; 
	
	DG_custom_left_portrait[DG_page] = false;  
	DG_custom_right_portrait[DG_page] = false; 

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "These things aren't normal. Unless this lamp
							post falls over everytime I'm walking in another
							area of the park I feel like I would notice.
							Page 6";
	
	DG_nextindex = 7;
	
// Page 7
	DG_page = 7;	
	DG_chat_type[DG_page] = 2; 		

	DG_adopts_color_left[DG_page] = true;   
	DG_adopts_color_right[DG_page] = true; 

	DG_left_strip[DG_page] = 0; 
	DG_right_strip[DG_page] = 1; 	
	
	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false; 

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "I guess it seems kind of weird that I notice
							these types of things but I can't help it when
							walk down these paths every night.							
							Page 7";

	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "Geeze, you're pretty observant.
							Every night??
							Maybe it does, and that lamp is just faulty.";	

	DG_answers[DG_page] = [8, 100, 150]; 

// Page 8
	DG_page = 8;				
	DG_chat_type[DG_page] = 1; 			

	DG_adopts_color_left[DG_page] = true;   			
	DG_adopts_color_right[DG_page] = true; 		
	
	DG_left_strip[DG_page] = 0;  				
	DG_right_strip[DG_page] = 1; 
	
	DG_custom_left_portrait[DG_page] = false;  
	DG_custom_right_portrait[DG_page] = false; 

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Haha, thanks.
	
	
							Page 8";
	
	DG_nextindex = 9;
	
// Page 9
	DG_page = 9;				
	DG_chat_type[DG_page] = 2; 			

	DG_adopts_color_left[DG_page] = true;   			
	DG_adopts_color_right[DG_page] = true; 		
	
	DG_left_strip[DG_page] = 0;  				
	DG_right_strip[DG_page] = 1; 
	
	DG_custom_left_portrait[DG_page] = false;  
	DG_custom_right_portrait[DG_page] = false; 

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "It's just a small habit of mine.
	
	
							Page 9";
	
	DG_nextindex = 10;
	
// Page 10
	DG_page = 10;				
	DG_chat_type[DG_page] = 2; 			

	DG_adopts_color_left[DG_page] = true;   			
	DG_adopts_color_right[DG_page] = true; 		
	
	DG_left_strip[DG_page] = 0;  				
	DG_right_strip[DG_page] = 1; 
	
	DG_custom_left_portrait[DG_page] = false;  
	DG_custom_right_portrait[DG_page] = false; 

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "That said as weird as this place is I feel a
							closesness to this park.
	
							Page 10";
	
	DG_nextindex = 11;
	
// Page 11
	DG_page = 11;				
	DG_chat_type[DG_page] = 2; 			

	DG_adopts_color_left[DG_page] = true;   			
	DG_adopts_color_right[DG_page] = true; 		
	
	DG_left_strip[DG_page] = 0;  				
	DG_right_strip[DG_page] = 1; 
	
	DG_custom_left_portrait[DG_page] = false;  
	DG_custom_right_portrait[DG_page] = false; 

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "It probably sounds odd but of all of the locations
							in Aether that I've explored this place in 
							particular makes me feel as they say "at home."
							Page 11";
	
	DG_nextindex = 12;
	*/