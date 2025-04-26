//unload.gml
//runs at a few points like when you exit a match, used to clear out memory


////////////////////////////////////////////////////// WIN QUOTE COMPATIBILITY SYSTEM //////////////////////////////////////////////////////

//code was originally by Frtoud and was used for his Unregisterd Hypercam 2, modified by Bar-bar
if (!handled_victory_quote)
{
    //this section is used to set up the variables the win quote system uses
    //you shouldn't need to edit this
    var transfer_array = [];
    for (var p = 1;p <= 4;p++)
    { 
        transfer_array[p] = 
        {
            order: 99999,               // placement in results. only known later
            team: get_player_team(p),   // current team of player
            priority: 0,                // message priority (0 default, 1 builtin, 2 explicit)
            quote: "",                  // win quote check
            emote: 0,                   // emote check

            status_quote: "",           // win quote that's used under certain conditions and overwrites the regular win quote
            status_emote: 0             // emote check like above
        }
    }

    //used to set up specific interractions that overwrite the normal win quotes system
    //edit the section inside url == other.url that isn't the in the "more setup" section
    with (oPlayer) if (player <= 4)
    {
        var data = transfer_array[player];
        if (url == other.url)
        {
            //more setup
                handled_victory_quote = true; //only one of your character has to handle this for everyone, so notify them.
                data.priority = 2; //highest priority goes to these quotes
                data.quote = victory_quote;
                data.emote = victory_emote;
            //////////////////////////////////////////////

            //stage compatibility
            //  this part allows you to add quotes specific to stages
            //  basecast stages are typed as numbers normally, while workshop stages are typed as a string (see examples below)
           /* switch (was_in_stage)
            {
                case "1907128674": //bamboo lodge
                    data.status_quote = "This is the Bamboo Lodge stage quote. It's a workshop stage.";
                    data.status_emote = 1; //happy emote
                    break;
            }*/

            //teammates compatibility
            //  allows you to have win quotes with other characters (including dittos!)
            //  it will not check for every single team member and only works as you would expect in doubles, not so much in 3 v 1s
            //  basecast characters use macros like CH_ZETTERBURN and CH_SHOVEL_KNIGHT, you can see some examples in the [get_compatibility_quote] function
            with (oPlayer) if (get_player_team(player) == get_player_team(other.player) && other != self)
            {
                if ("url" in self) switch (url)
                {
                    case "2859046287": //tester
                        data.status_quote = "At least you're on my side this time...";
                        data.status_emote = 5;
                        break;
                }
            }
        }
        //applies the win quotes from against other players like you would normally expect (if they have the compatibility)
        //if the character doesn't have a compatibility, results_draw_portrait.gml will let you decide a few randomly selected generic quotes
        else
        {
            if (string_length(get_compatibility_quote(url)[0]) > 0)
            {
                data.priority = 1;
                data.quote = get_compatibility_quote(url)[0];
                data.emote = get_compatibility_quote(url)[1];
            }
        }

        transfer_array[player] = data; //sets all the data from this section to be transfered later to results_draw_portrait.gml
    }

    //the smuggler is a persistent hit effect we are creating in order to transfer data to the results screen
    //this isn't intentional behaviour from rivals, we are simply abusing the system to get our way
    var smuggler = spawn_hit_fx(-200, -200, 0);
    smuggler.persistent = true; //persistent is a base gamemaker variable that when true will not disappear when a new screen is loaded, in this case the results screen
    smuggler.hit_length = 60; //will destroy itself automatically after one second

    smuggler.stage = was_in_stage; //collect stage data
    variable_instance_set(smuggler, string(self), transfer_array); //using the ID of the player as a unique variable name to transfer the array over
}


