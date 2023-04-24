//user_event 6
//dracula compatibility

//check the stage ID means that it will not run otherwise
//if it is the currect IDs, make sure the text only runs once cuz i don't need it beyond that
if (get_stage_data(SD_ID) != "213227551" && get_stage_data(SD_ID) != "2381606021") exit;

wait_time = 0;
if (get_gameplay_time() > 260) wait_time = normal_wait_time;

var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "... A child? And what is a child looking for in my domain?";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "Are you Flan's dad? I wanna play with flan!";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "Who is this Flan you speak of child? I have no such offspring.";
page++;

//Page 3
dracula_speaker[page] = 2;
dracula_text[page] = "Is that so? Daww... I guess I got the wrong castle.";
page++;

//Page 4
dracula_speaker[page] = 1;
dracula_text[page] = "I'm sorry, big scary vampire man!";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "You barge into my home, defeat all of my minions and now you just want to leave?!";
page++;

//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "[shake] Outragious! It seems you need to be taught some manners, child!";
page++;

//Page 7
dracula_speaker[page] = 2;
dracula_text[page] = "Are you going play with me instead?";