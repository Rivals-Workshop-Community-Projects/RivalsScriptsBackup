//Sending win quotes to result screen <3 code by Frtoud
if (!mal_handled_victory_quote)
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
            icon: 0,                   // victory icon for mal
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
            //only one Mal has to handle this for everyone: notify them.
            mal_handled_victory_quote = true;
            
            data.priority = 2;
            data.icon = 0;
            data.quote = mal_victory_quote;
            //else... >:]
            
        }
        else if ("mal_victory_quote" in self)
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
    
    smuggler.mal_victory_screen_array = transfer_array;
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
        case "2802914735": // Ayaka
            quote = "That's rough buddy."; 
            break;
        case "2885762133": // Brook
            quote = "Wrong address, I think??";
            break;
        case "1917856427": // Liz
        case "1917856427": // Liz
        case "2108895293": //Lumina
        case "2064167290": //Hana
            quote = "Well, I sure almost got beat up by what, a 5 year old?"
            break;
        
        case "2802423078": // Kaiero
        case "2456124960": // Nate
        case "2348671555": // Nate
            quote = "Was that the power of a Curse? But they weren't from Ambrosia..."; 
            break;
            
        case "2396061657": // Callie
            quote = "Yeah I don't really -do- this whole, uh, dating thing."; 
            break;
        case "2396053263": // Heartbrake
            quote = "I think you're just mad because you don't have any friends?"; 
            break;
            
        case "2400092760": // Dony
        case "2811831971": // 
            quote = "You're hexed too? Though I'd hardly imagine it was an accident..."; 
            break;
            
        case "2605377553": // Mal
        case "2823291685":
            quote = "Was that Cel again? Those clones of hers are getting borderline lifelike...";
            break;
        
        case "2561479115": // Rokesha
            quote = "Cool gun."; 
            break;
            
        case "1882960192": // Bluey
        case "2014106219": // Cinna
            quote = "Compressed paranormal energy to store weaponheads... they're a genius!"
            break;
            
        case "2871608790": //Azi
            quote = "That backpack has to be hexed, but I've never seen one like it before..."
            break;
            
        case "1894194148": //AR
            quote = "Was that girl even real? Wow, my head hurts."
            break;
        
        case "2105839293": // Yuuto
        case "2626409326":
            quote = "I know I just beat you up but you need a therapist or something?";
            break;
            
        case "2802300675": // Valley
            quote = "You feel like someone I would NEVER get along with. Cool smoke."; 
            break;
            
        case "2843521167": // Pastelle
        quote = "Oh God I think I got some hair in my mouth. ...Crayons??";
        break;
        
        case "2983344228": // Kiku Braeburn
        quote = "Note to self: don't pick a fight with a Granny Smith.";
        break;
        
        case "2965700442": // Humanthem
        quote = "It's like 10 celsius out here, you should really put something on.";
        break;
        
        case "2977835488": //Qoedil
        quote = "Huh, never seen a pitch black ghost like that. Kinda cute."
        break;
        
        case "2601775097": //Bar Reygard
        quote = "So, angels exist? Eh, I've seen stranger things. Probably."
        break;
        
        case "2254931693": //Bonby
        quote = "Best friends with a frog... I guess there's companionship for everyone."
        break;
        
        case "2867341866": //Aur (honorary human)
        quote = "Curse of Gold? Seems there's things like that in any world."
        break;
        
        case "2415092274": //Ao (honorary human)
        quote = "Alone on the hill, do you fear your burden on others? Ok, projecting."
        break;
        
        case "2817605804": //Jerma (honorary human)
        quote = "That was close, that guy was like if you compiled all serial killers into one dude."
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
        //neutral
        case "2802914735": // Ayaka
        case "2396053263": // Heartbrake
        case "2605377553": // Mal
        case "2823291685": // SSL Mal
        case "2802300675": // Valley
        case "2817605804": //Jerma (honorary human)
            icon = 0;
            break;
            
        //:^.
        case "2802423078": // Kaiero
        case "2456124960": // Nate
        case "2348671555": // Nate
            icon = 1;
            break;
        
        //looking aside
        case "1917856427": // Liz
        case "1917856427": // Liz
        case "2108895293": //Lumina
        case "2064167290": //Hana
        case "2983344228": // Kiku Braeburn
        case "2415092274": //Ao (honorary human)
            icon = 2;
            break;
        
        
        //anxious
        case "2885762133": // Brook
        case "2396061657": // Callie
        case "2105839293": // Yuuto
        case "2626409326": // Yuuto
        case "2843521167": // Pastelle
        case "2965700442": // Humanthem
            icon = 3;
            break;
        
        //curious questioning
        case "2400092760": // Dony
        case "2811831971": // Dony
        case "1882960192": // Bluey
        case "2014106219": // Cinna
        case "2871608790": //Azi
        case "1894194148": //AR
        case "2601775097": //Bar Reygard
        case "2867341866": //Aur (honorary human)
            icon = 4;
            break;
            
        //surprised
        case "2561479115": // Rokesha
            icon = 5;
            break;
            
        //smiling
        case "2977835488": //Qoedil
        case "2254931693": //Bonby
            icon = 6;
            break;
        
        default: break;
    }
return icon
}