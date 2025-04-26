//shoutouts to reiga and frtoud

//Sending win quotes to result screen <3 code by Frtoud
if (!blueybot_handled_victory_quote)
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
            icon: 0,                   // victory icon for blueybot
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
            //only one blueybot has to handle this for everyone: notify them.
            blueybot_handled_victory_quote = true;
            
            data.priority = 2;
            data.icon = blueybot_victory_icon;
            data.quote = blueybot_victory_quote;
            //else... >:]
            
        }
        else if ("blueybot_victory_quote" in self)
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
    
    smuggler.blueybot_victory_screen_array = transfer_array;
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
		case "1882960192": // Azure
            quote = "> might have to rename myself to robozure after this one    ...no? ok"; 
            break;
        case "2014106219": // Cinna
            quote = "> i am NOT building cinnabot . quit asking me";
            break;
        case "2089998666": // Big Yoshi (https://bigyoshi.thecomicseries.com/comics/46/)
            quote = "> haha you cant eat the pizza dino";
            break;
        case "3380391964": // Troops
        case "1932503649": // Troops (Legacy)
            quote = "> i've spent hours of my life stomping . . . koopas";
            break;
        case "2310580951": // 64 Mario
            quote = "> Super Releasio 64";
            break;
        case "2669553388": // Old Man
        case "2160644191": // Old Man (Legacy)
            quote = "> you will make a fine addition to my gnome garden";
            break;
        case "2489599400": // Tape
            quote = "> hole punch is cooler .";
            break;
        case "2799785099": // Sir Kibble
            quote = "> dude is that sir kibble . this is so #awesome #TheGOAT #Champ";
            break;	
        case "3380395299": // Ms. Game & Watch
            quote = "> get your own bair and dair bro don't copy my flow like that";
            break;	
						
		//my not-so-own characters lol
        case "3123375474": // Miles Edgeworth
            quote = "> *grumble* the goo";
            break;
        case "2839808881": // Kirby (Dream Collection)
            quote = "> <(O_O<) <(O_O)> (>O_O)> KIRBY DANCE";
            break;


		//others
        case "2229832619": // N/A 
            quote = "> 404 Not Found"
            break;
            
        case "1868240517": // R-00
            quote = "> can you deliver me a sandwich please i really need it for my mayonnaise"
            break;

        case "2213797413": // Joy-Con
            quote = "> finished playing my switch"
            break;
            
        case "2871136791": // Lode & Puul
            quote = "> get me off your shell before i lode and puul up a firearm"
            break;
			
        case "3368304320": // diddy kong
            quote = "> wake up in the morning feeling like p diddy"
            break;   
			
        case "3371991033": // saltydkdan 			(funfact: did you know i made the h sprite for the pokémon h hack salty played)
            quote = "> h"
            break;  
			
		case "1916050290": // robloxian
            quote = "> TEH EPIK DUCK IS COMING!!!"
            break;   		
			
        case "2778789055": // po & gumbo
            quote = "> why do they call it oven when you of in the cold food of out hot eat the food";
            break;
       
        case "2217843818": // Crewmate
            quote = "> Ban! OP fundies character";
            break;
            
        case "2606413637": //goku
            quote = "> call me whatever you want kid but don't insult Goku";
            break;
			
        case "2282173822": //trummel
            quote = "> woag";
            break;    
			
        case "3353256940": // twenny
            quote = "> what's 9 + 10?      twenny one";
            break;
			
        case "1972937360": //stick byleth
            quote = "> Join Smash Bros. already! What in the world are you waiting for?";
            break;    	
			
        case "2817605804": //Jerma985
            quote = "> when the imposter is sus! :flushed:";
            break;
      
        case "1870688282": //Obama
            quote = "while you're at it follow my alt @.BarackObama";
            break;
        
        case "1869814191": //Sans
            quote = "> Sans Gaming";
            break;
        
        case "2904498757": //Peppino
            quote = "> dude is that peppino from pizza's tower?";
            break;
        
        case "3039831352": //sonic barkun
        case "1899673724": //sonic rice
        case "2285717462": //sonic muno
		    quote = "> why don't you spawn two flickies on both sides of your dstrong";
            break;
        
        case "3302238950": //Alexis
            quote = "> je m'appelle jeff";
            break;
			
		case "2201608216": // Blake   
            quote = "> sakk chungus";
            break;
        
        case "2108176600": //moji
        case "2273328517": //tamat
        case "3067741766": //luminance
        case "2390163800": //segerak
        case "2487734175": //parkan		
        case "2997493298": //Truck-Kun
            quote = "> did you know people die all the time even with seatbelts on? just thought that was interesting";
            break;
         

			
        // Base cast
        case CH_CLAIREN: 
           quote = "> cool sword";
           break;

        case CH_ELLIANA:
           quote = "> cool mech";
           break;

        case CH_HODAN:
           quote = "> felipe minha sogra fez aqui também  sopa de macaco uma delícia..."; 
           break;

        case CH_SHOVEL_KNIGHT:
           quote = "> high shovel";
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
		case "1882960192": // Azure
        case "2282173822": //trummel
        case "3380391964": // Troops
        case "1932503649": // Troops (Legacy)
        case "2310580951": // 64 Mario
		case "2201608216": // Blake   
        case "1868240517": // R-00
        case "2229832619": // N/A 
		case "3368304320": // diddy kong
		case "3371991033": // saltydkdan

	
        case CH_CLAIREN: 		
        case CH_ELLIANA:	
        case CH_HODAN:
        case CH_SHOVEL_KNIGHT:	
            icon = 0;
            break;
           
        //Deadpan
        case "2014106219": // Cinna
        case "2669553388": // Old Man
        case "2160644191": // Old Man (Legacy)
        case "2489599400": // Tape
		
            icon = 1;
            break;
        
        //Shrug
        case "2213797413": // Joy-Con
        case "2108176600": //moji
        case "2273328517": //tamat
        case "3067741766": //luminance
        case "2390163800": //segerak
        case "2487734175": //parkan		
        case "2997493298": //Truck-Kun
        case "1870688282": //Obama
        case "2778789055": // po & gumbo

		
            icon = 2;
            break;
          
        //Mad
        case "3380395299": // Ms. Game & Watch
        case "2871136791": // Lode & Puul
        case "3039831352": //sonic barkun
        case "1899673724": //sonic rice
        case "2285717462": //sonic muno
        case "2606413637": //goku
        case "1972937360": //stick byleth
        case "2217843818": // Crewmate
		
            icon = 3;
            break;
            
        //Surprised
        case "2904498757": //Peppino
        case "2817605804": //Jerma985
        case "3123375474": //Miles Edgeworth	
		case "1916050290": //robloxian
		
            icon = 4;
            break;

		//Glad
        case "2799785099": // Sir Kibble
        case "2839808881": // Kirby (Dream Collection)
		
            icon = 5;
            break;
		
		//Shrug (Wink)
		
        case "1869814191": //Sans
        case "3302238950": //Alexis
        case "3353256940": // twenny
        case "2089998666": // Big Yoshi (https://bigyoshi.thecomicseries.com/comics/46/)
        
            icon = 6;
            break;
			
           
            
        default: break;
    }
return icon
}