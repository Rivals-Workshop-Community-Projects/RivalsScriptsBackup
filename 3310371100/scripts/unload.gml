//Sending win quotes to result screen <3 code by Frtoud

//taken from reiga mal with permissison -hy
//it is from frtoud so as such, some things are still hypercam it looks like
if (!ushr_handled_victory_quote)
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
            icon: 0,                   // victory icon for char
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
            //only one of the same character has to handle this for everyone: notify them.
            ushr_handled_victory_quote = true;
            
            data.priority = 2;
            data.icon = 0;
            data.quote = ushr_victory_quote;
            //else... >:]
            
        }
        else if ("ushr_victory_quote" in self)
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
		if (other.madeonfinale == true){data.quote="Go out fighting, go out young... A flash of lightning... Eclipse the sun.";data.icon=0;data.priority=3;}
		if (other.mightyfallen == true){data.quote="Godspeed You! You're a determination!";data.icon=3;data.priority=3;}
            
        transfer_array[player] = data;
    }
    
    //Hackiest of hacks: smuggle into victory screen using a persistent hitbox!
    var smuggler = instance_create(0, 0, "pHitBox");
    smuggler.persistent = true; //survive room end
    smuggler.type = 2;
    smuggler.length = 60; //will destroy itself automatically after one second.
    
    smuggler.ushr_victory_screen_array = transfer_array;
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
		//me area
        case "1894194148": // AR
        case "2237355935": // Oldbows
            quote = "I have a feeling we can get along well! - Hey, where did you go?"; 
            break;
        case "2108895293": // Lumina
            quote = "That was a good fight, but gosh, you're so powerful now! What have you been up to since the last time I've seen you?"; //it's not the same lumina that she knows
            break;
        case "2229832619": // N/A
        case "2294898328": // N/A old sprites
            quote = "I'm glad I made out of that fight with no part of me chopped off! Gosh!"; 
            break;
        case "2226596831": // Recklessman
            quote = "Stop swinging that thing around or I'll freeze you again! AH! What's that beeping noise!?"; 
            break;
        case "2343479756": // Natsumi
            quote = "What was I just doing a minute ago? I don't remember now..."; 
            break;
        case "2415092274": // Ao
            quote = "These winds cut! That was so scary!"; 
            break;
        case "2605462884": // Explorer
            quote = "Are you the person chasing Lumina around...?"; 
            break;
        case "2685923956": // Jirachi
            quote = "Please can I make a wish, or are all those tags written already? ... What would I write, though? Hmm..."; 
            break;
        case "2895650073": // Dreaming Madotsuki (hyuponia and spiderboi)
        case "1871060242": // old Madotsuki (Uni)
        case "2177701650": // old Madotsuki ""balanced"" (Uni n sakk)
            quote = "That girl yawning makes me wanna yawn too..."; 
            break;
        case "3273103805": // Nisae kind of
            quote = "Somehow, I'm driven to say sorry..."; 
            break;
        case "3346651920": // Slenderman
            quote = "If I saw Slender Man in an actual dark forest I would probably faint on the spot."; 
            break;
		
		
		//folks
        case "3139912282": // Rudra
            quote = "What was with the shadow attacks?! They hurt!"; 
            break;
        case "3138837099": // Lux
            quote = "Be careful where you play with these, that was dangerous!"; //im trying to avoid writing Balls
            break;
        case "2787737701": // Sinker
            quote = "Was it just me, or was that robot crying? Or was it just light playing tricks?"; //they werent crying
            break;
        case "2396735388": // Zephrie
            quote = "Can I please try on your ribbon next time?";
            break;
        case "2108764588": // Zerra
            quote = "Oh gosh, you're so fast I can't even keep track of you with my eyes!";
            break;
        case "1917856427": // Liz
            quote = "Hey, how long have you been in this world? ...5 YEARS?! I wonder if we don't age in this world...";
            break;
        case "2885762133": // Brook
            quote = "I'll pay for the pizza, just please stop smacking me with the pizza box!!";
            break;
        case "2456124960": // Nate
        case "2400092760": // donyoku
        case "2811831971": // donyoku SSL
            quote = "I'd recognize that kind of crystal-metal anywhere!... Hm, on second thought, maybe not...";
            break;
        case "2601775097": // Bar new
        case "2429376422": // Bar old
            quote = "Why do I feel scared a bit...? But in like, a divine sort of way...?";
            break;
        case "2871136791": // LodePuul
        case "2802914735": // Ayaka
        case "3294183869": // Vale
            quote = "With that, I've proven myself right, haven't I?";
            break;
        case "3139910068": // Gema
        case "2504071554": // Mira
        case "2605468610": // Exetior
            quote = "What are you doing? You have to accept a loss sometimes, no?";
            break;
        case "2396061657": // Callie
            quote = "Ow, is this what they mean when they say mixed messages?";
            break;
        case "2396053263": // Heartbrake
            quote = "I don't know what to do when someone doesn't forgive me when I apologize...";
            break;
        case "2605377553": // Mal
        case "2823291685": // Mal SSL
            quote = "I'm shivering a little, did the air get colder or am I sick?";
            break;
        case "2254931693": // Bonby
            quote = "I feel like I've seen you somewhere, but I don't have the faintest idea what...";
            break;
        case "3254404139": // Octobhert
            quote = "Who's this? Do I remember? Something is tugging in my memories...";
            break;
        case "2794769419": // Tulutle
            quote = "A winter rose? That sounds wonderful, I'm surprised I've never heard of a winter flower before!";
            break;
        case "3244606859": // Brella
        case "2004919133": // Hat Kid
        case "2551117492": // Parasol by inf1n1te
        case "2558870474": // Eirlys
        case "3011832031": // bill wurtz
        case "2825520992": // bandana dee (spam)
        case "2134571731": // bandana dee (awesomealen)
        case "1978869652": // bandana dee (tdude)
        case "2257303118": // uh...kaleb the shocking truth
            quote = "Same weapon!!!! (Waves intensely)";
            break;
        case "2931408497": // Grace
        case "3091203333": // Grace Legacy
            quote = "Good fight! You're fast, but I can catch up, too! Uh, in fight, I mean. I'm not good at running...";
            break;
        case "3079776883": // Kumaki
            quote = "Gosh, that was scary! With that big scythe and all that! Sometimes humans scare me more...";
            break;
        case "3297740928": // Mii Gunner
            quote = "My combat role-model!! I love your outfit!";
            break;
        case "3293338995": // Scoop
            quote = "Ice cream! Yum! Do you have a shop?";
            break;
        case "2273636433": // "Melee" Dr. Mario
        case "2872758537": // SSL Dr. Mario
            quote = "We fight quite similarly, don't we! But what's with your gimmick? Do you need those?";
            break;
        case "2983344228": // Kiku
            quote = "Kiku? But you're punching!!! ... ... Do you get that a lot?";
            break;
        case "2744601817": // Lognes
        case "2224867079": // Lognes Old
            quote = "Red and blue two-tone is so cool, I bet your attacks look extra impactful with 3D glasses on.";
            break;
        case "2874473566": // Neptune
            quote = "Hey! That was fun! Let's fight again sometime!";
            break;
        case "2817605804": // Jerma
            quote = "Hey, y'know- don't say, s-swears!"; //LET'S GO! jerma vs star_ jerma vs star_ everybody wants to see this happen jerma vs star_
            break;
		
		
		//time to shoutout my mains
        case "2929660722": // I gotta shoutout meimay man who do you think I am
        case "3294402694": // meimay SSL
            quote = "I appreciate the hugs, but you gotta go easier on me, you hug tight and it burns!! Ow!!";
            break;
        case "3137114060": // Crest
            quote = "Was that a dragon? He was so majestic, with all the surfing and tricks!";
            break;
        case "2606483115": // Galega
            quote = "Steam's kinda scary, I wish it was like, more obvious that they hurt, yknow!";
            break;
        case "3293357713": // Ykyr
            quote = "What did you say your name was? ...e-Equ-er, well, gosh, That was a great fight! I love your style!";
            break;
        case "3292951946": // Hex
            quote = "The fight was so tense, it's almost suffocating in a way...";
            break;
        case "3153417443": // Mau
            quote = "Good fight! Oh? This drink, for me? Thank you!";
            break;
        case "3405748608": // One
            quote = "You're stabbing people right through with your sword and acting all cool about it?? Ow!!";
            break;
        case "3436597271": // Cocua
            quote = "So fierce! You didn't hold anything back and I felt it! You're very cool!";
            break;
        case "3463541091": // Nonari
            quote = "(These are some dainty detailed clothes for an adventurer...)";
            break;
        case "3479868625": // Kafka
            quote = "That seemed like an assassin... D-does that mean I'm...???";
            break;
        case "3415959265": // Saya
        case "3304241490": // Saya
            quote = "I-I've had enough taste of the floor already!! Stop!!";
            break;
        case "2283888504": // Tempo
            quote = "You're always so hard to keep up! Good fight, Tempo!";
            break;
        case "2648394023": // Glare
            quote = "Does your UV lights give me sunburn? Good thing I have a para... well, I guess it's an umbrella.";
            break;
		
		
		//All-star!
        case "3302238950": // Alexis
            quote = "What's that saying again? Any super advanced technology is basically magic? But which is it when both exist!?";
            break;
        case "3306584099": // 1 - Tomoko
            quote = "You're kinda intimidating, but that won't deter me! Good fight!";
            break;
        case "3307368173": // 2 - Sarolyn
            quote = "That's ice magic, but... Not just a pure ice magic, is it? It's shadowy...";
            break;
        case "3307937190": // 3 - Pastelle
        case "2843521167": // old pastelle
            quote = "Did you see that? That girl looked awesome and had a cool Pen weapon! And uh, left paint all over the place.";
            break;
        case "3308351120": // 4 - Saelune
        case "3115049167": // old saelukune i think
            quote = "My favourite pastry? I looove chocolate danish! How about you?";
            break;
        case "3309240911": // 5 - Putrolce
            quote = "Would you like to go get some sweet snacks? I know a good place in this world! ...Huh? You can't? Aw, it's ok!";
            break;
				  // 6 - 6th in the week is the stage oops
        case "-": // 7 - Usher
            quote = "Why did that Me want to fight me!? Did I do something...? Was it my fault...??";
            break;
			//this is set as a value in init.gml and thats the one thats used
        case "3316053085": // Venus
            quote = "Why do I feel like she was holding back on me?";
            break;
        case "3316054693": // Asra
            quote = "I saw in my rain's puddles... Reflecting, something horrifying, it can't be, right...?";
            break;
        case "3382637663": // Ciela
            quote = "The hits from these swords are painful, but GOSH are they cool!! Look at those!! I wanna have swords like those!";
            break;
        case "-": // Lumi
            //quote = "I guess this was truly the experience of a contemporary guardian angel?";
            quote = "If you are a guardian angel, where were you when I needed you in my life?";
            break;
		
		
        case "3271549730": //
            quote = "L2vR2XR2[]R1^L2[]R1OXS";
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
        //1 - :> - smile normal
        case "2685923956": // Jirachi
        case "2871136791": // LodePuul
        case "2802914735": // Ayaka
        case "3294183869": // Vale
        case "2931408497": // Grace
        case "3091203333": // Grace Legacy
        case "2874473566": // Neptune
        case "3293357713": // Ykyr
        case "3271549730": //
            icon = 0;
            break;
            
        //2 - :D - smile wide
        case "1894194148": // AR
        case "2237355935": // Oldbows
        case "2456124960": // Nate
        case "2400092760": // donyoku
        case "2811831971": // donyoku SSL
        case "2983344228": // Kiku
        case "3153417443": // Mau
        case "3307937190": // 3 - Pastelle
        case "2843521167": // old pastelle
        case "3309240911": // 5 - Putrolce
            icon = 1;
            break;
            
        //3 - ^o^ - smile extra happy
        case "2108895293": // Lumina
        case "2396735388": // Zephrie
        case "2108764588": // Zerra
        case "3244606859": // Brella
        case "2004919133": // Hat Kid
        case "2551117492": // Parasol by inf1n1te
        case "2558870474": // Eirlys
        case "3011832031": // bill wurtz
        case "2825520992": // bandana dee (spam)
        case "2134571731": // bandana dee (awesomealen)
        case "1978869652": // bandana dee (tdude)
        case "2257303118": // uh...kaleb the shocking truth
        case "3297740928": // Mii Gunner
        case "3308351120": // 4 - Saelune
        case "3115049167": // old saelukune i think
        case "3382637663": // Ciela
        case "3436597271": // Cocua
            icon = 2;
            break;
            
        //4 - ^v^ - smile extra mouth normal
        case "2794769419": // Tulutle
        case "3293338995": // Scoop
        case "2744601817": // Lognes
        case "2224867079": // Lognes Old
        case "3306584099": // 1 - Tomoko
        case "2283888504": // Tempo
            icon = 3;
            break;
            
        //5 - thinken
        case "2343479756": // Natsumi
        case "1917856427": // Liz
        case "2605377553": // Mal
        case "2823291685": // Mal SSL
        case "2254931693": // Bonby
        case "2273636433": // "Melee" Dr. Mario
        case "2872758537": // SSL Dr. Mario
        case "3302238950": // Alexis
        case "3316053085": // Venus
            icon = 4;
            break;
            
        //6 - thinken halfeye
        case "3254404139": // Octobhert
        case "3463541091": // Nonari
        case "-": // Lumi
            icon = 5;
            break;
            
        //7 - '.'
        case "3139910068": // Gema
        case "2504071554": // Mira
        case "2605468610": // Exetior
        case "3307368173": // 2 - Sarolyn
        case "2648394023": // Glare
            icon = 6;
            break;
            
        //8 - phew
        case "2229832619": // N/A
        case "2294898328": // N/A old sprites
            icon = 7;
            break;
            
        //9 - yawn
        case "2895650073": // Dreaming Madotsuki (hyuponia and spiderboi)
        case "1871060242": // old Madotsuki (Uni)
        case "2177701650": // old Madotsuki ""balanced"" (Uni n sakk)
            icon = 8;
            break;
            
        //10 - O.O - surprise circleeye
        case "2415092274": // Ao
        case "2885762133": // Brook
        case "2601775097": // Bar new
        case "2429376422": // Bar old
        case "2817605804": // Jerma
        case "2929660722": // I gotta shoutout meimay man who do you think I am
        case "3294402694": // meimay SSL
        case "3415959265": // Saya
        case "3304241490": // Saya
        case "3346651920": // slenderman
        case "-": // 7 - Usher
            icon = 9;
            break;
            
        //11 - 'o' - surprise doteye
        case "2226596831": // Recklessman
        case "3139912282": // Rudra
        case "3079776883": // Kumaki
        case "3137114060": // Crest
        case "2606483115": // Galega
        case "3479868625": // Kafka
            icon = 10;
            break;
            
        //12 - >8o - circleeye angry
        case "3138837099": // Lux
            icon = 11;
            break;
            
        //13 - >:/ - upset serious
        case "2605462884": // Explorer
        case "3316054693": // Asra
            icon = 12;
            break;
            
        //14 - ouch
        case "2396061657": // Callie
        case "2396053263": // Heartbrake
        case "3292951946": // Hex
        case "3405748608": // One
            icon = 13;
            break;
            
        //15 - sad
        case "3273103805": // Nisae kind of
        case "2787737701": // Sinker
            icon = 14;
            break;
        
        default: break;
    }
return icon
}