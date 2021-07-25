//asd

starLimit = 30;
starTimer = 0;//don't touch
starTimerDef = 20;//how often we spawn a star
starX = get_marker_x(1);//x and y of where we're spawning stars
starY = get_marker_y(1);


// Date Girl Support
	Chatting = true; 

	DG_portrait = sprite_get("DG_portrait");
	var DG_page = 0;
	
// Page 0
	DG_page = 0;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 0;
 
	DG_right_strip[DG_page] = 18;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
	"Oh! What a lovely cafe we're in... This place looks so cute!
Seems that they're open for business too!
							";

	DG_nextindex[DG_page] = 1; 
		
// Page 1
	DG_page = 1;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 0;
 
	DG_right_strip[DG_page] = 18;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"It seems their menu has mainly tea... coffee... pastries...
I wonder which one I should try...?
							";

	DG_nextindex[DG_page] = 2; 
	
// Page 2
	DG_page = 2;
	DG_chat_type[DG_page] = 1;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 0;
 
	DG_right_strip[DG_page] = 1;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "How about you? What do you think you'll get?";
							
    	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  
"Honey Tea and a fluffy Cake.
Coffee and some snappy Biscuits.
I'll try what you'll have!";

	DG_answers[DG_page] = [3, 4, 5];

// Page 3
	DG_page = 3;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 0;
 
	DG_right_strip[DG_page] = 1;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"Hmm, you seem to like the sweet stuff! I'll try ordering
the same as you.
							";
							
	DG_nextindex[DG_page] = 22; 
	
// Page 4
	DG_page = 4;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 0;
 
	DG_right_strip[DG_page] = 1;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"Oh... what a sophisticated taste. I don't drink much
coffee, but I think I'll try this cafe's coffee out.
							";
							
	DG_nextindex[DG_page] = 16; 
	
// Page 5
	DG_page = 5;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 0;
 
	DG_right_strip[DG_page] = 1;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"Hmm, I'm thinking of going with Waffles and some
Fruit Juice to go with it...
							";
							
	DG_nextindex[DG_page] = 6; 
	
// Page 6
	DG_page = 6;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 1;
 
	DG_right_strip[DG_page] = 18;

	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;
    
    // Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "You decided to order the same as Callie.";

    DG_nextindex[DG_page] = 7; 
	
	
// Page 7
	DG_page = 7;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 0;
 
	DG_right_strip[DG_page] = 1;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"Oh, this will be so delicious... They put whipped cream
along with fresh strawberries on their Waffles!
							";
							
    DG_nextindex[DG_page] = 8;
    
// Page 8
	DG_page = 8;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 18;
 
	DG_right_strip[DG_page] = 18;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"You both eat the meal, and the food was just as delicious as
how cute it was. The waffles were pink, and the strawberries
were cut and placed together to form a heart... It's adorable!
							";
							
    DG_nextindex[DG_page] = 9;
    
// Page 9
	DG_page = 9;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 18;
 
	DG_right_strip[DG_page] = 18;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"After finishing the main meal, the fruit juice was served.
They give you the option to choose between a smooth type of
juice or one where the juice has tiny pieces of fruit in it.
							";
							
    DG_nextindex[DG_page] = 10;
    
// Page 10
	DG_page = 10;
	DG_chat_type[DG_page] = 1;
	
	DG_adopts_color_left[DG_page] = true;
	DG_adopts_color_right[DG_page] =  true;

	DG_left_strip[DG_page] = 18;
 
	DG_right_strip[DG_page] = 18;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Do you prefer with or without the fruit bits in your juice?";
							
    	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "With
Without.";

	DG_answers[DG_page] = [11, 12, 10];
	
// Page 11
	DG_page = 11;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 18;
 
	DG_right_strip[DG_page] = 18;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"They give you the juice with the fruit bits inside.
It was chewy and gave you a pleasant extra bite to 
your already delicious meal.";
							
    DG_nextindex[DG_page] = 13;
    
// Page 12
	DG_page = 12;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 18;
 
	DG_right_strip[DG_page] = 18;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"They give you the pure fruit juice, and its very
smooth. Hits the right spot when you need a drink
to help you swallow, and it adds to the flavor, too!
							";
							
    DG_nextindex[DG_page] = 13;
    
// Page 13
	DG_page = 13;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 0;
 
	DG_right_strip[DG_page] = 1;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"Wow... That was delicious! I'll definitely come back again... 
