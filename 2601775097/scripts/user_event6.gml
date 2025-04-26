//user_event 6
//dracula compatibility

//check the stage ID means that it will not run otherwise
//if it is the currect IDs, make sure the text only runs once cuz i don't need it beyond that
if (get_stage_data(SD_ID) != "213227551" && get_stage_data(SD_ID) != "2381606021") exit;

wait_time = 0;
if (game_time > 260) wait_time = normal_wait_time;

if (has_theikos && theikos_type == 0) theikos_type = 1;

var page = 0;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "...So you must be Count Dracula.";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = "And you must be the infamous 'Guardian Angel of the Elements'.";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "You are but a puny child, and you think it's a good idea to simply waltz into my castle?"
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "I have a job to stop your reign of terror. Please give up and we can end this peacefully.";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "I see... I must admit I am far from impressed by you angels, sending a mere child to defeat me.";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "You must have a death wish.[glass] Very well then, I will give you...";
page++;

//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "[shake]Despair and death!";
page++;

//Page 7
dracula_speaker[page] = 0;
dracula_text[page] = "Have at you, guardian!";
page++;

//Page 8
dracula_speaker[page] = 2;
dracula_text[page] = "I guess there's no other choice, then..";


if (theikos_type > 0)
{
    var page = 0;
    
    //Page 0
    dracula_speaker[page] = 1;
    dracula_text[page] = "...Dracula.";
    page++;
    
    //Page 1
    dracula_speaker[page] = 0;
    dracula_text[page] = "You must be the infamous 'Guardian Angel of the Elements'.";
    page++;
    
    //Page 2
    dracula_speaker[page] = 0;
    dracula_text[page] = "You are but a puny child, and yet your aura tells another story, how curious."
    page++;
    
    //Page 3
    dracula_speaker[page] = 1;
    dracula_text[page] = "You will stop your reign of terror. Surrender and it will be over swiftly, there's nowhere to run.";
    page++;
    
    //Page 4
    dracula_speaker[page] = 0;
    dracula_text[page] = "I see... So this the Theïkós state, as they call it.";
    page++;
    
    //Page 5
    dracula_speaker[page] = 0; 
    dracula_text[page] = "Your aura is strong, child,[glass] However I will not fall to your little handycap.";
    page++;
    
    //Page 6
    dracula_speaker[page] = 0;
    dracula_text[page] = "It will not be enough to save you from Count Dracula Tepes!";
    page++;
    
    //Page 7
    dracula_speaker[page] = 0;
    dracula_text[page] = "[shake] Have at you, guardian!";
    page++;
    
    //Page 8
    dracula_speaker[page] = 2;
    dracula_text[page] = "You'll regret this.";
}
