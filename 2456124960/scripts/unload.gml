//Sending win quotes to result screen <3 code by Frtoud
if (!nate_handled_victory_quote)
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
            icon: 0,                   // victory icon for nate
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
            //only one nate has to handle this for everyone: notify them.
            nate_handled_victory_quote = true;
            
            data.priority = 2;
            data.icon = nate_victory_icon;
            data.quote = nate_victory_quote;
            //else... >:]
            
        }
        else if ("nate_victory_quote" in self)
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
    
    smuggler.nate_victory_screen_array = transfer_array;
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
            quote = "What swift mobility! Is it due to your streamlined form?"
            break;
        
        case "2318304706": // Geno
            quote = "So this is the true power of the stars? Interesting..."
            break;
        
        case "2606466824": // Incineroar
            quote = "*huff* *huff* That... was close. Just one wrong move could have been it..."
            break;
        
        case "2997094130": // Hawks
            quote = "I beat a professional superhero? Wow... I think I got lucky."
            break;
        
        case "3301160853": // Jenny
            quote = "Shoot, are you okay? I know some engineers that may be able to do repairs..."
            break;

        case CH_ZETTERBURN: 
           quote = "Man, do I have enough MP left to cure my burns, or...?"
           break;
        case CH_FORSBURN:
           quote = "Glad that's over... It's hard to breathe through all that smoke!"; 
           break;
        case CH_CLAIREN: 
           quote = "I know your tricks, I've fought alongside an electric-sword user long enough!"; 
           break;
        case CH_MOLLO: 
        case "1871989159":
           quote = "I need a second, my ears are still ringing..."; 
           break;

        case CH_WRASTOR:
           quote = "I never thought wings could hit so hard, I'm impressed!"; 
           break;
        case CH_ABSA:
           quote = "Controlled and precise electricity? I have a party member who needs to learn from you..."; 
           break;
        case CH_ELLIANA:
           quote = "Did you build that mech yourself? And here I thought my friends were engineering prodigies..."; 
           break;
        case CH_POMME:
           quote = "How graceful and refined! You remind me of a very close friend."; 
           break;

        case CH_ORCANE:
           quote = "I'm used to slime cats, but a slime dog... whale... thing... That's new!"; 
           break;
        case CH_ETALUS: 
           quote = "A bear has the power to control ice too? I have to tell the queen!"; 
           break;
        case CH_RANNO:
           quote = "Nope. I'm NOT doing that again."; 
           break;
        case CH_HODAN:
           quote = "Eugh. I need to take, like... twenty baths. In a row."; 
           break;

        case CH_KRAGG: 
           quote = "Didn't think my techniques would be so similar to... a giant bug? I need to study that pillar design, and..."; 
           break;
        case CH_MAYPUL:
           quote = "My eyes could barely keep up with you! I've got a fast friend i just gotta introduce you to!"; 
           break;
        case CH_SYLVANOS:
           quote = "Just as I thought, you can't burrow through illidrium!"; 
           break;
        case CH_OLYMPIA:
           quote = "Those crystal gauntlets... Were you gifted like I was?"; 
           break;

        case CH_ORI:
           quote = "Two-on-one hardly seems fair! Though, I guess a lot of my fights were four-on-one... Hm."; 
           break;
        case CH_SHOVEL_KNIGHT:
           quote = "A real knight? Thank you for the glorious battle!"; 
           break;
        
        case "3302238950": // Alexis
            quote = "Woah, it's like looking into a mirror! Well, close enough, anyway."
            break;
           
        case "3139930266": // Amanita
            quote = "You look as deadly as the forest itself... What a great battle."
            break;
           
        case "2593144115": // Amaya
            quote = "Uh. Do you know how to wash this stuff out of my clothes?"
            break;
           
        case "3139869895": // Arcuin
            quote = "Oh, what a cute penguin! Still so dangerous, though!"
            break;
           
        case "3118680316": // Awatsu
            quote = "The way you fight is so elegant and artistic... I want to learn."
            break;
           
        case "2802914735": // Ayaka
            quote = "Yowch, those axes hurt! How are you so precise with them?"
            break;
           
        case "2871608790": // Azi
            quote = "So small, yet so deadly... What do you even feed that thing?"
            break;
           
        case "2490060793": // Barr
            quote = "Every day I see something new in this world... What's next?"
            break;
           
        case "3117219382": // Bhadra
            quote = "How cool, I should try making a grindrail with my illidrium sometime!"
            break;
           
        case "1882960192": // Bluey
            quote = "What a cool weapon! Wonder which one of us has more tools?"
            break;
            
        case "2605304929": // Daora
            quote = "Ugh... stay back. You won't get your claws on me again."
            break;
           
        case "3120902361": // Desperado
            quote = "Hey, watch where you're pointing that! Jeez..."
            break;
            
        case "2606508459": // Fernet
            quote = "Another who fights with star power... Yet your technique is so different."
            break;
           
        case "2652644223": // Future Ducky
            quote = "Woah, high-tech! I should introduce you to some of my engineer friends!"
            break;
           
        case "2605468032": // Gawr Gura
            quote = "Those sharp teeth... I thought the shark thing was just a costume?"
            break;
           
        case "2064167290": // Hana
            quote = "Are you ok? I feel weird about fighting a little kid..."
            break;
           
        case "3119664631": // Helios
            quote = "Orbs of light versus magic gem shards... I'm surprised how similar they can be."
            break;
           
        case "3292951946": // Hex
            quote = "Um, sorry. Don't take this the wrong way, but... what ARE you?"
            break;
           
        case "2817605804": // Jerma
            quote = "Oh, is this one of those 'yoo-tubers' I've heard about? People keep saying I look like one."
            break;
           
        case "2983344228": // Kiku
            quote = "Sorry, up-close fighting isn't really my style."
            break;
           
        case "3109768585": // Koishi
            quote = "What an interesting style of magic. Can't say I've seen it before."
            break;
           
        case "3079776883": // Kumaki
            quote = "Hmph. You won't be hurting anyone else."
            break;
           
        case "3137450762": // La Reina
            quote = "Ugh, what a workout. You do this all the time?"
            break;
           
        case "2871136791": // Lode & Puul
            quote = "Wait, can we test the magnetic properties of illidrium? I've got a bunch of things I want to try, hold on--"
            break;
           
        case "2108895293": // Lumina
            quote = "Such radiant light... I've felt this power before."
            break;
           
        case "3311683657": // Luna
            quote = "Cool visor! Let me try making my own..."
            break;
           
        case "2167624888": // Lyca
            quote = "Those spirits, are those...? No, I'm sorry, that's a sensitive subject matter, isn't it."
            break;
           
        case "2546990424": // Maverick
            quote = "Such impressive force! To create air currents such as this with basic strikes?"
            break;
            
        case "2229832619": // N/A 
            quote = "This must be another product of that cursed artifact. I'm glad it's been defeated."
            break;
           
        case "3284331017": // Nacht
            quote = "Cool visor! Let me try making my own..."
            break;
           
        case "2035357584": // Nade
            quote = "THIS is who people were confusing me for? I don't get it. We look nothing alike."
            break;
           
        case "3070186949": // Napstablook
            quote = "Oh gosh, are you hurt? I... didn't even realize you COULD be hurt..."
            break;
           
        case "2904134945": // Noelle
            quote = "Your ice magic might be as strong as my sister's! Who taught you?"
            break;
           
        case "3307937190": // Pastelle
            quote = "How colorful! I bet if we combined our powers, we could make an incredible sculpture!"
            break;
           
        case "2005036466": // Penny
            quote = "Woah, high-tech! I should introduce you to some of my engineer friends!"
            break;
           
        case "2904498757": // Peppino
            quote = "Are you... okay? Like just generally? I'm kinda concerned."
            break;
           
        case "3309240911": // Putrolce
            quote = "This must be another product of that cursed artifact. I'm glad it's been defeated."
            break;
           
        case "2977835488": // Qoedil
            quote = "This must be another product of that cursed artifact. I'm glad it's been defeated."
            break;
           
        case "2820380997": // Roekoko
            quote = "Ugh... stay back. You won't get your claws on me again."
            break;
           
        case "2561479115": // Rokesha
            quote = "Woah, high-tech! I should introduce you to some of my engineer friends!"
            break;
           
        case "2241098230": // Rykenburn 
            quote = "Ugh... stay back. You won't get your mitts on me again."
            break;
           
        case "2802424939": // Sakuya
            quote = "Yowch, those knives hurt! How are you so precise with them?"
            break;
           
        case "2940069199": // Suisei
            quote = "Hey, those blocks kinda look like mine!"
            break;
           
        case "1996010699": // Suitcase
            quote = "A living suitcase with unlimited storage space. Not sure which part concerns me more."
            break;
           
        case "3306584099": // Tomoko
            quote = "Your ice magic might be as strong as my sister's! Who taught you?"
            break;
           
        case "2997493298": // Truck-kun
            quote = "I think I've seen one of these before... Didn't know they could jump, though."
            break;
           
        case "3310371100": // Usher
            quote = "Are you ok? I feel weird about fighting a little kid..."
            break;
           
        case "3136330641": // Vakna
            quote = "Man, do I have enough MP left to cure my burns, or...?"
            break;
           
        case "3294183869": // Vale
            quote = "Just what is that hammer made of? I may have to try and make my own version..."
            break;
           
        case "1917713379": // Valkyrie
            quote = "One who speaks with spirits... Could... you help me with something later?"
            break;
            
        case "2811386719": // Wally
            quote = "Ugh... stay back. You won't get your mitts on me again."
            break;
            
        case "3118007135": // Wren
            quote = "Can't say I'm fond of the water... I'll leave the beaches to you."
            break;
            
        case "3118659566": // Yono
            quote = "Thanks for the battle! Hope I didn't keep you from your job for too long!"
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
        case CH_WRASTOR:
        case CH_ABSA:
        case CH_SYLVANOS:
        case "3302238950": // Alexis
        case "3139930266": // Amanita
        case "1882960192": // Bluey
        case "3109768585": // Koishi
        case "2108895293": // Lumina
        case "2005036466": // Penny
        case "2561479115": // Rokesha
        case "2940069199": // Suisei
        case "3306584099": // Tomoko
            icon = 0;
            break;
            
        //:o
        case "1891309722": // Yoyo
        case "2318304706": // Geno
        case CH_ELLIANA:
        case CH_KRAGG:
        case CH_MAYPUL:
        case CH_OLYMPIA:
        case "3139869895": // Arcuin
        case "3118680316": // Awatsu
        case "2490060793": // Barr
        case "3117219382": // Bhadra
        case "2652644223": // Future Ducky
        case "2871136791": // Lode & Puul
        case "2546990424": // Maverick
        case "2904134945": // Noelle
        case "3307937190": // Pastelle
            icon = 1;
            break;
        
        //eyebrow raise
        case CH_ORCANE:
        case CH_ETALUS:
        case CH_ORI:
        case "2606508459": // Fernet
        case "2605468032": // Gawr Gura
        case "3119664631": // Helios
        case "3292951946": // Hex
        case "2817605804": // Jerma
        case "2035357584": // Nade
        case "1996010699": // Suitcase
        case "2997493298": // Truck-kun
        case "3294183869": // Vale
            icon = 2;
            break;
        
        //concern
        case "2064167290": // Hana
        case "2167624888": // Lyca
        case "3070186949": // Napstablook
        case "2904498757": // Peppino
        case "3310371100": // Usher
        case "1917713379": // Valkyrie
            icon = 3;
            break;
        
        //unamused        
        case CH_RANNO:
        case "2605304929": // Daora
        case "3079776883": // Kumaki
        case "2229832619": // N/A 
        case "3309240911": // Putrolce
        case "2977835488": // Qoedil
        case "2820380997": // Roekoko
        case "2241098230": // Rykenburn 
        case "2811386719": // Wally
            icon = 4;
            break;
            
        //sweat smile
        case "2997094130": // Hawks
        case "2983344228": // Kiku
        case "3118007135": // Wren
            icon = 5;
            break;
            
        //big smile
        case CH_CLAIREN: 
        case CH_POMME:
        case CH_SHOVEL_KNIGHT:
        case "3118659566": // Yono
            icon = 6;
            break;
        
        //sweat frown
        case "2606466824": // Incineroar
        case CH_ZETTERBURN: 
        case CH_MOLLO: 
        case "1871989159": // Mollo
        case CH_HODAN:
        case "2593144115": // Amaya
        case "3136330641": // Vakna
            icon = 7;
            break;
            
        //big frown
        case "3301160853": // Jenny
        case CH_FORSBURN:
        case "2802914735": // Ayaka
        case "2871608790": // Azi
        case "3120902361": // Desperado
        case "3137450762": // La Reina
        case "2802424939": // Sakuya
            icon = 8;
            break;
            
        //visor
        case "3311683657": // Luna
        case "3284331017": // Nacht
            icon = 9;
            break;
        
        default: break;
    }
return icon
}