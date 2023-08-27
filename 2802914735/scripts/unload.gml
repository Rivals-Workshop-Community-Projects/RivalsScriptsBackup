//Sending win quotes to result screen <3 code by Frtoud
if (!ayaka_handled_victory_quote)
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
            icon: 0,                   // victory icon for ayaka
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
            //only one ayaka has to handle this for everyone: notify them.
            ayaka_handled_victory_quote = true;
            
            data.priority = 2;
            data.icon = ayaka_victory_icon;
            data.quote = ayaka_victory_quote;
            //else... >:]
            
        }
        else if ("ayaka_victory_quote" in self)
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
    
    smuggler.ayaka_victory_screen_array = transfer_array;
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
        case "2922280596": // Desirae
            quote = "Oh! You have one of those blaster things! I used to know a guy with one of those!"
            break;
            
        case "2922282666": // Anzen
            quote = "So, now that that's over, can you control... all gems? Or just that one?"
            break;
            
        case "2832785375": // Arboris
            quote = "I feel like I've seen something that looked very similar to you before... Hm..."
            break;
            
        case "2972978461": // Pici
            quote = "Okay, you have GOT to teach me how to cast some of those spells sometime!"
            break;
            
        case "2005036466": // Penny
            quote = "You're allowed to have all that...?! Jeez... this place really doesn't hold back any punches..."
            break;
            
        case "2605304929": // Daora
            quote = "Your... village got destroyed? Hm, I'm sorry to hear that, but you shouldn't take it out on me."
            break;
            
        case "2606508459": // Fernet
            quote = "You... need to wear those gloves to not burn your hands? ...Can you believe that I've seen that before?"
            break;
            
        case "2648394023": // Glare
            quote = "Wow, you're quick...! Even I was struggling to keep up with y- Wait, where'd you go?!"
            break;
            
        case "2855515151": // Dazz
            quote = "That thing in your hat, does he bite? Er... without you telling him to, that is-."
            break;
            
        case "2895612943": // Scratch Bite
            quote = "I've never seen that style of dance before...! Please, you HAVE to teach me!"
            break;
            
        case "2910686680": // Laki
            quote = "Is this what they meant when they asked if I'd love them if they were a worm?"
            break;
            
        case "2546990424": // Maverick
            quote = "Hey, can I borrow your sunglasses for a sec? Please?"
            break;
            
        case "2229832619": // N/A 
            quote = "Enemy down! Uh... wait, that's all?"
            break;
            
        case "1904437331": // Astra
            quote = "Card spells... I think I've seen something like that before."
            break;
            
        case "2778789055": // Po Gumbo 
            quote = "Wait... if you're a shrimp... then that means all the rice jokes were real?!"
            break;
            
        case "2626409326": // Yuuto
        case "2105839293":
            quote = "For someone so young, you can cast very well! Good work!"
            break;
            
        case "2867341866": // Aur
            quote = "Oh, you can't take those off? Oh, poor thing..."
            break;
            
        case "2687880389": // Retroblast
            quote = "To think I'd run into a robot here..."
            break;
            
        case "1968068304": // Epinel
            quote = "Is it... rude to say you don't give off good vibes?"
            break;
            
        case "2853556003": // Torga
            quote = "I'm not trying to harm your sanctuary! Really! Promise!"
            break;
            
        case "2092141255": // Water Bottle DE 
            quote = "So... were you like... enchanted by someone or...?"
            break;
            
        case "2504113755": // Nova 
            quote = "Woah, are those- teleports or like, time... stuff? I can't tell..."
            break;
            
        case "2811386719": // Wally
            quote = "If you're looking for wrestling practice I'm not the girl for that, sorry."
            break;
            
        case "2946043340": // Uysal
            quote = "I wonder how that air stuff would work in tandem with weaponry..."
            break;
            
        case "1996010699": // Suitcase
            quote = "The mimics are getting more crafty by the day...!"
            break;
            
        case "2396735388": // Zephrie
            quote = "Awe. sorry if I hurt you... Poor thing, lemme patch you up!"
            break;
            
        case "2871136791": // Lode & Puul
            quote = "A metal shell...?! Did you make that yourself...?"
            break;
            
        case "2942375772": // Marti
            quote = "Sorry about that! I'll let you get back to jamming!"
            break;
        
        case "2469588541": // Lukastar
            quote = "So are you like... one of those astral plane observers?"
            break;
        
        case "2917082599": // Madeline
            quote = "Huh... maybe I should give that mountain a go."
            break;
        
        case "2904134945": // Noelle
            quote = "You're looking for your sister? Sorry, haven't seen her..."
            break;
        
        case "2459562158": // Nitori 
            quote = "Where do you even find all the stuff that you can put in that thing?!"
            break;
            
        case "2940069199": // Suisei 
            quote = "If you ever need a backup dancer, just let me know."
            break;
        
        case "2885762133": // Brook
            quote = "Oh, by the way, that hat looks super cute on you!";
            break;
            
        case "2561479115": // Rokesha
            quote = "Wait, that blaster...! Where did you get that...?!"; 
            break;
            
        case "2871608790": //Azi
            quote = "Are you sure it's safe for someone your age to be here...?"
            break;
        
        case "2983344228": // Kiku Braeburn
        quote = "O-Oh, I wasn't supposed to use the axes? Sorry-.";
        break;
        
        case "2965700442": // Humanthem
        quote = "I've never seen a sword like that before... It's neat.";
        break;
        
        case "2817605804": //Jerma 
        quote = "The... horror? Uh... n-no thanks! I'm good! Another time, maybe...!"
        break;
        
        case "2605377553": //Mal
        quote = "Hey, you seem a bit ill, let's go again when you're feeling a little better!"
        break;

        case CH_ZETTERBURN: 
           quote = "So... do you feel that fire, or...? Ah—! Is that rude?"
           break;
        case CH_FORSBURN:
           quote = "Having that much smoke built up in you can't be healthy..."; 
           break;
        case CH_CLAIREN: 
           quote = "That sword is SO cool by the way! ...Can I hold it? Please? Just for a second!"; 
           break;
        case CH_MOLLO: 
        case "1871989159":
           quote = "Where are you even keeping all those bombs?!"; 
           break;

        case CH_WRASTOR:
           quote = "I didn't clip your wings, did I...?! Jeez, that'd be bad..."; 
           break;
        case CH_ABSA:
           quote = "Not the worst use of lightning I've seen, I can tell you that much."; 
           break;
        case CH_ELLIANA:
           quote = "How do you even control that without hands...? Oh, are you psychic?!"; 
           break;
        case CH_POMME:
           quote = "Oh, oh! You're one of those idols! I'll let you go, you're probably busy."; 
           break;

        case CH_ORCANE:
           quote = "I would pet you, but I would get my hands all oily, sorry—."; 
           break;
        case CH_ETALUS: 
           quote = "Huh... maybe I should look into figure-skating..."; 
           break;
        case CH_RANNO:
           quote = "Sorry to burst your bubble! Haha— sorry, had to, had to!"; 
           break;
        case CH_HODAN:
           quote = "I really wish I could have a hot springs trip myself right about now..."; 
           break;

        case CH_KRAGG: 
           quote = "First time I've had someone throw rocks at my performance... Was it that bad?"; 
           break;
        case CH_MAYPUL:
           quote = "Hey, can borrow one of those tethers? It'd be great for a show!"; 
           break;
        case CH_SYLVANOS:
           quote = "What the?! What's one of you doing all the way out here?!”"; 
           break;
        case CH_OLYMPIA:
           quote = "Your gauntlets... did you make those yourself? Or were they gifts?"; 
           break;

        case CH_ORI:
           quote = "So, is that light ball alive, or...? Ah, can you even talk—?"; 
           break;
        case CH_SHOVEL_KNIGHT:
           quote = "I feel like a naginata might work a bit better for you—."; 
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
        //happy / neutral
        case "2922282666": // Anzen
        case "2972978461": // Pici
        case "1904437331": // Astra
        case "2626409326": // Yuuto
        case "2105839293":
        case "2687880389": // Retroblast
        case "2942375772": // Marti
        case "2885762133": // Brook
        case "2605377553": //Mal
        case CH_OLYMPIA:
            icon = 0;
            break;
            
        //;)
        case "2546990424": // Maverick
        case "2940069199": // Suisei 
        case CH_SHOVEL_KNIGHT:
        case CH_ETALUS: 
        case CH_RANNO:
            icon = 1;
            break;
        
        //bwehh
        case "2855515151": // Dazz
        case "2853556003": // Torga
        case "2983344228": // Kiku Braeburn
        case "2965700442": // Humanthem
        case CH_ZETTERBURN:
        case CH_FORSBURN:
            icon = 2;
            break;
        
        
        //surprised
        case "2922280596": // Desirae
        case "2832785375": // Arboris
        case "2895612943": // Scratch Bite
        case "2229832619": // N/A 
        case "2092141255": // Water Bottle DE
        case "2504113755": // Nova 
        case "2946043340": // Uysal
        case "2396735388": // Zephrie
        case "2871136791": // Lode & Puul
        case "2469588541": // Lukastar
        case "2561479115": // Rokesha
        case "2871608790": //Azi
        case CH_ORI:
        case CH_CLAIREN: 
        case CH_POMME:
        case CH_MAYPUL:
            icon = 3;
            break;
        
        //dizzy
        case "2005036466": // Penny
        case "2648394023": // Glare
        case "1996010699": // Suitcase
        case "2459562158": // Nitori 
        case "1871989159":
        case CH_ELLIANA:
            icon = 4;
            break;
            
        //sigh
        case "2605304929": // Daora
        case "2867341866": // Aur
        case "2904134945": // Noelle
            icon = 5;
            break;
            
        //small panic
        case "2910686680": // Laki
        case "2778789055": // Po Gumbo 
        case "2917082599": // Madeline
        case "2817605804": //Jerma 
            icon = 6;
            break;
        
        //ayaka uncanny
        case "2606508459": // Fernet
        case "2811386719": // Wally
        case CH_ABSA:
        case CH_HODAN:
        case CH_SYLVANOS:
            icon = 7;
            break;
            
        //ayakeeyikes
        case "1968068304": // Epinel
        case CH_WRASTOR:
        case CH_KRAGG: 
        case CH_ORCANE:
            icon = 8;
            break;
        
        default: break;
    }
return icon
}