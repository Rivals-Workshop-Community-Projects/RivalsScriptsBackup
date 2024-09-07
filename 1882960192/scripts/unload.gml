//shoutouts to reiga and frtoud

//Sending win quotes to result screen <3 code by Frtoud
if (!bluey_handled_victory_quote)
{
    //default values
    var transfer_array = [];
    for (var p = 1; p <= 4; p++)
    { 
        transfer_array[p] = 
        {
            order: 99999,             // placement in results. only known later
            team: get_player_team(p), // current team of player
            priority: 0,              // message priority (0 default, 1 builtin, 2 explicit)
            quote:"",                 // message if Hypercam wins against you
            icon: 0,                   // victory icon for bluey
            //===========================================================================
            status_quote: ""         // message for this Hypercam if he wins under certain conditions
            //held_cd_color:-1          // Current color of CD for Hypercam
        }
    }
    
    with (oPlayer) if (player <= 4)
    {
        var data = transfer_array[player];
        if (url == other.url)
        {
            //only one bluey has to handle this for everyone: notify them.
            bluey_handled_victory_quote = true;
            
            data.priority = 2;
            data.icon = bluey_victory_icon;
            data.quote = bluey_victory_quote;
            //else... >:]
            
        }
        else if ("bluey_victory_quote" in self)
        {
            var builtin_quote = try_get_quote(url);
            var builtin_icon = try_get_icon(url);
            data.icon = builtin_icon;
            if (string_length(builtin_quote) > 0)
            {
                data.priority = 1;
                data.quote = builtin_quote;
            }
            init_shader();
        }
        else
        {
            var builtin_icon = try_get_icon(url);
            data.icon = builtin_icon;

            
            var builtin_quote = try_get_quote(url);
            if (string_length(builtin_quote) > 0)
            {
                data.priority = 1;
                data.quote = builtin_quote;
            }
            
        }
            
        transfer_array[player] = data;
    }
    
    //Hackiest of hacks: smuggle into victory screen using a persistent hitbox!
    var smuggler = instance_create(0, 0, "pHitBox");
    smuggler.persistent = true; //survive room end
    smuggler.type = 2;
    smuggler.length = 60; //will destroy itself automatically after one second.
    
    smuggler.bluey_victory_screen_array = transfer_array;
    //smuggler.uhc_batteries = uhc_batteries;
}
/*checklist
*/

