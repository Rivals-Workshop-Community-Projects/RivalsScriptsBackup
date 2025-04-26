//unload.gml
//runs at a few points like when you exit a match, used to clear out memory




////////////////////////////////////////////////////// WIN QUOTE COMPATIBILITY SYSTEM //////////////////////////////////////////////////////

//this section is used to set up the variables the win quote system uses
//you shouldn't need to edit this
var transfer_array = [];
for (var p = 1;p <= 4;p++)
{ 
    transfer_array[p] = 
    {
        order: 99999,               // placement in results. only known later
        team: get_player_team(p),   // current team of player
        priority: 0,                // message priority (0 default, 1 builtin, 2 explicit)
        quote: "",                  // win quote check
        emote: 0,                   // emote check

        status_quote: "",           // win quote that's used under certain conditions and overwrites the regular win quote
        status_emote: 0             // emote check like above
    }
}

//used to set up specific interractions that overwrite the normal win quotes system
//edit the section inside url == other.url that isn't the in the "more setup" section
with (oPlayer) if (player <= 4)
{
    var data = transfer_array[player];
    if (url == other.url)
    {
        //more setup
            data.priority = 2; //highest priority goes to these quotes
            data.quote = victory_quote;
            data.emote = victory_emote;
        //////////////////////////////////////////////

        //stage compatibility
        //  this part allows you to add quotes specific to stages
        //  basecast stages are typed as numbers normally, while workshop stages are typed as a string (see examples below)
        switch (was_in_stage)
        {
            case 26: case 16: //the tutorial grid / the tutorial grid X
                data.status_quote = "This is the Tutorial Grid stage quote. It's a base game stage.";
                data.status_emote = 6; //surprised emote
                break;
            case "1907128674": //bamboo lodge
                data.status_quote = "This is the Bamboo Lodge stage quote. It's a workshop stage.";
                data.status_emote = 1; //happy emote
                break;
        }

        //teammates compatibility
        //  allows you to have win quotes with other characters (including dittos!)
        //  it will not check for every single team member and only works as you would expect in doubles, not so much in 3 v 1s
        //  basecast characters use macros like CH_ZETTERBURN and CH_SHOVEL_KNIGHT, you can see some examples in the [get_compatibility_quote] function
        with (oPlayer) if (get_player_team(player) == get_player_team(other.player) && other != self)
        {
            if ("url" in self) switch (url)
            {
                case "2859046287": //tester
                    data.status_quote = "'-'";
                    data.status_emote = 0;
                    break;
            }
        }
    }
    //applies the win quotes from against other players like you would normally expect (if they have the compatibility)
    //if the character doesn't have a compatibility, results_draw_portrait.gml will let you decide a few randomly selected generic quotes
    else
    {
        if (string_length(get_compatibility_quote(url)[0]) > 0)
        {
            data.priority = 1;
            data.quote = get_compatibility_quote(url)[0];
            data.emote = get_compatibility_quote(url)[1];
        }
    }

    transfer_array[player] = data; //sets all the data from this section to be transfered later to results_draw_portrait.gml
}

//the smuggler is a persistent hit effect we are creating in order to transfer data to the results screen
//this isn't intentional behaviour from rivals, we are simply abusing the system to get our way
var smuggler = spawn_hit_fx(-200, -200, 0);
smuggler.persistent = true; //persistent is a base gamemaker variable that when true will not disappear when a new screen is loaded, in this case the results screen
smuggler.hit_length = 60; //will destroy itself automatically after one second

smuggler.stage = was_in_stage; //collect stage data
variable_instance_set(smuggler, string(self), transfer_array); //using the ID of the player as a unique variable name to transfer the array over


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
    var emote = 0;

    switch (char_url)
    {
        //////////////////////////// BASECAST ////////////////////////////
        case CH_ZETTERBURN:
            quote = "I won against Zetterburn.";
            emote = 0;
            break;
        case CH_ORCANE:
            quote = "I won against Orcane.";
            emote = 0;
            break;
        case CH_KRAGG:
            quote = "I won against Kragg.";
            emote = 0;
            break;
        case CH_WRASTOR:
            quote = "I won against Wrastor.";
            emote = 0;
            break;
        case CH_FORSBURN:
            quote = "I won against Forsburn.";
            emote = 0;
            break;
        case CH_ETALUS:
            quote = "I won against Etalus.";
            emote = 0;
            break;
        case CH_MAYPUL:
            quote = "I won against Maypul.";
            emote = 0;
            break;
        case CH_ABSA:
            quote = "I won against Absa.";
            emote = 0;
            break;
        case CH_CLAIREN:
            quote = "I won against Clairen.";
            emote = 0;
            break;
        case CH_RANNO:
            quote = "I won against Ranno.";
            emote = 0;
            break;
        case CH_ELLIANA:
            quote = "I won against Elliana.";
            emote = 0;
            break;
        case CH_SYLVANOS:
            quote = "I won against Sylvanos.";
            emote = 0;
            break;
        case CH_MOLLO: case "1871989159":
            quote = "I won against Mollo.";
            emote = 0;
            break;
        case CH_HODAN: case "2136440419":
            quote = "I won against Hodan.";
            emote = 0;
            break;
        case CH_OLYMPIA: case "1943759600":
            quote = "I won against Olympia.";
            emote = 0;
            break;
        case CH_POMME: case "1913517643":
            quote = "I won against Pomme.";
            emote = 0;
            break;
        case CH_ORI:
            quote = "I won against Ori.";
            emote = 0;
            break;
        case CH_SHOVEL_KNIGHT:
            quote = "I won against Shovel Knight.";
            emote = 0;
            break;
        case CH_SANDBERT: case "1865940669": case "2443363942": case "2606414594": //sandbert / sandbert DE / munophone
            quote = "I won against Sandbert.";
            emote = 0;
            break; 
        case "1866016173": //guadua
            quote = "I won against Guadua.";
            emote = 0;
            break;
        //////////////////////////// WORKSHOP ////////////////////////////
        case "2606413637": //goku
            quote = "I won against Son Goku.";
            emote = 0;
            break; 
        default: break;
    }
    return [quote, emote];
}