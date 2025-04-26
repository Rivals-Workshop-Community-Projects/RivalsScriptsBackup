//Sending win quotes to result screen <3 code by Frtoud
if (!pumbo_handled_victory_quote)
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
            speaker: 0,
            //===========================================================================
            status_quote: ""         // message for this Hypercam if he wins under certain conditions
            //held_cd_color:-1          // Current color of CD for Hypercam
        }
    }
    
    with (oPlayer) if (player <= 4)
    {
        var data = transfer_array[player];
        if (url == other.url) // Hypercam-specific
        //&& (test all player teams?)
        {
            
            //only one Hypercam has to handle this for everyone: notify them.
            pumbo_handled_victory_quote = true;
            
            data.priority = 2;
            data.quote = pumbo_victory_quote;
            data.speaker = pumbo_victory_speaker;
            
            var on_team_with_tide = false;
            with (oPlayer){ 
                if ("url" in self && url == "2942196774") && (get_player_team(player) == get_player_team(other.player)){
                on_team_with_tide = true; 
                break;
            }
            }
            
            if (on_team_with_tide){
                data.status_quote = "Us bayou guys are unstoppable when we're together!";
                data.speaker = 0;
            }

            //else... >:]
            
        }       else if ("pumbo_victory_quote" in self)
        {
            var quote_data = {
                quote: "",
                speaker: 0
            }
            var get_quote = try_get_quote(url);
            quote_data.quote = get_quote[0];
            quote_data.speaker = get_quote[1];
            //var vic_speaker = try_get_speaker(url);
            if (string_length(quote_data.quote) > 0)
            {
                data.priority = 1;
                //data.quote = builtin_quote;
                //data.speaker = vic_speaker;
                data.quote = quote_data.quote;
                data.speaker = quote_data.speaker;
            }
            //data.speaker = vic_speaker;
            data.speaker = quote_data.speaker;
        }
        else{
            var quote_data = {
                quote: "",
                speaker: 0
            }
            var get_quote = try_get_quote(url);
            quote_data.quote = get_quote[0];
            quote_data.speaker = get_quote[1];
            //var vic_speaker = try_get_speaker(url);
            if (string_length(quote_data.quote) > 0)
            {
                data.priority = 1;
                //data.quote = builtin_quote;
                //data.speaker = vic_speaker;
                data.quote = quote_data.quote;
                data.speaker = quote_data.speaker;
            }
            //data.speaker = vic_speaker;
            data.speaker = quote_data.speaker;
        }
        transfer_array[player] = data;
    }
    
    //Hackiest of hacks: smuggle into victory screen using a persistent hitbox!
    var smuggler = instance_create(0, 0, "pHitBox");
    smuggler.persistent = true; //survive room end
    smuggler.type = 2;
    smuggler.length = 60; //will destroy itself automatically after one second.
    
    smuggler.pumbo_victory_screen_array = transfer_array;
    //smuggler.uhc_batteries = uhc_batteries;
}
/*checklist
Galega
Toussant
Disco
Buster
Dee Jay
Ollie
Qoedil
Missingno
Noise

*/

