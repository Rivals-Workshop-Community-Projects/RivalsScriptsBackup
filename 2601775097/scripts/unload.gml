if ("cpu_skill_pool" in self && ds_list_valid(cpu_skill_pool)) ds_list_destroy(cpu_skill_pool);



//code by Frtoud
if (!bar_handled_victory_quote)
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
         bar_handled_victory_quote = true;
         
         data.priority = 2;
         data.quote = bar_victory_quote;
         data.emote = 2;

         //stage compatibility
         switch (bar_was_in_stage)
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
                  data.status_quote = "At least you aren't trying to eat me!";
                  data.status_emote = 1;
                  break;
               case "3039831352": //sonic
                  if (alt_cur != 16 || get_match_setting(SET_SEASON) != 3) //make sure he isn't lord X
                  {
                     data.status_quote = "Fighting side by side with Sonic the Hedgehog, didn't think it would be possible.";
                     data.status_emote = 2;
                  }
                  else
                  {
                     data.status_quote = "Don't think you're off the radar just cause you helped me win, demon.";
                     data.status_emote = 6;
                  }
                  break;
               case "jurami": //jurami (placeholder)
                  data.status_quote = "Had your fun, Jurami? Good, I'll be going home then.";
                  data.status_emote = 1;
                  break;
            }
         }
      }
      else if ("bar_victory_quote" in self)
      {
         data.priority = 2;
         data.quote = bar_victory_quote;
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
   
   smuggler.stage = bar_was_in_stage;
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
         quote = "A lion that uses fire? Sure is something you don't see every day.";
         emote = 0;
         break;
      case CH_ORCANE:
         quote = "...Did the orca looking thing just turn into a puddle?";
         emote = 0;
         break;
      case CH_KRAGG:
         quote = "I respect your duty, I'm fighting for something important to me too.";
         emote = 5;
         break;
      case CH_WRASTOR:
         quote = "You may like the air but I think i like you on the ground better.";
         emote = 1;
         break;
      case CH_FORSBURN:
         quote = "Is that a real skull...? That's kind of creepy if you ask me.";
         emote = 0;
         break;
      case CH_ETALUS:
         quote = "Using ice to give yourself more durability? Ice starts sounding useful...";
         emote = 4;
         break;
      case CH_MAYPUL:
         quote = "I suppose ''guardian'' means different things to the both of us.";
         emote = 5;
         break;
      case CH_ABSA:
         quote = "Manipulating the weather just to keep treaspassers away? Please don't.";
         emote = 3;
         break;
      case CH_CLAIREN:
         quote = "The future is corrupt from a mammoth? I'm no Guardian of Time, sorry.";
         emote = 1;
         break;
      case CH_RANNO:
         quote = "I also don't like fighting, but we do it to protect what we got, right?";
         emote = 5;
         break;
      case CH_ELLIANA:
         quote = "I get you, but terrorizing those who wronged you isn't the way, too.";
         emote = 5;
         break;
      case CH_SYLVANOS:
         quote = "I feel some strong energy from you... You're different, aren't you?";
         emote = 0;
         break;
      case CH_MOLLO: case "1871989159":
         quote = "Your firepower is no match for mine, because mine doesn't backfire.";
         emote = 2;
         break;
      case CH_HODAN: case "2136440419":
         quote = "I usually settle for what strength I got but... Thanks for your lesson.";
         emote = 2;
         break;
      case CH_OLYMPIA: case "1943759600":
         quote = "Crystal gauntlets? ...That's actually not a bad idea, hm...";
         emote = 4;
         break;
      case CH_POMME: case "1913517643":
         quote = "Your music isn't my cup of tea.";
         emote = 3;
         break;
      case CH_ORI:
         quote = "Guess my holy light is stronger than yours after all.";
         emote = 2;
         break;
      case CH_SHOVEL_KNIGHT:
         quote = "The armor is neat and all but... why the shovel?";
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
         quote = "Tough luck, panda, I have other places to be.";
         emote = 1;
         break;
      //////////////////////// BAR-KUN CHARACTERS ////////////////////////
      case "2621721367": //SSL venus
         quote = "Venus...? Why are you pixelated...?";
         emote = 4;
         break;
      case "2786885695": //keqing
         quote = "Your speed of light doesn't match my... speed of... light. Huh.";
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
         //sonic's quote changes if he uses the halloween seasonal alt
         if (alt_cur == 16 && get_match_setting(SET_SEASON) == 3)
         {
            quote = "You won't trick me, demon. I know you're just a fake.";
            emote = 6;
         }
         else
         {
            quote = "Who would've thought a 1 meter tall cartoon hedgehog is real?";
            emote = 0;
         }
         break;
      //////////////////////// ORIGINAL CHARACTERS ///////////////////////
      case "jurami": //jurami (placeholder)
         quote = "Try not to be reckless, will you?";
         emote = 3;
         break;
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
         quote = "Control yourself, or I will be forced to stop you! Don't make me do this!";
         emote = 6;
         break;
      case "2605377553": //mal
         quote = "Those purple clouds make me want to puke, is that poison?";
         emote = 6;
         break;
      case "2108895293": //lumina
         quote = "Your control over light is interesting, to say the least.";
         emote = 3;
         break;
      case "2843521167": //pastelle
         quote = "Somehow hair made out of goop isn't the weirdest thing I saw today.";
         emote = 0;
         break;
      case "2983344228": //kiku
         quote = "Sorry, I'm not a private tutor.";
         emote = 1;
         break;
      case "2396061657": //callie
	      quote = "No hard feelings, right?";
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
         quote = "You actually need permission to use your wings? That's rough buddy.";
         emote = 0;
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
         quote = "I don't think I like being a hedgehog, I'd rather stay myself.";
         emote = 1;
         break;
      case "2964956057": //flowey
         quote = "Did that flower just talk?";
         emote = 0;
         break;
      case "2945062156": case "2944680077": case "2311095319": //mario (regina / mit / ricE)
         quote = "Sorry Mario, your victory is in another place.";
         emote = 2;
         break;
      case "2945067212": //luigi (regina)
         quote = "Sorry Mario, your victory is- wait a minute.";
         emote = 7;
         break;
      case "2995463890": //hol horse
	      quote = "What the hell is shooting me?!";
         emote = 6;
	      break;
      case "3042615374": case "3030928225": case "3021608896": //nemesis, squigly, mako
	      quote = "Cheating death, undead... I hate it.";
         emote = 5;
	      break;
      ////////////////////////////////////////////////////////////////////
      default: break;
   }
   return [quote, emote];
}