//inside this function, you write all your special compatibility lines by checking for a character's url and setting an appropriate quote and emote for it
//estimated length: "aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa";
//follow this format:
//  case "url from steam after ?id=": //character name
//      quote = "win text here";
//      emote = image_index value;
//      break;
#define get_compatibility_quote(char_url)
{
    var quote = "";
    var emote = 0;
    var sparking = other.is_sparking;
    var guardian = other.is_guardian;
    var super = other.is_super;
    
    
    switch (char_url)
    {
        //////////////////////////// BASECAST ////////////////////////////
        case CH_ZETTERBURN:
            quote = "You're not the only one who can turn up the heat!";
            emote = 0;
            break;
        case CH_ORCANE:
            quote = "Ugh you're so ADORABLE!";
            emote = 3;
            break;
        case CH_KRAGG:
            quote = "Not a big fan of getting pelted with rocks...";
            emote = 5;
            break;
        /*case CH_WRASTOR:
            quote = "I won against Wrastor.";
            emote = 0;
            break;
        case CH_FORSBURN:
            quote = "I won against Forsburn.";
            emote = 0;
            break;
        case CH_ETALUS:
            quote = "I won against Etalus.";
            emote = 0;
            break;
        case CH_MAYPUL:
            quote = "I won against Maypul.";
            emote = 0;
            break;
        case CH_ABSA:
            quote = "I won against Absa.";
            emote = 0;
            break;
        case CH_CLAIREN:
            quote = "I won against Clairen.";
            emote = 0;
            break;
        /*case CH_RANNO:
            quote = "I won against Ranno.";
            emote = 0;
            break;*/
        case CH_ELLIANA:
            quote = "That's a cool mech, maybe you and Nydia could work together sometime!";
            emote = 4;
            break;
        /*case CH_SYLVANOS:
            quote = "I won against Sylvanos.";
            emote = 0;
            break;*/
        case CH_MOLLO: case "1871989159":
            quote = "I'd be careful with those explosives if I were you!";
            emote = 5;
            break;
        /*case CH_HODAN: case "2136440419":
            quote = "I won against Hodan.";
            emote = 0;
            break;
        /*case CH_OLYMPIA: case "1943759600":
            quote = "I won against Olympia.";
            emote = 0;
            break;*/
        /*case CH_ORI:
            quote = "I won against Ori.";
            emote = 0;
            break;*/
        case CH_SHOVEL_KNIGHT:
            quote = "That's an odd weapon choice...";
            emote = 5;
            break;
        case CH_SANDBERT: case "1865940669": case "2443363942": case "2606414594": case "2859046287":  //sandbert / sandbert DE / munophone
            quote = "Surprisingly not the weirdest thing I've fought here...";
            emote = 5;
            break; 
        /*case "1866016173": //guadua
            quote = "I won against Guadua.";
            emote = 0;
            break;*/
        //////////////////////////// WORKSHOP ////////////////////////////
        case "2606413637": //goku
            quote = "Wow you're pretty strong!";
            emote = 0;
            break;
        case "3297152187": //yarrow
            quote = "Di-Did you just turn into a banana?";
            emote = 8;
            break; 
        case "2406439382": //Seija Kijin
            quote = "Man it feels like my head's spinning, I can't get a solid read on you at all!";
            emote = 10;
            break   
        case "3293368765": //Teenah
            if (sparking || guardian) {
                quote = "Hope you don't mind I went all out this time!";
                emote = 0; 
            } else {
                quote = "Your fighting style is amazing, we should spar again sometime!";
                emote = 4;
            }
            break;    
        case "2601775097": //Bar
            quote = "What's it like being a Guardian in your world? I hope its not too much trouble...";
            emote = 1; 
            break;
        case "3039831352": case "2285717462": case "2294421289": case "1899673724": //Sonics
            if (sparking || guardian) {
                quote = "Heh, you are pretty fast, had to go all out just to keep up!";
                emote = 0; 
            } else if (super) {
                quote = "This power, came from your world..? You really are full of surprises...";
                emote = 13;
            }
            else {
                quote = "For the so-called Fastest Thing Alive, you sure couldn't keep up with my punches, huh?";
                emote = 2;                
            }
            break;   
        case "2931357116": //Sora
            quote = "A giant key huh, weird weapon, but... Quite effective.";
            emote = 5;
            break;         
        case "2964956057": //Flowey
            quote = "A talking flower? Man this world is filled with some odd characters...";
            emote = 2;
            break;         
        case "3307937190": //Pastelle DE
            quote = "I definitely wasn't expecting magic ink.";
            emote = 5;
            break;       
        case "2983344228": //Kiku
            quote = "You remind me of Nydia, very calculated strikes...";
            emote = 13;
            break;      
        case "3316054693": //Asra
            quote = "This aura, are you alright?";
            emote = 14;
            break;      
        case "3302238950": //Alexis
            quote = "I have to introduce you to Noel, she's just as much of a tech-wiz as you are!";
            emote = 4;            
            break;
            
        case "3295295666": //Ilias 
            quote = "That facade you put on isn't going to fool me.";
            emote = 9;            
            break;
            
         case "3306584099": //Tomoko
            quote = "You're gonna need more than a few icicles to slow me down!";
            emote = 0;            
            break;  
            
         case "3307368173": //Sarolyn
            quote = "Don't let your Darkness consume you, okay?";
            emote = 14;            
            break;         
            
         case "3308351120": //Saelune
            quote = "Where did you get your suit tailored from? I have to get one just like yours!";
            emote = 3;            
            break;    
            
         case "3309240911": //Putrolce
            quote = "Sorry, but I am definitely NOT on the menu.";
            emote = 8;            
            break;       
            
         case "3310371100": //Usher
            quote = "I should've brought a raincoat...";
            emote = 5;            
            break;     
            
         case "3316053085": //Venus
            quote = "That's some pretty cool reflector magic! I need to train more with the Guardian Souls so I can reach that kind of level!";
            emote = 4;            
            break;     
            
         case "3382637663": //Ciela
            quote = "Woah cool sword! But uhh, does it have a mind of it's own?";
            emote = 1;            
            break;   

         case "3357700659": //Spooky
            quote = "N-No one said there'd be g-ghosts here!!";
            emote = 7;            
            break;       
            
         case "3353596512": //Employee
            quote = "Have you considered starting a union? Your work environment doesn't seem very safe...";
            emote = 8;            
            break;   
            
         case "2802300675": //Valley
            quote = "Hey! Why is that purple guy hitting YOU now?!";
            emote = 7;            
            break;             
        default: break;
    }
    return [quote, emote];
}