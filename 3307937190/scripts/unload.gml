//Sending win quotes to result screen <3 code by Frtoud
if (!pastelle_handled_victory_quote)
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
            quote:"",                 // message if pastelle wins against you
	    	icon: 0,		      // victory icon for pastelle
            //===========================================================================
            status_quote: "",         // message for this pastelle if she wins under certain conditions
        }
    }
    
    with (oPlayer) if (player <= 4)
    {
        var data = transfer_array[player];
        if (url == other.url) // pastelle-specific
        //&& (test all player teams?)
        {
            
            //only one pastelle has to handle this for everyone: notify them.
            pastelle_handled_victory_quote = true;
            
            data.priority = 2;
	    	data.icon = 0;
            data.quote = pastelle_victory_quote;
            
            var on_team_with_kiku = false;
            with (oPlayer)
			{ 
				if ("url" in self && url == "2983344228") && (get_player_team(player) == get_player_team(other.player))
				{
					on_team_with_kiku = true; 
					break;
				}
				var on_team_with_sarolyn = false;
				if ("url" in self && url == "3307368173") && (get_player_team(player) == get_player_team(other.player))
				{
					on_team_with_sarolyn = true; 
					break;
				}
            }
            
            if (on_team_with_kiku)
			{
                data.status_quote = "Yay! We did it Kiku! We should celebrate with some ice cream!";
            }
			if (on_team_with_sarolyn)
			{
                data.status_quote = "YIPPEE WE WO- oh sorry I forgot you were my teammate Sarolyn...";
            }

            //else... >:]
            
        }
        else if ("pastelle_victory_quote" in self)
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
    
    smuggler.pastelle_victory_screen_array = transfer_array;
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
	//0 = :D
	//1 = XD
	//2 = clueless
	//3 = pleasant
	//4 = satisfied
	//5 = pondering
	//6 = >:O
	//7 = flushed or surprised
	//8 = you like krabby patties dont you
	//9 = kocaWow
	//10 = kocaCri
	//11 = hothothot!
	//12 = c-c-cold!
	//13 = hehe hat.

    switch (char_url)
    {
    	//============== All Star Heroines & Other Important People =================
        
    case "3302238950": // Alexis
	    quote = "Mmm comfy hat... it's mine now and nobody's gonna take it!";
	    icon = 13;
	    break;
	case "3306584099": // Tomoko
	    quote = "A weapon forged by n-n-necessity didn't have to be so c-c-cold!";
	    icon = 12;
	    break;
	case "3307368173": // Sarolyn
	    quote = "Give it up Sarolyn! I won't lose to big baddies like you!";
	    icon = 6;
	    break;
	case "2843521167": // Pastelle (Legacy)
	    quote = "Woahhh so this is what I looked like two years ago. How did I shrink?!";
	    icon = 7;
	    break;
	case "2983344228": // Kiku
	    quote = "Haha! Take that Kiku! I've been practicing and taking notes just like you said!";
	    icon = 1;
            break;
	case "3308351120": // Saelune
	case "3309240911": // Putrolce
		quote = "Oh goo grief how many times do I have to say it?! My hair is not edible!";
		icon = 6;
		break;
	case "3310371100": // Usher
		quote = "It's raining! It's pouring! The Usher girl is snoring!";
		icon = 1;
	    break;
	case "3316053085": // Venus
		quote = "You're a cupid?! But I thought cupids had wings and use bows and arrows...";
		icon = 5;
		break;
	case "3316054693": // Asra
		quote = "See this is what happens when you side with a demon lord of darkness.";
		icon = 4;
		break;
	    //===========================================================================

	case "3139930266": // Amanita
		quote = "Blech! Mushrooms don't taste very good...";
		icon = 6;
		break;
	case "3018305948": // Android 17
	    quote = "Wait if you're Android 17, then what happened to Androids 1-16?";
	    icon = 5;
	    break;
	case "2661141982": // Anglara
	case "2605468032": // Gawr Gura
	case "3061166422": // Rusalka
	case "1917713379": // Valkyrie
	    quote = "FISHY!!!";
	    icon = 9;
	    break;
	case "2965700442": // Anthem
	    quote = "Ouchie!!! How does this plant have a sword inside!";
	    icon = 10;
	    break;
	case "2922282666": // Anzen
	    quote = "Ooo, what a pretty gem! This could be worth a truckload of beads!";
	    icon = 9;
	    break;
	case "1869652357": // Ash
	    quote = "You remind me of my friend Kiku! You should have a spar with her sometime!";
	    icon = 0;
	    break;
	case "3118680316": // Awatsu
		quote = "BUBBLES!!!";
		icon = 9;
		break;
	case "2802914735": // Ayaka
	    quote = "Hey I'd axe you a question, but I see you're not willing to answer!";
	    icon = 2;
	    break;
	case "2871608790": // Azi
	    quote = "What's going on with your bag?! Is it evil?";
	    icon = 0;
	    break;
	case "2601775097": // Bar Reygard
	    quote = "Huh... it's strange... have we met somewhere before?";
	    icon = 5;
	    break;
	case "2490060793": // Barr
		quote = "What's a stick figure doing with a bar? I guess he's no longer a hangman!";
		icon = 0;
		break;
	case "3117219382": // Bhadra
		quote = "Woah look at all of these coins! Selling these could give me 1 million beads!";
		icon = 9;
		break;
	case "1882960192": // Bluey
	    quote = "Aww don't feel so blue! The ink comes off in the washing machine!";
	    icon = 3;
	    break;
	case "2396061657": // Callie
	    quote = "Woah, we both have pink hair! We should take a picture!";
	    icon = 1;
	    break;
	case "2386395909": // Candyman
	    quote = "Why do they call you Candyman? I don't see any candy...";
	    icon = 5;
	    break;
	case "3013972927": // Chai
	    quote = "Hey, I love your music! I'm sort of an artist myself!";
	    icon = 3;
	    break;
	case "2968660312": // Cheese Wheel DE
	    quote = "CHEEEEEESE!";
	    icon = 1;
	    break;
	case "2217843818": // Crewmate
	    quote = "Aww look at the lil guy... wait why do I hear sirens?";
	    icon = 7;
	    break;
	case "2605304929": // Daora
	    quote = "I mean, if you wanted a hug, you could have just asked!";
	    icon = 3;
	    break;
	case "3120902361": // Desperado
		quote = "At first I was scared, but then he pulled out a gun and I wasn't impressed.";
		icon = 2;
		break;
	case "2606508459": // Fernet
		quote = "All you ever do is fight huh... Doesn't that get a bit stale?";
		icon = 5;
		break;
	case "3305430389": // Freddy
	    quote = "Aww look at da funny bear! He makes me laugh. Har har har! Hee hee hee!";
	    icon = 1;
	    break;
	case "2801851415": // Frostine
	    quote = "I knew I should have b-b-borrowed those hand warmers from ma-ma-mom.";
	    icon = 12;
	    break;
	case "2652644223": // Future Ducky
		quote = "It seems that even in the future, beating me was impossible!";
		icon = 4;
		break;
	case "2628100904": // Gangsta Mario
	    quote = "Blech! Hey stinky, I think you need to take a bath!";
	    icon = 6;
	    break;
	case "2648394023": // Glare
	    quote = "Bwaaaaahhh, I knew I should have brought my 3D glasses!";
	    icon = 10;
	    break;
	case "2606413637": // Goku
	    quote = "You think I'm strong?! You should see my friend Kiku!";
	    icon = 3;
	    break;
	case "2996967789": // Gunha
	    quote = "Woahhhhh, tell me how you can do those explosions!!!";
	    icon = 9;
	    break;
	case "2064167290": // Hana
		quote = "Who keeps playing a record scratch everytime you die? It's so funny!";
		icon = 1;
		break;
	case "3119664631": // Helios
		quote = "What to drink? Oh I'll take a tall glass of glue if ya got any!";
		icon = 3;
		break;
	case "3292951946": // Hex
		quote = "Aww why are your hearts broken? I hope that wasn't because of me!";
		icon = 10;
		break;
	case "2995463890": // Hol Horse
	    quote = "A gun?! That wasn't very neighhh-borly of you!";
	    icon = 8;
	    break;
	case "2940069199": // Hoshimachi Suisei
		quote = "Sorry, but colorful blocks won't stop me! I know my shape language!";
		icon = 0;
		break;
	case "2817605804": // Jerma
	    quote = "Hahaha you're pretty funny! No wonder why you're so popular!";
	    icon = 1;
	    break;
	case "2924948563": // Knuckles
	    quote = "My friend Kiku could probably give you some fighting tips! She's really nice!";
	    icon = 0;
	    break;
	case "3109768585": // Koishi
		quote = "Hearts and phone calls?! Are you saying that you love me?...";
		icon = 8;
		break;
	case "3079776883": // Kumaki
	    quote = "WOW! Is that what I look like in a horror themed alternate universe?";
	    icon = 9;
	    break;
	case "3137450762": // La Reina
		quote = "Silly big ant, chairs were made for sitting, not throwing!";
		icon = 2;
		break;
	case "2871136791": // Lode
	    quote = "Hehe, science rules.";
	    icon = 2;
	    break;
	case "2469588541": // Lukastar
	    quote = "Oh look, a shooting star! I’d better make a wish!";
	    icon = 0;
	    break;
	case "2108895293": // Lumina
		quote = "Welp, I guess you're the one seeing the light now!";
		icon = 3;
		break;
	case "3311683657": // Luna
		quote = "FROGGY!!!";
		icon = 1;
		break;
	case "2167624888": // Lyca
		quote = "You look like you and your wisps could use a pet! Pat-pat.";
		icon = 3;
		break;
	case "2917082599": // Madeline
	    quote = "Did you use any perfume recently? You smell like strawberries!";
	    icon = 0;
	    break;
	case "2996392141": // Mako
	    quote = "Wah! You remind me of ME for some reason! Wanna go eat lunch somewhere?";
	    icon = 7;
	    break;
	case "2605377553": // Mal
	    quote = "Why are you looking at my hair?! It's fun to play with but not to eat!";
	    icon = 6;
	    break;
	case "2942375772": // Marti
	    quote = "Wahhh! I wish this tambourine didn't come with a snake!";
	    icon = 10;
	    break;
	case "2546990424": // Maverick
	    quote = "I love windy days! But how does a monkey know about wind magic?";
	    icon = 5;
	    break;
	case "2229832619": // N/A
	    quote = "Oh no!!! It's ok big guy, I'll find a way to purify you!";
	    icon = 10;
	    break;
	case "3284331017": // Nacht
		quote = "You're a bounty hunter? Well gee I hope I'm not on a wanted poster!";
		icon = 7;
		break;
	case "2035357584": // Nade
		quote = "Oh great, now the battlefield smells like gunpowder. P.U.!";
		icon = 6;
		break;
	case "3047409367": // Nano
	    quote = "Oh woops! Sorry, I mistook you for someone else that goes by Nano...";
	    icon = 3;
	    break;
	case "2456124960": // Nate
		quote = "Woah look at that, we're both protagonists of our own future games!";
		icon = 2;
		break;
	case "3070186949": // Napstablook
		quote = "Nighty night ghosty! What a nice halloween costume!";
		icon = 3;
		break;
	case "2459562158": // Nitori
	    quote = "Haha, I love you grabby hand! It reminds me of the ones at book fair!";
	    icon = 1;
	    break;
	case "2904134945": // Noelle
	case "3139869895": // Arcuin
	    quote = "GAH! Kiku, where are you?! I need your comfy jacket, it's c-c-cold over here!";
	    icon = 12;
	    break;
	case "2904498757": // Peppino
	case "2990315396": // Noise
	case "2885762133": // Brook
	    quote = "Nooo the pizza’s cold! Is this what I get for not having money to tip?";
	    icon = 10;
	    break;
	case "2005036466": // Penny
		quote = "What a shock! Unfortunately for you, I'm pretty limber!";
		icon = 4;
		break;
	case "2977835488": // Qoedil
		quote = "Spooky monsters just need a bit of color to become a cute monster!";
		icon = 0;
		break;
	case "2820380997": // Roekoko
		quote = "Am I seeing double?... Nah, I must be going crazy.";
		icon = 5;
		break;
	case "2561479115": // Rokesha
		quote = "Was your mission to destroy me? Aww... how sweet.";
		icon = 3;
		break;
	case "2802424939": // Sakuya
		quote = "What is a maid doing with infinite knives?... So weird...";
		icon = 5;
		break;
	case "3304241490": // Saya
	    quote = "Why are you called The Last Guardian? Where's the first one at?!"
	    icon = 5;
	    break;
	case "3039831352": // Sonic
	    quote = "How are you going so fast! Heck, how was I able to beat you?!";
	    icon = 7;
	    break;
	case "1996010699": // Suitcase
		quote = "Oh there's my suitcase! I was wondering where I left it!";
		icon = 1;
		break;
	case "2997493298": // Truck-Kun
		quote = "A truck huh... Whoever was driving it clearly needs to go back to school!";
		icon = 5;
		break;
	case "3136330641": // Vakna
		quote = "OWCHIE! Who in the world thought of a lizard with magma balls?!";
		icon = 11;
		break;
	case "3294183869": // Vale
	    quote = "Ooo a hammer! Look out world, I'm gonna SMASH!";
	    icon = 1;
	    break;
	case "2811386719": // Wally
		quote = "I'm not a toy! Stop squeezing me and bouncing me around!";
		icon = 6;
		break;
	case "3118007135": // Wren
		quote = "A yo-yo?! Woah I could use this as a pool toy!";
		icon = 9;
		break;
	case "3118659566": // Yono
		quote = "What a waste of mail! Someone could report you for this!";
		icon = 6;
		break;
        // Base cast
        //=================================================================
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
           quote = "Oh! Lemme ride your machine! I wanna become Mecha-Pastelle!";
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
		case "3307368173": // Sarolyn
		case "3308351120": // Saelune
		case "3309240911": // Putrolce
	            icon = 6;
	            break;

	//flushed or surprised
		case "2843521167": // Pastelle (Legacy)
	            icon = 7;
	            break;

	//you like krabby patties dont you

	            icon = 8;
	            break;

	//kocaWow

	            icon = 9;
	            break;

	//kocaCri

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