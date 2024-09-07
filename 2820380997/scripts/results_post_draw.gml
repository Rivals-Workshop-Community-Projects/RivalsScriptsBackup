// Synced Var Stuff to ensure winquotes are enabled
/* Synced Variable should account for these. We have 32 bits to work with.
1. Color Shift - 2 bits - Off / Extra 1 / Extra 2
2. Status of Win Quotes Enabled - 1 bit
3. Status of Round Start Dialog Enabled - 1 bit
4. Swap Nspec / Dspec - 1 bit
5. Portrait to use - 2 bits
6. Alt Outfit Bit enable - 1 bit
*/

split_var = split_synced_var(2,1,1,1,2,1);

// Synced variable overwrite
color_shift = split_var[0];
flag_win_quote_enabled = split_var[1]; // Not used anymore, this bariable is unused
flag_round_start_dialog = split_var[2];
swap_nspec_dspec_input = split_var[3];
portrait_to_use = split_var[4];
alt_outfit_enabled = split_var[5];

// Alt outfit handler 
if(alt_outfit_enabled == 1){
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("9t-portrait"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("9t-result_small"));
}
else{
set_ui_element(UI_WIN_PORTRAIT, get_char_info(player, INFO_PORTRAIT));
set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small")); // This forces me to have the result in the sprites folder as well

}

// Win Quote Handling
if(winner == player){ // Removed this flag_win_quote_enabled == true && 
    // Create Timer
    if("run_timer" not in self){run_timer = 0}
    run_timer++;

    // Code from Frtoud for smuggling hitbox data
    // Relies on unload.gml sending over a persistent hitbox with said data
    with (asset_get("pHitBox"))
    {
        if ("results_data" in self){
            other.results_data = results_data;
            break;
	    }
	    // Set default
	    //else other.results_data = [0, 0];
    }
    
    //print(results_data.opponent_name);
    
    run_timer = clamp(run_timer,0,1000);
    var slide_timer = clamp(run_timer-200,0,60);
    var offset_x = 50;
    
    if("win_quote_string" not in self){
        if(results_data.num_of_players <= 2)
        win_quote_string = get_win_quote(results_data.opponent_name);
       // print(win_quote_string);
       else
            exit;
    }
    	// Winquotes from Ducky V2
    	draw_sprite_ext(sprite_get("textbox"),0,view_get_xview()+ease_quadOut(-550,-50,30,30),310,1,1,0,c_white,1);
		draw_sprite_ext(get_char_info(player, INFO_HUD), 0, view_get_xview()+ease_quadOut(-550,-50,30,30)+65,330,1,1 ,0,c_white,1);
		textDraw(view_get_xview()+ease_quadOut(-550,-50,30,30)+(300), 322, "fName", c_white, 16, 240, 1.5, true, 1, '"'+string(win_quote_string)+'"');
    	
    	// Old Winquotes from Ducky
        //draw_sprite_ext(sprite_get("textbox"),0,ease_quadOut(view_get_hview()*2,view_get_hview()+offset_x,slide_timer,60),400,0.6,1,0,c_white,1);
        //textDraw(ease_quadOut(view_get_hview()*2,view_get_hview()+offset_x,slide_timer,60)+(240),410,"medFont",c_white,22,350,1,true,1,string(win_quote_string));
        
        // Old Winqoutes before the Ducky Hook Up (THANKS DUCKY)
        //rectDraw(25,325,450,425,c_dkgray,c_white,current_transparency);
        //textDraw(240,331,"medFont",c_white,22,410,1,true,current_transparency,string(win_quote_string));
        
        //draw_rectangle_colour(25, 325, 450, 425, c_blue, c_blue, c_black, c_black, false); // Body
        //draw_rectangle_colour(25, 325, 450, 425, c_white, c_white, c_gray, c_gray, true); // Main Outline
        //draw_rectangle_colour(30, 330, 445, 420, c_white, c_white, c_gray, c_gray, true); // Inside Outline
        
}

