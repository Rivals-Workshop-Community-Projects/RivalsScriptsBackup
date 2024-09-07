//Sending win quotes to result screen <3 code by Frtoud
if (!incin_handled_victory_quote)
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
            icon: 0,                   // victory icon for incin
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
            //only one incin has to handle this for everyone: notify them.
            incin_handled_victory_quote = true;
            
            data.priority = 2;
            data.icon = incin_victory_icon;
            data.quote = incin_victory_quote;
            //else... >:]
            
        }
        else if ("incin_victory_quote" in self)
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
    
    smuggler.incin_victory_screen_array = transfer_array;
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
            quote = "(This isn't a place for kids to play with toys.)"
            break;
        
        case "2318304706": // Geno
            quote = "(Not so high-and-mighty now, are you? I'll pummel you any day!)"
            break;
        
        case "2456124960": // Nate
            quote = "(Quit your dumb tricks! They're no match for my raw power!)"
            break;
        
        case "2997094130": // Hawks
            quote = "(Your dinky little feathers can't even leave a scratch on me!)"
            break;
        
        case "3301160853": // Jenny
            quote = "(Unlike you, I was ACTUALLY built for fighting!)"
            break;

        case CH_ZETTERBURN: 
           quote = "(Now THAT's the kind of fight I'm looking for! Let's go again!)"
           break;
        case CH_FORSBURN:
           quote = "(Who cares if you can make clones? I'll smash 'em all!)"; 
           break;
        case CH_CLAIREN:
           quote = "(I don't care what tech you got, it's no match for me!)"; 
           break;
        case CH_MOLLO: 
        case "1871989159":
           quote = "(Quit your dumb tricks! They're no match for my raw power!)" 
           break;

        case CH_WRASTOR:
           quote = "(People always think they can beat me just because they fly. Guess looks can be deceiving!)"; 
           break;
        case CH_ABSA:
           quote = "(Zap, zap, zap... Where's your anger? Where's your rage? I don't get it.)"; 
           break;
        case CH_ELLIANA:
           quote = "(Haw haw! Melted down!)"; 
           break;
        case CH_POMME:
           quote = "(I don't care if you've got fame, you'll get suplexed like the rest!)"; 
           break;

        case CH_ORCANE:
           quote = "(Finally caught you, you slippery little-- )"; 
           break;
        case CH_ETALUS: 
           quote = "(I like the way you fight! Let's go again!)"; 
           break;
        case CH_RANNO:
           quote = "(A pacifist? No match for my fists!)"; 
           break;
        case CH_HODAN:
           quote = "(I like the way you fight! Let's go again!)"; 
           break;

        case CH_KRAGG: 
           quote = "(I like the way you fight! Let's go again!)"; 
           break;
        case CH_MAYPUL:
           quote = "(Finally caught you, you slippery little-- )"; 
           break;
        case CH_SYLVANOS:
           quote = "(Even a whole forest can't stand up to me! I'll burn it all down!)"; 
           break;
        case CH_OLYMPIA:
           quote = "(I like the way you fight! Let's go again!)";  
           break;

        case CH_ORI:
           quote = "(Finally caught you, you slippery little-- )";  
           break;
        case CH_SHOVEL_KNIGHT:
           quote = "(All that posturing, but you couldn't back it up...)"; 
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
        //smirk
        case "2318304706": // Geno
        case "2456124960": // Nate
        case "2997094130": // Hawks
        case "3301160853": // Jenny
        case CH_FORSBURN:
        case CH_MOLLO: 
        case "1871989159":
        case CH_POMME:
        case CH_RANNO:
            icon = 0;
            break;
            
        //big smile
        case CH_ZETTERBURN: 
        case CH_ELLIANA:
        case CH_ETALUS: 
        case CH_HODAN:
        case CH_KRAGG:
        case CH_SYLVANOS:
        case CH_OLYMPIA:
            icon = 1;
            break;
        
        //eyebrow raise
        case CH_WRASTOR:
        case CH_ABSA:
            icon = 2;
            break;
        
        //mad
        case "1891309722": // Yoyo
        case CH_CLAIREN:
        case CH_ORCANE:
        case CH_MAYPUL:
        case CH_ORI:
        case CH_SHOVEL_KNIGHT:
            icon = 3;
            break;
        
        //rage (unused)  
            icon = 4;
            break;
            
        //wink (unused)
            icon = 5;
            break;
        
        default: break;
    }
return icon
}