//user_event 6
//dracula compatibility

//check the stage ID means that it will not run otherwise
//if it is the currect IDs, make sure the text only runs once cuz i don't need it beyond that
if (get_stage_data(SD_ID) != "213227551" && get_stage_data(SD_ID) != "2381606021") exit;

wait_time = 0;
if (get_gameplay_time() > 260) wait_time = normal_wait_time;

var page = 0;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "You must be the one commanding those vile creatures, terrorizing the land of liyue with those?";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "As Yuheng of the Liyue Qixing I must apprehend you.";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "What are you speaking off, little kitten? Apprehend me? You cannot possibly believe you can stand up to one as mighty as I."
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "Yes, the adepti protected our city for a very long time, but you would be so smart to not underestimate us humans.";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "Plenty of humans marched into my own home claiming they wish to slay me, what makes you think you are different?";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "Is it that little gemstone? The little gift you were given from so-called gods?";
page++;

//Page 6
dracula_speaker[page] = 1;
dracula_text[page] = "My vision is my own power, and your words are a waste of time. If you resist coming in quietly I'm afraid I'll have to use force!";
page++;

//Page 7
dracula_speaker[page] = 0;
dracula_text[page] = "Then let us have it your way, little yuheng.";