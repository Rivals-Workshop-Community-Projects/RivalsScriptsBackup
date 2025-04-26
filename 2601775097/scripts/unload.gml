if ("cpu_skill_pool" in self && ds_list_valid(cpu_skill_pool)) ds_list_destroy(cpu_skill_pool);
with (oPlayer) if ("outline_check" in self && outline_color != outline_check) outline_color = outline_check;

//code by Frtoud
if (!handled_bar_victory_quote)
{
    //default values
    var transfer_array = [];
    for (var p = 1;p <= 4;p++)
    { 
        transfer_array[p] = 
        {
            order: 99999,             // placement in results. only known later
            team: get_player_team(p), // current team of player
            priority: 0,              // message priority (0 default, 1 builtin, 2 explicit)
            quote:"",                 // message if bar wins against you
            emote: 0,                 // emote bar uses when he wins
            //===========================================================================
            status_quote: "",         // message for this bar if he wins under certain conditions
            status_emote: 0
        }
    }
    
    with (oPlayer) if (player <= 4)
    {
        var data = transfer_array[player];
        if (url == other.url) // bar-specific
        {
            //only one bar has to handle this for everyone: notify them.
            handled_bar_victory_quote = true;
            
            data.priority = 2;
            data.quote = bar_victory_quote;
            data.emote = 2;

            //stage compatibility
            switch (was_in_stage)
            {
                case "2601840872": //greenwood
                    data.status_quote = "It's good to be home."
                    data.status_emote = 2;
                    break;
                case "2965267144": //fantasy night scroll
                    if (!is_aether_stage())
                    {
                        data.status_quote = "What a strange sufficating fog... It's definitely not natural."
                        data.status_emote = 6;
                    }
                    else
                    {
                        data.status_quote = "Those annoying fairies keep getting in my way!"
                        data.status_emote = 6;
                    }
                    break;
                case "3039835227": //windy valley
                    data.status_quote = "I feel even lighter than normal here, is it cause of all the wind blowing?";
                    data.status_emote = 4;
                    break;   
                case "2924212592": //childe
                    data.status_quote = "What are these items? Am supposed to use them, somehow?";
                    data.status_emote = 0;
                    break;
                case "213227551": case "2381606021": //dracula
                    data.status_quote = "I warned you, didn't I?"
                    data.status_emote = 6;
                    break;
            }

            with (obj_stage_main) //special stage compatibility
            {
                if ("is_demon_horde_stage" in self) //demon horde
                {
                    data.status_quote = "Omer... Did you do this...?";
                    data.status_emote = 1;
                }
            }

            //teammates compatibility
            with (oPlayer) if (get_player_team(player) == get_player_team(other.player))
            {
                if ("url" in self) switch (url)
                {
                    case "2786885695": //keqing
                        data.status_quote = "Yeah, we cleared them. We can keep moving now.";
                        data.status_emote = 2;
                        break;
                    case "2965266088": //rumia
                        data.status_quote = "At least you aren't trying to eat me.";
                        data.status_emote = 1;
                        break;
                    case "3039831352": //sonic
                        if (alt_cur != 16 || get_match_setting(SET_SEASON) != 3) //make sure he isn't lord X
                        {
                            data.status_quote = "You look like a character from a game I like... but you're not him.";
                            data.status_emote = 2;
                        }
                        else
                        {
                            data.status_quote = "Don't think you're off the radar just cause you helped me win, demon.";
                            data.status_emote = 6;
                        }
                        break;
                }
            }

            //URL-less characters
            with (oPlayer)
            {
                if ("is_venus_t" in self)
                {
                    if (get_player_team(player) == get_player_team(other.player))
                    {
                        data.status_quote = "Y-yeah! We did it. You... Did good there, Venus.";
                        data.status_emote = 8;
                    }
                    else
                    {
                        data.status_quote = "Yes... that was a good sparring match, you are getting stronger.";
                        data.status_emote = 8;
                    }
                }
                if ("is_asra" in self)
                {
                    if (get_player_team(player) == get_player_team(other.player))
                    {
                        data.status_quote = "Thanks for fighting alongside me, Asra- ...huh? Something's up?";
                        data.status_emote = 2;
                    }
                    else
                    {
                        data.status_quote = "Sahar sure keeps you up on your feet huh? Tell him I said hi.";
                        data.status_emote = 7;
                    }
                }
                if ("is_jurami" in self)
                {
                    if (get_player_team(player) == get_player_team(other.player))
                    {
                        data.status_quote = "Had your fun, Jurami? Good, I'll be going home then.";
                        data.status_emote = 1;
                    }
                    else
                    {
                        data.status_quote = "Try not to be reckless, will you?";
                        data.status_emote = 3;
                    }
                }
                if ("is_ilias" in self)
                {
                    quote = "Get off whatever high horse you are on, you are weaker than you think.";
                    emote = 1;
                }
            }
        }
        else if ("bar_victory_quote" in self)
        {
            data.priority = 2;
            data.quote = bar_victory_quote;
            data.quote = emote;
        }
        else
        {
            var builtin_quote = try_get_quote(url)[0];
            
            if (string_length(builtin_quote) > 0)
            {
                data.priority = 1;
                data.quote = builtin_quote;
                data.emote = try_get_quote(url)[1];
            }
        }
        
        transfer_array[player] = data;
    }
    
    //Hackiest of hacks: smuggle into victory screen using a persistent hitbox!
    var smuggler = instance_create(0, 0, "pHitBox");
    smuggler.persistent = true;//survive room end
    smuggler.type = 2;
    smuggler.length = 60;//will destroy itself automatically after one second.
    smuggler.dont_color = true;//colored hitboxes make the game crash lol
    
    smuggler.stage = was_in_stage;
    smuggler.bar_victory_screen_array = transfer_array;
}

