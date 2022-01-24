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
            if (string_count("anglara", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "They told me theres other fishes";
                introText2 = "in the sea. Its time to fish you out.";
            }
            if (string_count("sai", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "You have quite the history,";
                introText2 = "sad I have to take you out.";
            }
            if (string_count("lonin", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Fancy portals you got there, Dont be";
                introText2 = "shocked if my bullets follow through.";
            }
            if (string_count("hikaru", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Youre quite mystical.";
                introText2 = "Sorry we had to meet here.";
            }
            if (string_count("bailey", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "You're a wrestler?";
                introText2 = "They stopped existing where I'm from.";
            }
            if (string_count("apple", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "A scout? Im sorry you found me but";
                introText2 = "I have to get rid of all witnesses.";
            }
            if (string_count("carcossant", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Are you some kind of parasite?";
                introText2 = "Step back from me, zombie!";
            }
            if (string_count("kinunosu", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "You... Ill kill you!";
                introText2 = "You ruined the future!";
            }
            //base cast
            if (string_count("zetterburn", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "So the legend is true...";
                introText2 = "The fire does come alive!";
            }
            if (string_count("kragg", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                introText = "This isnt the rock age anymore.";

            if (string_count("maypul", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Hope I have enough cuffs";
                introText2 = "for those vines.";
            }
            if (string_count("sylvanos", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "God or Mortal, a 50 Cal";
                introText2 = "is enough to put you down.";
            }
            if (string_count("wrastor", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "Where Im from the Air";
                introText2 = "Armada doesnt fly.";
            }
            if (string_count("absa", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "How shocking, lets see";
                introText2 = "if you can match my bullets.";
            }
            if (string_count("elliana", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "What kind of flying machine";
                introText2 = "is that? How unstable.";
            }
            if (string_count("ranno", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "For a Pacifist, yknow poison";
                introText2 = "can take a life right?";
            }
            if (string_count("etalus", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "We can bring you in cold or hot.";
                introText2 = "Dont do anything risky.";
            }
            if (string_count("clairen", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "You stood up to Loxodant!";
                introText2 = "We can stop this together.";
            }
            if (string_count("orcane", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
            {
                introText = "This pond isnt big enough";
                introText2 = "for the two of us.";
            }
            if (string_count("forsburn", string_lower(get_char_info(enemyObj.player, INFO_STR_NAME))) > 0)
                introText = "Think you can keep up with the heat?";
                
            //default
            if(introText == "")
            {
                var seed = 0;
                seed += get_player_color(player);
                seed += x/20;
                seed += enemyObj.x/20;
                seed += 4;

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