//==============================================================
#define try_get_quote(char_url)
{
    //=========================================================
    // Approximate maximum line:
            //      "aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa";
    //=========================================================
    var quote = "";
    switch (char_url)
    {
		//my own characters lol
		case "2007375819": // BlueyBot
            quote = "Welp, BBot, doesn't seem like your questionable humor was strong enough... let alone funny."; 
            break;
        case "2014106219": // Cinna
            quote = "Not this time, Sis... You'll get it next time, I'm sure of it.";
            break;
        case "2089998666": // Big Yoshi
            quote = "...Huh? What do you mean it's a cookie, not a flower?";
            break;
        case "1932503649": // Troops
            quote = "How odd... I feel like I've known you for ages.";
            break;
        case "2310580951": // 64 Mario
            quote = "Can I have an autograph now, Mr. Mario? Wait, where are your fingers?";
            break;
        case "2669553388": // Old Man
        case "2160644191": // Old Man (Legacy)
            quote = "I'm not sure I feel exactly good about beating old tiny men.";
            break;
        case "2489599400": // Tape
            quote = "I think someone dropped their supplies on the way to school.";
            break;
        case "2799785099": // Sir Kibble
            quote = "Is there even anything inside that armor...?";
            break;		
        case "2193855004": // EXW1 Bluey
            quote = "Geez, why did I look so pale back then?";
            break;
						
		//my not-so-own characters lol
        case "3123375474": // Miles Edgeworth
            quote = "Hey, where'd you get that thing on your neck?";
            break;
        case "2839808881": // Kirby (Dream Collection)
            quote = "So tough, yet so...friend-shaped. If that even makes sense.";
            break;


		//others
		case "2802914735": // Ayaka
            quote = "Whoa, how'd you make your axes come back to you like that?";
            break;

        case "2005036466": // Penny
            quote = "Sometimes I think it'd be cool if the Multi-Rod was a gauntlet.";
            break;
            
        case "2605304929": // Daora
            quote = "Where I come from, your name sounds like a slang for a cool thing. ...I guess you're pretty cool.";
            break;
            
        case "2606508459": // Fernet
        case CH_OLYMPIA:
           quote = "Wow... Pretty cool moves you got there. Who's your master?"; 
           break;

        case "2546990424": // Maverick
            quote = "Um gorilão azul? Nada mal... Esse mundo tem cada criatura."
            break;
            
        case "2229832619": // N/A 
            quote = "Uhhh... Good fight, whatever you're called! ...No answer? Okay, then."
            break;
            
        case "2811386719": // Wally
            quote = "As if regular hugs weren't bad enough, this guy WEAPONIZES them..."
            break;

        case "1996010699": // Suitcase
            quote = "...Sure, I'll fight a suitcase. Why not? What could possibly faze me in this place...?"
            break;
            
        case "2871136791": // Lode & Puul
            quote = "Not to be rude, but can you keep a distance? You're pulling my Multi-Rod through my pocket."
            break;
            
        case "2904134945": // Noelle Holiday
            quote = "Brr, I'm not used to this kind of cold, I live in a tropical climate...";
            break;
       
        case "2885762133": // Brook
            quote = "I thought you were holding a baton or something, but that's a PEPPERONI?";
            break;
            
        case "2561479115": // Rokesha
            quote = "Wait, are you a human from this wor... Huh? Arrest warrant? Yeah, no chance."; 
            break;
            
        case "2871608790": //Azi & Mr. Baggy
            quote = "Put a leash on that backpack of yours, it almost took my cap!";
            break;
        
        case "2983344228": //Kiku
            quote = "Better hope you don't need a checkup, 'cus no doctor is getting near you.";
            break;
      
        case "2817605804": //Jerma985
            quote = "You... I haven't forgotten that one tournament, you know!";
            break;
        
        case "3119664631": //Helios
            quote = "Do you serve cola drinks? ...I can't drink alcohol, I'm still fourteen.";
            break;
        
        case "3292951946": //Hex
            quote = "What the actual heck was that? Looked like some sort of sea anemone...";
            break;
        
        case "3120902361": //Desperado
            quote = "H-hey, point that thing elsewhere! You've got no bone to pick with me, OK?";
            break;
        
        case "3137450762": //La Reina
            quote = "Just my luck, a wrestler. Keep these hands of yours ELSEWHERE next time."; //mild haphephobia
            break;
        
        case "3117219382": //Bhadra
            quote = "I don't think I saw you pull that sword out ONCE-- Hey, give that coin back!";
            break;
        
        case "2904498757": //Peppino
            quote = "Dang, everything about you just SCREAMS pizza box mascot. ...wow, you look unwell.";
            break;
        
        case "2605468032": //Gawr Gura
            quote = "Those teeth look sharp. Are you even human?";
            break;
        
        case "3302238950": //Alexis
            quote = "Dark scarf, fingerless gloves, random assortment of weaponry... Why does that sound familiar.";
            break;
        
        case "2490060793": //Barr
            quote = "Can't say I ever thought of fighting with a thermometer. ...What? That's not one?";
            break;
        
        case "3284331017": //Nacht
            quote = "That sword lets you move around like that? I wouldn't mind borrowing it for my Multi-Rod... hehe.";
            break;
        
        case "2456124960": //Nate
            quote = "You walk funny, but that crystal magic looked kinda cool... I'm kind of jealous.";
            break;
        
        case "3118007135": //Wren
            quote = "That's a pretty cool yo-yo.";
            break;
        
        case "3306584099": //Tomoko
            quote = "For someone with such cool powers, you don't seem very n-ice, do you?";
            break;
        
        case "2064167290": //Hana
            quote = "What are you, some kind of Angel of Disco?";
            break;
        
        case "3079776883": //Kumaki
            quote = "Yeesh, this girl gives me the creeps.";
            break;
        
        case "2593144115": //Amaya
            quote = "Oh, COME ON, I had just washed my scarf yesterday.";
            break;
        
        case "2652644223": //Future Ducky
            quote = "Time travelers, otherworldly interlopers... This place has got it all, huh?";
            break;
        
        case "2167624888": //Lyca
            quote = "Do I even want to know what these wisps floating around her are...?";
            break;
        
        case "1917713379": //Valkyrie
            quote = "You're a medium? Can't even imagine what a heavy would look like then...";
            break;
        
        case "3309240911": //Putrolce
            quote = "...Hã? O quê que tu falou? Eu não sei espanhol. (Que guria esfomeada, essa...)";
            break;
            
		case "1917856427": // Liz
			quote = "...Hã? O quê que tu falou? Eu não sei espanhol. (Que guria musical, essa...)";
			break;
        
        case "3118659566": //Yono
            quote = "That was a fine fight, but you'd best get these letters delivered ASAP, man.";
            break;
        
        case "2802424939": //Sakuya Izayoi
            quote = "Hey, look what you did! One of your knives grazed my cap! Drat...";
            break;
        
        case "3307937190": //Pastelle
        case "2843521167":
            quote = "You're a colorful one, huh. I guess that makes us polar opposites of sorts.";
            break;
        
        case "2820380997": //Roekoko
            quote = "You can have two of yourself? Big deal. I've got this one robot... ";
            break;
        
        case "3311683657": //Luna
            quote = "These bubbles of yours make for a pretty cool fireworks show. Or bubbleworks.";
            break;
        
        case "3139869895": //Arcuin
            quote = "Keep these darn chains off me, that isn't cool at ALL!";
            break;
        
        case "3139930266": //Amanita
            quote = "I don't feel like catching mold on my clothes, so spore me the trouble, thank you very mush.";
            break;
        
        case "3294183869": //Vale Torina
            quote = "Hey, we should do a hammer duel sometime!";
            break;
        
        case "2977835488": //Qoedil
            quote = "...And stop staring at me with that big old eye.";
            break;
        
        case "2035357584": //Nade
            quote = "What business do you have attacking me? Haven't you read the conventions?";
            break;
        
        case "2108895293": //Lumina
            quote = "You're a pretty skilled little girl. I think my sister would enjoy to meet you.";
            break;
        
        case "2241098230": //Rykenburn
            quote = "Would it kill you to both keep your hands off AND not smoke around pepole? Geez...";
            break;
        
        case "2997493298": //Truck-Kun
            quote = "...Sorry, guess you're the one getting sent to another world this time around.";
            break;
        
        case "3070186949": //Napstablook
            quote = "...uh, you doing alright? You don't seem like you want to fight... or do anything.";
            break;
        
        case "3118680316": //Awatsu
            quote = "Cool bubble show, but I don't need another shower today.";
            break;
        
        case "3136330641": //Vakna
	            quote = "Dang it, there's soot on my jeans...";
            break;
        
        case "3109768585": //Koishi Komeiji
            quote = "... Hey, where'd that girl go? She just up and vanished...";
            break;
        
        case "3310371100": //Usher
        case CH_ABSA:
           quote = "It's a good thing I just so happen to have an umbrella around. ...Oh, wait, I always do.";
           break;
		
        case "2605377553": //Mal
            quote = "Blah, my stomach feels turned inside out. Try wearing a mask next time, girl.";
            break;
            
        case "2626409326": // Yuuto
        case "2105839293":
            quote = "Did you send a METEOR hurling at me? What the heck is this magic?"
            break;
            
        case "2867341866": // Aur
            quote = "I wonder where'd my pickax go, anyway..."	//any old utilt rememberers?
            break;        

			
        // Base cast
        case CH_ZETTERBURN: 
           quote = "...Just so you know, your head's still on fire.";
           break;
        case CH_FORSBURN:
           quote = "*cough* *cough* I'd like to NOT be a passive smoker, thank you very much!"; 
           break;
        case CH_CLAIREN: 
           quote = "I wonder if the Multi-Rod could copy that sword. It'd be so much cooler than the one I have right now...";
           break;
        case CH_MOLLO:
           quote = "You aren't the only one with bombs around here, you know! ...What? Where I'm getting them from?";
           break;

        case CH_WRASTOR:
           quote = "Whoops, I think one of your wings got caught in my propeller.";
           break;
        case CH_ELLIANA:
           quote = "I've always wanted to try riding a mech... I should ask BBot about it someday.";
           break;
        case CH_POMME:
           quote = "Where can I get a ticket to your next show? ...Asking for a friend."; 
           break;

        case CH_ORCANE:
           quote = "Note to self: don't drink from any water fountains within the next few hours."; 
           break;
        case CH_ETALUS: 
           quote = "It must be n-ice to be you, big guy, you don't even need a fridge at home."; 
           break;
        case CH_RANNO:
           quote = "Keep that tongue off me! I, uh, taste like rotten blueberries, they'll poison you! ...oh wait.";
           break;
        case CH_HODAN:
           quote = "...Ew, was that your sweat???"; 
           break;

        case CH_KRAGG: 
           quote = "This guy's rocks make me want to hit them with a pickax... if I had one."; 
           break;
        case CH_MAYPUL:
           quote = "...I still have no clue what you are even supposed to be."; 
           break;
        case CH_SYLVANOS:
           quote = "Easy there, doggie... Uh, fetch this bom-- I mean, ball!"; 
           break;

        case CH_ORI:
           quote = "Oh, to have a faceless floating orb of light as a companion... is what I would say if I wanted one."; 
           break;
        case CH_SHOVEL_KNIGHT:
           quote = "Hmm... Maybe I get a shovel to use and fight with too...";
           break;
        default: break;
    }

return quote

}

