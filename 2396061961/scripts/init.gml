// init.gml

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
	DG_right_strip[DG_page] = 1;

	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "I'll be honest, this park gives me strange vibes.
							
							
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
	DG_dialogue[DG_page] = "I love how big it is but it's one of the only
							places that feels like there's more to it than 
							what it seems.
							Page 1";
	
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "What do you mean? It's just a park.
							Yeah, I get that feeling too.
							. . . . .";	

	DG_answers[DG_page] = [2, 50, 900]; 

// Page 2	
	DG_page = 2;						
	DG_chat_type[DG_page] = 2; 						

	DG_adopts_color_left[DG_page] = true; 
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
	
	DG_nextindex[DG_page]= 4;
	
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
	
	DG_nextindex[DG_page]= 5;

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
	
	DG_nextindex[DG_page]= 6;
		
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
	
	DG_nextindex[DG_page]= 7;
	
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
	
	DG_nextindex[DG_page] = 9;
	
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
	
	DG_nextindex[DG_page]  = 10;
	
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
	
	DG_nextindex[DG_page] = 11;
	
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
							particular makes me feel as they say 'at home.'
							Page 11";
	
	DG_nextindex[DG_page] = 12;
	