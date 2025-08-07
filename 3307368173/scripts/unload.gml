//Sending win quotes to result screen <3 code by Frtoud
if (!sarolyn_handled_victory_quote)
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
            quote:"",                 // message if sarolyn wins against you
	    	icon: 0,		      // victory icon for sarolyn
            //===========================================================================
            status_quote: "",         // message for this sarolyn if she wins under certain conditions
        }
    }
    
    with (oPlayer) if (player <= 4)
    {
        var data = transfer_array[player];
        if (url == other.url) // sarolyn-specific
        //&& (test all player teams?)
        {
            
            //only one sarolyn has to handle this for everyone: notify them.
            sarolyn_handled_victory_quote = true;
            
            data.priority = 2;
	    	data.icon = 0;
            data.quote = sarolyn_victory_quote;
            
            var on_team_with_kiku = false;
            with (oPlayer)
			{ 
				if ("url" in self && url == "2983344228") && (get_player_team(player) == get_player_team(other.player))
				{
					on_team_with_kiku = true; 
					break;
				}
				var on_team_with_pastelle = false;
				if ("url" in self && url == "3307937190") && (get_player_team(player) == get_player_team(other.player))
				{
					on_team_with_pastelle = true; 
					break;
				}
            }
            
            if (on_team_with_kiku)
			{
                data.status_quote = "Tch. I didn't need your help, boxer.";
            }
			if (on_team_with_pastelle)
			{
                data.status_quote = "Keep your ink to yourself, fool. I don't need your assistance.";
            }

            //else... >:]
            
        }
        else if ("sarolyn_victory_quote" in self)
        {
	    	var builtin_quote = try_get_quote(url)[0];
            var builtin_icon = try_get_quote(url)[1];
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
        	var builtin_icon = try_get_quote(url)[1];
            var builtin_quote = try_get_quote(url)[0];

            if (string_length(builtin_quote) > 0)
            {
                data.priority = 1;
                data.quote = builtin_quote;
				data.icon = builtin_icon;
            }
            
        }
        
        transfer_array[player] = data;
    }
    
    //Hackiest of hacks: smuggle into victory screen using a persistent hitbox!
    var smuggler = instance_create(0, 0, "pHitBox");
    smuggler.persistent = true; //survive room end
    smuggler.type = 2;
    smuggler.length = 60; //will destroy itself automatically after one second.
	smuggler.dont_color = true;
    
    smuggler.sarolyn_victory_screen_array = transfer_array;
    //smuggler.uhc_batteries = uhc_batteries;
}

