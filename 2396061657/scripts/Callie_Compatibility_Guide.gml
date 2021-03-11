/*
--------------------* Callie Compatibility Guide *----------------------

(Apologies if it's overly complicated, I worked hard on the dialogue system but my pea
sized brain is really bad at optimizing dialogue for ease of use)

Callie Compatibility is a multi-branching dialogue system similar to
Visual Novel-like conversations and interactions. Using different character portraits
you can have Callie talk to your characters and learn more about them that you would
not normally learn from normal gameplay.

For general guide for a basic compatibility:

--* Characters/Skins *--
- Callie should be on the Right Side, she will answers the questions / statements
- The Character she is speaking to should be on the Left Side. Talking in detail
about themselves or similar topics, which Callie can respond to!

- Generally speaking the topics of the compatibility don't have to be romantic and
are better purposed to explore your own characters backstory and personality!
- Callie doesn't even have to be in the dialogue, you can have two characters talk
to each other, if your character is a duo character you can have them talk to each
other while the player playing Callie controls one of the character's speaking

--* Stages *--
- Callie should be on the Left Side, she will be speaking about your stage!
Think of her as a passionate tour guide who loves what she's talking about
and tries to explore and learn all the nitty gritty about the stage she's on!
- The other character will typically be 'You' who will be the person responder
asking questions to further explore the parts of the stage and getting information
from Callie about the stage.

- That said you don't have to follow these guidelines, you can have two characters
from the stage talk about the stage or have their own conversation and not have
Callie or 'You' even involved
- You can have a character from the stage talk to Callie about the stage, exploring
ideas that Callie may not know about the stage.

--* Callie personality *--
- Although you don't have to abide by Callie's personality quirks this might be helpful
for writers to get a good feel for how the character speaks and can further immerse her.

- Callie is a very passionate character, once she's met someone or found a place that 
interests her she won't stop until she learns as much as she can about them. Her idea of
'Love' focuses more on a passion to know more and deeply understand the things she finds
interesting. She CAN be romantically interested in other characters as well, but she appeals
more to the emotional side of romance rather than ther physical.

- Backstory wise, Callie suddenly appeared in Aether High unsure of who she is or where
she was, but despite being a 'human' the people of Aether welcomed her with kindness.
Once she was back on her feet she decided she would learn more about this world and
try to uncover her past. Throughout her time she would fall in love with another 'human'.
Both not really knowing about their past they worked together to dig deeper. However,
her ideas of 'Love' and her focus more on the world clashed with her significant other, 
cutting ties her lover would close their heart from others. Callie, clearly at fault for 
her failure to her significant other vowed to dedicate herself more to others in the same
way she did for the world.


------------------* Variable Explanation Guide *------------------------

Place all code in init.gml

- All compatibility should have these three variables at the start of the code:

Chatting = true; 					// This tells Callie that the character has compatibility
DG_portrait = sprite_get(""); 		// The .png strip of your character (Similar to a normal animation strip)
									// For workshop skins, this variable is still necessary but you don't need an
									// actual sprite to call or you can set it to a random sprite
var DG_page = 0; 					// The current page number (Should start at 0) 

----------------* Required Variables for each Page *--------------------

DG_page = 0; 	// The current page the set of dialogue represents (This should always be at the top of the page)

DG_chat_type[DG_page] = 1; 		// Type of Dialogue System, you can set the type to 1, 2, or 3
								// 1 = Dialogue with answers to select after
								// 2 = Dialogue that transitions into more dialogue
								// 3 = Dialogue that ends afterwards

DG_adopts_color_left[DG_page] = true;  // If true, the left charactetr portrait will adopt the color alt of the character on screen
DG_adopts_color_right[DG_page] = true; // If true, the right character portrait will adopt the color alt of the character on screen

DG_left_strip[DG_page] = 0;  // The strip number of the sprite portrait for the left side of the visual
DG_right_strip[DG_page] = 0; // The strip number of the sprite portrait for the right side of the visual
							 // if DG_custom_[right/left]_portrait is false this will look at Callie's base cast portrait list
							 // You can see the list here:
							// Name:   Callie  'You'   Zetter   Orcane   Wrastor   Kragg   Forsburn   Maypul   Absa   Etalus   Ori   Ranno   Clairen   Sylvanos   Elliana   Shovel Knight   Sandbert   Siren   Empty_Sprite
							// Cases:     0      1       2        3         4        5        6         7        8      9      10      11      12         13        14           15            16	   17          18

DG_custom_left_portrait[DG_page] = false;  // If true, uses custom character portrait sprites on the left side
DG_custom_right_portrait[DG_page] = false; // If true, uses custom character portrait sprites on the right side

-- Dialogue of the character on the Left Side --
DG_dialogue[DG_page] = "This is the first line of dialogue
						This is the second line of dialogue
						This is the third line of dialogue";

-------------* Variables required for each chat type *-----------------
-----------------------* DG_chat_type = 1 *----------------------------

-- Answers the character on the Right Side can select --
									// Each indented section here is a new line to select
DG_options[DG_page] =  "Answer 1
						Answer 2	
						Answer 3";	

DG_answers[DG_page] = [2, 1, 0]; // The page their respective answers should point to
								 // For example, 
								 // Answer 1 will point the system to read Page 2
								 // Answer 2 will point the system to read Page 1
								 // Answer 3 will point the system to read Page 0

-----------------------* DG_chat_type = 2 *----------------------------

DG_nextindex[DG_page] = 1;  // The Next page the dialogue should point to

-----------------------* DG_chat_type = 3 *----------------------------

- This chat type doesn't need any exta variables

--------------------* Right Side Dialogue Bonus *----------------------

- If you intend on using the right side for dialogue please use these variables
this dialogue type should only be used when DG_chat_type = 2 but is not required
if you don't intend to use the right side as a speaker

- It's important to note that ALL pages must have DG_right_speaker if you
wish to use this feature, even just once. 

- When DG_right_speaker = false you do not need DG_dialogue_right

    DG_right_speaker[DG_page] = true;
    DG_dialogue_right[DG_page] = "This the right dialogue
                            
                            Page 0";
							
-----------------------------------------------------------------------
-----------------* Example Character / Skin Code *---------------------
---* You can use the below dialogue as a guide for making your own *---
---------* Much lower is dialogue guide but without comments *---------
-----------------------------------------------------------------------

// Date Girl Support
	Chatting = true; 									// Determines if the player is a workshop character

	DG_portrait = sprite_get("DG_portrait"); 			// .png strip of your character portraits
	var DG_page = 0; 									// The current page of dialogue - Always set this to 0 
	
// Page 0 - HELPFUL TIP, commenting the page number like this will help you keep track of what page you're on

	DG_page = 0;										// Defines the next page
	DG_chat_type[DG_page] = 2; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue
	
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
	DG_dialogue[DG_page] = "This is the first dialogue box
							
							Page 0";

	DG_nextindex[DG_page] = 1;  						// The Next page the dialogue should point to
		
// Page 1
	DG_page = 1;										// Defines the next page
	DG_chat_type[DG_page] = 1; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

	DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
	DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

	DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
	DG_right_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the right side of the visual
	
	DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
	DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Select an option!
							
							Page 1";
	
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "This option goes to Page 0
							This option repeats this question, Page 1
							This option goes to next Page, Page 2";	

	DG_answers[DG_page] = [0, 1, 2]; 					// The page their respective answers should point to

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
	DG_dialogue[DG_page] = "Thanks for answering, let's move on from that and show off 
							some color change concepts
							Page 2";
	
	DG_nextindex[DG_page] = 3;  						// The Next page the dialogue should point to
	
// Page 3
	DG_page = 3;										// Defines the next page
	DG_chat_type[DG_page] = 1; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

	DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
	DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

	DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
	DG_right_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the right side of the visual
	
	DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
	DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if 
							the character is not using their default colors
							Page 3";
	
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "Change The Left Side
							Change The Right Side
							Skip This Step";	

	DG_answers[DG_page] = [50, 51, 4]; 					// The page their respective answers should point to
	
	// HELPFUL TIP ! ! !
	// For dialogue that might be extra content and 
	// isn't important to the main branch of dialogue 
	// feel free to use high numbers like the above!
	// 50 sends to dialogue that changes the alt color of the left side
	// 51 sends to dialogue that changes the alt color of the right side
	// 4 sends to the next line of dialogue
	
	// Page 50
		DG_page = 50;										// Defines the next page

		DG_chat_type[DG_page] = 2; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

		DG_adopts_color_left[DG_page] = false;   			// If true, the left portrait will adopt the color alt of the character on screen
		DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

		DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
		DG_right_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the right side of the visual

		DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
		DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "TThe left character should be a different color!
								The character should go back to normal after
								Page 50";

		DG_nextindex[DG_page] = 4;  						// The Next page the dialogue should point to

		// HELPFUL TIP ! ! !
		// Now that this special dialogue is over it will jump back to the main dialogue on Page 4

	// Page 51
		DG_page = 51;										// Defines the next page
		DG_chat_type[DG_page] = 2; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

		DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
		DG_adopts_color_right[DG_page] = false; 			// If true, the right portrait will adopt the color alt of the character on screen

		DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
		DG_right_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the right side of the visual

		DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
		DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "The right character should be a different color!
								The character should go back to normal after
								Page 51";

		DG_nextindex[DG_page] = 4;  						// The Next page the dialogue should point to

		// HELPFUL TIP ! ! !
		// Now that this special dialogue is over it will jump back to the main dialogue on Page 4
	
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
	DG_dialogue[DG_page] = "Next we'll show change in portraits or expressions.
							If the workshop character on the left has more than
							Page 4";
	
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
	DG_dialogue[DG_page] = "one strip it will change the sprite, otherwise 
							the sprite won't change. The right should become Zetter
							Page 5";
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "Change The Left Side
							Change The Right Side
							Skip This Step";	

	DG_answers[DG_page] = [52, 53, 6]; 					// The page their respective answers should point to

	// Page 52
		DG_page = 52;										// Defines the next page
		DG_chat_type[DG_page] = 2; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

		DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
		DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

		DG_left_strip[DG_page] = 1;  						// The strip number of the sprite portrait for the left side of the visual
		DG_right_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the right side of the visual

		DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
		DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "The left character should be a different sprite
								The character should go back to normal after
								Page 52";

		DG_nextindex[DG_page] = 6;  						// The Next page the dialogue should point to

		// HELPFUL TIP ! ! !
		// Now that this special dialogue is over it will jump back to the main dialogue on Page 6

	// Page 53
		DG_page = 53;										// Defines the next page
		DG_chat_type[DG_page] = 2; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

		DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
		DG_adopts_color_right[DG_page] = false; 			// If true, the right portrait will adopt the color alt of the character on screen

		DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
		DG_right_strip[DG_page] = 2;  						// The strip number of the sprite portrait for the right side of the visual

		DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
		DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "The right character should be Zetterburn
								The character should go back to normal after
								Page 53";

		DG_nextindex[DG_page] = 6;  						// The Next page the dialogue should point to

		// HELPFUL TIP ! ! !
		// Now that this special dialogue is over it will jump back to the main dialogue on Page 6
	
// Page 6
	DG_page = 6;										// Defines the next page
	DG_chat_type[DG_page] = 2; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

	DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
	DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

	DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
	DG_right_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the right side of the visual
	
	DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
	DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Now that the custom sprite portraits are done
							we can show off branching dialogues
							Page 6";
	
	DG_nextindex[DG_page] = 7;  						// The Next page the dialogue should point to
	
// Page 7
	DG_page = 7;										// Defines the next page
	DG_chat_type[DG_page] = 1; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

	DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
	DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

	DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
	DG_right_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the right side of the visual
	
	DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
	DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Now let's move on, Select which dialogue path 
							you want to follow!
							Page 7";
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "Dialogue Path 1
							Dialogue Path 2
							Skip This Step";	

	DG_answers[DG_page] = [60, 70, 8]; 					// The page their respective answers should point to

	// Page 60
		DG_page = 60;										// Defines the next page
		DG_chat_type[DG_page] = 2; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

		DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
		DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

		DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
		DG_right_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the right side of the visual

		DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
		DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "Hopefully you're getting a better understanding
								of the dialogue system?
								Page 60
								Dialogue Path 1";

		DG_nextindex[DG_page] = 61;  						// The Next page the dialogue should point to

		// HELPFUL TIP ! ! !
		// Now that this special dialogue is over it will jump back to the main dialogue on Page 6

	// Page 61
		DG_page = 61;										// Defines the next page
		DG_chat_type[DG_page] = 2; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

		DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
		DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

		DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
		DG_right_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the right side of the visual

		DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
		DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "Next we'll go back to page 7, you can skip 
								this as well to move on on the next page
								Page 61
								Dialogue Path 1";

		DG_nextindex[DG_page] = 7;  						// The Next page the dialogue should point to

		// HELPFUL TIP ! ! !
		// Now that this special dialogue is over it will jump back to the main dialogue on Page 6
	

	// Page 70
		DG_page = 70;										// Defines the next page
		DG_chat_type[DG_page] = 2; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

		DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
		DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

		DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
		DG_right_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the right side of the visual

		DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
		DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "I pray that someone understands this at least
								a little bit...
								Page 70
								Dialogue Path 2";

		DG_nextindex[DG_page] = 71;  						// The Next page the dialogue should point to

		// HELPFUL TIP ! ! !
		// Now that this special dialogue is over it will jump back to the main dialogue on Page 8

	// Page 71
		DG_page = 71;										// Defines the next page
		DG_chat_type[DG_page] = 2; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

		DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
		DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

		DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
		DG_right_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the right side of the visual

		DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
		DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "Next we'll go back to page 7, you can skip 
								this as well to move on on the next page
								Page 71
								Dialogue Path 2";

		DG_nextindex[DG_page] = 7;  						// The Next page the dialogue should point to

		// HELPFUL TIP ! ! !
		// Now that this special dialogue is over it will jump back to the main dialogue on Page 8

// Page 8
	DG_page = 8;										// Defines the next page
	DG_chat_type[DG_page] = 3; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

	DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
	DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

	DG_left_strip[DG_page] = 0;  						// The strip number of the sprite portrait for the left side of the visual
	DG_right_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the right side of the visual
	
	DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
	DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Generally speaking this is pretty much all you need
							to know. 
							Also you can use this this third line for dialogue							
							Page 9 - having a line here during testing might be helpful";

	// You don't need anything after the DG_dialogue since the DG_chat_type is 3 which automatically ends the conversation

///////////////////////////////////////////////////////////////////////////////////////////
//////////////////Same set of code as above without the comments///////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////

// Date Girl Support
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

	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "This is the first dialogue box
							
							Page 0";

	DG_nextindex[DG_page] = 1; 
		
// Page 1
	DG_page = 1;				
	DG_chat_type[DG_page] = 1; 			

	DG_adopts_color_left[DG_page] = true;   			
	DG_adopts_color_right[DG_page] = true; 		
	
	DG_left_strip[DG_page] = 0;  				
	DG_right_strip[DG_page] = 0; 
	
	DG_custom_left_portrait[DG_page] = true;  
	DG_custom_right_portrait[DG_page] = false; 

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Select an option!
							
							Page 1";
	
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "This option goes to Page 0
							This option repeats this question, Page 1
							This option goes to next Page, Page 2";	

	DG_answers[DG_page] = [0, 1, 2]; 

// Page 2	
	DG_page = 2;						
	DG_chat_type[DG_page] = 2; 						

	DG_adopts_color_left[DG_page] = true; 
	DG_adopts_color_right[DG_page] = true;

	DG_left_strip[DG_page] = 0;  
	DG_right_strip[DG_page] = 0; 
	
	DG_custom_left_portrait[DG_page] = true; 
	DG_custom_right_portrait[DG_page] = false; 

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Thanks for answering, let's move on from that and show off 
							some color change concepts
							Page 2";
	
	DG_nextindex[DG_page] = 3;  	
	
// Page 3
	DG_page = 3;	
	DG_chat_type[DG_page] = 1; 		

	DG_adopts_color_left[DG_page] = true;   
	DG_adopts_color_right[DG_page] = true; 

	DG_left_strip[DG_page] = 0; 
	DG_right_strip[DG_page] = 0; 	
	
	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false; 

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Select an option to change alt colors. This only works if 
							the character is not using their default colors
							Page 3";
	
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "Change The Left Side
							Change The Right Side
							Skip This Step";	

	DG_answers[DG_page] = [50, 51, 4];

	// Page 50
		DG_page = 50;

		DG_chat_type[DG_page] = 2;

		DG_adopts_color_left[DG_page] = false; 
		DG_adopts_color_right[DG_page] = true; 

		DG_left_strip[DG_page] = 0;  
		DG_right_strip[DG_page] = 0; 		

		DG_custom_left_portrait[DG_page] = true; 
		DG_custom_right_portrait[DG_page] = false;

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "TThe left character should be a different color!
								The character should go back to normal after
								Page 50";

		DG_nextindex[DG_page] = 4; 
	// Page 51
		DG_page = 51;
		DG_chat_type[DG_page] = 2; 		

		DG_adopts_color_left[DG_page] = true;  
		DG_adopts_color_right[DG_page] = false; 

		DG_left_strip[DG_page] = 0; 
		DG_right_strip[DG_page] = 0; 

		DG_custom_left_portrait[DG_page] = true;
		DG_custom_right_portrait[DG_page] = false;

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "The right character should be a different color!
								The character should go back to normal after
								Page 51";

		DG_nextindex[DG_page] = 4;  						

// Page 4
	DG_page = 4;								
	DG_chat_type[DG_page] = 2; 		

	DG_adopts_color_left[DG_page] = true;   
	DG_adopts_color_right[DG_page] = true; 

	DG_left_strip[DG_page] = 0;  	
	DG_right_strip[DG_page] = 0; 
	
	DG_custom_left_portrait[DG_page] = true;  
	DG_custom_right_portrait[DG_page] = false; 		

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Next we'll show change in portraits or expressions.
							If the workshop character on the left has more than
							Page 4";
	
	DG_nextindex[DG_page] = 5; 
	
// Page 5
	DG_page = 5;				
	DG_chat_type[DG_page] = 1; 			

	DG_adopts_color_left[DG_page] = true;   	
	DG_adopts_color_right[DG_page] = true; 

	DG_left_strip[DG_page] = 0;  	
	DG_right_strip[DG_page] = 0; 				
	
	DG_custom_left_portrait[DG_page] = true;  	
	DG_custom_right_portrait[DG_page] = false; 		

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "one strip it will change the sprite, otherwise 
							the sprite won't change. The left should become Zetter
							Page 5";
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "Change The Left Side
							Change The Right Side
							Skip This Step";	

	DG_answers[DG_page] = [52, 53, 6]; 

	// Page 52
		DG_page = 52;
		DG_chat_type[DG_page] = 2; 

		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = true;

		DG_left_strip[DG_page] = 1;  
		DG_right_strip[DG_page] = 0;
		
		DG_custom_left_portrait[DG_page] = true; 
		DG_custom_right_portrait[DG_page] = false; 

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "The left character should be a different sprite
								The character should go back to normal after
								Page 52";

		DG_nextindex[DG_page] = 6;
	// Page 53
		DG_page = 53;
		DG_chat_type[DG_page] = 2; 

		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = false;

		DG_left_strip[DG_page] = 0; 
		DG_right_strip[DG_page] = 2;
		

		DG_custom_left_portrait[DG_page] = true;
		DG_custom_right_portrait[DG_page] = false; 
		
		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "The right character should be Zetterburn. Their colors 
								should be default as well, as adopts_color_right is false here
								Page 53";

		DG_nextindex[DG_page] = 6; 

// Page 6
	DG_page = 6;;
	DG_chat_type[DG_page] = 2;;

	DG_adopts_color_left[DG_page] = true;;
	DG_adopts_color_right[DG_page] = true; ;

	DG_left_strip[DG_page] = 0;
	DG_right_strip[DG_page] = 0; 
	
	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Now that the custom sprite portraits are done
							we can show off branching dialogues
							Page 6";
	
	DG_nextindex[DG_page] = 7; 
	
// Page 7
	DG_page = 7;
	DG_chat_type[DG_page] = 1;

	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] = true;

	DG_left_strip[DG_page] = 0;
	DG_right_strip[DG_page] = 0; 
	
	DG_custom_left_portrait[DG_page] = true; 
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Now let's move on, Select which dialogue path 
							you want to follow!
							Page 7";
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "Dialogue Path 1
							Dialogue Path 2
							Skip This Step";	

	DG_answers[DG_page] = [60, 70, 8];

	// Page 60
		DG_page = 60;
		DG_chat_type[DG_page] = 2;
		
		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = true;

		DG_left_strip[DG_page] = 0;
		DG_right_strip[DG_page] = 0;

		DG_custom_left_portrait[DG_page] = true;
		DG_custom_right_portrait[DG_page] = false;

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "Hopefully you're getting a better understanding
								of the dialogue system?
								Page 60
								Dialogue Path 1";

		DG_nextindex[DG_page] = 61;

	// Page 61
		DG_page = 61;
		DG_chat_type[DG_page] = 2; 

		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = true;
		DG_left_strip[DG_page] = 0;
		DG_right_strip[DG_page] = 0;

		DG_custom_left_portrait[DG_page] = true;
		DG_custom_right_portrait[DG_page] = false;

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "Next we'll go back to page 7, you can skip 
								this as well to move on on the next page
								Page 61
								Dialogue Path 1";

		DG_nextindex[DG_page] = 7;


	// Page 70
		DG_page = 70;
		DG_chat_type[DG_page] = 2;

		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = true;

		DG_left_strip[DG_page] = 0;
		DG_right_strip[DG_page] = 0;

		DG_custom_left_portrait[DG_page] = true; 
		DG_custom_right_portrait[DG_page] = false;

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "I pray that someone understands this at least
								a little bit...
								Page 70
								Dialogue Path 2";

		DG_nextindex[DG_page] = 71;


	// Page 71
		DG_page = 71;
		DG_chat_type[DG_page] = 2;

		DG_adopts_color_left[DG_page] = true; 
		DG_adopts_color_right[DG_page] = true;

		DG_left_strip[DG_page] = 0;
		DG_right_strip[DG_page] = 0; 
		
		DG_custom_left_portrait[DG_page] = true; 
		DG_custom_right_portrait[DG_page] = false;

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "Next we'll go back to page 7, you can skip 
								this as well to move on on the next page
								Page 71
								Dialogue Path 2";

		DG_nextindex[DG_page] = 7;

// Page 8
	DG_page = 8;
	DG_chat_type[DG_page] = 3;

	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] = true;

	DG_left_strip[DG_page] = 0;
	DG_right_strip[DG_page] = 0;
	
	DG_custom_left_portrait[DG_page] = true;
	DG_custom_right_portrait[DG_page] = false;

	DG_dialogue[DG_page] = "Generally speaking this is pretty much all you need
							to know. 
							Also you can use this this third line for dialogue							
							Page 9 - having a line here during testing might be helpful";

---------------------------* Important *--------------------------------

Feel free to use and expand upon the dialogue system in Callie's code to make your 
own mult-branching compatibility systems with your own characters. If you do please 
DM me and tell me more about it, I'd love to hear about your designs but also would
like to make sure you're not misusing the code for other content.

*/