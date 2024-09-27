//unload.gml


//set the colors to be the proper colors just in case
if ("orig_hsv" in self)
{
    set_color_profile_slot_range(1, orig_hsv[0][0], orig_hsv[0][1], orig_hsv[0][2]);
    set_color_profile_slot_range(6, orig_hsv[1][0], orig_hsv[1][1], orig_hsv[1][2]);
}

sound_stop(dspec_loop_sound);


//check alt colors for victory screen
var pers_fx = spawn_hit_fx(-999, -999, 0);
pers_fx.persistent = true;
pers_fx.pause = 120;
pers_fx.visible = false;
pers_fx.dont_color = true;
pers_fx.alt_checker = true; //makes this hit fx check the alts
pers_fx.alt_hair_apply = ("alt_hair_apply" in self && alt_hair_apply);
pers_fx.s_alt = ("s_alt" in self && s_alt);


//code by Frtoud
if (!handled_victory_quote)
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
            quote:"",                 // message if venus wins against you
            emote: 0,                 // emote venus uses when he wins
            //===========================================================================
            status_quote: "",         // message for this venus if he wins under certain conditions
            status_emote: 0
        }
    }

    with (oPlayer) if (player <= 4)
    {
        var data = transfer_array[player];
        if (url == other.url) //specific interractions
        {
            //only one venus has to handle this for everyone: notify them.
            handled_victory_quote = true;

            data.priority = 2;
            data.quote = victory_quote;
            data.emote = 0;

            //stage compatibility
            switch (was_in_stage)
            {
                case "2601840872": //greenwood
                    data.status_quote = "This place has always been a good place to live, usually very peaceful here.";
                    data.status_emote = 0;
                    break;
                case "2965267144": //fantasy night scroll
                    if (!is_aether_stage())
                    {
                        data.status_quote = "This red fog is very thick, it feels like a demon's energy.";
                        data.status_emote = 3;
                    }
                    else
                    {
                        data.status_quote = "Those fairies look very cheerful! I just wish they didn't try to hit me too.";
                        data.status_emote = 0;
                    }
                    break;
                case "3039835227": //windy valley
                    data.status_quote = "The breeze feels really nice.";
                    data.status_emote = 2;
                    break;   
                case "2924212592": //childe
                    data.status_quote = "I don't know what you 'Fatui' are planning but I feel it's no good!";
                    data.status_emote = 3;
                    break;
                case "2169436552": //break the targets
                    data.status_quote = "That was a good run!";
                    data.status_emote = 2;
                    break;
            }

            with (obj_stage_main) //special stage compatibility
            {
                if ("is_demon_horde_stage" in self) //demon horde
                {
                    data.status_quote = "I didn't think that Bar being away for so long would have this happen...";
                    data.status_emote = 4;
                }
            }

            //teammates compatibility
            with (oPlayer) if (get_player_team(player) == get_player_team(other.player))
            {
                if ("url" in self) switch (url)
                {
                    case "2601775097": //bar
                        data.status_quote = "I told you it's easier when you can count on others, didn't I?";
                        data.status_emote = 7;
                        break;
                    case "2786885695": //keqing
                        data.status_quote = "You're pretty quick on your feet, you really ran circles around them!";
                        data.status_emote = 2;
                        break;
                    case "2965266088": //rumia
                        data.status_quote = "You did good, You're really strong for your size!";
                        data.status_emote = 2;
                        break;
                    case "3039831352": //sonic
                        if (alt_cur != 16 || get_match_setting(SET_SEASON) != 3) //make sure he isn't lord X
                        {
                            data.status_quote = "You kind of remind me of a friend of mine, but in a good way!";
                            data.status_emote = 0;
                        }
                        else
                        {
                            data.status_quote = "Thank you, I appreciate your help.";
                            data.status_emote = 0;
                        }
                        break;
                }
            }

            //URL-less characters
            with (oPlayer)
            {
                if ("is_asra" in self)
                {
                    if (get_player_team(player) == get_player_team(other.player))
                    {
                        data.status_quote = "Your powers are a lot more stable now, I'm glad!";
                        data.status_emote = 0;
                    }
                    else
                    {
                        data.status_quote = "I'm glad you've found your way, I have a way to go, too.";
                        data.status_emote = 0;
                    }
                }
                if ("is_jurami" in self)
                {
                    if (get_player_team(player) == get_player_team(other.player))
                    {
                        data.status_quote = "Tell Kim and Navi I said hi, alright?";
                        data.status_emote = 0;
                    }
                    else
                    {
                        data.status_quote = "Your synergy with Tri and Nih is beautiful!";
                        data.status_emote = 0;
                    }
                }
                if ("hi_im_lumi" in self)
                {
                    quote = "Your ice skating is beautiful! We should go ice skating together sometime!";
                    emote = 2;
                }
            }
        }
        else if ("victory_quote" in self)
        {
            data.priority = 2;
            data.quote = victory_quote;
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
    smuggler.venus_victory_screen_array = transfer_array;
}

//==============================================================
#define try_get_quote(char_url)
{
    //=========================================================
    // Approximate maximum line:
    //               "aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa";
    //=========================================================
    var quote = "";
    var emote = 0;
    //0 = happy/neutral
    //1 = worried
    //2 = joy
    //3 = stern
    //4 = sad
    //5 = surprised
    //6 = confused
    //7 = beaming

    switch (char_url)
    {
        //////////////////////////// BASECAST ////////////////////////////
        case CH_ZETTERBURN:
            quote = "Are you sure you aren't hurt from all that fire?";
            emote = 1;
            break;
        case CH_ORCANE:
            quote = "You're so cute! But you seem a bit more than meets the eye, aren't you?";
            emote = 0;
            break;
        case CH_KRAGG:
            quote = "If I'm around, I'll be sure to help out on your rock wall however I can!";
            emote = 2;
            break;
        case CH_WRASTOR:
            quote = "You seem like a bully, I don't think I trust you.";
            emote = 3;
            break;
        case CH_FORSBURN:
            quote = "You were betrayed by your loved ones but... I'm sure things will look up!";
            emote = 1;
            break;
        case CH_ETALUS:
            quote = "Don't you worry, I am not an enemy, I won't come for your fortress.";
            emote = 0;
            break;
        case CH_MAYPUL:
            quote = "The weight of a guardian can be a lot, but you'll pull through!";
            emote = 2;
            break;
        case CH_ABSA:
            quote = "You can live a little on top of your duty, y'know?";
            emote = 1;
            break;
        case CH_CLAIREN:
            quote = "They depend on you but you can depend on them, I believe in you, too!";
            emote = 2;
            break;
        case CH_RANNO:
            quote = "But we still need to fight for the ones we cherish...";
            emote = 4;
            break;
        case CH_ELLIANA:
            quote = "Those Air Armada folk seem like bullies, but you shouldn't be like them!";
            emote = 3;
            break;
        case CH_SYLVANOS:
            quote = "All that rage... I'm sorry that the world treated you so harshly.";
            emote = 4;
            break;
        case CH_MOLLO: case "1871989159":
            quote = "A rebellion against a tyrant huh? If there's any way I can help, let me know.";
            emote = 3;
            break;
        case CH_HODAN: case "2136440419":
            quote = "Your martial arts are very interesting, I like it!";
            emote = 2;
            break;
        case CH_OLYMPIA: case "1943759600":
            quote = "Crystals...? What an interesting power...";
            emote = 5;
            break;
        case CH_POMME: case "1913517643":
            quote = "Your voice is beautiful! I'm sure your music brings joy to everyone!";
            emote = 2;
            break;
        case CH_ORI:
            quote = "I'm sure Bar would be able to help you restore your forest, too!";
            emote = 0;
            break;
        case CH_SHOVEL_KNIGHT:
            quote = "I'll take your tale as a cautionary one. I'm sorry for your loss.";
            emote = 4;
            break;
        case "1865940669": case "2443363942": case "2606414594": //sandbert / sandbert DE / munophone (lol)
            quote = "I'm... Sorry about your job??";
            emote = 6;
            break; 
        case "1866016173": //guadua
            quote = "I don't have business in your home, I'll take my leave, sorry!";
            emote = 1;
            break;
        //////////////////////// BAR-KUN CHARACTERS ////////////////////////
        case "2601775097": //bar
            quote = "I hope you weren't going easy on me, we need to get stronger together!";
            emote = 7;
            break;
        case "2621721367": //SSL venus
            quote = "This is like looking at a funhouse mirror... A very green mirror.";
            emote = 6;
            break;
        case "2786885695": //keqing
            quote = "You've got a good head on your shoulders, I'm sure co-workers trust you!";
            emote = 0;
            break;
        case "2859046287": //tester
            quote = "I don't know what it's planning, but I should keep my guard up.";
            emote = 3;
            break;
        case "2965266088": //rumia
            quote = "Looks can be deceiving, but so can first impressions.";
            emote = 3;
            break;  
        case "3039831352": //sonic
            //sonic's quote changes if he uses the halloween seasonal alt
            if (alt_cur == 16 && get_match_setting(SET_SEASON) == 3)
            {
                quote = "...Seems I was right, he was a fake.";
                emote = 3;
            }
            else
            {
                quote = "Living life free as the wind, that's something to strive for!";
                emote = 2;
            }
            break;
        ///////////////////////// ALL-STAR HEROINES ////////////////////////
        case "3302238950": //alexis
            quote = "You make machines too? I got a friend like that, I'm sure you two would get along!";
            emote = 2;
            break;
        case "3306584099": //tomoko
            quote = "Can you make a rabbit sculpture out of ice too? It'd be so cute!";
            emote = 0;
            break;
        case "3307368173": //sarolyn
            quote = "I hope you find your way out of the darkness, there's always light at the end of the tunnel!";
            emote = 1;
            break;
        case "3307937190": //pastelle
            quote = "The colors you use are so pretty! They compliment each other well.";
            emote = 2;
            break;
        case "3308351120": //saelukune
            quote = "Detatching your limbs to attack seem painful, are you sure you're ok?";
            emote = 1;
            break;
        case "3309240911": //putrolce
            quote = "The mouthpiece moves on it's own? We should remove it so it doesn't hurt you anymore!";
            emote = 1;
            break;
        case "3310371100": //usher
            quote = "Oh! That's a very cute umbrella! could I share so I don't get soaked in the rain?";
            emote = 5;
            break;
        case "ciela": //ciela
            quote = "Swinging that floating weapon is dangerous, make sure no one's around at least!";
            emote = 3;
            break;
        //////////////////////// ORIGINAL CHARACTERS ///////////////////////
        case "2396061657": //callie
            quote = "It was nice to meet you! as a cupid that is.";
            emote = 2;
            break;
        case "2396053263": //heartbrake
            quote = "Ending love won't destroy evil, evil can find a different thing to abuse.";
            emote = 1;
            break;
        case "2944203759": //bastet
            quote = "Nice movement, staying on beat can be tough.";
            emote = 2;
            break;
        case "2833345946": //reckless swordsman
            quote = "You will hurt yourself and others with how you use that sword!";
            emote = 3;
            break;
        case "3294183869": //vale
            quote = "Are you an angel too? It's rare seeing any walking around Aretz, let alone in the Theïkós state.";
            emote = 0;
            break;
        case "2605377553": //mal
            quote = "Maybe you could use someone beside you, but I'm not going for force you I swear!";
            emote = 4;
            break;
        case "2105940891": //siren
            quote = "...Why is your hat looking at me weird...? Is it some sort of demon?";
            emote = 6;
            break;    
        /////////////////////////// IP CHARACTERS //////////////////////////
        case "2979347370": //amy rose
            quote = "You're strong, I'm sure that Sonic person likes you, too!";
            emote = 2;
            break;
        case "2555199085": case "2048123175": //crazy dave
            quote = "Don't use plants against zombies! They need to be treated with care!";
            emote = 4;
            break;
        case "2804295068": //peashooter
            quote = "A plant that shoots projectiles, looks pretty cute though.";
            emote = 0;
            break;
        case "2964956057": //flowey
            quote = "I know it doesn't say much but, sorry that you can't feel.";
            emote = 4;
            break;
        case "2858800302": //basil
            quote = "Cute flower crown! I like it!";
            emote = 2;
            break;
        case "2494517317": //marisa
            quote = "You can't charm your way out of stealing all the time, y'know!";
            emote = 1;
            break;
        case "3109768585": //koishi
            quote = "...Take care.";
            emote = 4;
            break;
        case "2904134945": //noelle
            quote = "You should be more true to yourself and how you feel! Be confident!";
            emote = 2;
            break;
        case "2685923956": //jirachi
            quote = "...I wish I could see my- No. I should't be so selfish about this...";
            emote = 4;
            break;
        case "2879813992": case "3122192177": //aerith
            quote = "I like you! We should hang out sometime!";
            emote = 2;
            break;
        case "3154367863": //aerith
            quote = "Shirou, hm? Do you fight for his sake?";
            emote = 0;
            break;
        ////////////////////////////////////////////////////////////////////
        default: break;
    }
    return [quote, emote];
}