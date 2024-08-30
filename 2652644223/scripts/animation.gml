if(get_player_color(player) == 15)
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
        intro_x = x;
        intro_y = y;
        with(oPlayer)
        {
            if(is_player_on(player)) 
            {
                other.countPlayers ++;
                if(id != other.id)
                    other.enemyObj = id;
            }
        }
        if(countPlayers == 2 && instance_exists(enemyObj))
        {
            var lowercase = string_lower(get_char_info(enemyObj.player, INFO_STR_NAME));
            if(variable_instance_exists(enemyObj,"fducky_intro1"))
            {
                introText = enemyObj.fducky_intro1;
                if(variable_instance_exists(enemyObj,"fducky_intro2"))
                    introText2 = enemyObj.fducky_intro2;
            }
            //check its not special alts
            if(get_player_color(player) == 1 ||get_player_color(player) == 31)
            {
                introText = "";
                introText2 = "";
            }
            //workshop
            else if (string_count("future ducky", lowercase) > 0)
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
            else if (string_count("ducky", lowercase) > 0)
            {
                introText = "The last thing I need";
                introText2 = "is to see you. Go home!";
            }
            else if (string_count("kyort", lowercase) > 0)
            {
                introText = "You cant mess with";
                introText2 = "this mission. Go home!";
            }
            //Riptide 2024
            else if (string_count("vale torina", lowercase) > 0)
            {
                introText = "A lamb never knows their fate";
                introText2 = "until it's too late";
            }
            else if (string_count("ayaka kinoshita", lowercase) > 0)
            {
                introText = "Aren't maidens more";
                introText2 = "fair than this?";
            }
            else if (string_count("arcuin", lowercase) > 0)
            {
                introText = "Let's see how far this";
                introText2 = "bird can fly.";
            }
            else if (string_count("luna", lowercase) > 0)
            {
                introText = "Quite the interesting";
                introText2 = "gadget you have there.";
            }
            else if (string_count("nacht", lowercase) > 0)
            {
                introText = "I guess blinking is";
                introText2 = "not an option here.";
            }
            else if (string_count("vakna", lowercase) > 0)
            {
                introText = "A lava bender?";
                introText2 = "How fascinating.";
            }
            else if (string_count("yono", lowercase) > 0 || string_count("brook", lowercase) > 0 || string_count("peppino", lowercase) > 0)
            {
                introText = "Don't you think you";
                introText2 = "have the wrong address?";
            }
            else if (string_count("penny", lowercase) > 0)
            {
                introText = "Wouldn't cost you much";
                introText2 = "to go back where you came from.";
            }
            else if (string_count("wren", lowercase) > 0)
            {
                introText = "Don't get too shocked";
                introText2 = "when your waves come crashing down.";
            }
            else if (string_count("helios", lowercase) > 0)
            {
                introText = "Atleast you're dressed";
                introText2 = "for the occassion.";
            }
            else if (string_count("usher", lowercase) > 0)
            {
                introText = "If you're gone, the Sun";
                introText2 = "will rise back again.";
            }
            else if (string_count("tomoko", lowercase) > 0)
            {
                introText = "I hope youre ready";
                introText2 = "sink with this ship.";
            }
            else if (string_count("kumaki", lowercase) > 0)
            {
                introText = "It seems like judging a book";
                introText2 = "by its cover works out after all.";
            }
            else if (string_count("alexis", lowercase) > 0)
            {
                introText = "What kind of magician";
                introText2 = "specializes in urban combat?";
            }
            else if (string_count("hoshimachi suisei", lowercase) > 0 || 
                string_count("gawr gura", lowercase) > 0 )
            {
                introText = "The war effort have really";
                introText2 = "gotten Idols in the frontline.";
            }
            else if (string_count("amanita", lowercase) > 0 )
            {
                introText = "As long I keep my distance,";
                introText2 = "you won't be able to infect me.";
            }
            else if (string_count("pastelle", lowercase) > 0 )
            {
                introText = "You're going to spill more";
                introText2 = "than ink on this canvas.";
            }
            else if (string_count("kiku", lowercase) > 0 )
            {
                introText = "Weave all you want";
                introText2 = "you're bound to get into a knot.";
            }
            else if (string_count("sakuya izayoi", lowercase) > 0 )
            {
                introText = "Time will surely";
                introText2 = "forget you.";
            }
            else if (string_count("desperado", lowercase) > 0 )
            {
                introText = "The wild west has moved on.";
                introText2 = "Time for you to do the same.";
            }
            else if (string_count("amaya", lowercase) > 0 )
            {
                introText = "Don't you have better things";
                introText2 = "to crawl to.";
            }
            else if (string_count("awatsu", lowercase) > 0 )
            {
                introText = "Another majestic creature";
                introText2 = "bound for extinction.";
            }
            else if (string_count("awatsu", lowercase) > 0 )
            {
                introText = "Another majestic creature";
                introText2 = "bound for extinction.";
            }
            else if (string_count("truck-kun", lowercase) > 0 )
            {
                introText = "Sir! Stop the tru...";
                introText2 = "There's no one there!";
            }
            else if (string_count("putrolce", lowercase) > 0 )
            {
                introText = "Didn't your mom tell";
                introText2 = "you not to eat rocks?";
            }
            else if (string_count("bhadra", lowercase) > 0 )
            {
                introText = "Another samurai?";
                introText2 = "Let me show you why they're gone.";
            }
            else if (string_count("la reina", lowercase) > 0 )
            {
                introText = "Without a crowd,";
                introText2 = "theres no need to keep up the act.";
            }
            else if (string_count("qoedil", lowercase) > 0 || string_count("hex", lowercase) > 0 )
            {
                introText = "What kind of abomination";
                introText2 = "are you supposed to be.";
            }
            else if (string_count("napstablook", lowercase) > 0 )
            {
                introText = "I wasn't brought here to";
                introText2 = "be your therapist.";
            }
            else if (string_count("koishi", lowercase) > 0 )
            {
                introText = "As long I can stay close,";
                introText2 = "I can see you.";
            }
            //Genesis 9 additions
            else if (string_count("owen", lowercase) > 0)
            {
                introText = "I know what you are.";
                introText2 = "";
            }
            else if (string_count("jerma", lowercase) > 0)
            {
                introText = "Another impostor?";
                introText2 = "You're out of line.";
            }
            else if (string_count("hat kid", lowercase) > 0)
            {
                introText = "Another impostor?";
                introText2 = "You're out of line.";
            }
            else if (string_count("untitled goose", lowercase) > 0)
            {
                introText = "Standing here. I realize";
                introText2 = "You were just like me.";
            }
            else if (string_count("heartbrake", lowercase) > 0)
            {
                introText = "A broken soul, trying to fight";
                introText2 = "your own justice.";
            }
            else if (string_count("arboris", lowercase) > 0)
            {
                introText = "Such feral creatures in the past";
                introText2 = "I'm glad you only exist here.";
            }
            else if (string_count("business casual man", lowercase) > 0)
            {
                introText = "I don't have a penny to spare";
                introText2 = "for your shares.";
            }
            else if (string_count("dazz", lowercase) > 0)
            {
                introText = "Carnivorous plants?";
                introText2 = "Ill make you disappear.";
            }
            else if (string_count("valley", lowercase) > 0)
            {
                introText = "I don't have a penny to spare";
                introText2 = "for your shares.";
            }
            //Genesis 8
            else if (string_count("barr", lowercase) > 0)
            {
                introText = "These VR missions in";
                introText2 = "the past are outdated";
            }
            else if (string_count("bird guy", lowercase) > 0)
            {
                introText = "A bird like you that drives?";
                introText2 = "Our ancestors were weird.";
            }
            else if (string_count("callie", lowercase) > 0)
            {
                introText = "Please evacuate the premise!";
                introText2 = "We cant lose any civvies.";
            }
            else if (string_count("chimera", lowercase) > 0)
            {
                introText = "A wild animal on the loose?";
                introText2 = "Thats one off the charts.";
            }
            else if (string_count("daora", lowercase) > 0)
            {
                introText = "How shocking.";
                introText2 = "Dont take another step.";
            }
            else if (string_count("dinock", lowercase) > 0)
            {
                introText = "I wished there were still dinosaurs.";
                introText2 = "Didn't think it would come true.";
            }
            else if (string_count("donyoku", lowercase) > 0)
            {
                introText = "Using your blood as a weapon?";
                introText2 = "Looks like youre coming in cold.";
            }
            else if (string_count("eirlys", lowercase) > 0)
            {
                introText = "Royalty isn't my thing.";
                introText2 = "Here, we are equal.";
            }
            else if (string_count("fernet", lowercase) > 0)
            {
                introText = "No kids on the premise.";
                introText2 = "That's the last casuality I want.";
            }
            else if (string_count("glare", lowercase) > 0)
            {
                introText = "Put your hands up, thief!";
                introText2 = "This is your last act.";
            }
            else if (string_count("hana", lowercase) > 0)
            {
                introText = "How interesting..";
                introText2 = "A true instrument of war.";
            }
            else if (string_count("hexwhize", lowercase) > 0)
            {
                introText = "Hands up! Come in slowly.";
                introText2 = "Dont make any weird movements.";
            }
            else if (string_count("hodan", lowercase) > 0)
            {
                introText = "Dry yourself up.";
                introText2 = "I dont want no monkey business";
            }
            else if (string_count("jaunted", lowercase) > 0)
            {
                introText = "This is the last time, Im taking";
                introText2 = "coffee. Im starting to see phantoms.";
            }
            else if (string_count("lyca", lowercase) > 0)
            {
                introText = "An archer? A bit outdated if you ask.";
                introText2 = "Ill show you a real weapon.";
            }
            else if (string_count("maverick", lowercase) > 0)
            {
                introText = "From the Air Armada? I wished";
                introText2 = "I made it before everything happened.";
            }
            else if (string_count("mollo", lowercase) > 0)
            {
                introText = "By Loxodant's orders";
                introText2 = "Put your hands up.";
            }
            else if (string_count("mora", lowercase) > 0)
            {
                introText = "How cold.";
                introText2 = "Bringing a knife to a gunfight.";
            }
            else if (string_count("mycolich", lowercase) > 0)
            {
                introText = "Posionous threat located.";
                introText2 = "If only I had a gas mask.";
            }
            else if (string_count("n/a", lowercase) > 0)
            {
                introText = "Abyssal creature located.";
                introText2 = "Only choice is to exterminate.";
            }
            else if (string_count("nade", lowercase) > 0)
            {
                introText = "Youd look like youre crazy.";
                introText2 = "enough to blast yourself in the air.";
            }
            else if (string_count("nate", lowercase) > 0)
            {
                introText = "Id recommend to build yourself.";
                introText2 = "a way home. Get out of here, kid.";
            }
            else if (string_count("nova", lowercase) > 0)
            {
                introText = "Another time traveller.";
                introText2 = "Its time to get you back, criminal.";
            }
            else if (string_count("olympia", lowercase) > 0)
            {
                introText = "Hardened gem?";
                introText2 = "I wonder if itll reflect my lasers.";
            }
            else if (string_count("pomme", lowercase) > 0)
            {
                introText = "Sorry, the only pop Im used to";
                introText2 = "is the way my bullets click in.";
            }
            else if (string_count("r-00", lowercase) > 0)
                introText = "What an annoying mailbox.";
            else if (string_count("yuuto", lowercase) > 0)
            {
                introText = "Get out of here, kid.";
                introText2 = "Your magic will only cause more chaos.";
            }
            else if (string_count("rokesha", lowercase) > 0)
            {
                introText = "Its not about the length of the rifle.";
                introText2 = "Its all about the caliber.";
            }
            else if (string_count("rykenburn", lowercase) > 0)
            {
                introText = "The legendary Rykenburn.";
                introText2 = "If only you knew, how you fell.";
            }
            else if (string_count("sciros", lowercase) > 0)
            {
                introText = "I didnt expect to see you here.";
                introText2 = "Ill send you back to where you belong.";
            }
            else if (string_count("suitcase", lowercase) > 0)
                introText = "Its time to close this case";
            else if (string_count("tenru", lowercase) > 0)
            {
                introText = "Im done dealing with pranksters.";
                introText2 = "Youre gonna end up losing a tail.";
            }
            else if (string_count("torga", lowercase) > 0)
            {
                introText = "I thought you were a pacifist.";
                introText2 = "Wondered why you went cold.";
            }
            else if (string_count("valkyrie", lowercase) > 0)
            {
                introText = "Its time to seal the deal.";
                introText2 = "Keep your weapons down.";
            }
            else if (string_count("zephrie", lowercase) > 0)
            {
                introText = "Youd be a great addition.";
                introText2 = "to the Armada.";
            }
            else if (string_count("anglara", lowercase) > 0)
            {
                introText = "They told me theres other fishes";
                introText2 = "in the sea. Its time to fish you out.";
            }
            else if (string_count("sai", lowercase) > 0)
            {
                introText = "You have quite the history,";
                introText2 = "sad I have to take you out.";
            }
            else if (string_count("lonin", lowercase) > 0)
            {
                introText = "Fancy portals you got there, Dont be";
                introText2 = "shocked if my bullets follow through.";
            }
            //
            else if (string_count("hikaru", lowercase) > 0)
            {
                introText = "Youre quite mystical.";
                introText2 = "Sorry we had to meet here.";
            }
            else if (string_count("bailey", lowercase) > 0)
            {
                introText = "You're a wrestler?";
                introText2 = "They stopped existing where I'm from.";
            }
            else if (string_count("apple", lowercase) > 0)
            {
                introText = "A scout? Im sorry you found me but";
                introText2 = "I have to get rid of all witnesses.";
            }
            else if (string_count("carcossant", lowercase) > 0)
            {
                introText = "Are you some kind of parasite?";
                introText2 = "Step back from me, zombie!";
            }
            else if (string_count("kinunosu", lowercase) > 0)
            {
                introText = "You... Ill kill you!";
                introText2 = "You ruined the future!";
            }
            //Riptide
            else if (string_count("bluey", lowercase) > 0)
            {
                introText = "Get out of here, kid.";
                introText2 = "Stroll somewhere else.";
            }
            else if (string_count("crewmate", lowercase) > 0)
            {
                introText = "An alien?";
                introText2 = "This was not part of my task.";
            }
            else if (string_count("epinel", lowercase) > 0)
            {
                introText = "I don't think you understand";
                introText2 = "the gravity of this situation.";
            }
            else if (string_count("henry stickmin", lowercase) > 0)
            {
                introText = "Are you happy to see me";
                introText2 = "Or is that a diamond in your pocket.";
            }
            else if (string_count("mal", lowercase) > 0)
            {
                introText = "Chemical warfare?";
                introText2 = "The past is full of surprises.";
            }
            else if (string_count("rin kaenbyou", lowercase) > 0)
            {
                introText = "Don't think you're going to";
                introText2 = "be grazing my bullets.";
            }
            else if (string_count("po & gumbo", lowercase) > 0)
            {
                introText = "The last thing I want";
                introText2 = "is to be like a roasted duck";
            }
            else if (string_count("wally", lowercase) > 0)
            {
                introText = "I really hope six shots";
                introText2 = "is enough to take you down.";
            }
            else if (string_count("otto 2", lowercase) > 0)
            {
                introText = "Middle top pocket";
                introText2 = "inbetween the eyes.";
            }
            else if (string_count("candyman", lowercase) > 0)
            {
                introText = "Im not here to play ball";
                introText2 = "You need to be striked out.";
            }
            //base cast
            else if (string_count("zetterburn", lowercase) > 0)
            {
                introText = "So the legend is true...";
                introText2 = "The fire does come alive!";
            }
            else if (string_count("kragg", lowercase) > 0)
                introText = "This isnt the rock age anymore.";

            else if (string_count("maypul", lowercase) > 0)
            {
                introText = "Hope I have enough cuffs";
                introText2 = "for those vines.";
            }
            else if (string_count("sylvanos", lowercase) > 0)
            {
                introText = "God or Mortal, a 50 Cal";
                introText2 = "is enough to put you down.";
            }
            else if (string_count("wrastor", lowercase) > 0)
            {
                introText = "Where Im from the Air";
                introText2 = "Armada doesnt fly.";
            }
            else if (string_count("absa", lowercase) > 0)
            {
                introText = "How shocking, lets see";
                introText2 = "if you can match my bullets.";
            }
            else if (string_count("elliana", lowercase) > 0)
            {
                introText = "What kind of flying machine";
                introText2 = "is that? How unstable.";
            }
            else if (string_count("ranno", lowercase) > 0)
            {
                introText = "For a Pacifist, yknow poison";
                introText2 = "can take a life right?";
            }
            else if (string_count("etalus", lowercase) > 0)
            {
                introText = "We can bring you in cold or hot.";
                introText2 = "Dont do anything risky.";
            }
            else if (string_count("clairen", lowercase) > 0)
            {
                introText = "You stood up to Loxodant!";
                introText2 = "We can stop this together.";
            }
            else if (string_count("orcane", lowercase) > 0)
            {
                introText = "This pond isnt big enough";
                introText2 = "for the two of us.";
            }
            else if (string_count("forsburn", lowercase) > 0)
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
                else if(get_player_color(player) == 1)
                {
                    var introChoices1 = [
                        "Good morning,",
                        "Hey!",
                        "It's right behind me,",
                        "Wow big scary"
                    ];
                    var introChoices2 = [
                        "everyduck!",
                        "Got any grapes?",
                        "isn't it?",
                        "fight now."
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
        if(countPlayers == 1 /*|| get_match_setting(SET_PRACTICE)*/)
        {
                var seed = 0;
                seed += get_player_color(player);
                seed += x/20;
                seed += 4;

                introText = "Press Up+Taunt to toggle Auto-Reload";
                introText2 = "Press Down+Taunt to reload/enhance Bullets";
        }
    }
}