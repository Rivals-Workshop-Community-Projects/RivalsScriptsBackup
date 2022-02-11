if(get_player_color(player) == 30)
{
    if(state == PS_IDLE)
    {
        sprite_index = sprite_get("idlegen")
        image_index = state_timer * idle_anim_speed;
    }
}
if(state == PS_SPAWN)
{
    var length = 9; // num of anim frames
    var spd = 6; // in game frames per anim frame
    if (state_timer % spd == 0) introTimer++;
    sprite_index = sprite_get(introTimer<length?"intro":"idle");
    if (state_timer == 32)  sound_play(sound_get("revolver_deploy"))
    if (state_timer == 50)  sound_play(sound_get("revolver_load"))
    if (introTimer < 0) image_index = 0;
    else if (introTimer < length) image_index = introTimer;
    
    #region Dialogue
    if(state_timer == 1)
    {
        with(oPlayer)
        {
            other.countPlayers ++;
            if(id != other.id)
                other.enemyObj = id;
        }
        if(countPlayers == 2 && instance_exists(enemyObj))
        {
            if(variable_instance_exists(enemyObj,"fducky_intro1"))
            {
                introText = enemyObj.fducky_intro1;
                if(variable_instance_exists(enemyObj,"fducky_intro2"))
                    introText2 = enemyObj.fducky_intro2;
            }
            //workshop
            if (string_count("future ducky", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                if(x < enemyObj.x)
                {
                    introText = "You better stay back. Im here";
                    introText2 = "to save us from the future.";
                }
                else
                    introText = "Loxodant has ordered us";
                    introText2 = "to take you down.";
            }
            else if (string_count("ducky", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "The last thing I need";
                introText2 = "is to see you. Go home!";
            }
            if (string_count("kyort", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "You cant mess with";
                introText2 = "this mission. Go home!";
            }
            //Genesis
            else if (string_count("barr", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "These VR missions in";
                introText2 = "the past are outdated";
            }
            else if (string_count("bird guy", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "A bird like you that drives?";
                introText2 = "Our ancestors were weird.";
            }
            else if (string_count("callie", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Please evacuate the premise!";
                introText2 = "We cant lose any civvies.";
            }
            else if (string_count("chimera", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "A wild animal on the loose?";
                introText2 = "Thats one off the charts.";
            }
            else if (string_count("daora", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "How shocking.";
                introText2 = "Dont take another step.";
            }
            else if (string_count("dinock", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "I wished there were still dinosaurs.";
                introText2 = "Didn't think it would come true.";
            }
            else if (string_count("donyoku", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Using your blood as a weapon?";
                introText2 = "Looks like youre coming in cold.";
            }
            else if (string_count("eirlys", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Royalty isn't my thing.";
                introText2 = "Here, we are equal.";
            }
            else if (string_count("epinel", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Man with the golden blood?";
                introText2 = "Looks like youre coming in cold.";
            }
            else if (string_count("fernet", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "No kids on the premise.";
                introText2 = "That's the last casuality I want.";
            }
            else if (string_count("glare", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Put your hands up, thief!";
                introText2 = "This is your last act.";
            }
            else if (string_count("hana", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "How interesting..";
                introText2 = "A true instrument of war.";
            }
            else if (string_count("hexwhize", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Hands up! Come in slowly.";
                introText2 = "Dont make any weird movements.";
            }
            else if (string_count("hodan", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Dry yourself up.";
                introText2 = "I dont want no monkey business";
            }
            else if (string_count("jaunted", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "This is the last time, Im taking";
                introText2 = "coffee. Im starting to see phantoms.";
            }
            else if (string_count("lyca", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "An archer? A bit outdated if you ask.";
                introText2 = "Ill show you a real weapon.";
            }
            else if (string_count("maverick", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "From the Air Armada? I wished";
                introText2 = "I made it before everything happened.";
            }
            else if (string_count("mollo", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "If you dont want to get caught by Loxodant";
                introText2 = "Id recommend putting your hands up.";
            }
            else if (string_count("mora", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "How cold.";
                introText2 = "Bringing a knife to a gunfight.";
            }
            else if (string_count("mycolich", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Posionous threat located.";
                introText2 = "If only I had a gas mask.";
            }
            else if (string_count("n/a", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Abyssal creature located.";
                introText2 = "Only choice is to exterminate.";
            }
            else if (string_count("nade", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Youd look like youre crazy.";
                introText2 = "enough to blast yourself in the air.";
            }
            else if (string_count("nate", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Id recommend to build yourself.";
                introText2 = "a way home. Get out of here, kid.";
            }
            else if (string_count("nova", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Another time traveller.";
                introText2 = "Its time to get you back, criminal.";
            }
            else if (string_count("olympia", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Hardened gem?";
                introText2 = "I wonder if itll reflect my lasers.";
            }
            else if (string_count("pomme", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Sorry, the only pop Im used to";
                introText2 = "is the way my bullets click in.";
            }
            else if (string_count("r-00", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                introText = "What an annoying mailbox.";
            else if (string_count("yuuto", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Get out of here, kid.";
                introText2 = "Your magic will only cause more chaos.";
            }
            else if (string_count("rokesha", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Its not about the length of the rifle.";
                introText2 = "Its all about the caliber.";
            }
            else if (string_count("rykenburn", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "The legendary Rykenburn.";
                introText2 = "If only you knew, how you fell.";
            }
            else if (string_count("sciros", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "I didnt expect to see you here.";
                introText2 = "Ill send you back to where you belong.";
            }
            else if (string_count("suitcase", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                introText = "Its time to close this case";
            else if (string_count("tenru", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Im done dealing with pranksters.";
                introText2 = "Youre gonna end up losing a tail.";
            }
            else if (string_count("torga", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "I thought you were a pacifist.";
                introText2 = "Wondered why you went cold.";
            }
            else if (string_count("valkyrie", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Its time to seal the deal.";
                introText2 = "Keep your weapons down.";
            }
            else if (string_count("zephrie", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Youd be a great addition.";
                introText2 = "to the Armada.";
            }
            else if (string_count("anglara", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "They told me theres other fishes";
                introText2 = "in the sea. Its time to fish you out.";
            }
            else if (string_count("sai", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "You have quite the history,";
                introText2 = "sad I have to take you out.";
            }
            else if (string_count("lonin", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Fancy portals you got there, Dont be";
                introText2 = "shocked if my bullets follow through.";
            }
            //
            else if (string_count("hikaru", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Youre quite mystical.";
                introText2 = "Sorry we had to meet here.";
            }
            else if (string_count("bailey", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "You're a wrestler?";
                introText2 = "They stopped existing where I'm from.";
            }
            else if (string_count("apple", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "A scout? Im sorry you found me but";
                introText2 = "I have to get rid of all witnesses.";
            }
            else if (string_count("carcossant", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Are you some kind of parasite?";
                introText2 = "Step back from me, zombie!";
            }
            else if (string_count("kinunosu", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "You... Ill kill you!";
                introText2 = "You ruined the future!";
            }
            //base cast
            else if (string_count("zetterburn", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "So the legend is true...";
                introText2 = "The fire does come alive!";
            }
            else if (string_count("kragg", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                introText = "This isnt the rock age anymore.";

            else if (string_count("maypul", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Hope I have enough cuffs";
                introText2 = "for those vines.";
            }
            else if (string_count("sylvanos", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "God or Mortal, a 50 Cal";
                introText2 = "is enough to put you down.";
            }
            else if (string_count("wrastor", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Where Im from the Air";
                introText2 = "Armada doesnt fly.";
            }
            else if (string_count("absa", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "How shocking, lets see";
                introText2 = "if you can match my bullets.";
            }
            else if (string_count("elliana", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "What kind of flying machine";
                introText2 = "is that? How unstable.";
            }
            else if (string_count("ranno", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "For a Pacifist, yknow poison";
                introText2 = "can take a life right?";
            }
            else if (string_count("etalus", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "We can bring you in cold or hot.";
                introText2 = "Dont do anything risky.";
            }
            else if (string_count("clairen", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "You stood up to Loxodant!";
                introText2 = "We can stop this together.";
            }
            else if (string_count("orcane", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "This pond isnt big enough";
                introText2 = "for the two of us.";
            }
            else if (string_count("forsburn", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                introText = "Think you can keep up with the heat?";
                
            //default
            if(introText == "")
            {
                var seed = 0;
                seed += get_player_color(player);
                seed += x/20;
                seed += abs(y/20);
                seed += enemyObj.x/20;
                seed += 4;

                if(get_player_color(player) == 31)
                {
                    var introChoices1 = [
                        "Sugoi!",
                        "I want to keep singing!",
                        "I've made more things than",
                        "Don't give up and find"
                    ];
                    var introChoices2 = [
                        "I wonder who you are!",
                        "I won't let you take that away from me!",
                        "you'll ever hear!",
                        "what makes you happy!"
                    ];
                }
                else
                {
                    var introChoices1 = [
                        "ZPD, Dead or alive.",
                        "Unknown Threat... Must take",
                        "Six shots, enough to kill",
                        "Don't blame me with what"
                    ];
                    var introChoices2 = [
                        "You're coming with me.",
                        "you down with what I got.",
                        "anything that moves...",
                        "happens next."
                    ];
                }
                introText = introChoices1[random_func(floor(seed%24),array_length(introChoices1), true)];
                introText2 = introChoices2[random_func(floor(seed%24),array_length(introChoices2), true)];
            }
        }
        if(countPlayers >= 3)
        {
                var seed = 0;
                seed += get_player_color(player);
                seed += x/20;
                seed += 4;

                var introChoices = [
                    "Two bullets is enough for each one of you.",
                    "Keep my distance, or else Im cooked for.",
                    "ZPD, requesting backup to my position."
                ];
                introText = introChoices[random_func(floor(seed%24),array_length(introChoices1), true)];
        }
    }
}