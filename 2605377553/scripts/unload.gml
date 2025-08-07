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
            quote = "...That's rough, buddy."; 
            break;
        case "2885762133": // Brook
            quote = "Wrong address?";
            break;
        case "1917856427": // Liz
        case "1917856427": // Liz
        case "2108895293": //Lumina
        case "2064167290": //Hana
            quote = "...Was that a 5 year old? The one beating me up?"
            break;
        
        case "2802423078": // Kaiero
        case "2456124960": // Nate
        case "2348671555": // Nate
            quote = "A Hex Gift? No..."; 
            break;
            
        case "2396061657": // Callie
            quote = "Dating? Uhh... I'm good."; 
            break;
        case "2396053263": // Heartbrake
            quote = "Just advice but... I think you'd be less frustrated if you had friends?"; 
            break;
            
        case "2400092760": // Dony
        case "2811831971": // 
            quote = "He was hexed too? Though I'd imagine it wasn't an accident..."; 
            break;
            
        case "2605377553": // Mal
        case "2823291685":
            quote = "Did that blue lady do that? Scary...";
            break;
        
        case "2561479115": // Rokesha
            quote = "Cool gun."; 
            break;
            
        case "1882960192": // Bluey
        case "2014106219": // Cinna
            quote = "Hmm... was that wand hexed too?"
            break;
            
        case "2871608790": //Azi
            quote = "That backpack has to be hexed, but I've never seen one like it before..."
            break;
            
        case "1894194148": //AR
            quote = "Was that girl even real? Ugh, my head hurts."
            break;
            
        case "2802300675": // Valley
            quote = "Why was that weird green kid so obsessed with me? They should watch their distance..."; 
            break;
            
        case "2843521167": // Pastelle
        quote = "Gosh I got some hair in my mouth, why does it taste like... crayons?";
        break;
        
        case "2983344228": // Kiku Braeburn
        quote = "The apple thing, was that a boxing gimmick? Can I be the Bird Boxer, or something?";
        break;
        
        case "2965700442": // Humanthem
        quote = "Brr... how did that woman fight wearing so little, it's cold out.";
        break;
        
        case "2977835488": //Qoedil
        quote = "Never seen a pitch black ghost like that. ..Kinda cute."
        break;
        
        case "2601775097": //Bar Reygard
        quote = "...Angels? Those exist? Huh."
        break;
        
        case "2254931693": //Bonby
        quote = "She was friends with a frog... guess everyone needs... a friend."
        break;
        
        case "2867341866": //Aur (honorary human)
        quote = "So he was cursed from greed. Guess there's something like that in every world..."
        break;
        
        case "2415092274": //Ao (honorary human)
        quote = "Alone on the hill, do you fear your burden on others?"
        break;
        
        case "2817605804": //Jerma (honorary human)
        quote = "Scary... was he some kind of serial killer?"
        break;
        
        case "3079776883": //Kumaki
        quote = "...Aren't scythes for farming? I don't know what she was expecting, fighting with one."
        break;
        
        case "3039085407": //Larry
        quote = "That loud gunbarrel was one thing, but the stench of that old grease... eugh."
        break;
        
        case "3308351120": //Saelune
        case "3115049167": //Saelukune (legacy)
        quote = "They were so carefree... But also, sad? ...I'm taking that hat."
        break;
        
        case "3302238950": //Alexis
        quote = "Magic, and technology? Maybe if she's alright I could introduce her to..."
        break;
        
        case "3306584099": //Tomoko
        quote = "...Was that a cop?... Uhh..."
        break;
        
        case "3307368173": //Sarolyn
        quote = "A vampire? Scary!! The one I know is way friendlier!!"
        break;
        
        case "3294183869": //Vale
        quote = "What was that, a freaky... zombie?"
        break;
        
        case "3382637663": //Ciela
        quote = "Why didn't that lady just... always use the ghost sword?"
        break;
        
        case "3310371100": //Usher
        quote = "A utopia can't be all that good, but I didn't want to rain on her parade..."
        break;
        
        case "3309240911": //Putrolce
        quote = "Under the jacket...she was bone thin, right? I hope that hexed mask wasn't starving her..."
        break;
        
        case "3316053085": //Venus
        quote = "A cupid?? She wasn't going to force me to like anyone was she? Ugh, I-"
        break;
        
        case "3316054693": //Asra
        quote = "That hex on her soul seemed painful... but couldn't you cure it at that size?"
        break;
        
        case "3349890045": //Queen Platina
        quote = "A ghost etched in the image of her dead husband... Anyone in grief would fall for that too, really."
        break;
        
        case "3463541091": //Nonari
        quote = "If you fight someone right after soccer practice, you'll definitely tire yourself out like that..."
        break;

        case "3436597271": //Cocua
        quote = "Beating me up was one thing but the cigarette smell was awful. ...Though maybe I'm one to talk."
        break;
        
        case "3415959265": //Saya
        quote = "A guardian's duty sounds tiring... Maybe I carry a similar role now too, with these Shards."
        break;
        
        case "3346651920": //Slenderman
        quote = "No, I won't find your pages!! Gosh, insistent ghosts are too annoying!!"
        break;
        
        case "2996263079": //Yuuko
        case "3047409367": //Nano
        quote = "An ordinary life... yeah, I'd... I'd like that."
        break;
        
        case "3353596512": //Employee
        quote = "Hey, no, these Shards aren't for looting! I'm calling, uh... HR."
        break;
        
        case "3349889053": //deraciné
        quote = "Pretty standard fare ghost stuff, but... creepy crawlies sure give me the heebie jeebies."
        break;
        
        case "3357728777": //Ingrim
        quote = "...I've exorcised that awful spirit of wrath. May that raven spread its wings and fly to a better place."
        break;
        
        case "2871136791": //Lode 
        quote = "Pigeons are cute, it's unfair people call them pests! ...Glad you agree Mr., uh, rock turtle."
        break;
        
        case "3357700659": //Spooky 
        quote = "The standard of scariness Americans hold seems very... low. Scariest thing was definitely the deer."
        break;
        
        case "3042615374": //Nemesis
        quote = "If that was just a zombie, I wouldn't bother. But if human hands made that... thing..."
        break;
        
        case "3354842635": //Phasmo Hunters
        quote = "Hiring pro hunters sounds like a luxury, whenever I see a ghost eating from my trashcan I just whack it with a broom."
        break;

        case "3353256940": //Twenny 
        quote = "I thought it was just a mad ghost, but her soul ached like a human... 'Twenny'... Is this how it ends?"
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
        case "3079776883": //Kumaki
        case "3039085407": //Larry
        case "3307368173": //Sarolyn
        case "3382637663": //Ciela
        case "3316053085": //Venus
        case "3463541091": //Nonari
        case "3436597271": //Cocua
        case "3346651920": //Slenderman
        case "2996263079": //Yuuko
        case "3047409367": //Nano
        case "3357728777": //Ingrim
        case "3354842635": //Phasmo Hunters
            icon = 0;
            break;
            
        //:^.
        case "2802423078": // Kaiero
        case "2456124960": // Nate
        case "2348671555": // Nate
        case "3308351120": //Saelune
        case "3115049167": //Saelukune (legacy)
            icon = 1;
            break;
        
        //looking aside
        case "1917856427": // Liz
        case "1917856427": // Liz
        case "2108895293": //Lumina
        case "2064167290": //Hana
        case "2983344228": // Kiku Braeburn
        case "2415092274": //Ao (honorary human)
        case "3349890045": //Queen Platina
        case "3415959265": //Saya
        case "3042615374": //Nemesis
        case "3353256940": //Twenny 
            icon = 2;
            break;
        
        
        //anxious
        case "2885762133": // Brook
        case "2396061657": // Callie
        case "2843521167": // Pastelle
        case "2965700442": // Humanthem
        case "3306584099": //Tomoko
        case "3294183869": //Vale
        case "3309240911": //Putrolce
        case "3353596512": //Employee
        case "3349889053": //deraciné
        case "3357700659": //Spooky 
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
        case "3316054693": //Asra
            icon = 4;
            break;
            
        //surprised
        case "2561479115": // Rokesha
        case "3302238950": //Alexis
            icon = 5;
            break;
            
        //smiling
        case "2977835488": //Qoedil
        case "2254931693": //Bonby
        case "2871136791": //Lode 
            icon = 6;
            break;
        
        default: break;
    }
return icon
}