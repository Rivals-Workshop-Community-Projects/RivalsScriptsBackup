//Sending win quotes to result screen <3 code by Frtoud
if (!geno_handled_victory_quote)
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
            icon: 0,                   // victory icon for geno
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
            //only one geno has to handle this for everyone: notify them.
            geno_handled_victory_quote = true;
            
            data.priority = 2;
            data.icon = geno_victory_icon;
            data.quote = geno_victory_quote;
            //else... >:]
            
        }
        else if ("geno_victory_quote" in self)
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
    
    smuggler.geno_victory_screen_array = transfer_array;
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
        case "1891309722": // Yoyo
            quote = "Brazen youth are no match for the light of the cosmos."
            break;
        
        case "2456124960": // Nate
            quote = "The stars see potential in this one... Interesting."
            break;
        
        case "2606466824": // Incineroar
            quote = "Hmph. Your ego is your own greatest enemy."
            break;
        
        case "2997094130": // Hawks
            quote = "Such arrogance. Slow down for once."
            break;
        
        case "3301160853": // Jenny
            quote = "What a fascinating creation. Just who made you?"
            break;

        case CH_ZETTERBURN: 
           quote = "No, brute force is not the key in every scenario."
           break;
        case CH_FORSBURN:
           quote = "Relying on such deception... I see right through you."; 
           break;
        case CH_CLAIREN: 
           quote = "You need not for wishes, do you? No, you take your future into your own hands."; 
           break;
        case CH_MOLLO: 
        case "1871989159":
           quote = "You need not for wishes, do you? No, you take your future into your own hands."; 
           break;

        case CH_WRASTOR:
           quote = "Your pride was your downfall."; 
           break;
        case CH_ABSA:
           quote = "Your techniques are impressive. Are you self-taught?"; 
           break;
        case CH_ELLIANA:
           quote = "Wrath does not flatter you."; 
           break;
        case CH_POMME:
           quote = "It seems there has been a misunderstanding. You are not the type of star I was looking for."; 
           break;

        case CH_ORCANE:
           quote = "Being of chaos... What is your true form?"; 
           break;
        case CH_ETALUS: 
           quote = "You appear to have a mission as well. I wish you luck, but we must go our separate ways."; 
           break;
        case CH_RANNO:
           quote = "Your teacher taught you well. Please pass my regards."; 
           break;
        case CH_HODAN:
           quote = "Your fighting style is crude."; 
           break;

        case CH_KRAGG: 
           quote = "You are a defender of an important area, are you not? I trust you will see it done."; 
           break;
        case CH_MAYPUL:
           quote = "Speed and cunning. But it wasn't enough."; 
           break;
        case CH_SYLVANOS:
           quote = "Feral beast, this land is not yours to conquer!"; 
           break;
        case CH_OLYMPIA:
           quote = "No, brute force is not the key in every scenario."
           break;

        case CH_ORI:
           quote = "You are guided by the light as well? Thank you for the demonstration."; 
           break;
        case CH_SHOVEL_KNIGHT:
           quote = "You need not for wishes, do you? No, you take your future into your own hands."; 
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
        //standard/stern
        case "1891309722": // Yoyo
        case "2606466824": // Incineroar
        case "2997094130": // Hawks
        case CH_ZETTERBURN: 
        case CH_FORSBURN:
        case CH_WRASTOR:
        case CH_ELLIANA:
        case CH_HODAN:
        case CH_OLYMPIA:
        case CH_MAYPUL:
        case CH_SYLVANOS:
            icon = 0;
            break;
            
        //neutral
        case CH_CLAIREN: 
        case CH_MOLLO: 
        case "1871989159":
        case CH_ETALUS: 
        case CH_KRAGG: 
        case CH_ORI:
        case CH_SHOVEL_KNIGHT:
            icon = 1;
            break;
        
        //eyebrow raise
        case "2456124960": // Nate
        case CH_ORCANE:   
        case CH_RANNO:
            icon = 2;
            break;
        
        //surprise
        case "3301160853": // Jenny
        case CH_ABSA:
            icon = 3;
            break;
        
        //obscured (unused!)
            //icon = 4; 
            //break;
            
        //look away
        case CH_POMME:
            icon = 5;
            break;
        
        default: break;
    }
return icon
}