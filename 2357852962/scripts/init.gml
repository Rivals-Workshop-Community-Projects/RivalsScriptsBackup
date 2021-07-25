platform_1 = noone;
platform_2 = noone;
charles = noone;
end_cutscene = noone;
cutscene_bg = noone;
charles_crashed = false;
charles_summoned = false;
training_mode = false;
stage_state = 0;
state_timer = 0;
cutscene_ladder = 500;
usual_ladder = 32;

DG_active = false;
DG_charles_trigger = false;

date_page = 0;

Chatting = true; 					// This tells Callie that the character has compatibility
DG_portrait = sprite_get("charles_date"); 		// The .png strip of your character (Similar to a normal animation strip)
var DG_page = 0; 					// The current page number (Should start at 0) 

// Page 0
	DG_page = 0;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 7;

	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = true;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Hmm... I can't tell what this place is supposed to be... 
	some sort of aircraft I think? From the looks of it, 
	we're pretty high up in the sky, so that might just be the case.";

	DG_nextindex[DG_page] = 1; 
	
	DG_page = 1;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0; 
 
	DG_right_strip[DG_page] = 0;

	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = true;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Check check, this is Charles! Just figured I'd check in on you 
	since you don't seem like you belong here.";

	DG_nextindex[DG_page] = 2; 
		

	DG_page = 2;				
	DG_chat_type[DG_page] = 1; 			

	DG_adopts_color_left[DG_page] = true;   			
	DG_adopts_color_right[DG_page] = false; 		
	
	DG_left_strip[DG_page] = 0;  				
	DG_right_strip[DG_page] = 0; 
	
	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = true;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "What will you say?";
	
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "Wait, who are you supposed to be? How;d you get my number?!
							I appreciate it! Could you tell me more about who you are?
							[Make an animal noise]";	

	DG_answers[DG_page] = [3, 3, 69]; 

// Page 2	
	DG_page = 3;						
	DG_chat_type[DG_page] = 2; 						

	DG_adopts_color_left[DG_page] = true; 
	DG_adopts_color_right[DG_page] = false;

	DG_left_strip[DG_page] = 0;  
	DG_right_strip[DG_page] = 1; 
	
	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = true;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "The name's Charles, like I just told ya'! But I think I
	should tell you a little more than just that.";
	
	DG_nextindex[DG_page] = 4;
	
	DG_page = 4;						
	DG_chat_type[DG_page] = 2; 						

	DG_adopts_color_left[DG_page] = true; 
	DG_adopts_color_right[DG_page] = false;

	DG_left_strip[DG_page] = 0;  
	DG_right_strip[DG_page] = 0; 
	
	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = true;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "I'm with the government, and I'm helping someone we've
	recruited to take down the Toppat Clan. Not sure if you've
	ever heard of these guys, but they're pretty nasty -";
	
	DG_nextindex[DG_page] = 5;  
	
	DG_page = 5;						
	DG_chat_type[DG_page] = 2; 						

	DG_adopts_color_left[DG_page] = true; 
	DG_adopts_color_right[DG_page] = false;

	DG_left_strip[DG_page] = 0;  
	DG_right_strip[DG_page] = 0; 
	
	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = true;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "- business if you ask me. They've gotten away with lots
	of crimes, and we're trying to make sure the Toppats
	don't cause any more trouble than they already have.";
	
	DG_nextindex[DG_page] = 6;  
	
// Page 3
	DG_page = 6;	
	DG_chat_type[DG_page] = 1; 		

	DG_adopts_color_left[DG_page] = true;   
	DG_adopts_color_right[DG_page] = false; 

	DG_left_strip[DG_page] = 0; 
	DG_right_strip[DG_page] = 0; 	
	
	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = true; 

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "What will you say?";
	
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "Could you tell me more about the Toppats?
							Who's your colleague?";	

	DG_answers[DG_page] = [50, 7];

	// Page 50
		DG_page = 50;

		DG_chat_type[DG_page] = 2;

		DG_adopts_color_left[DG_page] = true; 
		DG_adopts_color_right[DG_page] = false; 

		DG_left_strip[DG_page] = 0;  
		DG_right_strip[DG_page] = 3; 		

		DG_custom_left_portrait[DG_page] = false; 
		DG_custom_right_portrait[DG_page] = true;

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "We don't exactly have too much information on them,
		which is why we're sending someone in to investigate them.
		They've gotten away with a lot, but haven't been caught.";

		DG_nextindex[DG_page] = 6; 
	// Page 51						