//==============================================================
#define try_get_quote(char_url)
{
    //=========================================================
    // Approximate maximum line:
    //               "aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa";
    //=========================================================
    var quote = "";
    var emote = -1;
    //0 = confused
    //1 = upset
    //2 = confident
    //3 = thinks you're stupid
    //4 = surprised
    //5 = melancholic
    //6 = mad
    //7 = apologetic
    //8 = the shy kinda happy

    switch (char_url)
    {
        //////////////////////////// BASECAST ////////////////////////////
        case CH_ZETTERBURN:
            quote = "I hope for you that your fire mane won't cause me problems later.";
            emote = 1;
            break;
        case CH_ORCANE:
            quote = "...Did the orca looking thing just turn into a puddle?";
            emote = 0;
            break;
        case CH_KRAGG:
            quote = "I can respect you, I'm fighting for something important to me too.";
            emote = 5;
            break;
        case CH_WRASTOR:
            quote = "You may like the air, but I like you on the ground instead.";
            emote = 1;
            break;
        case CH_FORSBURN:
            quote = "Is that a real skull...?";
            emote = 0;
            break;
        case CH_ETALUS:
            quote = "Maybe I should learn how to use ice.";
            emote = 4;
            break;
        case CH_MAYPUL:
            quote = "I guess ''guardian'' means different things to the both of us.";
            emote = 5;
            break;
        case CH_ABSA:
            quote = "Manipulating the weather just to keep people away? Please don't.";
            emote = 3;
            break;
        case CH_CLAIREN:
            quote = "Some doomed future isn't my job to fix, I'm not the Guardian of Time.";
            emote = 1;
            break;
        case CH_RANNO:
            quote = "I also hate this fighting, but we have to protect what we got, right?";
            emote = 5;
            break;
        case CH_ELLIANA:
            quote = "So you decided to become what you hate.";
            emote = 6;
            break;
        case CH_SYLVANOS:
            quote = "I feel some strong energy from you... You're different, aren't you?";
            emote = 0;
            break;
        case CH_MOLLO: case "1871989159":
            quote = "Not interested in joining a rebelion, I got enough on my plate already.";
            emote = 1;
            break;
        case CH_HODAN: case "2136440419":
            quote = "I usually settle for what strength I got but... Thanks for your lesson.";
            emote = 2;
            break;
        case CH_OLYMPIA: case "1943759600":
            quote = "Crystal gauntlets...? That's not a bad idea actually.";
            emote = 4;
            break;
        case CH_POMME: case "1913517643":
            quote = "Your music isn't my cup of tea.";
            emote = 3;
            break;
        case CH_ORI:
            quote = "This forest creature is a lot more competent than it looks.";
            emote = 2;
            break;
        case CH_SHOVEL_KNIGHT:
            quote = "Armor's neat and all but... why the shovel exactly?";
            emote = 0;
            break;
        case "1865940669": case "2443363942": //sandbert / sandbert DE
            quote = "Never saw a sandbag punch back, but if turning to a demon says anything...";
            emote = 6;
            break;
        case "2606414594": //munophone (lol)
            quote = "Why does the sandbag have a phone?";
            emote = 0;
            break; 
        case "1866016173": //guadua
            quote = "I have other places to be.";
            emote = 1;
            break;
        //////////////////////// BAR-KUN CHARACTERS ////////////////////////
        case "2621721367": //SSL venus
            quote = "Venus...? Why are you pixelated...?";
            emote = 4;
            break;
        case "2786885695": //keqing
            quote = "Maybe if you were less of a snob, people would like you more.";
            emote = 1;
            break;
        case "2801245512": //SSL chaos
            quote = "Rough transition to 32-bit graphics?";
            emote = 0;
            break;
        case "2859046287": //tester
            quote = "This was one weird creature, Hope I won't run into THAT again.";
            emote = 6;
            break;
        case "2965266088": //rumia
            quote = "Kid, what I need to do is way more important than me becoming fried chicken!";
            emote = 3;
            break;  
        case "3039831352": //sonic
        case "1899673724": case "2285717462": case "2078670767": case "2074796206": case "2138937258": case "2139665984": case "1878949757": case "2294421289": //sonic (not mine)
            //sonic's quote changes if he uses the halloween seasonal alt
            if ("is_bar_sonic" in self && alt_cur == 16 && get_match_setting(SET_SEASON) == 3)
            {
                quote = "You can't trick me, demon.";
                emote = 6;
            }
            else
            {
                quote = "Spinny Needlemouse is real?! Got the shoes wrong though.";
                emote = 0;
            }
            break;
        //////////////////////// ORIGINAL CHARACTERS ///////////////////////
        case "2871608790": //azi & mr baggy
            quote = "If you can't control that bag demon I'll be forced to be rid of it.";
            emote = 1;
            break;
        case "2977835488": //qoedill
            quote = "Glad that raging mass of mutt is out of the way now.";
            emote = 6;
            break;
        case "2965700442": //anthem
            quote = "Let me destroy that sword of yours, it doesn't look like it's doing you favors.";
            emote = 6;
            break;
        case "3079776883": //kumaki
            quote = "Control yourself, or I will be forced to stop you! Don't make me do this.";
            emote = 6;
            break;
        case "3308351120": //saelune
            quote = "Gross.";
            emote = 0;
            break;
        case "3294183869": //vale
            quote = "Justice shouldn't be blind, I hope you know that now.";
            emote = 3;
            break;
        case "3353256940": //twenny
            quote = "Go back to the junkyard you came from, you piss me off.";
            emote = 5;
            break;
        case "2605377553": //mal
            quote = "Those purple clouds make me want to puke, is that poison?!";
            emote = 6;
            break;
        case "2108895293": //lumina
            quote = "Your control over light is good, I suppose.";
            emote = 3;
            break;
        case "2843521167": //pastelle (legacy)
            quote = "Somehow hair made out of goop isn't the weirdest thing I saw today.";
            emote = 0;
            break;
        case "3307937190": //pastelle (DE)
            quote = "Guess goop hair wasn't the- Huh, seems oddly familiar...?";
            emote = 0;
            break;
        case "2983344228": //kiku
            quote = "Sorry, I'm not a private tutor.";
            emote = 1;
            break;
        case "3307368173": //sarolyn
            quote = "Looks like a demon, acts like a demon... But was she?";
            emote = 0;
            break;
        case "3415959265": case "3304241490": //saya
            quote = "This Guardian job... I hate it.";
            emote = 6;
            break;
        case "2396061657": //callie
            quote = "...No hard feelings, right?";
            emote = 7;
            break;
        case "2490060793": //barr
            quote = "Nice name.";
            emote = 2;
            break;
        //N/A, gatekeeper, abyss hime, abyss cheese wheel, abyssant
        case "2229832619": case "2004962115": case "1968648848": case "2620579353": case "2886663444": case "3084983341":
            quote = "There's no end to these freaks.";
            emote = 6;
            break;
        //luminance, tamat, segerak
        case "3067741766": case "2273328517": case "2390163800":
            quote = "Fighting a street sign is not something I expected to do today.";
            emote = 0;
            break;
        /////////////////////////// IP CHARACTERS //////////////////////////
        case "2924948563": //knuckles
            quote = "Being a guardian, being the only tie to the past... I hate that too.";
            emote = 5;
            break;
        case "2606511813": //pit
            quote = "You actually need permission to use your wings?";
            emote = 0;
            break;
        case "2899563373": //palutena
            quote = "I'm not one of yours, go away.";
            emote = 3;
            break;
        case "2606413637": //goku
            quote = "Maybe don't jump to fight so quickly next time!";
            emote = 6;
            break;
        case "2263955842": //reimu
            quote = "You wanna get things over with too huh?";
            emote = 2;
            break;
        case "2931556217": //remilia
            quote = "You remind me of someone... Hm, probably my imagination.";
            emote = 0;
            break;
        case "2520533233": //tenshi
            quote = "Don't you think you are a little bit too reckless?";
            emote = 3;
            break;
        case "2854485508": //mamizou
            quote = "I don't think I like being a hedgehog.";
            emote = 1;
            break;
        case "2964956057": //flowey
            quote = "Go back to whatever underworld you came from.";
            emote = 0;
            break;
        case "2945062156": case "2944680077": case "2311095319": //mario (regina / mit / ricE)
            quote = "Can this dude really save a kingdom and it's ruler? Hard to believe.";
            emote = 0;
            break;
        case "2945067212": //luigi (regina)
            quote = "Can this dude really save a- wait you're not the red one.";
            emote = 7;
            break;
        case "2995463890": //hol horse
            quote = "What the hell is shooting me?!";
            emote = 6;
            break;
        case "3363227530": case "3351001188": //MX
            quote = "No matter the size you're still going down, demon.";
            emote = 5;
            break;
        case "3042615374": case "3030928225": case "3021608896": case "3349889053": case "3349890045": //nemesis, squigly, mako, deracine, platina
            quote = "Cheating death, undead... I hate it.";
            emote = 5;
            break;
        case "3357823813": //dracula (playable)
            quote = "Stay down already!";
            emote = 6;
            break;
        ////////////////////////////////////////////////////////////////////
        default: break;
    }
    return [quote, emote];
}