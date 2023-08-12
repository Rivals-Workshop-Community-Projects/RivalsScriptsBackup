if ("cpu_skill_pool" in self && ds_list_valid(cpu_skill_pool)) ds_list_destroy(cpu_skill_pool);


//code by Frtoud
if (!bar_handled_victory_quote)
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
         quote:"",                 // message if bar wins against you
         //===========================================================================
         status_quote: "",         // message for this bar if he wins under certain conditions
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

         //stage compatibility
         switch (bar_was_in_stage)
         {
            case "2924212592": //childe
               data.status_quote = "What are these supposed to be? Am supposed to use them, somehow?"
               break;
            case "2381606021": //dracula
               data.status_quote = "I warned you, didn't I?"
               break;
         }

         //teammates compatibility
         with (oPlayer) if (get_player_team(player) == get_player_team(other.player))
         {
            if ("url" in self) switch (url)
            {
               case "2786885695": //keqing
                  data.status_quote = "Yeah, we cleared them. We can keep moving now.";
                  break;
               case "2965266088": //rumia
                  data.status_quote = "At least you aren't trying to eat me!";
                  break;
               case "sonic": //sonic (placeholder)
                  if (alt_cur != 16 || get_match_setting(SET_SEASON) != 3) //make sure he isn't lord X
                  {
                     data.status_quote = "Fighting side by side with Sonic the Hedgehog, didn't think it would be possible.";
                  }
                  break;
               case "jurami": //jurami (placeholder)
                  data.status_quote = "Had your fun, Jurami? Good, I'll be going home then.";
                  break;
               //i wonder if these will ever be used lol
               /*
                  case "venus": //venus (placeholder)
                     data.status_quote = "Y-yeah! We did it. You... Did good there, Venus.";
                     break;
                  case "asra": //asra (placeholder)
                     data.status_quote = "Thanks for fighting alongside me, Asra- ...huh? Something's up?";
                     break;
               */
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
   switch (char_url)
   {
      //////////////////////////// BASECAST ////////////////////////////
      case CH_ZETTERBURN: 
         quote = "A lion that uses fire? Sure is something you don't see every day."; 
         break;
      case CH_FORSBURN:
         quote = "Is that a real skull...? That's kind of creepy if you ask me."; 
         break;
      case CH_CLAIREN: 
         quote = "The future is corrupt from a mammoth? I'm no Guardian of Time, sorry."; 
         break;
      case CH_MOLLO:
         quote = "Your firepower is no match for mine, because mine doesn't backfire."; 
         break;

      case CH_WRASTOR:
         quote = "You may like the air but I think i like you on the ground better."; 
         break;
      case CH_ABSA:
         quote = "Manipulating the weather just to keep treaspassers away? Please don't."; 
         break;
      case CH_ELLIANA:
         quote = "I get you, but terrorizing those who wronged you isn't the way, too."; 
         break;
      case CH_POMME:
         quote = "Your music isn't my cup of tea."; 
         break;

      case CH_ORCANE:
         quote = "...Did the orca looking thing just turn into a puddle?"; 
         break;
      case CH_ETALUS: 
         quote = "Using ice to give yourself more durability? Ice starts sounding useful..."; 
         break;
      case CH_RANNO:
         quote = "I also don't like fighting, but we do it to protect what we got, right?"; 
         break;
      case CH_HODAN:
         quote = "I usually settle for what strength I got but... Thanks for your lesson."; 
         break;

      case CH_KRAGG: 
         quote = "I respect your duty, I'm fighting for something important to me too."; 
         break;
      case CH_MAYPUL:
         quote = "I suppose ''guardian'' means different things to the both of us."; 
         break;
      case CH_SYLVANOS:
         quote = "I feel some strong energy from you... You're different, aren't you?"; 
         break;
      case CH_OLYMPIA:
         quote = "Crystal gauntlets? ...That's actually not a bad idea, hm..."; 
         break;

      case CH_ORI:
         quote = "Guess my holy light is stronger than yours after all."; 
         break;
      case CH_SHOVEL_KNIGHT:
         quote = "The armor is neat and all but... why the shovel?"; 
         break;
      case "1865940669": //sandbert / sandbert DE
         quote = "Never saw a sandbag punch back, but if turning to a demon says anything..."; 
         break;
      case "2606414594": //munophone (lol)
         quote = "Why does the sandbag have a phone?"; 
         break;  
      case "1866016173": //guadua
         quote = "Tough luck, panda, I have other places to be."; 
         break;
      //////////////////////// BAR-KUN CHARACTERS ////////////////////////
      case "2621721367": //SSL venus
         quote = "Venus...? Why are you pixelated...?"
         break;
      case "2786885695": //keqing
         quote = "Your speed of light doesn't match my... speed of... light. Huh."
         break;
      case "2801245512": //SSL chaos
         quote = "Rough transition to 32-bit graphics?"
         break;
      case "2859046287": //tester
         quote = "This was one weird creature, Hope I won't run into THAT again."
         break;
      case "2965266088": //rumia
         quote = "Kid, what I need to do is way more important than me becoming fried chicken!"
         break;   
      case "sonic": //sonic (placeholder)
         //sonic's quote changes if he uses the halloween seasonal alt
         if (alt_cur != 16 && get_match_setting(SET_SEASON) != 3) quote = "Who would've thought a 1 meter tall cartoon hedgehog is real?"
         else quote = "You won't trick me, demon. I know you're a faker.";
         break;
      //i wonder if these will ever be used lol
      /*
         case "venus": //venus (placeholder)
            data.status_quote = "Yes... that was a good sparring match, you are getting stronger!";
            break;
         case "asra": //asra (placeholder)
            data.status_quote = "Sahar sure keeps you up on your feet huh? Tell him I said hi.";
            break;
      */
      //////////////////////// ORIGINAL CHARACTERS ///////////////////////
      case "jurami": //jurami (placeholder)
         quote = "Try not to be reckless, will you?";
         break;
      case "2871608790": //azi & mr baggy
         quote = "If you can't control that bag demon I'll be forced to be rid of it.";
         break;
      case "2977835488": //qoedill
         quote = "Glad that raging mass of mutt is out of the way now.";
         break;
      case "2965700442": //anthem
         quote = "Let me destroy that sword of yours, it doesn't look like it's doing you favors.";
         break;
      case "2605377553": //mal
         quote = "Those purple clouds make me want to puke, is that poison?";
         break;
      case "2108895293": //lumina
         quote = "Your control over light is interesting, to say the least.";
         break;
      case "2843521167": //pastelle
         quote = "Somehow hair made out of goop isn't the weirdest thing I saw today.";
         break;
      case "2983344228": //kiku
         quote = "Sorry, I'm not a private tutor.";
         break;
      case "2396061657": //Callie
	      quote = "No hard feelings, right?";
	      break;
      case "2490060793": //Barr
	      quote = "Nice name.";
	      break;
      /////////////////////////// IP CHARACTERS //////////////////////////
      case "2924948563": //knuckles
         quote = "Being a guardian, being the only tie to the past... I hate that too.";
         break;
      case "2606511813": //pit
         quote = "You actually need permission to use your wings? That's rough buddy.";
         break;
      case "2606413637": //goku
         quote = "Maybe don't jump to fight so quickly next time!";
         break;
      case "2263955842": //reimu
         quote = "You wanna get things over with too huh?";
         break;
      case "2931556217": //remilia
         quote = "You remind me of someone... Hm, probably my imagination.";
         break;
      case "2520533233": //tenshi
         quote = "Don't you think you are a little bit too reckless?";
         break;
      case "2854485508": //mamizou
         quote = "I don't think I like being a hedgehog, I'd rather stay myself.";
         break;
      case "2964956057": //flowey
         quote = "Did that flower just talk?";
         break;
      case "2945062156": case "2944680077": case "2311095319": //mario (regina / mit / ricE)
         quote = "Sorry Mario, your victory is in another place.";
         break;
      case "2945067212": //luigi
         quote = "Sorry Mario, your victory is- wait a minute.";
         break;
      case "2995463890": //hol horse
	      quote = "I REALLY don't like that gun!";
	      break;
      ////////////////////////////////////////////////////////////////////
      default: break;
   }
   return quote;
}