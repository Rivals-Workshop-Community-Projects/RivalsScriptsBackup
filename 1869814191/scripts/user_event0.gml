//Compatibility Script

#region Dracula Dialogue
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = sprite_get("dracula_portrait2");
var page = 0;
//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "You don't look to be from around here, my undead comrade, are you possibly lost?";
page++;
//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "it looks like i took a wrong turn on my way to grillby's, so yeah, i'd say so.";
page++;
//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "i sure am a real bonehead, right?";
page++;
//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "that aside, you're a vampire, right? i wouldn't know, i've never seen one before. unless i count dracula.";
page++;
//Page 4
dracula_speaker[page] = 1;
dracula_text[page] = "life sure is crazy. at this point, not even i know what will happen necks.";
page++;
//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "Enough with your insolent jokes! I regret welcoming you so politely.[glass] Leave my manor this moment, or I shall violently force you!";
page++;
//Page 6
dracula_speaker[page] = 1;
dracula_text[page] = "yeesh, tough crowd. if it's a fight with me you want, though...";
page++;
//Page 7
dracula_speaker[page] = 2;
dracula_text[page] = "I t ' s   a   b a d   t i m e   y o u ' l l   g e t .";
page++;
#endregion

if(variable_instance_exists(id,"diag")) {
        diagchoice = [
        "alright alright, i guess i can pry myself away from my work.",
        "can you make this quick? ive got important things to get back to. like doing nothing.",
        "i'm going to grillbys after this. you wanna tag along? my treat.",
        "what? you expecting me to say something cool?",
        "you want this cool rock that i found? only 50000G.",
        "cmon, don't you know how to greet a new pal?"]
    
    if (diag != "") {
        switch(otherUrl) {
        	
        	case CH_SHOVEL_KNIGHT: //shovel knight from shasb roisaf -- too hard to spell :'(
        	case "1867608473": //kris
        	//case "1875062006": //clover
        	//case "2142327683": //clover comp
        		diag = "hey, have we met somewhere before?";
        	break;
        	
        	case CH_OLYMPIA: //punchy mouse
        		diag = "woah. you look REALLY pissed off. did i do somethin wrong?"
        	break;
        	
        	//MOST DEFINITELY A VERY HANDSOME SKELETON!!
        	case "1873681040": //legacy
        	case "2100204665":
        		diag = "welp. you caught me again, bro.";
        	break;
            
            case "2322322191": //frisk
                diag = "hey kid, you want a hot dog? it's on the house.";
            break;
            case "2300438860": //chara
            	diag = "couldn't help yourself, huh? alright, then. lets get straight to the point.";
            	//diag = "do you think even the worst person can change? that everybody can be a good person, if they just try?"
            break;
            
            //other sans mods
            case "1868337725": //gun
            case "1879759863": //maplgalaxy
            case "1999739332": //op gun (which was already op)
            case "2648839037": //deez_nuts
            case "2759847696": //op / tickledribs
            case "2802094665": //dust sans
            	diag = "this isn't what i had in mind when i said" + '"other sanses."';
            break;

			//quirky earthbound inspired rpg about depression (of which there are at most 5)   
			case "1871060242": //madotsuki
			case "2177701650": //madotsuki comp
			case "1993599340": //lovely sweet dream (not an rpg but dialogue still fits)
				diag = "youre stranger than anything ive seen in the lab."
			break;
            case "1915998598": //ness
            	diag = "woah. its like looking in a mirror.";
            break; //deltatrav
            case "2407968461": //omori
            case "2858800302": //bagel
            	diag = "take care of yourself, kid.";
        	break;
            case "2151504448": //batter
            //case "???": //batter (rpg-maker jam edition)
            	diag = "sorry pal. after seeing what comes next, i cant afford not to care anymore."
        	break;
            
            //sonic
            case "2285717462": //Muno
            case "1899673724": //ricE
            case "2078670767": //classic?
            case "2074796206": //MedK
            case "2294421289": //French
                diag = "hey kid, watch the blue stop signs.";
            break;
            
            //Sonic.exe
            case "2637355399": //ricE sonic reskin
            case "2914598844": //by me, lol
                diag = "your tale is papyrus's bedtime story, pal.";
            break;
            
            //mid-tier restaurant
            case "1890617624":
            case "2007412127":
            case "2004804058":
                diag = "eh. i prefer grillby's, anyway.";
            break;
            
            /* future dialogue interaction(s?s)
            
            case "???": //flowey
            	diag = "so youre the one saying weird things to my bro.";
            break;
            */
        }
    }
}