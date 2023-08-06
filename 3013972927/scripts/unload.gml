//unload.gml
//runs at a few points like when you exit a match, used to clear out memory

if (!chai_handled_victory_quote)
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
            quote:"",                 // message if chai wins against you
            //===========================================================================
            status_quote: "",         // message for this chai if she wins under certain conditions
        }
    }
    
    with (oPlayer) if (player <= 4)
    {
        var data = transfer_array[player];
        if (url == other.url) // chai-specific
        //&& (test all player teams?)
        {
            
            //only one chai has to handle this for everyone: notify them.
            chai_handled_victory_quote = true;
            
            data.priority = 2;
            data.quote = chai_victory_quote;

            
        }
        else if ("chai_victory_quote" in self)
        {
            data.priority = 2;
            data.quote = chai_victory_quote;
        }
        else
        {
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
    
    smuggler.chai_victory_screen_array = transfer_array;
    //smuggler.uhc_batteries = uhc_batteries;
}

#define try_get_quote(char_url)
{
    //=========================================================
    // Approximate maximum line:
            //      "aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa";
    //=========================================================
    var quote = "";
    switch (char_url)
    {
        case "2815765061": // Scott Pilgrim
	    quote = "I feel like we always seem to get mixed up with one another";
	    break;
	    
	    case "2843521167": // Pastelle
	    quote = "Looks like she didn't get... the point! Eh?";
	    break;
	    
	    case "2983344228": // Kiku
	    quote = "With those boxing skills, I think you and Rekka would get along just fine! ...If she was still here that is.";
	    break;
	    
        default: break;
    }
    return quote;
}