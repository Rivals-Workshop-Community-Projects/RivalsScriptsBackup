hurtbox_spr = sprite_get("snom_hurtbox");
crouchbox_spr = sprite_get("snom_hurtbox_crouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

// Custom Hit
BugBuzz = hit_fx_create( sprite_get( "nair_hit_fx" ), 40);
FairyWind = hit_fx_create( sprite_get( "fair_hit_fx" ), 15);
attack_anim_timer = 0;
attack_anim_timer_2 = 0;

Substitute = noone;
Subx = 0;
Suby = 0;

player_buff = false;
player_debuff = false;

sleepTalk = 0;
mirrorLength = 90;

onPlat = false;

restTimer = 0;

particle_x = 0;
particle_y = 0;

attackLock = 0;

char_height = 25;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = 0.3;
dash_anim_speed = .2;
pratfall_anim_speed = .15;

walk_speed = 1;
walk_accel = 0.7;
walk_turn_time = 12;
initial_dash_time = 6;
initial_dash_speed = 3;
dash_speed = 2.5;
dash_turn_time = 4;
dash_turn_accel = 6;
dash_stop_time = 4;
dash_stop_percent = 1; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .05;
moonwalk_accel = 1;

jump_start_time = 3;
jump_speed = 8;
short_hop_speed = 5;
djump_speed = 6;
leave_ground_max = 4; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 2; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 1;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .06;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 8;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 1.5; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 7;
wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .02; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 2;
techroll_recovery_frames = 1;
techroll_speed = 5;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 1;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// ----------------- A A A A A This is where all the support stuff goes ----------------- //
// Date Girl Support
	Chatting = true; 									// Determines if the player is a workshop character

	DG_portrait = sprite_get("DG_portrait"); 			// .png strip of your character portraits
	var DG_page = 0; 									// The current page of dialogue - Always set this to 0 
	
// Page 0
	DG_page = 0;										// Defines the next page
	DG_chat_type[DG_page] = 1; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue
	
	DG_adopts_color_left[DG_page] = true; 				// If true, the portrait will adopt the color alt of the character on screen	
	DG_adopts_color_right[DG_page] =  true;			// If true, the portrait will adopt the color alt of the character on screen

	DG_left_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the left side of the visual
														// 0 represents the first sprite of the strip
	DG_right_strip[DG_page] = 0;						// The strip number of the sprite portrait for the right side of the visual
														// 0 represents the first sprite of the strip
														// If DG_custom_[left/right]_portrait is false the list of base characters in order are:
								   
														// Name:   Callie  'You'   Zetter   Orcane   Wrastor   Kragg   Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight   Sandbert   Siren   Empty_Sprite
														// Cases:     0      1       2        3         4        5        6         7        8      9      10      11      12         13        14           15            16	   17          18
	DG_custom_left_portrait[DG_page] = true; 			// If true, uses custom character portrait sprites
														// If false, uses base cast + Callie, You, and Siren portraits
														// Set this every page
	DG_custom_right_portrait[DG_page] = false;			// If true, uses custom character portrait sprites
														// If false, uses base cast + Callie, You, and Siren portraits
														// Set this every page
	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Brrrr it's so cold!
							
							";
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "You always seem to be cold!
							Aren't you an ice type? How can you be cold?
							Brrr, it's chilly.";	

	DG_answers[DG_page] = [1, 2, 3]; 					// The page their respective answers should point to


		
// Page 1
	DG_page = 1;										// Defines the next page
	DG_chat_type[DG_page] = 2; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

	DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
	DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

	DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
	DG_right_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the right side of the visual
	
	DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
	DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Well obviously! I'm a chilly ol' bug!
							
							";
	DG_nextindex[DG_page] = 4;  						// The Next page the dialogue should point to
	
// Page 2	
	DG_page = 2;										// Defines the next page
	DG_chat_type[DG_page] = 2; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

	DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
	DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

	DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
	DG_right_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the right side of the visual
	
	DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
	DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Haha yep! Ice types are always cold duh!
	
							";
	
	DG_nextindex[DG_page] = 4;  						// The Next page the dialogue should point to
	
// Page 3
	DG_page = 3;										// Defines the next page
	DG_chat_type[DG_page] = 2; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

	DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
	DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

	DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
	DG_right_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the right side of the visual
	
	DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
	DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Oh no! I didn't mean to make you cold too!
	
							";
	DG_nextindex[DG_page] = 4;  						// The Next page the dialogue should point to
	
// Page 4
	DG_page = 4;										// Defines the next page
	DG_chat_type[DG_page] = 2; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

	DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
	DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

	DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
	DG_right_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the right side of the visual
	
	DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
	DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Well anyways, I didn't expect to see you here Callie.
						You said you had some questions for me right?
						";
	
	DG_nextindex[DG_page] = 5;  						// The Next page the dialogue should point to
	
// Page 5
	DG_page = 5;										// Defines the next page
	DG_chat_type[DG_page] = 1; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

	DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
	DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

	DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
	DG_right_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the right side of the visual
	
	DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
	DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "What's on your mind I can tell you as much as I know!
						Which is to say not a lot haha!
						";
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "Why are you fighting in Aether?
							Why are you so small?
							Don't worry about it, let's fight!";	

	DG_answers[DG_page] = [52, 53, 6]; 					// The page their respective answers should point to

	// Page 52
		DG_page = 52;										// Defines the next page
		DG_chat_type[DG_page] = 3; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

		DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
		DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

		DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
		DG_right_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the right side of the visual

		DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
		DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "I've got nothin better to do! Plus life in a Pokeball is 
							so boring! I like being free and being able to fight! So let's
							do exactly that!";

		// HELPFUL TIP ! ! !
		// Now that this special dialogue is over it will jump back to the main dialogue on Page 6

	// Page 53
		DG_page = 53;										// Defines the next page
		DG_chat_type[DG_page] = 3; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

		DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
		DG_adopts_color_right[DG_page] = true
		DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
		DG_right_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the right side of the visual

		DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
		DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "Heyyy!! I am NOT small I'm fun sized!
							
							";

		// HELPFUL TIP ! ! !
		// Now that this special dialogue is over it will jump back to the main dialogue on Page 6
	
// Page 6
	DG_page = 6;										// Defines the next page
	DG_chat_type[DG_page] = 3; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

	DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
	DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

	DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
	DG_right_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the right side of the visual
	
	DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
	DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Awesome! I'd love to fight!
	
						";
						
// Trum and Alto Support
trummelcodecneeded = false;
trummelcodec_id = noone;

// Dracula Support
	dracula_portrait = asset_get("empty_sprite");
	dracula_portrait2 = asset_get("empty_sprite"); //or asset_get("empty_sprite")
	dracula_portrait3 = asset_get("empty_sprite"); //or asset_get("empty_sprite")
	var page = 0;

	//Page 0
	dracula_speaker[page] = 0;
	dracula_text[page] = "...";
	page++;

	//Page 1
	dracula_speaker[page] = 0;
	dracula_text[page] = "Not one for words are you?";
	page++;

	//Page 2
	dracula_speaker[page] = 0;
	dracula_text[page] = "Fine, I'll squash you where you stand pest.[shake]";
	page++;

// Otto Support
//otto_bobblehead_sprite = sprite_get("bobble_sir");

// Feri Support
//feri_costume = sprite_get("feri_costume_Siren");

// Hikaru Support
Hikaru_Title = "Snom Snom Snom";

// Miiverse Support
//miiverse_post = sprite_get("miiverse_post2");
//miiverse_post2 = sprite_get("miiverse_post");
//sprite_change_offset("miiverse_post", 60, 30);
//sprite_change_offset("miiverse_post2", 60, 30);

// TCO Support
tcoart = sprite_get("SnomTCOart");

// Toon Link Support
//toonlink_photo = sprite_get("toonlink_photo");
//toonlink_photo2 = sprite_get("toonlink_photo_TL");

// Mt. Dedede Supprt
arena_title = "The Lightfoot Larva";

// Soulbound Conflict Support
battle_text = "* Snom wiggles at you.";

// Kirby Support
//kirbyability = 8;
//newicon = 0;
//swallowed = 0;
//enemykirby = noone;