The waffles were chewy and soft, and the whipped cream
wasn't sweet but the strawberries and juice made up for it!";
							
    DG_nextindex[DG_page] = 14;
    
// Page 14
	DG_page = 14;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 0;
 
	DG_right_strip[DG_page] = 1;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"Thanks for sharing this meal with me, Player-kun.
I'll pay half the bill as part of my gratitude...
							";
							
    DG_nextindex[DG_page] = 15;
    
// Page 15
	DG_page = 15;
	DG_chat_type[DG_page] = 3;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 0;
 
	DG_right_strip[DG_page] = 18;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"I'll see ya! Have a lovely day!";

// Page 16
	DG_page = 16;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 0;
 
	DG_right_strip[DG_page] = 1;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"Hmm, it seems they have a large range of coffees to
choose from! I'll go with a mocha.
You seem to like the dark coffee though!";
							
    DG_nextindex[DG_page] = 17;
    
// Page 17
	DG_page = 17;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 18;
 
	DG_right_strip[DG_page] = 18;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"You sit down and have a drink of coffee, while the
biscuits were saved shortly after.";
							
    DG_nextindex[DG_page] = 18;
    
// Page 18
	DG_page = 18;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 18;
 
	DG_right_strip[DG_page] = 18;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"Your coffee was dark, and it was bitter, hot, and
toasty. Just the way you like it. The biscuits they
gave were slightly nutty in flavor.";
							
    DG_nextindex[DG_page] = 19;
    
// Page 19
	DG_page = 19;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 0;
 
	DG_right_strip[DG_page] = 1;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"Its ironic, isn't it? This coffee is meant to keep
you awake... but right now, its warm enough to make
me feel relaxed.";
							
    DG_nextindex[DG_page] = 20;
    
// Page 20
	DG_page = 20;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 18;
 
	DG_right_strip[DG_page] = 18;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"After you the coffee cups were empty, and the 
biscuits were gone, you were very satisfied with
the nice breaktime you just had.";
							
    DG_nextindex[DG_page] = 21;
    
// Page 21
	DG_page = 21;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 0;
 
	DG_right_strip[DG_page] = 1;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"That was quite a nice time, Player-kun. I've
never felt more grounded... And despite that, now
I feel super energized! Like I'm pumped up!";
							
    DG_nextindex[DG_page] = 14;
    
// Page 22
	DG_page = 22;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 0;
 
	DG_right_strip[DG_page] = 1;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"What a variety of cakes! Hmm... I'll go with the
chiffon cake. I'll order us both a slice!";
							
    DG_nextindex[DG_page] = 23;
    
// Page 23
	DG_page = 23;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 18;
 
	DG_right_strip[DG_page] = 18;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"You both sit down, and immediately, you notice that
the cake slice has a whitish and pinkish frosting.
On the top are some white chocolate decorations.";
							
    DG_nextindex[DG_page] = 24;
    
// Page 24
	DG_page = 24;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 18;
 
	DG_right_strip[DG_page] = 18;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"You slice the cake with a fork and dig in.
Its soft and pleasant, and after you start chewing
it down, it starts becoming chewy... delicious!";
							
    DG_nextindex[DG_page] = 25;
    
// Page 25
	DG_page = 25;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 18;
 
	DG_right_strip[DG_page] = 18;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"The tea arrives shortly after taking your first bite.
The tea is suprisingly not bitter, despite what type of tea
it is. The honey made it the right amount of sweet.";
							
    DG_nextindex[DG_page] = 26;
    
// Page 26
	DG_page = 26;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 18;
 
	DG_right_strip[DG_page] = 18;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"Once you've eaten the entire cake slikes, the frosting
on the small plate remains, which you try to scoop up
with a spoon to make sure you don't leave any leftovers.";
							
    DG_nextindex[DG_page] = 27;
    
// Page 27
	DG_page = 27;
	DG_chat_type[DG_page] = 2;
	
	DG_adopts_color_left[DG_page] = false;
	DG_adopts_color_right[DG_page] =  false;

	DG_left_strip[DG_page] = 0;
 
	DG_right_strip[DG_page] = 1;


	DG_custom_left_portrait[DG_page] = false;
	DG_custom_right_portrait[DG_page] = false;

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = 
"That was heavenly... The best desert I've ever had in
a while! I'm glad I chose that cake, it was soft and
scrumptious, but with enough bite to make it feel full.";
							
    DG_nextindex[DG_page] = 14;