// Page 4
	DG_page = 7;								
	DG_chat_type[DG_page] = 2; 		

	DG_adopts_color_left[DG_page] = true;   
	DG_adopts_color_right[DG_page] = false; 

	DG_left_strip[DG_page] = 0;  	
	DG_right_strip[DG_page] = 0; 
	
	DG_custom_left_portrait[DG_page] = false;  
	DG_custom_right_portrait[DG_page] = true; 		

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "There's a chance you might've heard of the guy, but we'll leave
	his name classified for now. He's had a criminal record of his
	own, too, but we're giving him a chance to clear his name by-";
	
	DG_nextindex[DG_page] = 8; 
	

	// Page 52
		DG_page = 8;
		DG_chat_type[DG_page] = 2; 

		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = false;

		DG_left_strip[DG_page] = 0;  
		DG_right_strip[DG_page] = 4;
		
		DG_custom_left_portrait[DG_page] = false; 
		DG_custom_right_portrait[DG_page] = true; 

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "- exposing the Toppats for who they REALLY are. My
		Captain has some minor doubts he'll go the way we want him
		to since we don't have surveilance on him right now...";

		DG_nextindex[DG_page] = 9;
	// Page 53
		DG_page = 9;
		DG_chat_type[DG_page] = 2; 

		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = false;

		DG_left_strip[DG_page] = 0; 
		DG_right_strip[DG_page] = 1;
		

		DG_custom_left_portrait[DG_page] = false;
		DG_custom_right_portrait[DG_page] = true; 
		
		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "Ooh! I've got the perfect plan! Maybe as a backup, in
		case our friend here isn't on the right track, you could
		lend us a hand! In return, we can get you out of there, too.";

		DG_nextindex[DG_page] = 10; 
		
		DG_page = 10;				
    	DG_chat_type[DG_page] = 1; 			
    
    	DG_adopts_color_left[DG_page] = true;   			
    	DG_adopts_color_right[DG_page] = false; 		
    	
    	DG_left_strip[DG_page] = 0;  				
    	DG_right_strip[DG_page] = 0; 
    	
    	DG_custom_left_portrait[DG_page] = false;
    	DG_custom_right_portrait[DG_page] = true;
    
    	// Dialogue of the character on the Left Side
    	DG_dialogue[DG_page] = "What will you say?";
    	
    	// Dialogue to select for the character on the Right Side
    	DG_options[DG_page] =  "I think I'm good buddy...
    	I'd be happy to!";	
    
    	DG_answers[DG_page] = [70, 11];
    	
    	DG_page = 11;
		DG_chat_type[DG_page] = 2; 

		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = false;

		DG_left_strip[DG_page] = 0; 
		DG_right_strip[DG_page] = 1;
		

		DG_custom_left_portrait[DG_page] = false;
		DG_custom_right_portrait[DG_page] = true; 
		
		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "Alright! So you see that other side there where it says
		''Records''? I'm gonna need you to get across that gap to there.
		Think you can do it, or will you need some help?";
		
		DG_nextindex[DG_page] = 12;
		
		
		
		DG_nextindex[DG_page] = 12; 
		
		DG_page = 12;				
    	DG_chat_type[DG_page] = 1; 			
    
    	DG_adopts_color_left[DG_page] = true;   			
    	DG_adopts_color_right[DG_page] = false; 		
    	
    	DG_left_strip[DG_page] = 0;  				
    	DG_right_strip[DG_page] = 0; 
    	
    	DG_custom_left_portrait[DG_page] = false;
    	DG_custom_right_portrait[DG_page] = true;
    
    	// Dialogue of the character on the Left Side
    	DG_dialogue[DG_page] = "What will you choose?";
    	
    	// Dialogue to select for the character on the Right Side
    	DG_options[DG_page] =  "I'd love to see your face, but I got it!
    	Could you lend me a hand please?";	
    
    	DG_answers[DG_page] = [13, 71];
    	
    	DG_page = 13;
		DG_chat_type[DG_page] = 2; 

		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = false;

		DG_left_strip[DG_page] = 0; 
		DG_right_strip[DG_page] = 2;
		

		DG_custom_left_portrait[DG_page] = false;
		DG_custom_right_portrait[DG_page] = true; 
		
		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "Shucks, that means a whole lot to me... Just looking
		at you from here, I think you look pretty nice, so I hope
		you won't be dissatisfied with how I look!";
		
		DG_nextindex[DG_page] = 14;
		
		DG_page = 14;
		DG_chat_type[DG_page] = 2; 

		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = false;

		DG_left_strip[DG_page] = 0; 
		DG_right_strip[DG_page] = 0;
		

		DG_custom_left_portrait[DG_page] = false;
		DG_custom_right_portrait[DG_page] = true; 
		
		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "In any case, I think there's already a platform there
		you can take across, too! The Toppats must've really been
		fed up with trying to cross that gap themselves, huh?";
		
		DG_nextindex[DG_page] = 15;
		
		DG_page = 15;
		DG_chat_type[DG_page] = 2; 

		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = false;

		DG_left_strip[DG_page] = 0; 
		DG_right_strip[DG_page] = 7;
		

		DG_custom_left_portrait[DG_page] = false;
		DG_custom_right_portrait[DG_page] = true; 
		
		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "They seemed to have left the door wide open too. It's
		almost like these poor dimwits are asking to get robbed!";
		
		DG_nextindex[DG_page] = 16;
		
		DG_page = 16;
		DG_chat_type[DG_page] = 2; 

		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = false;

		DG_left_strip[DG_page] = 18; 
		DG_right_strip[DG_page] = 7;
		

		DG_custom_left_portrait[DG_page] = false;
		DG_custom_right_portrait[DG_page] = true; 
		
		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "One record robbery later...";
		
		DG_nextindex[DG_page] = 17;
		
		DG_page = 17;
		DG_chat_type[DG_page] = 2; 

		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = false;

		DG_left_strip[DG_page] = 0; 
		DG_right_strip[DG_page] = 7;
		

		DG_custom_left_portrait[DG_page] = false;
		DG_custom_right_portrait[DG_page] = true; 
		
		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "Hey Charles! I think I got just what you needed!";
		
		DG_nextindex[DG_page] = 18;
		
		DG_page = 18;
		DG_chat_type[DG_page] = 2; 

		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = false;

		DG_left_strip[DG_page] = 0; 
		DG_right_strip[DG_page] = 1;
		

		DG_custom_left_portrait[DG_page] = false;
		DG_custom_right_portrait[DG_page] = true; 
		
		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "Perfect! Now if you could just make it to someplace where you
		can reach my helicopter, that'd be great! Just be sure
		to hit me up once you do, alright?";
		
		DG_nextindex[DG_page] = 19;
		
		DG_page = 19;
		DG_chat_type[DG_page] = 3; 

		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = false;

		DG_left_strip[DG_page] = 0; 
		DG_right_strip[DG_page] = 7;
		

		DG_custom_left_portrait[DG_page] = false;
		DG_custom_right_portrait[DG_page] = true; 
		
		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "Okie dokie then! Thanks for all your help!";
		
		DG_nextindex[DG_page] = 20;

