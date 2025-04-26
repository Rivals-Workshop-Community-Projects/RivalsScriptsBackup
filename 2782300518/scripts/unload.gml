
//Original system created by frtoud
if (!handled_victory_quote)
{
    var transfer_array = [];
    for (var p = 1;p <= 4;p++)
    { 
        transfer_array[p] = 
        {
            order: 99999, team: get_player_team(p), priority: 0, quote: "", status_quote: ""  
        }
    }

    with (oPlayer) if (player <= 4)
    {
        var data = transfer_array[player];
        if (url == other.url)
        {
            handled_victory_quote = true; 
            data.priority = 2;
            data.quote = victory_quote;
            //////////////////////////////////////////////

            //Stage Compatibility
            switch (was_in_stage)
            {
                case "2659010360": //Dragon Valley
                    data.status_quote = "Man did that fight ''drag on'' a bit";
                break;
                case "3293783203": //Jade Creek
                    data.status_quote = "The moon is beautiful here but boy does this bring back bad memories...";
                break;
				case "3104498030": //Shenlin Park
				case "2990819399": //Shang Tu
					data.status_quote = "This place is cool, except for the fact that scary lady lives here...";
				break;
                case "2917886037": //LEGO Airship Sigwada
                    data.status_quote = "I don't remember my sister's airship being this plasticky and full of studs";
                break;
                case 3: //Air Armada
					data.status_quote = "Man this airship reminds me of the days of soaring on my sister's ride."
				break;
            }

            with (oPlayer) if (get_player_team(player) == get_player_team(other.player) && other != self)
            {
                if ("url" in self) switch (url)
                {
					case "2697174282": //Lilac
					case "1870616155":
					case "1897152603":
					case "2822151579":
					case "2972048421":
						data.status_quote = "Team Lilac wins again (we still need to come up with a better name for this)"					
					break;
                    case "2990822828": //Neera
			        case "3261880619":
                        data.status_quote = "Never thought scary lady would ever want to team up with the great Carol Tea.";
                    break;
                }
            }
        }
        else
        {
            if (string_length(get_compatibility_quote(url)[0]) > 0)
            {
                data.priority = 1;
                data.quote = get_compatibility_quote(url)[0];
            }
        }

        transfer_array[player] = data;
    }

    var smuggler = spawn_hit_fx(-200, -200, 0);
    smuggler.persistent = true; //persistent is a base gamemaker variable that when true will not disappear when a new screen is loaded, in this case the results screen
    smuggler.hit_length = 60; //will destroy itself automatically after one second

    smuggler.stage = was_in_stage; //collect stage data
    variable_instance_set(smuggler, string(self), transfer_array); //using the ID of the player as a unique variable name to transfer the array over
}