//print(portrait_to_use);
//Handle setting portraits - Colors Take Priority
// Cam's Portrait
if(get_player_color(player) == 23){ // Flame Shackle
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_cam"));
}

// Feni's Portrait
else if(get_player_color(player) == 10 && color_shift == 0){ // Flame Shackle
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_feni"));
}

// Everything Else
else switch(portrait_to_use){
	case 0: // Default
		set_ui_element(UI_WIN_PORTRAIT, get_char_info(player, INFO_PORTRAIT));
	break;
	case 1: // Ninetailed Roekoko
		
	break;
	case 2: // Neco Roekoko
		set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_neco_roe"));
	break;
	default:
	break;
}

#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
//print(chunk_arr);
return chunk_arr;

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));
draw_set_halign(fa_middle); // This is important cause it will cause the text to not align properly
if argument[7]{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);


#define rectDraw(x1, y1, x2, y2, color, out_color, alpha)

draw_set_alpha(argument[6]);
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[5], argument[5], argument[5], argument[5], false);
draw_set_alpha(argument[6]*1.5);
draw_rectangle_color(argument[0]+2, argument[1]+2, argument[2]-2, argument[3]-2, argument[4], argument[4], argument[4], argument[4], false);
draw_set_alpha(1);

#define get_win_quote(character_name)
{
	// Use win quote for multiple quotes, otherwise use win_quote for a single quote.
    var win_quote_array = []; // For multiple arrays
    var win_quote; // For Single Win Quotes

/* Multi Quote Template
	if(character_name == ""){
    	win_quote_array = [
    	"",
    	"",
    	""
		]
    }
*/
// Single line Quote templace 
// if(character_name == ""){win_quote = ""}
    
    //My Characters in release order
    if(character_name == "Klockwurth"  || character_name == "Klock DE"){
    	win_quote_array = [
    	"I hope you had fun playing with me! I don't want you to be grumpy Mr. Owl.",
    	"How many licks does it take to get to the center of a tootsie pop Mr. Owl?",
    	"You move around pretty quick for an older gentleman."
		]
    }
    
	if(character_name == "Daora" || character_name == "Daora Beta"){
    	win_quote_array = [
    	"That was a fun training session Daora! What are we getting to eat after this?",
    	"I am getting better at grabbing people, thanks to training with you!",
    	"Your kimono is so pretty, I want to get one from who ever made yours!"
		]
    }
    
    if(character_name == "Roekoko" || character_name == "Roekoko Beta"){
    	win_quote_array = [
    	"My illusions are so real... I think I may even be tricking myself...",
    	"If my clone can spawn clones, and those clones can spawn clones... and those clones can spawn clones...",
    	"Hey evil twin, want to be friends?"
		]
    }
    
    if(character_name == "Sailee"  || character_name == "Sailee Beta"){
    	win_quote_array = [
    	"You are so strong, I know you are holding back, but I want to be as strong as you one day for real.",
    	"I won, that means you have to tell me more secrets about my mom! Aunt secrets are the best secrets!",
    	"You're my favorite aunt! I mean, you're my only aunt, but still my favorite!"
		]
    }
    
	if(character_name == "Solarei"  || character_name == "Solarei Beta"){
    	win_quote_array = [
    	"I love to see you fired up Grandma when we train! You're always so lazy normally.",
    	"I can only imagine how strong you really are when you aren't holding back.",
    	"You're my favorite Grandma! I mean, you're my only Grandma, but still my favorite!"
		]
    }
    
    if(character_name == "Tzukiyo"  || character_name == "Tzukiyo Beta"){
    	win_quote_array = [
		"You can't hide the monster inside of you anymore, I want to get to know her.",
        "MOM, IM HUNGRY, WHAT'S FOR DINNER?",
        "Your shadow is so cool, when will you trust me enough to show me how to use mine?"
		]
    }
    
    // Base Cast
    if(character_name == "Zetterburn"){win_quote = "Your attacks are really cool! I think I may need to take some of them for my own..."}
    if(character_name == "Forsburn"){win_quote = "I have studied your work extensively, it is an honor to meet you!"}
    if(character_name == "Clairen"){win_quote = "Training with you is fun! We will defeat Loxodont, so that we may live in peace."}
    if(character_name == "Mollo"){win_quote = "Your bombs are pretty cool! Can I have some? I have some ideas for some cool explosions."}
    if(character_name == "Wrastor"){win_quote = "Your flight is amazing, but you can't fly away when I grab you!"}
    if(character_name == "Absa"){win_quote = "Daora has spoken highly of your techniques! May I ask for an autograph for her?"}
    if(character_name == "Elliana"){win_quote = "Your machines are cool! Can I take a ride in the mech?"}
    if(character_name == "Pomme"){win_quote = "If you ever need a manga artist for your next album, give me a call!"}
    if(character_name == "Kragg"){win_quote = "Throwing rocks is cool, but I think throwing a copy of yourself is pretty cool too."}
    if(character_name == "Maypul"){win_quote = "I love your tree house! I would love to live in one of my own one day."}
    if(character_name == "Sylvanos"){win_quote = "You are pretty angry Mr. Wolf! We can talk this out!"}
    if(character_name == "Olympia"){win_quote = "I love your martial arts adventures, it was one of the things that got me into a dojo."}
    if(character_name == "Orcane"){win_quote = "Wow! You are cute! Now that we're done fighting, can I pet you?"}
    if(character_name == "Etalus"){win_quote = "I am from a colder region, I am used to navigating the ice."}
    if(character_name == "Ranno"){win_quote = "We're the same, I want to solve all of my problems without fighting, I prefer hugs instead!"}
    if(character_name == "Hodan"){win_quote = "I also enjoy hot springs. Do you know any around here I could go to?"}
    if(character_name == "Ori & Sein"){win_quote = "My clone and I are also a team! But I have a little more control over her."}
    if(character_name == "Shovel Knight"){win_quote = "Watch where you're swinging that shovel! You could hurt someone!"}
    
    // My Adjacent Characters
    if(character_name == "Iroh" || character_name == "Iroh DE"){win_quote = "Your Daora's Grandpa, right? It was nice to meet you!"}
    if(character_name == "Yugo"){win_quote = "Your companion is very cute! Can I pet it?"}
    
    // Vortex Gallery 23
    if(character_name == "Anglara"){win_quote = "Would you know a good place to get Sushi around here Ms. Fish Lady?"} // works
    if(character_name == "Barr"){win_quote = "Wow you can use a bar to attack? All I can do is change the UI for funny tags."} // workss
    //if(character_name == "Bluey"){win_quote = ""} // works
    if(character_name == "Callie"){win_quote = "We should host a dating show one of these days! Think of all the cuties we can talk to!"} // works
    if(character_name == "Candyman"){win_quote = "I am not sure what you would call that sport, but what ever it was, it was fun!"} // works
    if(character_name == "Chimera"){win_quote = "No need to be so angry. Would you feel better if I gave you a hug?"} // works
    if(character_name == "Crewmate"){win_quote = "Both me and my clone are voting Red, they are pretty sus."} // sus
    if(character_name == "Donyoku"){win_quote = "You appear to be bleeding gold! Me and my clone will carry you to the hospital."} // works
    if(character_name == "Fernet"){win_quote = "I love your outfit, Fernet! Can we get some milkshakes after this?"} // works
    if(character_name == "Epinel"){win_quote = "Your anger and lack of remorse makes being nice to you very hard, Mr. Hedgehog."} // works
    if(character_name == "Henry Stickmin"){win_quote = "Next heist you plan should be Loxodont's bank. I could help you with that..."} // works
    //if(character_name == "Lukastar"){win_quote = ""} // works
    if(character_name == "Lyca"){win_quote = "A fox that uses wisps made of her own dead children is pretty chilling to fight..."} // works
    if(character_name == "Mal"){win_quote = "No need to be so sad, turn that frown upside down!"} // works
    if(character_name == "Maverick"){win_quote = "You should let me fly with you on your next flight!"} // works
    if(character_name == "N/A"){win_quote = "Daora told me the Abyss was trouble. I can see what she means. No more evil is allowed!"} // works
    if(character_name == "Nade"){win_quote = "Stop swinging those weapons around, if you hurt someone, I won't forgive you!"} // works
    if(character_name == "Nate"){win_quote = "You should be careful, this is a dangerous place for a kid to be hanging around."} // works
    if(character_name == "Future Ducky"){win_quote = "Being a crack shot won't help you when you waste your ammo shooting clones... hehehe...."} // Doesn't work
    if(character_name == "Po & Gumbo"){win_quote = "You're that famous cook from the Bayou! Can I buy some food from you?"} // works
    if(character_name == "Rin Kaenbyou"){win_quote = "Your wisp is dangerous! What do you feed it?"} // works
    if(character_name == "Rykenburn"){win_quote = "Wow you are very good at hugging! I also like to think I am good at hugging!"} // works
    //if(character_name == "Suitcase"){win_quote = ""} // works
    if(character_name == "Torga"){win_quote = "Don't mind me causing a ruckus. You can continue to meditate after this."} // Works
    if(character_name == "Wally"){win_quote = "That was fun Wally! We should go swimming after this!"} // works
    if(character_name == "Zephrie"){win_quote = "I can throw my clone pretty far, how far do you think I can throw you?"} // works
    
    // Riptide 24
    if(character_name == "Amanita"){win_quote = "You are very pretty, but uh... your spores and stuff are pretty nasty."}; // Works
    if(character_name == "Alexis"){win_quote = "I am sorry, but I am stealing your stun gun, I wanna prank a couple of people."}; // Works
    if(character_name == "Amaya"){win_quote = "Poison is very dangerous, that's no fun to play with."}; // Works
    if(character_name == "Arcuin"){win_quote = "Me and my clone will grab your chain and you can try to beat us in jumprope!"}; // Works
    if(character_name == "Awatsu"){win_quote = "Playing with you is basically like taking a bath! Only without the nice hot water."}; // Works
    if(character_name == "Ayaka Kinoshita"){win_quote = "Your axe tricks are pretty cool! How far can you hit a bullseye?"}; // Works
    if(character_name == "Azi & Mr. baggy"){win_quote = "You're even more of a brat than me! And your bookbag is trying to eat my clone."}; // Works
    if(character_name == "Brook"){win_quote = "I think you may have dropped your delivery order during that fight, sorry!"}; // Doesn't work
    if(character_name == "Bhadra"){win_quote = "Every coin you throw will help fund my next meals for a couple of years."}; // Works
    if(character_name == "Desperado"){win_quote = "I love your cowboy gear. If you weren't uh... that, I'd probably want a photo with you."}; // Works
    if(character_name == "Gawr Gura"){win_quote = "My friends love Vtubers! But I prefer traditional manga."}; // Works
    if(character_name == "Hana"){win_quote = "I love your record collection, can I borrow some?"};// works
    if(character_name == "Helios"){win_quote = "I don't play a lot of billiards, but it's something I could get into."}; // Works
    if(character_name == "Hex"){win_quote = "You might be more confusing to fight than fighting me. That's quite the feat!"};
    if(character_name == "Hoshimachi Suisei"){win_quote = "Murdering people is bad, you should reconsider your career."}; // Works
    if(character_name == "Jerma985"){win_quote = "My favorite video of yours is GRAB THE AUTO 5!"}; // Works
    if(character_name == "Kiku"){win_quote = "World's strongest puncher vs world's cutest kicker, who wins?"}; // Works
    if(character_name == "Koishi"){win_quote = "Hold on, I have to take this call."}; // Works
    if(character_name == "Kumaki"){win_quote = "IS THAT REAL BLOOD!? THAT'S UNHYGENIC"}; // Works
    if(character_name == "La Reina"){win_quote = "Can you magnitize anything? Can you use it to steal credit cards?"};  // Works
    if(character_name == "Lode"){win_quote = "What's going on in that shell? Where's the cannon at?"};
    if(character_name == "Lumina"){win_quote = "Finally someone who like to play and won't shoot me. We should play again!"}; 
    if(character_name == "Luna"){win_quote = "You're behind me, but my clone is behind you. Trust nobody, except yourself."}; // Works
    if(character_name == "Nacht"){win_quote = "Can I wear your head visor? I want to be able to see people's power levels."};
    if(character_name == "Napstablook"){win_quote = "I got one of your records from Hana the other day. But I don't have a record player..."}; // Works
    if(character_name == "Noelle"){win_quote = "This fight was always in my favor, I am from a cold region."}; 
    if(character_name == "Pastelle DE"){win_quote = "CAN YOU DRAW MY ORIGINAL CHARACTER!? LET ME GET MY REF SHEET!"}; // Works
    if(character_name == "Penny"){win_quote = "I love your cybernetics! Can I get cybernetic tails and just speed run being a ninetails?"}; // Works
    if(character_name == "Peppino"){win_quote = "Pizza has too many calories for me to eat every day, but I like it on weekends."}; // Works
    if(character_name == "Putrolce"){win_quote = "Finally someone around here that likes eating as much as me! Let's go to the diner. "}; // Works
    if(character_name == "Qoedil"){win_quote = "What ever has consumed you is probably what affects my mother, she's very much like you."};
    if(character_name == "Rokesha"){win_quote = "Watch where you're shooting that thing, you could actually hurt someone!"}; // Not sure
    if(character_name == "Sakuya Izayoi"){win_quote = "I am borrowing some of your knives, I hate sharpening knives, I hurt myself doing it every time."}; // Works
    if(character_name == "Tomoko"){win_quote = "You're pretty serious about hurting people aren't you? I don't think even my soul fire can purify you."}; // works
    if(character_name == "Truck-Kun"){win_quote = "I've never bought a car before, but I didn't think it would be this hard."}; // Works
    if(character_name == "Usher"){win_quote = "You've probably got a 10-0 match up against my teacher, she's storm based but weak to umbrellas."}; // Works
    if(character_name == "Vakna"){win_quote = "You kicked sand in my eye, you fight even dirtier than me!"}; // Works
    if(character_name == "Vale Torina"){win_quote = "Wanna play whack a mole with my clones? How fast can your really swing that hammer?"}; // Works
    if(character_name == "Valkyrie"){win_quote = "My aunt is a shaman, though she doesn't embrace the warrior portion if it."}; // Works
    if(character_name == "Wren"){win_quote = "Can you teach me some yo-yo tricks? I struggle to even do walk the dog."}; // Works
    if(character_name == "Yono"){win_quote = "Oh no, you've given me the wrong mail, My name is Roekoko, not Kokoro. "}; // Works
    
    //Friend's Characters
    if(character_name == "Fennek"){win_quote = "I am glad to see you around, you spend too much time at the graveyard these days."};
    
    // Generic Win Quotes
    if(array_length(win_quote_array) == 0){
    	win_quote_array = [
    		"That was tons of fun! We should play again sometime!",
    		"Fighting and playing is very tiring, We should get something to eat after this.",
		    "Did my clone trick you? That's okay, she just wants a hug...",
		    "My illusions are getting stronger. Thank you for letting me train with you.",
			"Don't touch the tails unless I let you. I don't care how fluffy you think they are.",
			"Don't worry about the burning, my soul fire won't actually scar or burn you."
    		]
    }
    //Randomizer Seed if none are listed above are set or there is an array
    if(win_quote == 0){
    	var num_of_win_quotes = array_length(win_quote_array); // Set num of win quotes based on length detected in above array
        var random_seed = random_func(0,num_of_win_quotes,1); // Set a randomizer seed for the number of win quotes.
        win_quote = win_quote_array[random_seed]; // Set winquote based on the random seed
    }
    
    //print(win_quote)
    return string(win_quote);
}