//==============================================================
#define try_get_quote(char_url)
{
    //=========================================================
    // Approximate maximum line:
            //      "aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa";
    //=========================================================
    var quote = "";
    var icon = 0;
    //emote list
	//0 = neutral
	//1 = curious
	//2 = look away
	//3 = tired
	//4 = angry

    switch (char_url)
    {
    	//============== All Star Heroines & Other Important People =================
        
    case "3302238950": // Alexis
	    quote = "It's strange... As incompetent as you are, your voice seems oddly... peculiar.";
	    icon = 1;
	    break;
	case "3306584099": // Tomoko
	    quote = "Wretched imbecile. You don't even deserve ice powers.";
	    icon = 4;
	    break;
	case "3307937190": // Pastelle
	    quote = "You disappoint me, Pastelle. Your spilled ink shall forever leave a trace of utter failure.";
	    icon = 3;
	    break;
	case "2843521167": // Pastelle (Legacy)
	    quote = "Even at the beginning of your journey, you were still a disappointment.";
	    icon = 2;
	    break;
	case "2983344228": // Kiku
	    quote = "Apples weren't meant for fighting. They were made to be eaten, then thrown away.";
	    icon = 0;
            break;
	case "3308351120": // Saelune
		quote = "Explode";
	    icon = 4;
            break;
	case "3309240911": // Putrolce
		quote = "Only a fool would get tricked into wearing a corrupted demonic mask.";
		icon = 0;
		break;
	case "3310371100": // Usher
		quote = "Having an umbrella will not protect you from the sheer frost of my blade.";
		icon = 0;
	    break;
	case "3316053085": // Venus
		quote = "How cute. Your light magic is just as fragile as you are.";
		icon = 0;
		break;
	case "3316054693": // Asra
		quote = "Why do you choose to hold back? Your uncertainty is going to be your demise.";
		icon = 1;
		break;
	case "3382637663": // Ciela
		quote = "Hmph, focus on handling one sword before managing two.";
		icon = 0;
		break;

	    //===========================================================================

	case "2661141982": // Anglara
	case "2605468032": // Gawr Gura
	case "3061166422": // Rusalka
	case "1917713379": // Valkyrie
	    quote = "Hmph. This place needs a wet floor sign.";
	    icon = 0;
	    break;
	case "3122192177": // Aerith DE
	case "2879813992": // Aerith
		quote = "A flower peddler has no business being here. Wake up and smell the roses.";
		icon = 3;
		break;
	case "3139869895": // Arcuin
	    quote = "Fool! You know nothing of ice and shadow.";
	    icon = 4;
	    break;
	case "2802914735": // Ayaka
	    quote = "Juggling axes like a circus freak will get you nowhere.";
	    icon = 0;
	    break;
	case "2871608790": // Azi
	    quote = "Kids like you require well deserved discipline.";
	    icon = 0;
	    break;
	case "2007375819": // BlueyBot
		quote =  "Dysfunctional robots deserve nothing more than a rusty hell.";
		icon = 0;
		break;
	case "2885762133": // Brook
	    quote = "Tch. What a waste of perfectly good food.";
	    icon = 3;
	    break;
	case "3436597271": // Cocua
		quote = "Go back to the trash heap of where you belong. You're already harming yourself.";
		icon = 2;
		break;
	case "2283888145": // Coda
	    quote = "Not my kind of music, thanks.";
	    icon = 3;
	    break;
	case "2605304929": // Daora
	    quote = "I don't care if your life has been destroyed. I've been through worse.";
	    icon = 2;
	    break;
	case "3349889053": // Deracine
		quote = "Tch. Crawl back to your grave before I squash you into it.";
	    icon = 0;
	    break;
	case "3120902361": // Desperado
		quote = "Someone known as The Remnant Ash should belong in an urn.";
		icon = 0;
		break;
	case "3294116949": // Fennek
		quote = "I'm taking this axe with me. You are unfit to wield such a burden.";
		icon = 3;
		break;
	case "2860567018": // Fumo Cirno
		quote = "I don’t have time to play games with a stupid doll.";
		icon = 3;
		break;
	case "2606413637": // Goku
	    quote = "Changing hair color in a fight doesn't matter. This isn't a salon.";
	    icon = 0;
	    break;
	case "2064167290": // Hana
		quote = "Hmph. Guess you don't value your music nor your life.";
		icon = 2;
		break;
	case "2396053263": // Heartbrake
		quote = "A broken heart has no effect on me.";
		icon = 0;
		break;
	case "2959179985": // Hisui
		quote = "I didn't ask nor request for a maid service.";
		icon = 0;
		break;
	case "2940069199": // Hoshimachi Suisei
		quote = "Building blocks are for children. Learn to grow up.";
		icon = 0;
		break;
	case "2817605804": // Jerma
	    quote = "Your audience has stopped watching you. I wonder why.";
	    icon = 1;
	    break;
	case "3479868625": // Kafka
	    quote = "You're juggling too much. Try being skilled with one weapon first.";
	    icon = 0;
	    break;
	case "2802423078": // Kaiero
	    quote = "Such an improper use of light powers. What a shame.";
	    icon = 0;
	    break;
	case "2786885695": // Keqing
	    quote = "Your swordplay is putting me to sleep.";
	    icon = 3;
	    break;
	case "3109768585": // Koishi
		quote = "I'm not answering the phone for you, insolent whelp.";
		icon = 4;
		break;
	case "2996905372": // Krillin
		quote = "So pathetic. Why did you even bother training to fight?";
		icon = 3;
		break;
	case "3079776883": // Kumaki
	    quote = "Hmph. The last thing I need is a reminder that Pastelle exists.";
	    icon = 0;
	    break;
	case "3137450762": // La Reina
		quote = "The crowd has already left. No need to keep posing.";
		icon = 0;
		break;
	case "3039085407": // Larry
	    quote = "Such an abhorrent fool. Take your kitchen utensils somewhere else.";
	    icon = 0;
	    break;
	case "1917856427": // Liz
	    quote = "Thanks for reminding me that I have wasted my time on you.";
	    icon = 0;
	    break;
	case "2871136791": // Lode
	    quote = "I’m not a pet sitter, nor a bird watcher.";
	    icon = 0;
	    break;
	case "2108895293": // Lumina
		quote = "Children shouldn't be messing with magic, especially unsupervised.";
		icon = 0;
		break;
	case "3311683657": // Luna
		quote = "You are no assassin. I think that much is obvious.";
		icon = 0;
		break;
	case "2167624888": // Lyca
		quote = "There. Now you can be a wisp just like your children.";
		icon = 0;
		break;
	case "2996392141": // Mako
	    quote = "It's clear that your school district failed to teach you anything.";
	    icon = 3;
	    break;
	case "2605377553": // Mal
	    quote = "Your loss contributed to you wallowing in your own filth.";
	    icon = 3;
	    break;
	case "2546990424": // Maverick
	    quote = "Tch. Wasn’t expecting it to be so windy today.";
	    icon = 2;
	    break;
	case "2968712626": // Michiru
	    quote = "Growing your limbs just makes you a bigger target, fool.";
	    icon = 3;
	    break;
	case "2811822410": // Miku
	    quote = "I swear I will force that leak down your throat if you keep singing.";
	    icon = 4;
	    break;
	case "2895157780": // Mira
	    quote = "Using minions to do your dirty work and still losing proves that you’re a terrible leader.";
	    icon = 2;
	    break;
	case "2968483364": // Mokou
	    quote = "Damaging yourself makes my job a whole lot easier. Thanks.";
	    icon = 0;
	    break;
	case "3007922797": // Monoko
	    quote = "Hmph. Perhaps you should heed to your own stoplight.";
	    icon = 1;
	    break;
	case "2229832619": // N/A
	case "3357728777": // Ingrim
	    quote = "What an interesting creature you are. Nano would love to have you as a pet.";
	    icon = 1;
	    break;
	case "2035357584": // Nade
	case "3353596512": // Employee
		quote = "A fallen soldier who did their best by blowing themselves up. Shame.";
		icon = 3;
		break;
	case "3047409367": // Nano
	    quote = "Nano huh... Hmph. The Nano I know would love to experiment with you.";
	    icon = 1;
	    break;
	case "2456124960": // Nate
		quote = "Oh great. Another wannabe washed up hero. Get out of my sight.";
		icon = 0;
		break;
	case "2459562158": // Nitori
	    quote = "You're so annoying. Take your stupid hand somewhere else before I crush you with it.";
	    icon = 3;
	    break;
	case "2904134945": // Noelle
	    quote = "Another fool with ice powers. Don’t you have a responsibility to tend to?";
	    icon = 2;
	    break;
	case "3463541091": // Nonari
	    quote = "You're definitely NOT a master of martial arts. All I saw was an idiot flailing about.";
	    icon = 0;
	    break;
	case "2005036466": // Penny
		quote = "You lack common sense. Impatience will get you nowhere.";
		icon = 3;
		break;
    case "2859393381": // Phoenix (Mudkid)
    case "2357967710": // Phoenix (Krankees)
		quote = "Are you asking for a lawsuit against yourself? Not very smart.";
		icon = 0;
		break;
	case "2977835488": // Qoedil
		quote = "I've seen worse monsters before. You were simply child's play.";
		icon = 3;
		break;
	case "3349890045": // Queen Platina
		quote = "You have no right to be a ruler if you do nothing but dance with a dead husband.";
		icon = 0;
		break;
	case "2263955842": // Reimu
		quote = "Go back to your shrine and pray that you never see my face again.";
		icon = 4;
		break;
	case "2801831547": // Rin
		quote = "Normally I tolerate cats. You however had to be put down.";
		icon = 2;
		break;
	case "2561479115": // Rokesha
		quote = "Hmph. You need target practice.";
		icon = 0;
		break;
	case "3232004081": // Roland
		quote = "Does this look like a library to you, fool?";
		icon = 4;
		break;
	case "3154367863": // Saber
		quote = "How pathetic. Your Excalibur was no match for my Monolice.";
		icon = 3;
		break;
	case "3415959265": // Saya
		quote = "The fact that you need to go into different forms tells me that you're weak.";
		icon = 2;
		break;
	case "3087835606": // Skibidi Toilet
		quote = "Great. Now the battlefield reeks of brain rot.";
		icon = 2;
		break;
	case "2256318168": // Smol Nozomi/Joke Explainer
		quote = "Such an annoying little pest. Leave before I shatter you into pieces.";
		icon = 4;
		break;
	case "3357700659": // Spooky
		quote = "Was ANY of that supposed to scare me? If anything, I scared you instead.";
		icon = 3;
		break;
	case "3030928225": // Squigly
		quote = "Here lies your grave. Feel free to sing all you want beneath the ground.";
		icon = 0;
		break;
	case "3293368765": // Teenah
		quote = "Bunnies are still prey at the end of the day.";
		icon = 0;
		break;
	case "2396618743": // Terra
		quote = "Great job. You burnt yourself out by casting too many spells.";
		icon = 0;
		break;
	case "2997493298": // Truck-Kun
		quote = "When you see me, make sure to stop, or else.";
		icon = 4;
		break;
	case "3353256940": // Twenny
		quote = "Shouldn't you be bathing in sewage water? It's where you belong anyway.";
		icon = 0;
		break;
	case "3136330641": // Vakna
		quote = "No amount of heat will penetrate this blade. Begone!";
		icon = 4;
		break;
	case "3294183869": // Vale
	    quote = "To hell with your blind justice. Think about your foolishness in the afterlife.";
	    icon = 4;
	    break;
	case "2996871838": // Vegeta
		quote = "I don't care about your pathetic Saiyan pride. You lost cause you won't shut up.";
		icon = 3;
		break;
	case "2811386719": // Wally
		quote = "What a sorry excuse for a fighter. Learn to take a hint and concede.";
		icon = 2;
		break;
	case "2996263079": // Yuuko
		quote = "Go frown someplace else. You're lucky to even be alive.";
		icon = 3;
		break;
	case "3138902661": // Ziggy
		quote = "Hmph. Stupid dog.";
		icon = 3;
		break;
    }
    return [quote, icon];
}
        // Base cast
        //=================================================================
     /*   
        case CH_ZETTERBURN: 
           quote = "YOWCHIE! Sorry Mr. Lion, but you could've set a whole forest on fire!";
           icon = 11;
           break;
        case CH_FORSBURN:
	case "2241098230": // Rykenburn
           quote = "Uh excuse me mister sir, but I think this is a no smoking zone..."; 
           icon = 3;
           break;
        case CH_CLAIREN: 
           quote = "Pen versus Plasma huh... What a sight to behold!";
           icon = 9;
           break;
        case CH_MOLLO:
           quote = "Hehe bombs away! Sorry I couldn't help myself!";
           icon = 1;
           break;

        case CH_WRASTOR:
           quote = "Doesn't spinning like that make you all dizzy?";
           icon = 5;
           break;
        case CH_ABSA:
           quote = "What a cloudy day! I sure hope nothing bad happens!";
           icon = 1;
           break;
        case CH_ELLIANA:
           quote = "Oh! Lemme ride your machine! I wanna become Mecha-sarolyn!";
           icon = 9;
           break;
        case CH_POMME:
           quote = "A microphone! Can anyone hear me?... Must have busted it too hard."; 
           icon = 3;
           break;

        case CH_ORCANE:
           quote = "Washing the ink away... why didn't I think of that sooner!"; 
           icon = 4;
           break;
        case CH_ETALUS: 
           quote = "I did n-n-not think I was going to be f-fighting an ice bear t-today."; 
           icon = 12;
           break;
        case CH_RANNO:
    case "2593144115": // Amaya
           quote = "Poison? Hehe my skin feels all funny.";
           icon = 2;
           break;
        case CH_HODAN:
           quote = "It's gonna take a lot more than a towel to rub the ink out!"; 
           icon = 1;
           break;

        case CH_KRAGG: 
           quote = "WOW A CUBE ROCK! Did you sculpt that yourself?"; 
           icon = 9;
           break;
        case CH_MAYPUL:
           quote = "Why is your name Maypul? Are you based on maple syrup?"; 
           icon = 5;
           break;
        case CH_SYLVANOS:
	case "2832785375": // Arboris
           quote = "Bad! Bad plant doggy! Bad!"; 
           icon = 6;
           break;
        case CH_OLYMPIA:
           quote = "Gah! How did you get rocks stuck to your hands?!"; 
           icon = 7;
           break;

        case CH_ORI:
           quote = "Woahhh what a pretty orb you have there..."; 
           icon = 0;
           break;
        case CH_SHOVEL_KNIGHT:
           quote = "Ehehe! Well I guess the pen is mightier than the shovel too!";
           icon = 1;
           break;
    }
    return [quote, icon];
}
/*
#define try_get_icon(char_url)
{

    var icon = 0;
    switch(char_url)
    {
       
	// :D
	            icon = 0;
	            break;
	
	// XD
		case "2661141982": // Anglara
		case "2605468032": // Gawr Gura
		case "3061166422": // Rusalka
		case "1917713379": // Valkyrie
	            icon = 1;
	            break;

	//clueless


	            icon = 2;
	            break;
            
    // pleasant
        
	            icon = 3;
	            break;

    //satisfied

	            icon = 4;
	            break;
	            
    // pondering
		case "3018305948": // Android 17
	            icon = 5;
	            break;
            
    //>:O
		case "3307368173": // pastelle
		case "3308351120": // Saelune
		case "3309240911": // Putrolce
	            icon = 6;
	            break;

	//flushed or surprised
		case "2843521167": // sarolyn (Legacy)
	            icon = 7;
	            break;

	//you like krabby patties dont you

	            icon = 8;
	            break;

	//pastelleWow

	            icon = 9;
	            break;

	//pastelleCri

	            icon = 10;
	            break;

	//hothothot!
        case "3013972927": // Chai
		case CH_ORCANE:
		case CH_RANNO:
	            icon = 11;
	            break;

	//c-c-cold!

	            icon = 12;
	            break;

	//hehe hat.
		case "3302238950": // Alexis
	            icon = 13;
	            break;

        default: break;
    }
return icon
}