#define try_get_icon(char_url)
{

    var icon = 0;
    switch(char_url)
    {
            
        //Neutral
        case "2193855004": // EXW1 Bluey
        case "2605468032": // Gawr Gura
        case "3118007135": // Wren
        case "2167624888": // Lyca
        case "3118659566": // Yono
        case "3311683657": // Luna
        case "3310371100": //Usher


        case CH_ABSA:
        case CH_ORCANE:
        case CH_KRAGG: 
            icon = 0;
            break;
           
        //Glad
        case "2605304929": // Daora
        case "3284331017": // Nacht
        case "2108895293": //Lumina

        
        case CH_MOLLO:
        case CH_ELLIANA:
        case CH_ETALUS:
        case CH_SYLVANOS:
            icon = 1;
            break;
        
        //Intrigued
        case "2089998666": // Big Yoshi
        
        case "2546990424": // Maverick
        case "2904498757": // Peppino
        case "2490060793": // Barr
        case "2456124960": // Nate
        case "2064167290": // Hana
        case "3309240911": // Putrolce
		case "1917856427": // Liz
        case "3109768585": // Koishi Komeiji
		
        case CH_ZETTERBURN:
        case CH_MAYPUL:
            icon = 2;
            break;
          
        //Thinking
        case "1932503649": // Troops
        case "2799785099": // Sir Kibble
        case "3123375474": // Miles Edgeworth
        case "2839808881": // Kirby (Dream Collection)

		case "2802914735": // Ayaka
        case "2005036466": // Penny
        case "3119664631": // Helios
        case "2652644223": // Future Ducky
        case "3307937190": // Pastelle
        	case "2843521167":
        case "2867341866": // Aur


        case CH_CLAIREN:
        case CH_SHOVEL_KNIGHT:
            icon = 3;
            break;
            
        //Smug
		case "2007375819": // BlueyBot
		
        case "2983344228": // Kiku
        case "1917713379": // Valkyrie
        case "2241098230": //Rykenburn
       
        case CH_ORI:
            icon = 4;
            break;

		//Exasperated
        case "2669553388": // Old Man
        case "2160644191": // Old Man (Legacy)
        case "2904134945": // Noelle Holiday
        case "3139930266": // Amanita
        case "2605377553": // Mal

        case CH_FORSBURN:
        case CH_WRASTOR:
        case CH_RANNO:
            icon = 5;
            break;
		
		//Irritated
        case "2811386719": // Wally
        case "3302238950": // Alexis
        case "3137450762": // La Reina
        
        
            icon = 6;
            break;
			
		//Happy
        case "2310580951": // 64 Mario
        case "2014106219": // Cinna

        case "2606508459": // Fernet
        case "3294183869": // Vale Torina

        case CH_POMME:
        case CH_OLYMPIA:
            icon = 7;
            break;
            
		//Deadpan
        case "2489599400": // Tape

        case "3079776883": // Kumaki
        case "2977835488": // Qoedil
        case "3136330641": // Vakna

            icon = 8;
            break;
            
		//Mad
        case "2871136791": // Lode & Puul
        case "2817605804": // Jerma985
        case "3117219382": // Bhadra
        case "2593144115": // Amaya
        case "2802424939": // Sakuya Izayoi
        case "3139869895": // Arcuin
        case "2035357584": // Nade


            icon = 9;
            break;
            
 		//Shrug / "Oh well"
        case "2229832619": // N/A 
        case "1996010699": // Suitcase
        case "3306584099": // Tomoko
        case "2820380997": // Roekoko
        case "3070186949": // Napstablook

            icon = 10;
            break;
            
		//Surprised
        case "2885762133": // Brook
        case "2561479115": // Rokesha
        case "2871608790": // Azi & Mr. Baggy
        case "3292951946": // Hex
        case "3120902361": // Desperado
        case "2626409326": // Yuuto
        case "2105839293":
        
        case CH_HODAN:
            icon = 11;
            break;
                                 
            
        default: break;
    }
return icon
}