// Page 7


	// Page 60
		DG_page = 69;
		DG_chat_type[DG_page] = 2;
		
		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = false;

		DG_left_strip[DG_page] = 0;
		DG_right_strip[DG_page] = 5;

		DG_custom_left_portrait[DG_page] = false;
		DG_custom_right_portrait[DG_page] = true;

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "Okay...? I don't- I don't understand what that means.";

		DG_nextindex[DG_page] = 2;

	// Page 61
		DG_page = 61;
		DG_chat_type[DG_page] = 2; 

		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = false;
		DG_left_strip[DG_page] = 0;
		DG_right_strip[DG_page] = 0;

		DG_custom_left_portrait[DG_page] = false;
		DG_custom_right_portrait[DG_page] = true;

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "Next we'll go back to page 7, you can skip 
								this as well to move on on the next page
								Page 61
								Dialogue Path 1";

		DG_nextindex[DG_page] = 7;


	// Page 70
		DG_page = 70;
		DG_chat_type[DG_page] = 3;

		DG_adopts_color_left[DG_page] = true;
		DG_adopts_color_right[DG_page] = false;

		DG_left_strip[DG_page] = 0;
		DG_right_strip[DG_page] = 3;

		DG_custom_left_portrait[DG_page] = false; 
		DG_custom_right_portrait[DG_page] = true;

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "O-Oh. Okay. J-Just thought you could use the help,
		y'know?";

		DG_nextindex[DG_page] = 71;


        DG_page = 71;
		DG_chat_type[DG_page] = 3;

		DG_adopts_color_left[DG_page] = true; 
		DG_adopts_color_right[DG_page] = false;

		DG_left_strip[DG_page] = 0;
		DG_right_strip[DG_page] = 6; 
		
		DG_custom_left_portrait[DG_page] = false; 
		DG_custom_right_portrait[DG_page] = true;

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "Alright! Here I come!";

		DG_nextindex[DG_page] = 72;
		
		DG_page = 72;
		DG_chat_type[DG_page] = 2;

		DG_adopts_color_left[DG_page] = true; 
		DG_adopts_color_right[DG_page] = false;

		DG_left_strip[DG_page] = 0;
		DG_right_strip[DG_page] = 4; 
		
		DG_custom_left_portrait[DG_page] = false; 
		DG_custom_right_portrait[DG_page] = true;

		// Dialogue of the character on the Left Side
		DG_dialogue[DG_page] = "Hmm... On second thought, I might get caught if I do
		that, so maybe not...";

		DG_nextindex[DG_page] = 14;