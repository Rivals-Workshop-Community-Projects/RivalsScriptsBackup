switch(state)
{
    case PS_SPAWN:
        #region Dialogue
        if(state_timer == 1)
        {
            with(oPlayer)
            {
                other.countPlayers ++;
                if(id != other.id)
                    other.enemyObj = id;
            }
            if(countPlayers == 1)
            {
                introText = "Welcome to the training room!";
            }
            else if(countPlayers == 2 && instance_exists(enemyObj))
            {
                //workshop
                if (string_count("chris hayabusa", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                {
                    introText = "This is a weird way to ask for";
                    introText2 = "some one on one time, Chris!";
                }
                if (string_count("ash", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                {
                    introText = "Wrestling vs. boxing!";
                    introText2 = "No weird rules!";
                }
                if (string_count("slashe", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                {
                    introText = "I can slap a tornado,";
                    introText2 = " your Highwind is nothing!";
                }
                if (string_count("klockwurth", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                {
                    introText = "You better not miss";
                    introText2 = "because that will be your last mistake!";
                }
                if (string_count("lyca", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                {
                    introText = "Using your dead kids to help fight?";
                    introText2 = "Who the hell booked this?!";
                }
                if (string_count("spamton", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                {
                    introText = "Only the biggest asskicking";
                    introText2 = "for a big shot like you!";
                }
                if (string_count("kris", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 || string_count("birgil", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 )
                {
                    introText = "A handicap match?";
                    introText2 = "You should have brought more friends!";
                }
                if (string_count("penny", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 || string_count("birgil", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 )
                {
                    introText = "Hey, that arm real?";
                    introText2 = "Show me how hard it can punch!";
                }
                if (string_count("phoenix wright", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Lawyers have no place in the ring!";
                if (string_count("big band", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Tell Beowulf that he needs to answer my challenge!";
                if (string_count("incineroar", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Your reign of terror is over, junior!";
                if (string_count("goku", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "I was here to fight Mr. Satan but you will do!";
                if (string_count("travis touchdown", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Show me your suplex, otaku!";
                if (string_count("ducky", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "You better not quack under pressure!";
                if (string_count("añi", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Can't have a fiesta without bashing a pinata!";
                if (string_count("cupcake", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "With legs like that, you better not disappoint me!";
                if (string_count("fernet", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Time for some grappling training, kiddo!";
                if (string_count("daora", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "A little electricity won’t put me down!";
                if (string_count("mario", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "It’ll be an honor to Kinniku Buster you, Mario!";
                if (string_count("old man", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Come on, old-timer, if you still got it!";
                if (string_count("astra", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "I’m the only one who determines my future!";
		if (string_count("amarelle", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
		{
                    introText = "You're not the only one who";
		    introText2 = "can bring the heat!";
		}
		if (string_count("rykenburn", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Well! You're a big boy, aren't you?!";
		if (string_count("iroh", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Show me your ruthless aggression!";
                if (string_count("kyort", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Bring it on, weenie king!";
                if (string_count("tenru", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "I’ll be the one who has the last laugh!";
                if (string_count("r-00", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Special delivery! Tables with your name on them!";
                if (string_count("carcossant", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "I’m ripping that mask right off your face!";
                if (string_count("untitled goose", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "GOOOOOOOSE!";
                if (string_count("amber", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Aww, come on, how can I fight something so cute?!";
                if (string_count("buffy", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "This match ain’t big enough for the two of us!";
                if (string_count("lukastar", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Nice powers but nothing a good steel chair can’t stop!";
                if (string_count("callie", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "You want an interview? I have hard hitting answers!";
                if (string_count("chara", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Someone pick up this weirdo child before I do!";
                if (string_count("anglara", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Dunking you won’t be a problem!";
                if (string_count("crewmate", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Time to eject you from the ring!";
                if (string_count("chef", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Don’t get mad if I break your grill!";
                if (string_count("monokuma", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Let’s see what color your blood is!";
                if (string_count("golem", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("egg", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("tapu koko", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("litwick", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("lucario", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("hau", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("blaziken", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("greninja", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("gengar", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("bubbles", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("pikachu", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("accelgor", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("snom", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("regigigas", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("archen", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("lopunny", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("plusle", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("gengar", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("meloetta", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("mudkip", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("jigglypuff", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("mewtwo", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("litwick", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("mimikyu", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("gardevoir", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("quagsire", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("purrloin", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("eevee", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("vileplume", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 ||
                string_count("jirachi", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "You should run away while you have the chance!";
                //base cast
                if (string_count("zetterburn", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                {
                    introText = "All I see is a lion with";
                    introText2 = "the heart of a coward!";
                }
                if (string_count("kragg", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                {
                    introText = "I don't need to tell you";
                    introText2 = "what your rock says.";
                }
                if (string_count("maypul", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                {
                    introText = "Get ready to get tangled up";
                    introText2 = "in those vines of yours!";
                }
                if (string_count("sylvanos", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                {
                    introText = "When I drive you into the ground,";
                    introText2 = "you're going to stay there!";
                }
                if (string_count("wrastor", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                {
                    introText = "I will clip your wings,";
                    introText2 = "you overgrown chicken!";
                }
                if (string_count("absa", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                {
                    introText = "No amount of planning will";
                    introText2 = "prepare you for ME!";
                }
                if (string_count("elliana", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                {
                    introText = "I can help you fly but";
                    introText2 = "you won't be coming back down!";
                }
                if (string_count("ranno", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                {
                    introText = "Your frog splash";
                    introText2 = "won't be enough to stop me!";
                }
                if (string_count("pomme", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0  || enemyObj.url == 18)
                    introText = "I am the star of this duet, little miss diva!";
	        if (string_count("hikaru", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                {
		    introText = "I'll show you everything you need";
		    introText2 = "to know about pro wrestling!";
		}
                if (string_count("olympia", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0 || enemyObj.url == 19)
                {
		    introText = "When I beat you, you will be";
		    introText2 = "my new tag partner, got it?!";
		}
                if (string_count("mollo", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0  || enemyObj.url == 16)
                    introText = "Hope those bombs don’t blow up in your face!";
                if (string_count("hodan", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0  || enemyObj.url == 17)
                    introText = "What I am here for is none of your monkey business!";
                if (string_count("etalus", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Mind if I break the ice... and your jaw?!";
                if (string_count("orcane", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "You should be honored that you will get no mercy!";
                if (string_count("forsburn", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "You're only smoke and mirrors to me!";
		if (string_count("shovel knight", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "I will take that shovel and BURY YOU!";
                if (string_count("clairen", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "Cute sword but my toys are better!";
		if (string_count("ori", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                    introText = "I'm going to slam you back to your forest!";
		
                    
                //default
                if(introText == "")
                {
                    var seed = 0;
                    seed += get_player_color(player);
                    seed += x/20;
                    seed += enemyObj.x/20;
                    seed += 4;

                    introChoices = [
                        "Step up or shut up!",
                        "It's showtime!",
                        "Who's next?! You're next on my list!",
                        "If you want some, come get some!"
                    ];
                    introText = introChoices[random_func(floor(seed%24),array_length(introChoices), true)];
                }
            }
            if(countPlayers >= 3)
            {
                    var seed = 0;
                    seed += get_player_color(player);
                    seed += x/20;
                    seed += enemyObj.x/20;
                    seed += 4;

                    introChoices = [
                        "Every! Body! DIES!",
                        "Join the Dark Order!",
                        "Nothing royal about this rumble!"
                    ];
                    introText = introChoices[random_func(floor(seed%24),array_length(introChoices), true)];
            }
        }
        #endregion Dialogue
        var length = 13; // num of anim frames
        var spd = 6; // in game frames per anim frame
        if (state_timer % spd == 0) introTimer++;
        if(state_timer == 2)
        sound_play(sound_get("crowd_cheer"),false, noone, 0.6, 1.4); 
        sprite_index = sprite_get(introTimer<length&&introTimer>=0?"intro":"idle");
        if (introTimer < 0) image_index = 0;
        else if (introTimer < length) image_index = introTimer;
        break;
}