//inside this function, you write all your special compatibility lines by checking for a character's url and setting an appropriate quote and emote for it
//estimated length: "aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa";
//follow this format:
//  case "url from steam after ?id=": //character name
//      quote = "win text here";
//      emote = image_index value;
//      break;
#define get_compatibility_quote(char_url)
{
    var quote = "";

    switch (char_url)
    {
        //////////////////////////// BASECAST ////////////////////////////
        case CH_ZETTERBURN:
            quote = "I guess you're going to get ''fired'' now.";
        break;
        case CH_ORCANE:
            quote = "Mmmmmmmmm fiiiisssh... I'm hungry now where's the nearest Sushi restaurant?";
        break;
        case CH_KRAGG:
            quote = "Looks like you've hit ''rock bottom''";
        break;
        case CH_WRASTOR:
            quote = "Making jokes like these is illegal, its certainly not going to ''fly''";
        break;
        case CH_FORSBURN:
            quote = "Don't keep secrets, there's no need to be ''cloak and dagger'' about it.";
        break;
        case CH_ETALUS:
            quote = "I guess you could say that was ''an ice'' battle";
        break;
        case CH_MAYPUL:
            quote = "I guess on this battle we really ''planted'' ourselves";
        break;
        case CH_ABSA:
            quote = "I won this battle? That was a real ''shock''";
        break;
        case CH_CLAIREN:
            quote = "I suppose that weapon must be very ''light'' on your hands.";
        break;
        case CH_RANNO:
            quote = "What's the matter? Cat got your tongue?";
        break;
        case CH_ELLIANA:
            quote = "What's the matter? Have you ''run out of steam''?";
        break;
        case CH_SYLVANOS:
            quote = "I guess I could really make you feel my ''flower''";
        break;
        case CH_MOLLO: case "1871989159":
            quote = "Aw yeah that was fun. Our match is about to ''blow up''";
        break;
        case CH_HODAN: case "2136440419":
            quote = "I had it in the bag. No ''sweat'";
        break;
        case CH_OLYMPIA: case "1943759600":
            quote = "I love making puns, I always get to come up with good ''punch''lines.";
        break;
        case CH_POMME: case "1913517643":
            quote = "Why are you so afraid of me? You're making a big ''song and dance'' about it.";
        break;
        case CH_ORI:
            quote = "I guess you could say my friends were with me in ''spirit''";
        break;
        case CH_SHOVEL_KNIGHT:
            quote = "We've really gone and ''dug a hole'' for ourselves";
        break;
        case CH_SANDBERT: case "1865940669": case "2443363942": case "2606414594": //sandbert / sandbert DE / munophone
            quote = "Punchie practise is always good.";
        break; 
        case "1866016173": //Guadua
            quote = "You know I actually like pandas. Except for one, I don't know what her problem is...";
        break;
        //////////////////////////// WORKSHOP ////////////////////////////
		case "2697174282": //Lilac
		case "1870616155":
		case "1897152603":
		case "2822151579":
		case "2972048421":
            quote = "You like my bike's new engine? It's as fast as you now buddy! I'm up for another round whenever";
		break;
        case "2990822828": //Neera
        case "3261880619":
            quote = "Why do you have to be like this scary lady? Life's more fun when you don't take it seriously.";
        break;		
        case "1899673724": //Sonic
        case "2285717462":
        case "2078670767":
        case "2074796206":
        case "2138937258":
        case "2139665984":
        case "1878949757":
        case "2294421289":
        case "3039831352":
        case "3040171673": //Spark
        case "2904498757": //Peppino
            quote = "I didn't think I would see anyone who could run as fast as Lilac. I guess I was wrong.";
        break;
        case "2890757258": //Shantae
        case "2067634368": 
        case "2028755883":
        case "2725198658":
        case "1870613993":
            quote = "OK can you grant my wish now? I wish for a solid gold motorbike and all the riches in the world.";
        break;
        case "3339921915": //SD-V
        case "3365226307": //Serial N
        case "2007375819": //Blueybot
        case "2687880389": //Retroblast
        case "3301160853": //Jenny Wakeman
        case "2918264998":
        case "2081164436": //Doc Robot
        case "2606478015": //R.O.B
        case "1889762220": //Protoman
        case "1868240517": //R-00
        case "1884573731": //Mega Man
        case "2871078296":
        case "3344485492":
        case "2142662749": //Ru & Zo
        case "2198210310": //Wall-E
        case "2198210310": //Nano Shinohime
        case "2602268708": //Chuckya
        case "2316161693": //Metal Sonic
        case "2846120094": //Doraemon
        case "3294090730": //Roll
        case "2833804206": //R2-D2
        case "2955738646": //Mecha Sonic
            quote = "Robot smashy time is my favourite time of year.";
        break;
        case "3191926359": //Ruby Rose
            quote = "Drop the act Cory, I know its you, just take off the mask.";
        break;
        case "3299337477": //Twilight Sparkle
			quote = "I guess you're a ''one trick pony'' after all."        
        break;
        default: break;
    }
    return [quote];
}