//==============================================================
#define try_get_quote(char_url)
{
    //=========================================================
    // Approximate maximum line:
            //      "aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa";
    //=========================================================
    var quote = "";
    var speaker = 0;
    switch (char_url)
    {
        case "2942196774": // King Tide
            quote = "You've gotten pretty strong, Tide! Sorry if Gum was a bit rough."; 
            speaker = 1;
            break;
        case "2811822410": // Miku
        case "2817605804": // Jerma
        case "2346109030": // Vinny
        case "2940069199": // Suisei
        case "2944203759": // Bastet
        case "2943878715": // King Coal
            quote = "Woah, always cool to meet a celebrity! Could I get an autograph?"; 
            speaker = 0;
            break;
        case "2217843818": // Crewmate
        case "2815922633":
        case "2960216003":
        case "2970289431":
        case "2979524299":
            quote = "Po, we might have a pest problem, I'm hearing stuff in the vents.";
            speaker = 0;
            break;
        case "2663958181": // Bubbles
            quote = "I bet without Gum I could take ya' in a fight, small fry.";
            speaker = 1;
            break;
        case "2262715898": // Cheese Wheel
        case "2968660312": // 
        case "2620579353": // Abyss Cheese Wheel
            quote = "I've caught stuff to cook before, but they've never been so... aged?";
            speaker = 0;
            break;
        case "1917856427": // Liz
            quote = "My friend would be interested in the flow you put down, lil' lady.";
            speaker = 1;
            break;
        case "2920880979": // Springo
        case "1959579555": // 
            quote = "Heh, you're just a lil' guy, ain'tcha?";
            speaker = 0;
            break;
        case "2456124960": // Nate
            quote = "mmmmmmmm.... Mysterious purple fluid...";
            speaker = 0;
            break;
        case "2802914735": // Ayaka
            quote = "Yo, real nice cutlery you've got. Where do you shop?";
            speaker = 1;
            break;
        case "2911887442": // Infinite
        case "2930066171": // Chad
            quote = "If you ever need a spotter, I've got your back, bro!";
            speaker = 0;
            break;
        case "2265876548": // Evil Creature
        case "2909668071": // 
        case "2872343232": // 
        case "2775288890": // 
        case "2612540253": // 
        case "2442944606": // 
        case "2426856576": // 
            quote = "Bet you feel bad that a guy like ME stopped your destruction, ya huge lunatic.";
            speaker = 0;
            break;
        case "2802423078": // Kaiero
            quote = "You could probably make some nice money doin' light shows, bro.";
            speaker = 0;
            break;
        case "2922280596": // Desirae
            quote = "I envy your sense of time, yo. Sometimes life moves too fast.";
            speaker = 1;
            break;
        case "1968068304": // Epinel
            quote = "I'm tired of your gravity manipulation always destroying my supplies!";
            speaker = 1;
            break;
        case "2406439382": // Seija
            quote = "A 0 star review...? Ahaha, ahahaha. You're joking, right?";
            speaker = 1;
            break;
        case "2642265963": // Spamton
        case "2634541509":
        case "2801845930":
            quote = "Sorry dude, we don't accept 'Kromer' for payment."; 
            speaker = 0;
            break;
        case "2854485508": // Mamizou
            quote = "Hungry? We got kids menus for your... kids?? Uh, your lil' dudes."; 
            speaker = 0;
            break;
        case "2854485508": // Harold
            quote = "We could make a market for weapons with how many swordsfighters hang around.."; 
            speaker = 1;
            break;
        case "2109083580": // Iroh
        case "2921407337": 
            quote = "Ever try to take it back a notch? You're even making me tense."; 
            speaker = 0;
            break;
        case "2504113755": // Nova
            quote = "You gotta learn to take things slow and live in the moment, Mr. Time dude."; 
            speaker = 0;
            break;
        case "2802424939": // Sakuya
        case "1869125757": 
            quote = "Suggestion: Instead of trying to kill us with those knives, try helping us cook."; 
            speaker = 1;
            break;
        case "2729650316": // Bailey
        case "2606508459": // fernet
            quote = "Asking for a tip was NOT an invitation to fight!"; 
            speaker = 1;
            break;
        case "2110996330": // Chef
            quote = "Nothing's wrong with a lil' friendly competition, but your food stinks! Bahaha!"; 
            speaker = 0;
            break;
        case "2801831547": // Rin
            quote = "We don't serve catfood."; 
            speaker = 1;
            break;
        case "2917082599": // Madeline
        case "1883043284": 
            quote = "Next time you scale that mountain, you'd best take some of our takeout, ma'am."; 
            speaker = 0;
            break;
        case "2646935795": // Chef Ethan Cat
            quote = "Keep taking your classes, kid. You'll make it one day."; 
            speaker = 1;
            break;
        case "2687880389": // Retroblast
            quote = "Working on cars can't be that different from cooking, right?"; 
            speaker = 1;
            break;
        case "1960200333": // Fry
            quote = "Need a job? We could always use a hand at the Mud Flats."; 
            speaker = 1;
            break;
        case "2154720280": // Nolan
        case "1890617624": // Ronald
            quote = "Your cheap food will always be worse than the real deal!"; 
            speaker = 1;
            break;
        case "2357967710": // Phoenix
        case "2859393381":
        case "2636557166":
            quote = "Yeah, trust me. We're no obscure ramen cart, and yes, we do serve burgers...";
            speaker = 1;
            break;
        case "2867341866": // Aur
            quote = "Chin up, lil' dude. We'll make you something nice on the house.";
            speaker = 0;    
            break;
        case "2606413637": // Goku
        case "1870393754":
        case "1869351026":
        case "2571702574":
        case "1921693985":
        case "2640159146": // Chimera
        case "2437686834": // Pacman
        case "1888196192": 
        case "2172001795": 
        case "2622359786": 
        case "2944933385": 
            quote = "Po, this thing just keeps eating! We're gonna run out of food to keep 'em calm!";
            speaker = 0;    
            break;
        case "2199519462": // Amarelle
            quote = "What the hell is this thing!? Is the food finally starting to fight back!?";
            speaker = 0;    
            break;
        case "2871608790": // Azi
            quote = "You need food for your backpack..? Kid, don't you just want a PB&J?";
            speaker = 1;    
            break;
        case "1894361290": // Goose
            quote = "Gum, help me! That thing is getting away with the frying pan!";
            speaker = 1;    
            break;
        case "2546990424": // Mav
            quote = "Feel free to come back any time. You n' your crew tip nice!";
            speaker = 0;    
            break;
        case "2605304929": // Daora
            quote = "That was tough! I'd offer a drink but you seem more like a tea person.";
            speaker = 0;    
            break;
        case "2396061657": // Callie
            quote = "Y'know, the Mud Flats isn't exactly the nicest place to take someone on a date.";
            speaker = 1;    
            break;
        case "2396053263": // Heartbrake
            quote = "Hey, I get it. I wish my girlfriend called me more often too.";
            speaker = 1;    
            break;
      case "2820380997": // Roekoko
            quote = "You mind teaching me that cloning skill? It'd make more hands in the kitchen.";
            speaker = 1;    
            break;
      case "2552501300": // Fridge
      case "2817298335": 
            quote = "Holy mother of.. They weren't lying. The fridge IS running.";
            speaker = 1;    
            break;
      case "1996010699": // Suitcase
            quote = "Gum, where'd you get that suitcase? I feel like it's watching me...";
            speaker = 1;    
            break;
      case "2617988512": // BCM
            quote = "Sorry, sir. We're not interested in any shady business deals.";
            speaker = 0;    
            break;
      case "2854896436": // Mashin Kai
            quote = "Sorry dude, out of the things we serve, chocolate cornets isn't on the menu.";
            speaker = 1;    
            break;
      case "2885762133": // Brook
            quote = "Dang Brook, you're good! But I don't get it.. Why did Wood fire Pizza??";
            speaker = 0;    
            break;
      case "2868151488": // Howzit
            quote = "The far out goods you sell might help us draw in customers... I'll take 3 of each!";
            speaker = 0;    
            break;
      case "2860567018": // Fumo Cirno
            quote = "I guess it liked the spaghetti we made if it made that much of a mess eating it...";
            speaker = 1;    
            break;
      case "2887929608": // Gus Fring
      case "2904498757": // Peppino
      case "2993281658": // Papa louie
            quote = "Always nice to meet a fellow chef! What kind of seasoning do you use?";
            speaker = 1;    
            break;
      case "2354000869": // Sheftu
            quote = "What kind of crops do you produce? It'd be nice to get stuff directly from the source.";
            speaker = 0;    
            break;
      case "2561479115": // Rokesha
            quote = "Sorry ma'am, we don't take kindly to people who point their guns at us.";
            speaker = 0;    
            break;
      case "2396817161": // Klock
      case "2921407044": //
            quote = "Sorry sir, we don't take kindly to people who point their guns at us.";
            speaker = 0;    
            break;
      case "2652644223": // FDucky
            quote = "What's with the Armada officers hanging around here? We've done nothing wrong.";
            speaker = 1;    
            break;
      case "2855515151": // Dazz
            quote = "So, is there a way you could 'magically' make our rent pay itself this month?";
            speaker = 1;    
            break;
      case "1882960192": // Bluey
      case "2014106219": // Cinna
            quote = "You were swinging around THAT big of a hammer at us... and you want a KIDS MEAL!?";
            speaker = 1;    
            break;
      case "2400092760": // Dony
      case "2811831971": // 
            quote = "I gotta say, your fighting style is really... unsanitary, dude.";
            speaker = 0;    
            break;
      case "2386395909": // Candyman
            quote = "...Y'know Po, candy is in his name, but he hasn't offered any sweets to us at all.";
            speaker = 0;    
            break;
      case "2802300675": // Valley
            quote = "We're not responsible for any 'contamination' caused by your poison lil' miss, got it?";
            speaker = 0;    
            break;
      case "2811386719": // Wally
            quote = "It's always great to see you Wally, but next time, take it easier on ol' Gum.";
            speaker = 1;    
            break;
      case "2895612943": // S&B
            quote = "Look, our groups can coexist here, but you guys gotta stick to your own turf.";
            speaker = 0;    
            break;
      case "2241098230": // Ryken
      case "2612623898": // 
            quote = "Really speaks to your character that a couple of street chefs bested ya', General.";
            speaker = 0;    
            break;
      case "2661141982": // Anglara
      case "2396961482": // 
      case "2606495772": // 
      case "2788623012": // Anglario
            quote = "I gotta get me a pair of sunglasses by the next time I fight you again.";
            speaker = 0;    
            break;
      case "2861924796": // Thive
      case "2814093580": // Samson
      case "2877706883": // Vi
            quote = "So this honey is... 'All natural'..? We're not really in the market right now...";
            speaker = 0;    
            break;
      case "2871136791": // Lode
      case "2614142396": // 
      case "1895275607": // 
            quote = "Alright Po, when are YOU gonna learn to control magnetic fields?";
            speaker = 0;    
            break;
      case "2853556003": // Torga
      case "2185834832": // 
      case "2442604779": // 
      case "2910686680": // Laki
            quote = "Teach me the ways of the water, O' Wise One...";
            speaker = 1;    
            break;
      case "2648394023": // Glare
            quote = "How much reward money do you think we'd get if we turned you in?";
            speaker = 1;    
            break;
      case "2064167290": // Hana
            quote = "Could you ask your tall friend to stop starin' at me? It's freaking me out.";
            speaker = 0;    
            break;
      case "2469588541": // Lukastar
            quote = "What do stars taste like?... Uh, asking for a friend, heh.";
            speaker = 0;    
            break;
      case "2495375306": // Henry
            quote = "You know there are more than 4 options on our menu, right?";
            speaker = 1;    
            break;
        case "2605377553": // Mal
        case "2823291685":
            quote = "I finally get the puffy jacket, all this mist n' stuff is giving me chills too.";
            speaker = 1;    
            break;
        case "2144710708": // Owen
            quote = "Dude, what do you mean you want a single unsliced watermelon??"; 
            speaker = 1; 
            break;
        case "2263955842": // Reimu
        case "2552853220":
        case "1874261698":
        case "2019721304":
            quote = "The language of food bypasses any barriers, yo! Mud Flats worldwide!!"; 
            speaker = 1; 
            break;
      case "2004919133": // Hat Kid
            quote = "I'm not sure if I can take this kind of payment. Are these diamonds even real?";
            speaker = 0;    
            break;
      case "2396735388": // Zephrie
            quote = "So do sugar gliders actually like sugar...? Or nah?";
            speaker = 0;    
            break;
      case "2459562158": // Nitori
            quote = "I'm sure that big ol' backpack could fit a few meals, interested in takeout?";
            speaker = 0;    
            break;
      case "2814747446": // Peat
            quote = "From one big guy to another, you're pretty tough!";
            speaker = 0;    
            break;
      case "2105839293": // Yuuto
      case "2626409326":
            quote = "What is WITH all of the magic girls hurling meteors and space beams at us!?";
            speaker = 1;    
            break;
      case "2904134945": // Noelle
      case "2801480574":
            quote = "Giant popsicles aren't on the menu today, sorry not sorry.";
            speaker = 1;    
            break;
      case "2983344228": // Kiku
            quote = "I gotta say, the way you fight is... very tasteful. Hah! Get it?";
            speaker = 0;    
            break;
      case "2092141255": // Water Bottle
            quote = "I'm never gonna turn down gettin' a lil wet, but that was a bit much.";
            speaker = 0;    
            break;
      case "2965700442": // Anthem
            quote = "Excuse us for not wanting to BECOME the food, miss 'My Sword Eats People'.";
            speaker = 1;    
            break;
      case "2942375772": // Marti
            quote = "I gotta say, you got some groove, lil' guy.";
            speaker = 0;    
            break;
      case "1904437331": // Astra
            quote = "So, do ya do palm readings and tarot cards too?";
            speaker = 0;    
            break;
      case "2005036466": // Penny
      case "2160036641": //
            quote = "We should get ear-pieces like hers so I stop getting roughed up in fights.";
            speaker = 1;    
            break;
      case "2922282666": // Anzen
            quote = "Eh.. Sorry your majesty. I don't like hurtin' royalty.";
            speaker = 0;    
            break;
      case "2996263079": // Yuuko
            quote = "A-ALL OF THAT CURRY..! WHAT... COLOR.... IS YOUR BLOOD!?";
            speaker = 1;    
            break;
      case "2990243359": // Ganondorf
            quote = "I don't know why, but I'm kinda interested in tridents now.";
            speaker = 0;    
            break;
      case "2972978461": // Pici
            quote = "My mental fortitude has once again protected me from psychics..";
            speaker = 0;    
            break;
      case "2946043340": // Uysal
            quote = "What brings one of the most evasive hermits in all of Aether to OUR shop?";
            speaker = 1;    
            break;
        case "1872404208": // Mario (how many DAMN MARIOS ARE THERE)
        case "2311095319":
        case "2078587302":
        case "2166206549":
        case "2190448871":
        case "2310580951":
        case "1875532630":
        case "2628100904":
        case "1998324415":
        case "2520247938":
        case "2656419045":
        case "2227633571":
        case "1870532586":
        case "2194204517":
        case "2493125083":
        case "2262699993":
        case "2420481749":
        case "1868311414":
        case "2127652847":
        case "1870580396":
        case "2273636433":
        case "2606853565":
        case "1987225905":
        case "2641785309":
        case "2872758537":
        case "1870768156":
        case "2945062156":
        case "2944680077":
            quote = "M-M-M-M-Mario!??? Holy crap! It's an honor! Po! Bust out the noodles!";
            speaker = 0;    
            break;
        // Base cast
        //=================================================================
        case CH_ZETTERBURN: 
        case "2035357584": // Nade
           quote = "This war you're in isn't gonna turn out well if a guy like me could beat ya."; 
           speaker = 0;
           break;
        case CH_FORSBURN:
           quote = "Just cause that clone of yours isn't 'real' doesn't mean he gets to eat for free."; 
           speaker = 1;
           break;
        case CH_CLAIREN: 
           quote = "Do I recognize you from somewhere? I can't place that face.";
           speaker = 1;
           break;
        case CH_MOLLO: 
        case "1871989159":
           quote = "If you keep stealing my spray cans, I'll have Gumbo squash you like the bug you are!"; 
           speaker = 1;
           break;

        case CH_WRASTOR:
           quote = "Hey, try to keep the noise down. Your crew is bothering our customers."; 
           speaker = 1;
           break;
        case CH_ABSA:
           quote = "Wasn't expecting an inspector today. How'd we do, ma'am?"; 
           speaker = 0;
           break;
        case CH_ELLIANA:
           quote = "Could I have a turn in that cool mech of yours?"; 
           speaker = 1;
           break;
        case CH_POMME:
        case "1913517643":
           quote = "Hey, give us a good review, 'kay? That'll for sure get us some nice attention."; 
           speaker = 1;
           break;

        case CH_ORCANE:
        case "2229832619": //N/A
           quote = "You're a weird... thing, y'know that? Real weird."; 
           speaker = 1;
           break;
        case CH_ETALUS: 
           quote = "A nice bowl of soup'll warm up that icy exterior you have."; 
           speaker = 0;
           break;
        case CH_RANNO:
        case "2593144115": //Amaya
           quote = "Well, that fight left a real bad aftertaste in my mouth. What kinda' liquid do ya use?"; 
           speaker = 0;
           break;
        case CH_HODAN:
        case "2136440419":
           quote = "We don't really have a 'no shoes, no shirt, no service' policy, but put on some clothes!"; 
           speaker = 0;
           break;

        case CH_KRAGG: 
           quote = "So... you're the guy I need to talk to get hooked up with the cheap Pomme tickets, right?";
           speaker = 0;
           break;
        case CH_MAYPUL:
           quote = "Uh, I don't know if we have pet food. What else does she eat?";
           speaker = 1;
           break;
        case CH_SYLVANOS:
        case "2832785375": // Arboris
        case "2048123175": // Crazy Dave
        case "2555199085": 
        case "2841541558": // Whispy
           quote = "The unique plants you grow might make for some nice spices.. Oh uh, no offense.";
           speaker = 0;
           break;
        case CH_OLYMPIA:
        case "1943759600":
           quote = "Wow, those fists really hurt! I think I need a day off."; 
           speaker = 0;
           break;

        case CH_ORI:
           quote = "Po, when are you gonna learn to shoot fire like that? We're a team bro, pick up the slack!"; 
           speaker = 0;
           break;
        case CH_SHOVEL_KNIGHT:
           quote = "Gum, DON'T give this guy a 'spoonful of ice cream'. Do you see what he's holding!?"; 
           speaker = 1;
           break;

        default: break;
    }
    return [quote, speaker];
}